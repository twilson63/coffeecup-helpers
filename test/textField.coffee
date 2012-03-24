helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'

describe 'textField', ->
  it 'should render input text tag no value', ->
    template = ->
      textField 'foo', input: { id: 'world' }
    coffeecup.render(template, hardcode: helpers).should.equal "<label for=\"world\">Foo</label><input id=\"world\" name=\"foo\" type=\"text\" />"

  it 'should render input text tag value', ->
    template = ->
      textField 'foo', @bar, input: { id: 'world' }
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<label for=\"world\">Foo</label><input id=\"world\" name=\"foo\" value=\"bar\" type=\"text\" />"

  it 'should render input text tag nothing else', ->
    template = ->
      textField()
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"text\" />"

  it 'should capitalize name', ->
    template = ->
      p ->
        textField 'foo_bar_baz'
    coffeecup.render(template, hardcode: helpers).should.equal "<p><label for=\"foo_bar_baz\">Foo Bar Baz</label><input name=\"foo_bar_baz\" id=\"foo_bar_baz\" type=\"text\" /></p>"