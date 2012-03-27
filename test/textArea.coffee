hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#textArea(name, value, attributes)', ->
    htmlf = (html) -> html.replace /(\n+|\n\s+)/, ''
    it 'should render textarea tag with no value', ->
      t = ->
        textArea 'foo', textarea: { id: 'world' }
      output = htmlf """
<label for="world">Foo</label>
<textarea id="world" name="foo"></textarea>
      """
      cc.render(t, { hardcode }).should.equal output

    it 'should render textarea tag with no value', ->
      t = ->
        textArea 'foo', @bar, textarea: { id: 'world' }
      output = htmlf """
<label for="world">Foo</label>
<textarea id="world" name="foo">bar</textarea>
      """
      attr = { hardcode, bar: 'bar' }
      cc.render(t, attr).should.equal output
    it 'should render textarea tag with no id', ->
      t = ->
        textArea 'foo', @bar
      output = htmlf """
<label for="foo">Foo</label>
<textarea name="foo" id="foo">bar</textarea>
      """
      attr = { hardcode, bar: 'bar' }
      cc.render(t, attr).should.equal output
    it 'should render empty textarea tag', ->
      t = ->
        textArea()
      output = htmlf """
<textarea></textarea>
      """
      cc.render(t, { hardcode }).should.equal output
