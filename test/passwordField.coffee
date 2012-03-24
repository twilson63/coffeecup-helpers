helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'


describe 'passwordField', ->
  it 'should render input password', ->
    template = ->
      passwordField 'foo'
    coffeecup.render(template, hardcode: helpers).should.equal "<label for=\"foo\">Foo</label><input name=\"foo\" id=\"foo\" type=\"password\" />"

  it 'should render input password tag no value', ->
    template = ->
      passwordField 'foo', input: { id: 'world' }
    coffeecup.render(template, hardcode: helpers).should.equal "<label for=\"world\">Foo</label><input id=\"world\" name=\"foo\" type=\"password\" />"

  it 'should render input password tag value', ->
    template = ->
      passwordField 'foo', @bar, input: { id: 'world' }
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<label for=\"world\">Foo</label><input id=\"world\" name=\"foo\" value=\"bar\" type=\"password\" />"

  it 'should render input password tag nothing else', ->
    template = ->
      passwordField()
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"password\" />"

