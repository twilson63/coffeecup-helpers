formHelpers = require '../lib/formHelpers'
coffeecup = require 'coffeecup'

describe 'selectList', ->
  it 'should render array of select control', ->
    template = ->
      selectList 'name', 'Display', [{display: 'Option 1', value: '1'}, {display: 'Option 2', value: '2'}]

    helpers = formHelpers
    coffeecup.render(template, hardcode: helpers).should.equal '<select name="name"><option value="1">Option 1</option><option value="2">Option 2</option></select>'
