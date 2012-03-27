
module.exports = function(name, list, attributes) {
  var addClass, capitalize, item, _i, _len, _results;
  if (attributes == null) attributes = {};
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
  addClass = function(klass, classes) {
    return ("" + klass + " " + (classes || '')).trim();
  };
  if (attributes.input == null) attributes.input = {};
  if (attributes.label == null) attributes.label = {};
  if (!(attributes.label['class'] || '').match(/checkbox/)) {
    attributes.label['class'] = addClass('checkbox', attributes.label['class']);
  }
  attributes.input.name = name;
  attributes.input.type = 'checkbox';
  _results = [];
  for (_i = 0, _len = list.length; _i < _len; _i++) {
    item = list[_i];
    attributes.input.value = item.value;
    _results.push(label(attributes.label, function() {
      input(attributes.input);
      return text(item.display);
    }));
  }
  return _results;
};
