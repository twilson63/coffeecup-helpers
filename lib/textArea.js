
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
  labelAttributes = {};
  if (labelAttributes["for"] == null) labelAttributes["for"] = attributes['id'];
  if (name != null) label(labelAttributes, attributes.name || '');
  return textarea(attributes, value != null ? value : value = '');
};
