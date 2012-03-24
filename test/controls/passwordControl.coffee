hardcode = require '../../lib/helpers'
cc = require 'coffeecup'

describe 'Bootstrap Form Controls', ->
  describe '#passwordControl()', ->
    it 'should render password control', ->
      output = """
  <div class="control-group">
    <label for="foo" class="control-label">Foo</label>
    <div class="controls">
      <input name="foo" id="foo" type="password" />
      <p class="help-block">Help text here</p>
    </div>
  </div>
  """
      output = output.replace /(\n\s+|\n+)/g, ''
      t = ->
        passwordControl 'foo', help: 'Help text here'
      cc.render(t, {hardcode}).should.equal output

    it 'should render password control with value', ->
      output = """
  <div class="control-group">
    <label for="foo" class="control-label">Foo</label>
    <div class="controls">
      <input name="foo" id="foo" value="bar" type="password" />
      <p class="help-block">Help text here</p>
    </div>
  </div>
  """
      output = output.replace /(\n\s+|\n+)/g, ''

      t = ->
        passwordControl 'foo', @bar, help: 'Help text here'
      cc.render(t, bar: 'bar', hardcode: hardcode).should.equal output

    it 'should render password control with no help', ->
      output = """
  <div class="control-group">
    <label for="foo" class="control-label">Foo</label>
    <div class="controls">
      <input name="foo" id="foo" type="password" />
    </div>
  </div>
  """
      output = output.replace /(\n\s+|\n+)/g, ''

      t = ->
        passwordControl 'foo'
      cc.render(t, bar: 'bar', hardcode: hardcode).should.equal output
    it 'should render password control with no name', ->
      output = """
  <div class="control-group">
    <div class="controls">
      <input type="password" />
    </div>
  </div>
  """
      output = output.replace /(\n\s+|\n+)/g, ''

      t = ->
        passwordControl()
      cc.render(t, bar: 'bar', hardcode: hardcode).should.equal output
