module xml;
import std::io;

bitstruct ParsingOptions : char
{
    bool parse_comments;
}

struct Parser
{
    Allocator allocator;
    String path;
	DString buffer;
    InStream stream;
    Token active_token;
    usz num_lines;
    usz offset;
    usz line_offset;
    ParsingOptions options;
    bitstruct : char {
		bool reached_end;
        bool is_open;
	}
}

struct Marker
{
    String file;
    usz index;
    usz line;
    usz col;
    usz offset;
    usz line_offset;
}

enum XmlTokenType
{
    // Special tokens
    INVALID,
    EOF,

    // Content tokens
    IDENTIFIER,
    LITERAL,
    CHAR_DATA,
    STRING,
    BODY_TEXT,

    // Quotation marks
    DOUBLE_QUOTE,       // "
    SINGLE_QUOTE,       // '

    // Common punctuation
    COLON,              // :
    EQUALS,             // =
    HASH,               // #
    DASH,               // -

    // XML-specific tokens
    TAG_OPEN,           // <
    TAG_CLOSE,          // >
    TAG_SELF_CLOSE,     // />
    EXCLAMATION_MARK,   // !
    QUESTION_MARK,      // ?
    FORWARD_SLASH,      // /

    // CDATA and processing instruction delimiters
    CDATA_START,        // <![CDATA[
    CDATA_END,          // ]]>
    PI_START,           // <?
    PI_END,             // ?>

    // XmlAttribute value delimiters
    ATTR_VALUE_START,   // = followed by " or '
    ATTR_VALUE_END,     // closing " or '

    // Comment delimiters
    COMMENT_START,      // <!--
    COMMENT_END,        // -->

    // DTD-related tokens
    DTD_START,          // <!DOCTYPE
    SQUARE_BRACKET_OPEN,  // [
    SQUARE_BRACKET_CLOSE, // ]
}

struct Token
{
    XmlTokenType type;
    String text;
    Marker mark;
}

fault XmlError
{
    DOC_TYPE_MUST_PRECEDE_ELEMENTS,
    ELEMENT_NOT_FOUND,
    FILE_ERROR,
    GENERAL_ERROR,
    INVALID_CHARACTER_IN_STRING,
    INVALID_ENTITY,
    INVALID_ESCAPE_SEQUENCE,
    INVALID_TOKEN,
    MISMATCHED_CLOSING_TAG,
    MISSING_ATTRIBUTE,
    UNCLOSED_COMMENT,
    UNEXPECTED_CHARACTER,
    UNEXPECTED_EOF,
    UNEXPECTED_TOKEN,
    UNHANDLED_BANG,
}

fn void! Parser.init(&self, InStream stream, Allocator allocator = allocator::heap())
{
    self.stream = stream;
    self.allocator = allocator;
    self.buffer = dstring::new_with_capacity(64, allocator::heap());
    Char32 first = self.peek_char()!;
    self.num_lines = first != '\0' ? 1 : 0;
}

fn void Parser.free(&self)
{
    self.buffer.free();
}

fn Char32! Parser.read_next(&self) @private
{
    if (self.reached_end) return '\0';

    char! ch = self.stream.read_byte();
    self.offset++;

    Marker mark = self.current_mark();

    if (catch err = ch)
    {
        case IoError.EOF:
            self.reached_end = true;
            return '\0';
        default:
            return @error_mark(mark, self, err,
                "[Parser.read_next]: Failed to read next byte from the stream")!;
    }

    switch (ch)
    {
        case '\n':
            self.num_lines++;
            self.line_offset = self.offset;
        default:
    }

    // Quick return for ASCII
    if (ch.is_ascii())
    {
        if (ch == 0) self.reached_end = true;
        return (Char32)ch;
    }

    // Determine sequence length
    usz total_bytes = 0;
    switch
    {
        case (ch & 0xE0) == 0xC0:
            total_bytes = 2;
        case (ch & 0xF0) == 0xE0:
            total_bytes = 3;
        case (ch & 0xF8) == 0xF0:
            total_bytes = 4;
        default:
            @error_mark(mark, self, UnicodeResult.INVALID_UTF8,
                "[Parser.read_next]: Failed to determine Unicode sequence length, 0x10FFFF and above is not defined")!;

    }

    // Buffer to store the complete UTF-8 sequence
    char[4] buf;
    buf[0] = ch;

    // Read continuation bytes
    for (int i = 1; i < total_bytes; i++)
    {
        char next = self.stream.read_byte()!!;
        self.offset++;
        buf[i] = next;
    }

    // Decode the sequence
    usz bytes_read = total_bytes;
    Char32! result = conv::utf8_to_char32(&buf, &total_bytes);
    if (catch err = result)
    {
        @error_mark(self.current_mark(), self, err,
            "[Parser.read_next]: Invalid UTF-8 character: %c", ch)!;
    }

    // Verify we read the expected number of bytes
    if (bytes_read != total_bytes)
    {
        @error_mark(self.current_mark(), self, UnicodeResult.INVALID_UTF8,
            "[Parser.read_next]: Invalid UTF-8 character: %c", ch)!;
    }

    return result;
}

