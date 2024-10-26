module xml;
import std::collections::list;
import std::collections::map;

def XmlElementID = usz;
def ElementListRef = List(<XmlElement*>);
def XmlElementSearch = fn bool (XmlElement*);

enum XmlValueType
{
    NONE,
    TEXT,
    ID,
}

struct XmlValue
{
    XmlValueType type;
    union
    {
        String text;
        XmlElementID id;
    }
}

def ValueList = List(<XmlValue>);

enum XmlNodeType
{
    UNKNOWN,
    ATTRIBUTE,
    CDATA,
    COMMENT,
    DECLARATION,
    DOCUMENT_TYPE,
    DOCUMENT,
    DOCUMENT_FRAGMENT,
    ELEMENT,
    ENTITY,
    NOTATION,
    PROCESSING,
    TEXT,
}

struct XmlNode
{
    XmlAttribute attributes;
    usz num_children;
    usz total_children;
    usz depth;
}

struct XmlElement
{
    inline XmlNode node;
    String identity;
    ValueList values;
    XmlElementID id;
    XmlElementID parent;
}

struct XmlIterator
{
    ElementList* elements;
    usz parent;
    usz current;
    usz previous;
    String name;
    XmlElementSearch search;
    usz num_children;
    usz total_children;
    usz current_index;
    usz start_id;
    bool recursive;
}

fn XmlAttribute* XmlElement.get_atributes(&self)
{
    return &self.attributes;
}

fn XmlIterator XmlElement.iterator_by_children(&self, XmlDocument* doc)
{
    usz parent = self.id;
    usz child = parent + 1; // enter children
    return XmlIterator
    {
        .elements = &doc.elements,
        .parent = parent,
        .current = child,
        .previous = child,
        .current_index = child,
        .num_children = self.num_children,
        .total_children = self.total_children,
        .start_id = parent,
    };
}

fn XmlIterator XmlElement.iterator_by_element(&self, String name, XmlDocument* doc)
{
    XmlIterator iterator = self.iterator_by_children(doc);
    iterator.name = name;
    return iterator;
}

fn XmlIterator XmlElement.iterator_by_search(
    &self,
    XmlElementSearch search,
    XmlDocument* doc,
    bool recursive = false,
) {
    XmlIterator iterator = self.iterator_by_children(doc);
    iterator.search = search;
    iterator.recursive = recursive;
    return iterator;
}

fn ElementListRef XmlElement.children_list(
    &self,
    XmlDocument* doc,
    Allocator allocator = allocator::temp()
) {
    ElementListRef list = *ElementListRef{}.new_init(self.num_children, allocator);
    XmlIterator it = self.iterator_by_children(doc);
    while (XmlElement* el = it.next())
    {
        list.push(el);
    }
    return list;
}

fn XmlElement* XmlElement.first_element(&self, XmlDocument* doc)
{
    if (XmlElement* el = doc.elements.get_ref(self.id + 1)) return el;
    return null;
}

fn XmlElement*! XmlElement.get_element(&self, String name, XmlDocument* doc)
{
    XmlIterator elements = self.iterator_by_children(doc);
    while (XmlElement* el = elements.next())
    {
        if (el.identity == name) return el;
    }
    return XmlError.ELEMENT_NOT_FOUND?;
}

fn XmlElement*! XmlElement.find_element(&self, XmlElementSearch search, XmlDocument* doc)
{
    XmlIterator elements = self.iterator_by_children(doc);
    while (XmlElement* el = elements.next())
    {
        if (search(el)) return el;
    }
    return XmlError.ELEMENT_NOT_FOUND?;
}

fn String! XmlElement.get_attribute(&self, String attribute) @inline =>
    self.attributes.get(attribute)!;

fn bool XmlElement.has_attribute(&self, String attribute) @inline =>
    self.attributes.has(attribute);

fn void XmlIterator.reset(&self)
{
    usz child = self.parent + 1;
    self.current = child;
    self.previous = child;
    self.current_index = child;
}

fn XmlElement* XmlIterator.next(&self)
{
    if (self.recursive)
    {
        return self.next_recursive(self.current_index);
    }
    else
    {
        while (true)
        {
            XmlElement* el = self.elements.get_ref(self.current_index);
            if (el == null)
            {
                return null;
            }

            if (el.parent != self.parent)
            {
                return null;
            }

            self.current_index += el.total_children > 0 ? el.total_children + 1 : 1;

            self.previous = self.current;
            self.current = el.id;

            if (self.search != null)
            {
                if (self.search(el)) return el;
                continue;
            }
            else if (self.name != "")
            {
                if (el.identity == self.name) return el;
                continue;
            }
            else
            {
                return el;
            }
        }
    }
}

fn XmlElement* XmlIterator.next_recursive(&self, usz current_id)
{
    if (self.current_index > self.start_id + self.total_children)
    {
        return null;
    }

    XmlElement* el = self.elements.get_ref(current_id);
    if (el == null)
    {
        return null;
    }

    self.previous = self.current;
    self.current = el.id;
    self.current_index += 1;

    if (self.search != null)
    {
        if (self.search(el)) return el;
    }
    else if (self.name != "")
    {
        if (el.identity == self.name) return el;
    }
    else
    {
        return el; // If no search or name specified, return current element
    }

    return self.next_recursive(current_id + 1);
}

fn XmlElement* XmlIterator.previous(&self)
{
    if (self.current_index == 0) return null;
    self.current_index -= 1;
    self.current = self.previous;
    return self.next();
}
