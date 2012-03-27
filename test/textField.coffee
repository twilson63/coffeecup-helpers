hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#textField(name, value, attributes)', ->
    htmlf = (html) -> html.replace /(\n+|\n\s+)/, ''
    it 'should render input text tag no value', ->
      output = htmlf """
<label for="world">Foo</label>
<input id="world" name="foo" type="text" />
      """
      t = ->
        textField 'foo', input: { id: 'world' }
      cc.render(t, { hardcode }).should.equal output

    it 'should render input text tag value', ->
      output = htmlf """
<label for="world">Foo</label>
<input id="world" name="foo" value="bar" type="text" />
      """
      t = ->
        textField 'foo', @bar, input: { id: 'world' }
      attr = { hardcode, bar: 'bar'}
      cc.render(t, attr).should.equal output

    it 'should render input text tag nothing else', ->
      output = htmlf """
<input type="text" />
      """
      t = ->
        textField()
      attr = { hardcode, bar: 'bar'}
      cc.render(t, attr).should.equal output
