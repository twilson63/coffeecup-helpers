helpers = require '../lib/helpers'
coffeecup = require 'coffeecup'

describe 'selectList', ->
  it 'should render array of select control', ->
    template = ->
      selectList 'name', [{display: 'Option 1', value: '1'}, {display: 'Option 2', value: '2'}]

    coffeecup.render(template, hardcode: helpers).should.equal '<select name="name"><option value="1">Option 1</option><option value="2">Option 2</option></select>'

  it 'should render array of select control', ->
    template = ->
      controlGroup 'Pick a color', ->
        selectList 'name', @colors

    colors = [
      {display: 'Red', value: 'red'}
      {display: 'Green', value: 'green'}
      {display: 'Blue', value: 'blue'}
    ]

    coffeecup.render(template, colors: colors, hardcode: helpers).should.equal '<div class="control-group"><label class="control-label">Pick a color</label><div class="controls"><select name="name"><option value="red">Red</option><option value="green">Green</option><option value="blue">Blue</option></select></div></div>'
