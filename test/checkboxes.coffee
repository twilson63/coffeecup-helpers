helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'

describe 'checkboxes', ->
  it 'should render array of radio controls', ->
    template = ->
      checkboxes 'group', [{display: 'Option 1', value: '1'}, {display: 'Option 2', value: '2'}]

    coffeecup.render(template, hardcode: helpers).should.equal '<label class="checkbox"><input name="group" value="1" type="checkbox" />Option 1</label><label class="checkbox"><input name="group" value="2" type="checkbox" />Option 2</label>'

  # it 'should not render array of radio controls with inline class', ->
  #   template = ->
  #     radios 'group', [{display: 'Yes', value: 'y'}, {display: 'No', value: 'n'}], label: {class: 'inline'}
  # 
  #   helpers = formHelpers
  #   coffeecup.render(template, hardcode: helpers).should.equal '<label class="radio inline"><input name="group" value="y" type="radio" />Yes</label><label class="radio inline"><input name="group" value="n" type="radio" />No</label>'
  # 
  # it 'should not render array of radio controls', ->
  #   template = ->
  #     radios 'group', []
  # 
  #   helpers = formHelpers
  #   coffeecup.render(template, hardcode: helpers).should.be.empty
