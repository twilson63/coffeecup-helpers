# # textControl(name, value, attributes)
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
#     attributes | object | optional   | object containing both input attr, label attr, and help text
#
# usage
#
#    template = ->
#      form ->
#        fieldset ->
#          legend 'Section'
#          textControl 'name', help: 'Enter your name'
#
# output
#     <form>
#       <fieldset>
#         <div class="control-group">
#           <label class="control-label" for="name">Name</label>
#           <div class="controls">
#             <input name="name" id="name" type="text" />
#             <p class="help-block">Enter your name</p>
#           </div>
#         </div>
#       </fieldset>
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
  attributes.input.type = 'text'

  attributes.label ?= {}
  attributes.label.for ?= attributes.input.id
  attributes.label['class'] = 'control-label'
  
  div '.control-group', ->
    label attributes.label, capitalize(attributes.input.name || '') if attributes.input.name?
    div '.controls', ->
      input attributes.input
      p '.help-block', attributes.help if attributes.help?