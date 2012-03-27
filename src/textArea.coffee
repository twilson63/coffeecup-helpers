# # textArea(name, value, attributes)
#
# CoffeeCup Helper to generate label and textarea element
# element.
#
# params
#
#     Parameter  |  Type  |  Required  | Description
#     -----------|--------|------------|----------------------
#     name       | string | optional   | input element name attribute and label display
#     value      | string | optional   | input element value attribute
#     attributes | object | optional   | object containing both input and label attributes
#
# usage
#
#    template = ->
#      form ->
#        p ->
#          textArea 'name', 'value', label: { class: 'foo' }, textarea: { class: 'bar'}
#
# output
#     <form>
#       <p>
#         <label class="foo" for="name">Name</label>
#         <textarea class="bar" name="name" id="name" >value</textarea?
#       </p>
#     </form>
#
module.exports = (name, value, attributes) ->
  capitalize = (words) ->
    (word[0].toUpperCase() + word[1..-1].toLowerCase() for word in words.split /\_+/).join ' '

  if typeof name is 'object'
    attributes = name
    name = null
  else if typeof value is 'object'
    attributes = value
    value = null

  attributes ?= {}
  attributes.textarea ?= {}
  if name?
    attributes.textarea.name ?= name
    attributes.textarea.id ?= name unless attributes.textarea.id
  # label attr
  attributes.label ?= {}
  attributes.label.for ?= attributes.textarea.id

  label attributes.label, capitalize(attributes.textarea.name || '') if attributes.textarea.name?
  textarea attributes.textarea, if value? then value else ''