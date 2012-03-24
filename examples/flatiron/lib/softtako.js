var app, cc, hardcode, layout, tako;

tako = require('tako');

cc = require('coffeecup');

hardcode = require('coffeecup-helpers');

hardcode.client = require('./client');

layout = require("" + __dirname + "/views/layout");

app = tako();

app.render = function(page, data) {
  if (data == null) data = {};
  hardcode.content = page;
  return cc.render(layout, {
    hardcode: hardcode,
    data: data
  });
};

module.exports = function() {
  return app;
};
