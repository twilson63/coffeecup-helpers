# # passwordField(name, value, attributes)
#
# CoffeeCup Helper to generate label and input type text
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
#          passwordField 'name', label: { class: 'foo' }, input: { class: 'bar'}
#
# output
#     <form>
#       <p>
#         <label class="foo" for="name">Name</label>
#         <input class="bar" name="name" id="name" type="password" />
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
  attributes.input ?= {}
  if name?
    attributes.input.name ?= name
    attributes.input.id ?= name unless attributes.input.id

  attributes.input.value = value if value?
  attributes.input.type = 'password'

  # label attr
  attributes.label ?= {}
  attributes.label.for ?= attributes.input.id

  label attributes.label, capitalize(attributes.input.name || '') if attributes.input.name?
  input attributes.input
