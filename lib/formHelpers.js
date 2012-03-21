
module.exports = {
  checkbox: function(name, display, attributes) {
    var classes, value;
    if (typeof name === 'object') {
      attributes = name;
      name = null;
    } else if (typeof value === 'object') {
      attributes = value;
      value = null;
    }
    if (attributes == null) attributes = {};
    classes = ["checkbox"];
    if (attributes['class']) classes.push(attributes['class']);
    attributes['class'] = classes.join(' ');
    if (name != null) attributes.name = name;
    attributes.type = 'checkbox';
    return label({
      "class": classes.join(' ')
    }, function() {
      input(attributes);
      return text(display || name);
    });
  },
  textField: function(name, value, attributes) {
    var labelAttributes, _ref;
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
    attributes.type = 'text';
    labelAttributes = {};
    if ((_ref = labelAttributes["for"]) == null) {
      labelAttributes["for"] = attributes['id'];
    }
    if (name != null) label(labelAttributes, attributes.name || '');
    return input(attributes);
  },
  textArea: function(name, value, attributes) {
    var labelAttributes, _ref;
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
    if ((_ref = labelAttributes["for"]) == null) {
      labelAttributes["for"] = attributes['id'];
    }
    if (name != null) label(labelAttributes, attributes.name || '');
    return textarea(attributes, value != null ? value : value = '');
  },
  passwordField: function(name, value, attributes) {
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
  },
  emailField: function(name, value, attributes) {
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
    attributes.type = 'email';
    labelAttributes = {};
    if (attributes.id != null) labelAttributes["for"] = attributes.id;
    if (name != null) label(labelAttributes, name);
    return input(attributes);
  }
};
