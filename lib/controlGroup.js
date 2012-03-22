
module.exports = function(display, options, controls) {
  var addClass;
  if (typeof options === 'function') {
    controls = options;
    options = {};
  } else if (typeof display === 'function') {
    controls = display;
    display = 'No Display Text Provided';
  }
  addClass = function(klass, classes) {
    return ("" + klass + " " + (classes || '')).trim();
  };
  if (options == null) options = {};
  if (options.group == null) options.group = {};
  options.group['class'] = addClass('control-group', options.group['class']);
  if (options.label == null) options.label = {};
  options.label['class'] = addClass('control-label', options.label['class']);
  if (options.controls == null) options.controls = {};
  options.controls['class'] = addClass('controls', options.controls['class']);
  return div(options.group, function() {
    label(options.label, display);
    return div(options.controls, controls);
  });
};
