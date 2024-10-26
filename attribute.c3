module xml;
import std::collections::list;

enum XmlAttributeType
{
    DOUBLE_QUOTE,
    SINGLE_QUOTE,
}

struct XmlAttributeValue
{
    String key;
    String value;
}

struct XmlAttribute
{
    List(<XmlAttributeValue>) attributes;
    XmlAttributeType attribute_type;
    XmlNodeType node_type;
}

fn String! XmlAttribute.get(&self, String key)
{
    foreach(&attr : self.attributes)
    {
        if (key == attr.key) return attr.value;
    }
    return XmlError.MISSING_ATTRIBUTE?;
}

fn bool XmlAttribute.has(&self, String attribute)
{
    if (try self.get(attribute)) return true;
    return false;
}

fn void XmlAttribute.set(
    &self,
    XmlNodeType node_type,
    XmlAttributeType attribute_type = DOUBLE_QUOTE
) {
    self.attributes.new_init();
    self.attribute_type = attribute_type;
    self.node_type = node_type;
}

fn void XmlAttribute.add(&self, String name, String value) @inline =>
    self.attributes.push({ name.copy(), value.copy() });

fn void XmlAttribute.free(&self)
{
    foreach(&attr : self.attributes)
    {
        attr.key.free();
        attr.value.free();
    }
    self.attributes.free();
}
