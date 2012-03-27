# # checkbox(name, display=name, attributes={}, checked_value="1", unchecked_value="0")
#
# CoffeeCup Helper to generate label and input type text
# element.
#
# params
#
#     Parameter  |  Type  |  Required  | Description
#     -----------|--------|------------|----------------------
#     name       | string | optional   | input element name attribute and label display
#     display    | string | optional   | label text to show next to checkbox
#     attributes | object | optional   | object containing both input and label attributes
#     checked_value | string | optional | value to submit to server when checked
#     unchecked_value | string |optional | value to submit to server when not checked
#
#
# usage
#
#    template = ->
#      form ->
#        p ->
#          checkbox 'name', 'display', label: { class: 'foo' }, input: { class: 'bar'}, 'Yes', 'No'
#
# output
#     <form>
#       <p>
#         <label class="foo" for="name">
#           <input name="name" value="No" type="hidden"></input>
#           <input class="bar" name="name" id="name" value="Yes" type="checkbox" />Display
#         </label>
#       </p>
#     </form>
#
module.exports = (name, display=name, attributes={}, checked="1", unchecked="0") ->
  merge = (x, y) -> 
    x[k] = v for own k, v of y
    return x
  capitalize = (words) ->
    (word[0].toUpperCase() + word[1..-1].toLowerCase() for word in words.split /\_+/).join ' '
  addClass = (klass, classes) -> ("#{klass} #{classes || ''}").trim()

  attributes ?= {}
  attributes.label ?= {}
  attributes.input ?= {}
  attributes.label['class'] = addClass('checkbox', attributes.label['class']) unless (attributes.label['class'] or '').match(/checkbox/)
  
  label attributes.label, -> 
    input name: name, value: unchecked, type: 'hidden'
    input merge(attributes.input, { name: name, value: checked, type: 'checkbox' })
    text display || capitalize(name)