fn Token! Parser.advance(&self)
{
    Char32 c;
    // Skip whitespace
    while WS: (c = self.read_next()!)
    {
        switch (c)
        {
            case '\n':
            case ' ':
            case '\t':
            case '\r':
            case '\v':
                continue;
            default:
                break WS;
        }
    }

    String text;
    XmlTokenType type;
    Marker mark = self.current_mark();

    // Handle identifier characters (including Unicode)
    // XML 1.0 spec allows many Unicode characters in names
    if (is_valid_identifier_start(c) && self.is_open)
    {
        // We found an identifier (element name, attribute key)
        self.buffer.clear();
        self.buffer.append_char32(c);

        bool namespaced;
        while (is_valid_identifier(self.peek_char()!))
        {
            Char32 next = self.read_next()!!; // consume the peeked char
            self.buffer.append_char32(next);
            if (next == ':')
            {
                if (namespaced) break;
                namespaced = true;
            }
        }
        text = self.buffer.str_view();
        type = IDENTIFIER;
    }
    else if (c.is_print() && c != '<' && !self.is_open)
    {
        // We are about to read a body text (value)
        type = BODY_TEXT;
        if (c.is_ascii())
        {
            self.stream.seek(-1, Seek.CURSOR)!!;
        }
        else
        {
            // Need to seek back by the number of UTF-8 bytes for this character
            char[4] temp_buf;
            usz bytes = conv::char32_to_utf8(c, &temp_buf)!!;
            self.stream.seek(-bytes, Seek.CURSOR)!!;
        }
    }
    else
    {
        switch (c)
        {
            case '\0': type = EOF;
            case '<':
                type = TAG_OPEN;
                self.is_open = true;
            case '>':
                type = TAG_CLOSE;
                self.is_open = false;
            case '!': type = EXCLAMATION_MARK;
            case '?': type = QUESTION_MARK;
            case '=': type = EQUALS;
            case '#': type = HASH;
            case '/': type = FORWARD_SLASH;
            case '-': type = DASH;
            case ':': type = COLON;
            case '"':
            case '\'':
                text = self.parse_string(close: c)!!;
                type = STRING;
            default:
                if (c >= 0x80)
                {
                    return @error_mark(mark, self, XmlError.UNEXPECTED_CHARACTER,
                        "[Parser.advance]: Unexpected Unicode character: %c", c)!!;
                }
        }
    }

    Token token = { .type = type, .text = text, .mark = mark };
    self.active_token = token;

    return token;
}

fn Marker Parser.current_mark(&self) @inline =>
    {
        .file = self.path,
        .index = self.offset,
        .line_offset = self.line_offset,
        .line = self.num_lines,
        .col = self.offset - self.line_offset,
    };

fn Token! Parser.peek_token(&self)
{
    usz current_offset = self.stream.seek(0, Seek.CURSOR)!!;
    Parser old = *self;
    Token token = self.advance()!!;
    *self = old;
	self.stream.seek(current_offset, Seek.SET)!!; // Set stream back to start pos
	return token;
}

fn Char32! Parser.peek_char(&self, usz skip = 0)
{
    usz num_lines = self.num_lines;
    usz line_offset = self.line_offset;
    usz offset = self.offset;

    usz current_offset = self.stream.seek(0, Seek.CURSOR)!!;
    self.stream.seek(skip, Seek.CURSOR)!!;
    Char32 ch = self.read_next()!;
    self.stream.seek(current_offset, Seek.SET)!!;

    self.num_lines = num_lines;
    self.line_offset = line_offset;
    self.offset = offset;

    return ch;
}

fn Token! Parser.expect_next(&self, XmlTokenType type)
{
    Marker mark = self.current_mark();
    Token token = self.advance()!!;
    if (token.type == type) return token;
    return @error_mark(mark, self, XmlError.UNEXPECTED_TOKEN,
        "[Parser.expect_next]: Expected \"%s\", got \"%s\".", type, token.type)!!;
}

