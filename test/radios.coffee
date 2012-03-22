formHelpers = require '../lib/formHelpers'
coffeecup = require 'coffeecup'

describe 'radios', ->
  it 'should render array of radio controls', ->
    template = ->
      radios 'group', [{display: 'Yes', value: 'y'}, {display: 'No', value: 'n'}]

    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal """<label class="radio"><input name="group" value="y" type="radio" />Yes</label><label class="radio"><input name="group" value="n" type="radio" />No</label>"""

  it 'should not render array of radio controls with inline class', ->
    template = ->
      radios 'group', [{display: 'Yes', value: 'y'}, {display: 'No', value: 'n'}], label: {class: 'inline'}

    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal '<label class="radio inline"><input name="group" value="y" type="radio" />Yes</label><label class="radio inline"><input name="group" value="n" type="radio" />No</label>'

  it 'should not render array of radio controls', ->
    template = ->
      radios 'group', []

    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.be.empty
