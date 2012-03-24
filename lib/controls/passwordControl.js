
module.exports = function(name, value, attributes) {
  var capitalize, _base, _base2, _base3;
  capitalize = function(words) {
    var word;
    return ((function() {
      var _i, _len, _ref, _results;
      _ref = words.split(/\_+/);
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        word = _ref[_i];
        _results.push(word[0].toUpperCase() + word.slice(1).toLowerCase());
      }
      return _results;
    })()).join(' ');
  };
  if (typeof name === 'object') {
    attributes = name;
    name = null;
  } else if (typeof value === 'object') {
    attributes = value;
    value = null;
  }
  if (attributes == null) attributes = {};
  if (attributes.input == null) attributes.input = {};
  if (name != null) {
    if ((_base = attributes.input).name == null) _base.name = name;
    if (!attributes.input.id) {
      if ((_base2 = attributes.input).id == null) _base2.id = name;
    }
  }
  if (value != null) attributes.input.value = value;
  attributes.input.type = 'password';
  if (attributes.label == null) attributes.label = {};
  if ((_base3 = attributes.label)["for"] == null) {
    _base3["for"] = attributes.input.id;
  }
  attributes.label['class'] = 'control-label';
  return div('.control-group', function() {
    if (attributes.input.name != null) {
      label(attributes.label, capitalize(attributes.input.name || ''));
    }
    return div('.controls', function() {
      input(attributes.input);
      if (attributes.help != null) return p('.help-block', attributes.help);
    });
  });
};
