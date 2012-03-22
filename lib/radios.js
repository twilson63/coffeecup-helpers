
module.exports = function(name, list, attributes) {
  var item, _i, _len, _results;
  _results = [];
  for (_i = 0, _len = list.length; _i < _len; _i++) {
    item = list[_i];
    _results.push(radiobtn(name, item.display, item.value, attributes));
  }
  return _results;
};
