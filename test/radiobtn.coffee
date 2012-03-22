formHelpers = require '../lib/formHelpers'
coffeecup = require 'coffeecup'

describe 'radiobtn', ->
  it 'should render input radio tag', ->
    template = ->
      radiobtn 'foo', 'Radio Foo'
    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal "<label class=\"radio\"><input name=\"foo\" type=\"radio\" />Radio Foo</label>"

  # it 'should render input checkbox tag value', ->
  #   template = ->
  #     checkbox 'foo', @bar, class: 'inline' 
  #   helpers = formHelpers
  #   coffeecup.render(template, bar: 'Hello World', hardcode: helpers).should.equal "<label class=\"checkbox inline\"><input class=\"checkbox inline\" name=\"foo\" type=\"checkbox\" />Hello World</label>"
  
  # it 'should render input text tag nothing else', ->
  #   template = ->
  #     checkbox()
  #   helpers = formHelpers
  #   coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"text\" />"