fn void! Parser.parse_attributes(&self, XmlAttribute* attributes)
{
    XmlAttributeType type = self.active_token.type == XmlTokenType.DOUBLE_QUOTE
        ? XmlAttributeType.DOUBLE_QUOTE : XmlAttributeType.DOUBLE_QUOTE;
    attributes.set(DOCUMENT, type);

    while (Token t = self.peek_token()!, t.type == IDENTIFIER)
    {
        @pool(self.allocator)
        {
            self.expect_next(IDENTIFIER)!!;
            String key_text = self.buffer.tcopy_str();
            self.expect_next(EQUALS)!!;
            self.expect_next(STRING)!!;
            String value_text = self.buffer.tcopy_str();
            attributes.add(key_text, value_text);
        };
    }
}

fn void! Parser.skip_comment(&self)
{
    while (Char32 c = self.read_next()!, c != '\0' || c != 0)
    {
        if (self.peek_char(1)! == '-' && self.peek_char(2)! == '-')
        {
            self.stream.seek(3, Seek.CURSOR)!!;
            self.expect_next(TAG_CLOSE)!!;
            return;
        }
    }
    return XmlError.UNCLOSED_COMMENT?;
}

fn String! Parser.parse_string(&self, Char32 close = '<', bool consume_close = true)
{
    self.buffer.clear();
    char[4] utf8_buf;

    while LOOP: (true)
    {
        Char32 c = self.read_next()!!;
        switch (c)
        {
            case '\0':
                return XmlError.UNEXPECTED_EOF?;
            case close:
                if (!consume_close)
                {
                    self.offset--;
                }
                break LOOP;
            case '<':
                // Invalid character in an attribute
                if (close == '\'' || close == '"')
                {
                    return XmlError.INVALID_CHARACTER_IN_STRING?;
                }
                nextcase;
            case '&':
                // Handle XML entities
                Char32 entity = self.parse_entity_string()!!;
                self.buffer.append_char32(entity);
                continue;
            default:
                self.buffer.append_char32(c);
        }
    }

    String trimmed = self.buffer.str_view();

    if (trimmed != "")
    {
        usz end = trimmed.len - 1;
        foreach_r EAT: (ch : trimmed)
        {
            switch (ch)
            {
                case ' ':
                case '\t':
                case '\r':
                case '\n':
                    end--;
                    continue;
                default:
                    break EAT;
            }
        }
        trimmed = trimmed[..end];
    }

    if (!consume_close)
    {
        self.stream.seek(-1, Seek.CURSOR)!!;
    }

    return trimmed;
}

fn void! Parser.parse_prologue(&self, XmlDocument* doc)
{
    Marker mark = self.current_mark();
    self.parse_attributes(&doc.attributes)!!;

    if (try String version = doc.attributes.get("version"))
    {
        switch (version)
        {
            case "1.0":
            case "1.1":
                break;
            default:
                @error_mark(mark, self, XmlError.GENERAL_ERROR,
                    "[Parser.parse_prologue] Warning: Unhandled XML version: %s", version);
        }
    }

    if (try String encoding = doc.attributes.get("encoding"))
    {
        @pool()
        {
            String temp = encoding.new_ascii_to_lower(allocator::temp());
            switch (temp)
            {
                case "utf-8":
                case "utf8":
                    doc.encoding = UTF_8;
                case "latin-1":
                case "latin1":
                    doc.encoding = LATIN_1;
                case "iso-8859-1":
                    doc.encoding = ISO_8859_1;
                default:
                    @error_mark(mark, self, XmlError.GENERAL_ERROR,
                        "[Parser.parse_prologue] Warning: Unrecognized encoding: %s", encoding);
            }
        };
    }

    self.expect_next(QUESTION_MARK)!!;
    self.expect_next(TAG_CLOSE)!!;
}

fn Char32! Parser.parse_entity_string(&self)
{
    @pool()
    {
        DString dentity = dstring::temp_with_capacity(10);

        Marker marker = self.current_mark();

        while NEXT: (Char32 c = self.read_next()!!)
        {
            switch (c)
            {
                case ';':
                    break NEXT;
                case '\0':
                    return XmlError.UNEXPECTED_EOF?;
                default:
                    dentity.append(c);
            }
        }

        String entity = dentity.str_view();

        if (entity.len == 0)
        {
            @error_mark(marker, self, XmlError.INVALID_ENTITY,
                "[Parser.parse_entity_string]: Invalid entity: %s")!!;
        }

        switch (entity[0])
        {
            case '#':
                int base = 10;
                int val;

                entity = entity[1..];

                if (entity[0] == 'x' || entity[0] == 'X')
                {
                    base = 16;
                    entity = entity[1..];
                }

                while (entity.len)
                {
                    char ch = entity[0];
                    switch (ch)
                    {
                        case '0'..'9':
                            val *= base;
                            val += (int)(ch - '0');

                        case 'a'..'f':
                            if (base == 10) { return 0; }
                            val *= base;
                            val += (int)(ch - 'a' + 10);

                        case 'A'..'F':
                            if (base == 10) { return 0; }
                            val *= base;
                            val += (int)(ch - 'A' + 10);
                        default:
                            return 0;
                    }

                    if (val > 0x10ffff) return 0;
                    entity = entity[1..];
                }
                return (Char32)val;
            default:
                return named_xml_entity_to_char32(entity)!;
        }
    };
}

