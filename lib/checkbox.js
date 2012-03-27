var __hasProp = Object.prototype.hasOwnProperty;

module.exports = function(name, display, attributes, checked, unchecked) {
  var addClass, capitalize, merge;
  if (display == null) display = name;
  if (attributes == null) attributes = {};
  if (checked == null) checked = "1";
  if (unchecked == null) unchecked = "0";
  merge = function(x, y) {
    var k, v;
    for (k in y) {
      if (!__hasProp.call(y, k)) continue;
      v = y[k];
      x[k] = v;
    }
    return x;
  };
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
  if (attributes == null) attributes = {};
  if (attributes.label == null) attributes.label = {};
  if (attributes.input == null) attributes.input = {};
  if (!(attributes.label['class'] || '').match(/checkbox/)) {
    attributes.label['class'] = addClass('checkbox', attributes.label['class']);
  }
  return label(attributes.label, function() {
    input({
      name: name,
      value: unchecked,
      type: 'hidden'
    });
    input(merge(attributes.input, {
      name: name,
      value: checked,
      type: 'checkbox'
    }));
    return text(display || capitalize(name));
  });
};
