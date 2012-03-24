flatiron = require 'flatiron'
ecstatic = require 'ecstatic'
creamer = require 'creamer'
layout = require "#{__dirname}/views/layout" 
view = (name) -> "#{__dirname}/views/#{name}"
index = require view("index")
about = require view("about")

app = flatiron.app
app.use flatiron.plugins.http
app.use creamer, layout: layout

app.http.before = [
  ecstatic __dirname + '/../public', autoIndex: off, cache: on
]
# app.use coffeecup helpers plugin
app.router.get '/', ->
  results = app.render(index)
app.router.post '/foo', -> 
  @res.writeHead 200, 'content-type': 'text/plain'
  @res.end 'You posted to me!'
  # @res.writeHead 200, 'Content-Type': 'text/html'
  # @res.end results

app.router.get '/about', ->
  results = app.render(about)
  @res.writeHead 200, 'Content-Type': 'text/html'
  @res.end results

app.start(3000)
