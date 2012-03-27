hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#radios(name, list, attributes)', ->
    htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
    it 'should render array of radio controls', ->
      t = ->
        radios 'group', [{display: 'Yes', value: 'y'}, {display: 'No', value: 'n'}]

      output = htmlf """
<label class="radio">
  <input name="group" value="y" type="radio" />Yes
</label>
<label class="radio">
  <input name="group" value="n" type="radio" />No
</label>
      """
      cc.render(t, { hardcode }).should.equal output

    it 'should not render array of radio controls with inline class', ->
      t = ->
        radios 'group', [{display: 'Yes', value: 'y'}, {display: 'No', value: 'n'}], label: {class: 'inline'}
      
      output = htmlf """
<label class="radio inline">
  <input name="group" value="y" type="radio" />Yes
</label>
<label class="radio inline">
  <input name="group" value="n" type="radio" />No
</label>
      """
      cc.render(t, { hardcode }).should.equal output

    it 'should not render array of radio controls', ->
      t = ->
        radios 'group', []

      cc.render(t, { hardcode }).should.be.empty
