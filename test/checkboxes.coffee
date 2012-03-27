hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#checkboxes(name, list, attributes)', ->
    htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
    it 'should render array of checkboxes controls', ->
      t = ->
        checkboxes 'group', [
          {display: 'Option 1', value: '1'}
          {display: 'Option 2', value: '2'}
        ]
      output = htmlf """
<label class="checkbox">
  <input name="group" type="checkbox" value="1" />Option 1
</label>
<label class="checkbox">
  <input name="group" type="checkbox" value="2" />Option 2
</label>
      """
      cc.render(t, { hardcode }).should.equal output
    it 'should render array of checkboxes inline controls', ->
      t = ->
        checkboxes 'group', [
          {display: 'Option 1', value: '1'}
          {display: 'Option 2', value: '2'}
        ], label: { class: 'inline' }
      output = htmlf """
<label class="checkbox inline">
  <input name="group" type="checkbox" value="1" />Option 1
</label>
<label class="checkbox inline">
  <input name="group" type="checkbox" value="2" />Option 2
</label>
      """
      cc.render(t, { hardcode }).should.equal output
