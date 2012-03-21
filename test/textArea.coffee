formHelpers = require '../lib/formHelpers'
coffeecup = require 'coffeecup'

describe 'textArea', ->
  it 'should render textarea tag with no value', ->
    template = ->
      textArea 'foo', id: 'world'
    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal "<label for=\"world\">foo</label><textarea id=\"world\" name=\"foo\"></textarea>"
  it 'should render textarea tag with no value', ->
    template = ->
      textArea 'foo', @bar, id: 'world'
    helpers = formHelpers
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<label for=\"world\">foo</label><textarea id=\"world\" name=\"foo\">bar</textarea>"
  it 'should render textarea tag with no id', ->
    template = ->
      textArea 'foo', @bar
    helpers = formHelpers
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<label>foo</label><textarea name=\"foo\">bar</textarea>"
  it 'should render empty textarea tag', ->
    template = ->
      textArea()
    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal "<textarea></textarea>"

