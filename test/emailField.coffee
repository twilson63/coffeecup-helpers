formHelpers = require '../lib/formHelpers'
coffeecup = require 'coffeecup'

describe 'emailField', ->
  it 'should render input email tag no value', ->
    template = ->
      emailField 'foo', id: 'world'
    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal "<label for=\"world\">foo</label><input id=\"world\" name=\"foo\" type=\"email\" />"

  it 'should render input email tag value', ->
    template = ->
      emailField 'foo', @bar, id: 'world'
    helpers = formHelpers
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<label for=\"world\">foo</label><input id=\"world\" name=\"foo\" value=\"bar\" type=\"email\" />"

  it 'should render input email tag nothing else', ->
    template = ->
      emailField()
    helpers = formHelpers
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"email\" />"

