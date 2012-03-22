helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'

describe 'controlGroup', ->
  it 'should render div tag and controls inside', ->
    template = ->
      controlGroup 'Are you happy?', {}, ->
        radios 'happy_yn', [{display: 'Yes', value: 'y'}, {display: 'No', value: 'n'}]

    coffeecup.render(template, hardcode: helpers).should.equal """<div class="control-group"><label class="control-label">Are you happy?</label><div class="controls"><label class="radio"><input name="happy_yn" value="y" type="radio" />Yes</label><label class="radio"><input name="happy_yn" value="n" type="radio" />No</label></div></div>"""
