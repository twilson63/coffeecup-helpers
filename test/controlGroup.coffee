hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#controlGroup(display, attributes, fn)', ->
    htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
    it 'should render div tag and controls inside', ->
      t = ->
        controlGroup 'Are you happy?', {}, ->
          radios 'happy_yn', [
            {display: 'Yes', value: 'y'}
            {display: 'No', value: 'n'}
          ]
      output = htmlf """
<div class="control-group">
  <label class="control-label">Are you happy?</label>
  <div class="controls">
    <label class="radio"><input name="happy_yn" value="y" type="radio" />Yes</label>
    <label class="radio"><input name="happy_yn" value="n" type="radio" />No</label>
  </div>
</div>
    """
      cc.render(t, { hardcode }).should.equal output
