# # checkboxes(name, list, attributes )
#
# checkboxes creates a list of checkboxes from an array
# each item in the array should have a display and value attribute
#
# params
#
#     Parameter  |  Type  |  Required  | Description
#     -----------|--------|------------|----------------------
#     name       | string | optional   | input element name attribute and label display
#     list       | string | optional   | label text to show next to checkbox
#     attributes | object | optional   | object containing both input and label attributes
#
# usage
#
#    template = ->
#      form ->
#        p ->
#          checkboxes "checkbox_group", [{display: 'Option 1', value: '1'}, {display: 'Option 2', value: '2'}]
#
# output
#     <form>
#       <p>
#         <label class="checkbox">
#           <input name="checkbox_group" value="1" type="checkbox" />Option 1
#         </label>
#         <label class="checkbox">
#           <input name="checkbox_group" value="2" type="checkbox" />Option 2
#         </label>
#       </p>
#     </form>
#

module.exports = (name, list, attributes={}) ->
  capitalize = (words) ->
    (word[0].toUpperCase() + word[1..-1].toLowerCase() for word in words.split /\_+/).join ' '
  addClass = (klass, classes) -> ("#{klass} #{classes || ''}").trim()
  attributes.input ?= {}
  attributes.label ?= {}
  attributes.label['class'] = addClass('checkbox', attributes.label['class']) unless (attributes.label['class'] or '').match(/checkbox/)
  attributes.input.name = name
  attributes.input.type = 'checkbox'
  for item in list
    attributes.input.value = item.value
    label attributes.label, -> 
      input attributes.input
      text item.display
