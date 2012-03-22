# selectList
#
# selectList creates a list of options from an array
# each item in the array should have a display and value attribute
#
# usage:
#
# template = ->
#   selectList "name", [{display: 'Option 1', value: '1'}, {display: 'Option 2', value: '2'}]
#
# renders
#
# <select name="name"><option value="1">Option 1</option><option value="2">Option 2</option></select>
module.exports = (name, list, attributes) ->
  attributes ?= {}
  attributes.name = name || ''

  select attributes, ->
    for item in list
      option { value: item['value']}, item.display

