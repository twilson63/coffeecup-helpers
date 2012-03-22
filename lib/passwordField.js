
module.exports = function(name, value, attributes) {
  var labelAttributes;
  if (typeof name === 'object') {
    attributes = name;
    name = null;
  } else if (typeof value === 'object') {
    attributes = value;
    value = null;
  }
  if (attributes == null) attributes = {};
  if (name != null) attributes.name = name;
  if (value != null) attributes.value = value;
  attributes.type = 'password';
  labelAttributes = {};
  if (attributes.id != null) labelAttributes["for"] = attributes.id;
  if (name != null) label(labelAttributes, name);
  return input(attributes);
};
