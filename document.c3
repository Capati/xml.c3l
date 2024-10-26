module xml;
import std::collections::list;

def ElementList = List(<XmlElement>);

enum XmlEncoding
{
    UNKNOWN,
    UTF_8,
    LATIN_1,
    ISO_8859_1,
}

struct XmlDoctype
{
    String name, body;
}

bitstruct XmlOptions : char
{
    bool error_on_unsupported;
}

struct XmlDocument
{
    inline XmlNode node;
    XmlElementID root;
    ElementList elements;
    XmlEncoding encoding;
    XmlDoctype doctype;
    Allocator allocator;
    XmlOptions options;
}

fault XmlDocumentError
{
    ELEMENT_NOT_FOUND,
}

fn String! XmlDocument.get_attribute(&self, String name)
{
    return self.attributes.get(name);
}

fn XmlAttribute* XmlDocument.get_atributes(&self)
{
    return &self.attributes;
}

fn XmlIterator XmlDocument.child_elements(&self)
{
    return XmlIterator
    {
        .elements = &self.elements,
        .parent = self.elements[self.root].id,
        .current = self.elements[self.root].id,
    };
}

fn ElementListRef XmlDocument.children(
    &self,
    Allocator allocator = allocator::temp()
) {
    ElementListRef list;
    return list;
}

fn XmlElement*! XmlDocument.get_root(&self)
{
    if (self.elements.len() == 0)
    {
        return XmlDocumentError.ELEMENT_NOT_FOUND?;
    }
    return &self.elements[self.root];
}

fn XmlElement*! XmlDocument.get_root_by_name(&self, String name)
{
    XmlElement* root = self.get_root()!;
    if (root.identity == name) return root;
    return XmlDocumentError.ELEMENT_NOT_FOUND?;
}

const usz XML_ELEMENTS_RESIZE_STEP = 65536;

fn XmlElementID XmlDocument.new_element(&self)
{
    XmlElementID id = self.num_children;
    self.num_children += 1;

    // Check if the elements array needs to be resized
    if (id >= self.elements.capacity)
    {
        // Grow the capacity of the elements array in fixed increments
        usz current_capacity = self.elements.capacity;
        if (current_capacity < XML_ELEMENTS_RESIZE_STEP)
        {
            self.elements.reserve(current_capacity * 2);
        }
        else
        {
            self.elements.reserve(current_capacity + XML_ELEMENTS_RESIZE_STEP);
        }
    }

    self.elements.push({ .id = id, .values.allocator = self.allocator });

    return id;
}

/**
 * @require self != null
 **/
fn void XmlDocument.free(&self)
{
    free_elements(&self.elements);
    self.attributes.free();
    mem::free(self);
}

/**
 * @require elements != null
 **/
fn void free_elements(ElementList* elements)
{
    foreach (&el : elements)
    {
        el.identity.free();
        foreach (&v : el.values)
        {
            if (v.type == TEXT) v.text.free();
        }
        el.values.free();
        el.attributes.free();
    }
    elements.free();
}
