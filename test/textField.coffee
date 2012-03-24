helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'

describe 'textField', ->
  it 'should render input text tag no value', ->
    output = """
<label for="world">Foo</label>
<input id="world" name="foo" type="text" />
"""
    output = output.replace(/\n+/g, '')
    console.log output
    template = ->
      textField 'foo', input: { id: 'world' }
    coffeecup.render(template, hardcode: helpers).should.equal output

  it 'should render input text tag value', ->
    output = """
<label for="world">Foo</label>
<input id="world" name="foo" value="bar" type="text" />
"""
    output = output.replace(/\n+/g, '')

    template = ->
      textField 'foo', @bar, input: { id: 'world' }
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal output

  it 'should render input text tag nothing else', ->
    output = "<input type=\"text\" />"
    template = ->
      textField()
    coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal output

  it 'should capitalize name', ->
    output = """
<p>
  <label for="foo_bar_baz">Foo Bar Baz</label>
  <input name="foo_bar_baz" id="foo_bar_baz" type="text" />
</p>
"""
    output = output.replace /(\n\s+|\n+)/g, ''
    template = ->
      p ->
        textField 'foo_bar_baz'
    coffeecup.render(template, hardcode: helpers).should.equal output