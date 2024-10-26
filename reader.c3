module xml;
import std::io;

fn XmlDocument*! parse(InStream stream, String path = "", Allocator allocator = allocator::heap())
{
    Parser parser;
    parser.init(stream, allocator)!;
    parser.path = path;
    defer parser.free();

    XmlDocument* doc = allocator::new(allocator, XmlDocument, {
        .allocator = allocator,
    });
    defer catch allocator::free(allocator, doc);

    doc.elements.new_init(1024, allocator);
    defer catch free_elements(&doc.elements);

    XmlElementID current, parent;
    usz current_depth = 0;

    while LOOP: (try Token open = parser.advance())
    {
        Marker mark = parser.current_mark();
        switch (open.type)
        {
            case TAG_OPEN:
                open = parser.advance()!;
                if (@likely(open.type == IDENTIFIER))
                {
                    current = doc.new_element();
                    doc.elements[current].depth = current_depth;
                    if (current == 0) // Root element
                    {
                        doc.root = 0;
                        parent = current;
                    }
                    else
                    {
                        doc.elements[parent].values.push({
                            .type = ID,
                            .id = current,
                        });
                        // Update child counts for all ancestors
                        usz i = parent;
                        while (true)
                        {
                            doc.elements[i].total_children++;
                            if (i == 0) break;  // Stop at the root
                            i = doc.elements[i].parent;
                        }
                    }

                    doc.elements[current].parent = parent;
                    doc.elements[current].identity = open.text.copy(doc.allocator);

                    parser.parse_attributes(&doc.elements[current].attributes)!;

                    // Expected tag termination: `>` or `/>`
                    Token end_token = parser.advance()!;
                    switch (end_token.type)
                    {
                        case TAG_CLOSE:
                            parent = current;
                            current_depth++; // Increase depth when opening a new tag
                        case FORWARD_SLASH:
                            // Empty tag. Close it.
                            parser.expect_next(TAG_CLOSE)!;
                            parent = doc.elements[current].parent;
                            doc.elements[parent].num_children++;
                            current = parent;
                        default:
                            @error_mark(mark, &parser,
                                XmlError.MISMATCHED_CLOSING_TAG,
                                "Expected close tag, got: %s", end_token.type)!;
                    }
                }
                else if (open.type == FORWARD_SLASH)
                {
                    Token identifier = parser.expect_next(IDENTIFIER)!;
                    parser.expect_next(TAG_CLOSE)!;
                    String current_identifier = doc.elements[current].identity;
                    if (current_identifier != identifier.text)
                    {
                        @error_mark(mark, &parser,
                            XmlError.MISMATCHED_CLOSING_TAG,
                            "Mismatched Closing Tag. Expected %s, got %s.",
                            current_identifier, identifier.text)!;
                    }
                    parent = doc.elements[current].parent;
                    doc.elements[parent].num_children++;
                    current = parent;
                    current_depth--; // Decrease depth when closing a tag
                }
                else if (open.type == EXCLAMATION_MARK)
                {
                    Token next = parser.advance()!;
                    switch (next.type)
                    {
                        case IDENTIFIER:
                            switch (next.text)
                            {
                                case "DOCTYPE":
                                    if (doc.num_children)
                                    {
                                        @error_mark(mark, &parser,
                                            XmlError.DOC_TYPE_MUST_PRECEDE_ELEMENTS,
                                            "DOCTYPE must precede elements", open.text)!;
                                    }
                                    doc.doctype = parser.parse_doctype()!;
                                default:
                                    if (doc.options.error_on_unsupported)
                                    {
                                        @error_mark(mark, &parser, XmlError.UNHANDLED_BANG,
                                            "Unhandled: <!%v\n", open.text)!;
                                    }
                                    parser.skip_element()!;
                            }
                        case DASH:
                            parser.expect_next(DASH)!;
                            parser.skip_comment()!;
                        default:
                            @error_mark(mark, &parser,
                                 XmlError.UNEXPECTED_TOKEN,
                                "Invalid token after <!. Expected IDENTIFIER, got %s\n",
                                open.type)!;
                     }
                }
                else if (open.type == QUESTION_MARK)
                {
                    Token next = parser.advance()!;
                    switch (next.type)
                    {
                        case IDENTIFIER:
                            next.text.convert_ascii_to_lower();
                            if (next.text.len == 3 && next.text == "xml")
                            {
                                parser.parse_prologue(doc)!;
                            }
                            else
                            {
                                parser.skip_element()!;
                            }
                        default:
                            @error_mark(mark, &parser,
                                XmlError.UNEXPECTED_TOKEN,
                                "Expected \"<?xml\", got \"<?%s\".", open.text)!;
                    }
                }
                else
                {
                    @error_mark(mark, &parser, XmlError.INVALID_TOKEN,
                        "Invalid Token after <: %s", open.text)!;
                }
            case BODY_TEXT:
                String body_text = parser.parse_string(consume_close: false)!;
                doc.elements[current].values.push({
                    .type = TEXT,
                    .text = body_text.copy(doc.allocator),
                });
            default:
                break LOOP;
        }
    }

    return doc;
}

/**
 * Parses an XML string and constructs an XmlDocument object.
 **/
fn XmlDocument*! parse_string(String s, Allocator allocator = allocator::heap()) =>
    parse(ByteReader{}.init(s), allocator: allocator);

/**
 * Parses an XML file and constructs an XmlDocument object.
 **/
fn XmlDocument*! parse_file(String filename, Allocator allocator = allocator::heap())
{
    File! file = file::open(filename, "rb");
    if (catch err = file)
    {
        io::eprintfn("Failed to open the xml file: %s", filename);
        return err?;
    }
    defer file.close()!!;
    return parse(&file, filename, allocator);
}

macro @error_mark(Marker mark, Parser* parser, anyfault error, String fmt, args...)
{
    @pool()
    {
        DString dline = dstring::temp_new("\n");
        parser.stream.seek(mark.line_offset, Seek.SET)!!;
        parser.reached_end = false;
        while NL: (Char32 c = parser.read_next()!)
        {
            dline.append_char32(c);
            switch (c)
            {
                case '\n':
                    usz len = dline.len();
                    dline.append_repeat(' ', mark.col);
                    dline.appendf("^");
                    parser.reached_end = true;
                    break NL;
            }
        }

        io::eprintn(dline.str_view());
    };

    io::eprintf("(%s:%d:%d) Error: ", mark.file, mark.line, mark.col+2);
	io::eprintfn(fmt, ...args);
    return error?;
}

macro @error(anyfault error, String fmt, args...)
{
	io::eprintfn(fmt, ...args);
    return error?;
}
