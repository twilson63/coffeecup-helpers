# textArea
#
# *given* string as name
# *and* optional string as value
# *and* object as hash of html attributes
# *then* return an html textarea tag
module.exports = (name, value, attributes) ->
  if typeof name is 'object'
    attributes = name
    name = null
  else if typeof value is 'object'
    attributes = value
    value = null

  attributes = {} unless attributes?
  attributes.name = name if name?

  labelAttributes = {}
  labelAttributes.for ?= attributes['id']

  label labelAttributes, attributes.name || '' if name?
  textarea attributes, value ?= ''
