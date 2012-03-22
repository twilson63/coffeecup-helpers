# passwordField
#
# *given* string as name
# *and* optional string as value
# *and* object as hash of html attributes
# *then* return an html input type password tag
module.exports = (name, value, attributes) ->
  if typeof name is 'object'
    attributes = name
    name = null
  else if typeof value is 'object'
    attributes = value
    value = null

  attributes = {} unless attributes?
  attributes.name = name if name?
  attributes.value = value if value?
  attributes.type = 'password'

  labelAttributes = {}
  labelAttributes.for = attributes.id if attributes.id?

  label labelAttributes, name if name?
  input attributes
