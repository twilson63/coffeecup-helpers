var about, app, creamer, ecstatic, flatiron, index, layout, view;

flatiron = require('flatiron');

ecstatic = require('ecstatic');

creamer = require('creamer');

layout = require("" + __dirname + "/views/layout");

view = function(name) {
  return "" + __dirname + "/views/" + name;
};

index = require(view("index"));

about = require(view("about"));

app = flatiron.app;

app.use(flatiron.plugins.http);

app.use(creamer, {
  layout: layout
});

app.http.before = [
  ecstatic(__dirname + '/../public', {
    autoIndex: false,
    cache: true
  })
];

app.router.get('/', function() {
  var results;
  return results = app.render(index);
});

app.router.post('/foo', function() {
  this.res.writeHead(200, {
    'content-type': 'text/plain'
  });
  return this.res.end('You posted to me!');
});

app.router.get('/about', function() {
  var results;
  results = app.render(about);
  this.res.writeHead(200, {
    'Content-Type': 'text/html'
  });
  return this.res.end(results);
});

app.start(3000);