fn void! Parser.skip_element(&self)
{
    uint close = 1;
    while LOOP: (true)
    {
        Token tok = self.advance()!!;
        switch (tok.type)
        {
            case EOF:
                @error_mark(self.current_mark(), self, XmlError.UNEXPECTED_EOF,
                    "[Parser.skip_element]: Unexpected EOF")!!;
            case TAG_OPEN:
                close++;
            case TAG_CLOSE:
                close--;
                if (close == 0)
                {
                    break LOOP;
                }
            default:
        }
    }
}

fn XmlDoctype! Parser.parse_doctype(&self)
{
    XmlDoctype doctype;

    Token tok = self.expect_next(IDENTIFIER)!;
    doctype.name = tok.text.copy(self.allocator);

    usz from_offset = self.stream.seek(0, Seek.CURSOR)!!;
    self.skip_element()!!;
    usz to_offset = self.stream.seek(0, Seek.CURSOR)!!;

    @pool(self.allocator)
    {
        char[] buf = mem::temp_new_array(char, (to_offset - from_offset) - 1);
        self.stream.seek(from_offset, Seek.SET)!!;
        self.stream.read(buf[..])!!;
        doctype.body = ((String)buf).copy(self.allocator);
    };

    self.is_open = true;
    self.expect_next(TAG_CLOSE)!!;

    return doctype;
}

fn bool char.is_ascii(c) @inline => c <= 0x7F;

fn bool Char32.is_ascii(c) @inline => c <= 0x7F;

fn bool is_valid_identifier_start(Char32 c)
{
    // Basic ASCII characters
    if (c.is_ascii())
    {
        switch (c)
        {
            case '_':       // Underscore
            case ':':       // Colon
            case 'A'..'Z':  // Uppercase ASCII letters
            case 'a'..'z':  // Lowercase ASCII letters
                return true;
        }
    }
    else
    {
        // XML 1.0 Letter ranges
        switch
        {
            case c >= 0x4E00 && c <= 0x9FFF:  // CJK Unified Ideographs
            case c >= 0x3040 && c <= 0x309F:  // Hiragana
            case c >= 0x30A0 && c <= 0x30FF:  // Katakana
            case c >= 0xAC00 && c <= 0xD7AF:  // Hangul
            case c >= 0x0370 && c <= 0x037D:  // Greek
            case c >= 0x002E2 && c <= 0x002E9: // CJK Radicals
            case c >= 0x00386 && c <= 0x00481: // Greek & Coptic
            case c >= 0x0048A && c <= 0x00559: // Cyrillic
                return true;
        }
    }

    return false;
}

fn bool is_valid_identifier(Char32 c)
{
    // Basic ASCII characters
    if (c.is_ascii())
    {
        switch (c)
        {
            case '_':       // Underscore
            case ':':       // Colon
            case '-':       // Hyphen
            case '.':       // Period
            case 'A'..'Z':  // Uppercase ASCII letters
            case 'a'..'z':  // Lowercase ASCII letters
            case '0'..'9':  // ASCII digits
                return true;
        }
    }
    else
    {
        // XML 1.0 NameChar ranges
        switch
        {
            case c >= 0x4E00 && c <= 0x9FFF:  // CJK Unified Ideographs
            case c >= 0x3040 && c <= 0x309F:  // Hiragana
            case c >= 0x30A0 && c <= 0x30FF:  // Katakana
            case c >= 0xAC00 && c <= 0xD7AF:  // Hangul
            case c >= 0x0300 && c <= 0x036F:  // Combining marks
            case c >= 0x203F && c <= 0x2040:  // Extenders
            case c >= 0x0370 && c <= 0x037D:  // Greek
            case c >= 0x002E2 && c <= 0x002E9: // CJK Radicals
            case c >= 0x00386 && c <= 0x00481: // Greek & Coptic
            case c >= 0x0048A && c <= 0x00559: // Cyrillic
                return true;
        }
    }

    return false;
}
