hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#passwordField(name, value, attributes)', ->
    htmlf = (html) -> html.replace /(\n+|\n\s+)/, ''
    it 'should render input password', ->
      output = htmlf """
<label for="foo">Foo</label>
<input name="foo" id="foo" type="password" />
      """
      t = ->
        passwordField 'foo'
      cc.render(t, { hardcode }).should.equal output

    it 'should render input password tag no value', ->
      output = htmlf """
<label for="world">Foo</label>
<input id="world" name="foo" type="password" />
      """
      t = ->
        passwordField 'foo', input: { id: 'world' }
      cc.render(t, { hardcode }).should.equal output

    it 'should render input password tag value', ->
      output = htmlf """
<label for="world">Foo</label>
<input id="world" name="foo" value="bar" type="password" />
      """
      t = ->
        passwordField 'foo', @bar, input: { id: 'world' }
      attr = { hardcode, bar: 'bar'}
      cc.render(t, attr).should.equal output

    it 'should render input password tag nothing else', ->
      output = htmlf """
<input type="password" />
      """
      t = ->
        passwordField()
      attr = { hardcode, bar: 'bar'}
      cc.render(t, attr).should.equal output

