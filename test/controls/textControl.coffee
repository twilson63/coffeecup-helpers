hardcode = require '../../lib/helpers'
cc = require 'coffeecup'

describe 'textControl', ->
  it 'should render text control', ->
    output = """
<div class="control-group">
  <label for="foo" class="control-label">Foo</label>
  <div class="controls">
    <input name="foo" id="foo" type="text" />
    <p class="help-block">Help text here</p>
  </div>
</div>
"""
    output = output.replace /(\n\s+|\n+)/g, ''
    t = ->
      textControl 'foo', help: 'Help text here'
    cc.render(t, {hardcode}).should.equal output

  it 'should render text control with value', ->
    output = """
<div class="control-group">
  <label for="foo" class="control-label">Foo</label>
  <div class="controls">
    <input name="foo" id="foo" value="bar" type="text" />
    <p class="help-block">Help text here</p>
  </div>
</div>
"""
    output = output.replace /(\n\s+|\n+)/g, ''

    t = ->
      textControl 'foo', @bar, help: 'Help text here'
    cc.render(t, bar: 'bar', hardcode: hardcode).should.equal output

  it 'should render text control with no help', ->
    output = """
<div class="control-group">
  <label for="foo" class="control-label">Foo</label>
  <div class="controls">
    <input name="foo" id="foo" type="text" />
  </div>
</div>
"""
    output = output.replace /(\n\s+|\n+)/g, ''

    t = ->
      textControl 'foo'
    cc.render(t, bar: 'bar', hardcode: hardcode).should.equal output
  it 'should render text control with no name', ->
    output = """
<div class="control-group">
  <div class="controls">
    <input type="text" />
  </div>
</div>
"""
    output = output.replace /(\n\s+|\n+)/g, ''

    t = ->
      textControl()
    cc.render(t, bar: 'bar', hardcode: hardcode).should.equal output
