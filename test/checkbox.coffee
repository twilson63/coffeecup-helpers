hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#checkbox(name, display, attributes)', ->
    htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
    it 'should render input checkbox tag', ->
      t = ->
        checkbox 'foo', 'Remember Me'
      output = htmlf """
<label class="checkbox">
  <input name="foo" value="0" type="hidden" />
  <input name="foo" value="1" type="checkbox" />Remember Me
</label>
      """
      cc.render(t, { hardcode }).should.equal output
    it 'should render input checkbox tag value', ->
      t = ->
        checkbox 'foo', @bar, label: {class: 'inline' }
      output = htmlf """
<label class="checkbox inline">
  <input name="foo" value="0" type="hidden" />
  <input name="foo" value="1" type="checkbox" />Hello World
</label>
      """
      cc.render(t, { hardcode, bar: "Hello World"}).should.equal output
    it 'should render name and value only', ->
      t = ->
        checkbox 'foo', 'Bar'
      output = htmlf """
<label class="checkbox">
  <input name="foo" value="0" type="hidden" />
  <input name="foo" value="1" type="checkbox" />Bar
</label>
      """  
      cc.render(t, { hardcode }).should.equal output
    it 'should render checkbox with different values Yes and No', ->
      t = ->
        checkbox 'foo', 'Bar', null, 'Yes', 'No'
      output = htmlf """
<label class="checkbox">
  <input name="foo" value="No" type="hidden" />
  <input name="foo" value="Yes" type="checkbox" />Bar
</label>
      """  
      cc.render(t, { hardcode }).should.equal output

