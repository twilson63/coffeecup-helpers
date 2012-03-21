formHelpers = require '../lib/formHelpers'
coffeecup = require 'coffeecup'

describe 'textField', ->
  it 'should render input checkbox tag', ->
    template = ->
      checkbox 'foo', 'Are you worldly?'
    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal "<label class=\"checkbox\"><input class=\"checkbox\" name=\"foo\" type=\"checkbox\" />Are you worldly?</label>"

  it 'should render input text tag value', ->
    template = ->
      checkbox 'foo', @bar, class: 'inline' 
    helpers = formHelpers
    coffeecup.render(template, bar: 'Hello World', hardcode: helpers).should.equal "<label class=\"checkbox inline\"><input class=\"checkbox inline\" name=\"foo\" type=\"checkbox\" />Hello World</label>"
  
  # it 'should render input text tag nothing else', ->
  #   template = ->
  #     checkbox()
  #   helpers = formHelpers
  #   coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"text\" />"

