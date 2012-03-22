# radios
#
# checkboxes creates a list of checkboxes from an array
# each item in the array should have a display and value attribute
#
# usage:
#
# template = ->
#   checkboxes "checkbox_group", [{display: 'Option 1', value: '1'}, {display: 'Option 2', value: '2'}]
#
# renders
#
# <label class="checkbox"><input name="checkbox_group" value="1" type="checkbox" />Option 1</label>
# <label class="checkbox"><input name="checkbox_group" value="2" type="checkbox" />Option 2</label>
module.exports = (name, list, attributes) ->
  for item in list
    checkbox name, item.display, item.value, attributes

