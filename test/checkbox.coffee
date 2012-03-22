helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'

describe 'checkbox', ->
  it 'should render input checkbox tag', ->
    template = ->
      checkbox 'foo', 'Are you worldly?'
    coffeecup.render(template, hardcode: helpers).should.equal "<label class=\"checkbox\"><input name=\"foo\" type=\"checkbox\" />Are you worldly?</label>"

  it 'should render input checkbox tag value', ->
    template = ->
      checkbox 'foo', @bar, label: {class: 'inline' }
    coffeecup.render(template, bar: 'Hello World', hardcode: helpers).should.equal "<label class=\"checkbox inline\"><input name=\"foo\" type=\"checkbox\" />Hello World</label>"

  it 'should render input text tag nothing else', ->
    template = ->
      checkbox 'foo'
    coffeecup.render(template, hardcode: helpers).should.equal "<label class=\"checkbox\"><input name=\"foo\" type=\"checkbox\" />foo</label>"

