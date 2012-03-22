
module.exports = function(name, list, attributes) {
  if (attributes == null) attributes = {};
  attributes.name = name || '';
  return select(attributes, function() {
    var item, _i, _len, _results;
    _results = [];
    for (_i = 0, _len = list.length; _i < _len; _i++) {
      item = list[_i];
      _results.push(option({
        value: item['value']
      }, item.display));
    }
    return _results;
  });
};
