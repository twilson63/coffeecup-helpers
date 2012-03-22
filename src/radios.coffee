# radios
#
# radios creates a list of radio buttons from an array
# each item in the array should have a display and value attribute
#
# usage:
#
# template = ->
#   radios "radio_group", [{display: 'Yes', value: 'y'}, {display: 'No', value: 'n'}]
#
# renders
#
# <label class="radio"><input name="radio_group" value="y" type="radio" />Yes</label>
# <label class="radio"><input name="radio_group" value="n" type="radio" />No</label>
module.exports = (name, list, attributes) ->
  for item in list
    radiobtn name, item.display, item.value, attributes

