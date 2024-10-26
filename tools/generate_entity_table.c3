module generate_entity_table;
import std::collections::list;
import std::collections::map;
import std::io;
import std::sort;
import xml;

def NameList = List(<String>);
def EntityMap = HashMap(<String, Entity>);

struct Entity
{
    String name;
    Char32 codepoint;
    String description;
}

const INDENT   = "    ";
const INDENT2X = "        ";
const INDENT3X = "            ";
const INDENT4X = "                ";
const INDENT5X = "                    ";

fn void! main(String[])
{
    XmlDocument* doc = xml::parse_file("tools/unicode.xml")!!;
    defer doc.free();

    File file = file::open("entity_table.c3", "w")!!;
    defer catch (void)file.close();

    io::fprint(&file, "module xml;\n\n")!!;

    XmlElement* root = doc.get_root_by_name("unicode")!!;
    XmlElement* charlist = root.get_element("charlist", doc)!!;

    NameList names = *NameList{}.new_init();
    defer names.free();

    EntityMap entity_map = *EntityMap{}.new_init();
    defer entity_map.free();

    int min_name_length = int.max;
    int max_name_length = int.min;
    String shortest_name;
    String longest_name;

    XmlIterator charlist_it = charlist.iterator_by_element("character", doc);
    while (XmlElement* char_element = charlist_it.next())
    {
        String dec = char_element.get_attribute("dec")!!;
        uint! codepoint = dec.to_uint();
        if (catch err = codepoint) continue;

        Entity e;
        e.codepoint = (Char32)codepoint;

        if (try XmlElement* desc_el = char_element.get_element("description", doc))
        {
            if (desc_el.values.len() && desc_el.values[0].type == TEXT)
            {
                e.description = desc_el.values[0].text;
            }
        }

        XmlIterator entity_it = char_element.iterator_by_search(fn (el) {
            if (el.identity != "entity") return false;
            String! id = el.attributes.get("id");
            if (catch id) return false;
            if (id.len == 0) return false;
            return true;
        }, doc);

        while (XmlElement* entity = entity_it.next())
        {
            e.name = entity.attributes.get("id")!!;

            if (try entity_map.get(e.name))
            {
                continue;
            }

            if (e.name.len > max_name_length) { longest_name  = e.name; }
            if (e.name.len < min_name_length) { shortest_name = e.name; }

            min_name_length = $$min(min_name_length, (int)e.name.len);
            max_name_length = $$max(max_name_length, (int)e.name.len);

            entity_map.set(e.name, e);
            names.push(e.name);
        }
    }

    sort::quicksort(names, &str_cmp);

    io::fprintf(&file, "const XML_NAME_TO_CHAR_32_MIN_LENGTH = %s; // &%s;\n",
        min_name_length, shortest_name)!!;
    io::fprintf(&file, "const XML_NAME_TO_CHAR_32_MAX_LENGTH = %s; // &%s;\n",
        max_name_length, longest_name)!!;

    io::fprintf(&file,
`
fn Char32! named_xml_entity_to_char32(String name)
{
    if (name.len < $$min(1, XML_NAME_TO_CHAR_32_MIN_LENGTH) ||
        name.len > XML_NAME_TO_CHAR_32_MAX_LENGTH)
    {
        return 0;
    }

    switch (name[0])
    {
`)!!;

    char current_prefix = 0;
    foreach (n : names)
    {
        if (current_prefix != n[0])
        {
            if (current_prefix != 0)
            {
                io::fprintf(&file, "%s}\n\n", INDENT3X)!!;
            }
            current_prefix = n[0];
            io::fprintf(&file, "%scase '%c':\n", INDENT2X, current_prefix)!!;
            io::fprintf(&file, "%sswitch (name)\n%s{\n", INDENT3X, INDENT3X)!!;
        }

        Entity e = entity_map.get(n)!!;

        @pool()
        {
            String hex = format_hex(e.codepoint);
            if (e.description.len > 0)
            {
                io::fprintf(&file, "%scase \"%s\": return %s; // %s\n",
                    INDENT4X, e.name, hex, e.description)!!;
            }
            else
            {
                io::fprintf(&file, "%scase \"%s\": return %s;\n",
                    INDENT4X, e.name, hex)!!;
            }
        };
    }

    // Close the last nested switch
    if (current_prefix != 0)
    {
        io::fprintf(&file, "%s}\n", INDENT3X)!!;
    }

    // Close the outer switch
    io::fprintf(&file, "%s}\n", INDENT)!!;

    io::fprintf(&file,
`
    return 0;
}
`)!!;
}

fn String format_hex(Char32 value, Allocator allocator = allocator::temp())
{
    // Convert to hex and trim leading zeros while ensuring at least one digit
    return string::new_format("0x%X", value, allocator: allocator);
}

fn int str_cmp(String a, String b)
{
    usz len_a = a.len;
    usz len_b = b.len;
    usz min_len = len_a < len_b ? len_a : len_b;

    // Compare characters up to the length of the shorter string
    for (usz i = 0; i < min_len; i++)
    {
        if (a[i] != b[i])
        {
            return (int)(a[i] - b[i]);
        }
    }

    // If all characters match up to min_len, shorter string comes first
    return (int)(len_a - len_b);
}
