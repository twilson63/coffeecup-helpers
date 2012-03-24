flatiron = require 'flatiron'
creamer = require 'creamer'
ecstatic = require 'ecstatic'
app = flatiron.app

app.use flatiron.plugins.http
app.use creamer


app.http.before = [
  ecstatic __dirname + '/../public', autoIndex: off, cache: on
]

app.router.get '/', ->
  @res.writeHead 200, 'content-type': 'text/html'
  @res.end app.render -> h1 'foo'
app.router.post '/foo', -> 
  @res.writeHead 200, 'content-type': 'text/plain'
  @res.write 'foo'
  @res.end()

app.start 3000
