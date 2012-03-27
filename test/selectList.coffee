hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#selectList(name, options, attributes)', ->
    htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
    it 'should render array of select control', ->
      t = ->
        selectList 'name', [{display: 'Option 1', value: '1'}, {display: 'Option 2', value: '2'}]

      output = htmlf """
<select name="name">
  <option value="1">Option 1</option>
  <option value="2">Option 2</option>
</select>
      """
      cc.render(t, { hardcode }).should.equal output

    it 'should render array of select control', ->
      t = ->
        controlGroup 'Pick a color', ->
          selectList 'name', @colors

      colors = [
        {display: 'Red', value: 'red'}
        {display: 'Green', value: 'green'}
        {display: 'Blue', value: 'blue'}
      ]

      output = htmlf """
<div class="control-group">
  <label class="control-label">Pick a color</label>
  <div class="controls">
    <select name="name">
      <option value="red">Red</option>
      <option value="green">Green</option>
      <option value="blue">Blue</option>
    </select>
  </div>
</div>
      """
      cc.render(t, { hardcode, colors: colors}).should.equal output
