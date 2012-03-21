# # CoffeeCup FormHelpers
#
# This module is built explicitly for CoffeeCup
#
# usage:
#
# ``` coffeescript
# cc = require 'coffeecup'
# template = ->
#   textField 'foo', @bar, id: 'world'
# helpers = formHelpers
# cc.render(template, bar: 'bar', hardcode: helpers).should.equal "<input id=\"world\" type=\"text\" name=\"foo\" value=\"bar\" />"
# ```

module.exports = 
  # checkbox
  #
  # *given* optional string as name
  # *and* optional string as value
  # *and* object as hash of html attributes
  # *then* return an html input tag
  #
  # ``` html
  # <label class="checkbox">
  #   <input type="checkbox" name="foo" /> Remember me
  # </label>
  # ```
  checkbox: (name, display, attributes) ->
    if typeof name is 'object'
      attributes = name
      name = null
    else if typeof value is 'object'
      attributes = value
      value = null
    attributes = {} unless attributes?
    classes = ["checkbox"]
    classes.push attributes['class'] if attributes['class']
    attributes['class'] = classes.join(' ')
    attributes.name = name if name?
    attributes.type = 'checkbox'
    label class: classes.join(' '), -> 
      input attributes
      text display || name
  # textField
  #
  # *given* optional string as name
  # *and* optional string as value
  # *and* object as hash of html attributes
  # *then* return an html input tag
  textField: (name, value, attributes) ->
    if typeof name is 'object'
      attributes = name
      name = null
    else if typeof value is 'object'
      attributes = value
      value = null

    attributes = {} unless attributes?
    attributes.name = name if name?
    attributes.value = value if value?
    attributes.type = 'text'
    # label attr
    labelAttributes = {}
    labelAttributes.for ?= attributes['id']
    label labelAttributes, attributes.name || '' if name?
    input attributes

  # textArea
  #
  # *given* string as name
  # *and* optional string as value
  # *and* object as hash of html attributes
  # *then* return an html textarea tag
  textArea: (name, value, attributes) ->
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

  # passwordField
  #
  # *given* string as name
  # *and* optional string as value
  # *and* object as hash of html attributes
  # *then* return an html input type password tag
  passwordField: (name, value, attributes) ->
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

  # emailField
  #
  # *given* string as name
  # *and* optional string as value
  # *and* object as hash of html attributes
  # *then* return an html input type password tag
  emailField: (name, value, attributes) ->
    if typeof name is 'object'
      attributes = name
      name = null
    else if typeof value is 'object'
      attributes = value
      value = null

    attributes = {} unless attributes?
    attributes.name = name if name?
    attributes.value = value if value?
    attributes.type = 'email'

    labelAttributes = {}
    labelAttributes.for = attributes.id if attributes.id?

    label labelAttributes, name if name?
    input attributes

