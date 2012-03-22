
module.exports = function(name, display, value, options) {
  var addClass;
  if (typeof name === 'object') {
    options = name;
    name = null;
  } else if (typeof display === 'object') {
    options = display;
    display = null;
  } else if (typeof value === 'object') {
    options = value;
    value = null;
  }
  addClass = function(klass, classes) {
    return ("" + klass + " " + (classes || '')).trim();
  };
  if (options == null) options = {};
  if (options.label == null) options.label = {};
  if (!(options.label['class'] || '').match(/radio/)) {
    options.label['class'] = addClass('radio', options.label['class']);
  }
  if (options.input == null) options.input = {};
  options.input.name = name;
  options.input.value = value;
  options.input.type = 'radio';
  return label(options.label, function() {
    input(options.input);
    return text(display || name);
  });
};
