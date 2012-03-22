helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'

describe 'textField', ->
  it 'should render input text tag no value', ->
    template = ->
      textField 'foo', id: 'world'
    coffeecup.render(template, hardcode: helpers).should.equal "<label for=\"world\">foo</label><input id=\"world\" name=\"foo\" type=\"text\" />"

  it 'should render input text tag value', ->
    template = ->
      textField 'foo', @bar, id: 'world'
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<label for=\"world\">foo</label><input id=\"world\" name=\"foo\" value=\"bar\" type=\"text\" />"

  it 'should render input text tag nothing else', ->
    template = ->
      textField()
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"text\" />"
