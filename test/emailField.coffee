hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#emailField(name, value, attributes)', ->
    htmlf = (html) -> html.replace /(\n+|\n\s+)/, ''
    it 'should render input email tag no value', ->
      t = ->
        emailField 'foo', input: { id: 'world' }
      output = htmlf """
<label for="world">Foo</label>
<input id="world" name="foo" type="email" />
      """
      cc.render(t, { hardcode }).should.equal output

    it 'should render input email tag value', ->
      t = ->
        emailField 'foo', @bar, input: { id: 'world' }
      output = htmlf """
<label for="world">Foo</label>
<input id="world" name="foo" value="bar@baz.com" type="email" />
      """
      attr = { hardcode, bar: 'bar@baz.com'}
      cc.render(t, attr).should.equal output

    it 'should render input email tag nothing else', ->
      t = ->
        emailField()
      output = "<input type=\"email\" />"
      cc.render(t, { hardcode }).should.equal output

