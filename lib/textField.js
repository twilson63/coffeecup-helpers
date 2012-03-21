
module.exports = function(name, attributes) {
  if (name == null) return new Error('name required');
  attributes.type = 'text';
  attributes.name = name;
  return input(attributes);
};
