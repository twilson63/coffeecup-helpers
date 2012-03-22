formHelpers = require '../lib/formHelpers'
coffeecup = require 'coffeecup'


describe 'passwordField', ->
  it 'should render input password tag no value', ->
    template = ->
      passwordField 'foo', id: 'world'
    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal "<label for=\"world\">foo</label><input id=\"world\" name=\"foo\" type=\"password\" />"

  it 'should render input password tag value', ->
    template = ->
      passwordField 'foo', @bar, id: 'world'
    helpers = formHelpers
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<label for=\"world\">foo</label><input id=\"world\" name=\"foo\" value=\"bar\" type=\"password\" />"

  it 'should render input password tag nothing else', ->
    template = ->
      passwordField()
    helpers = formHelpers
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"password\" />"

