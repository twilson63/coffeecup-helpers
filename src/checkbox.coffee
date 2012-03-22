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
module.exports = (name, display, value, options) ->
  if typeof name is 'object'
    options = name
    name = null
  else if typeof display is 'object'
    options = display
    display = null
  else if typeof value is 'object'
    options = value
    value = null

  addClass = (klass, classes) -> ("#{klass} #{classes || ''}").trim()

  options ?= {}
  options.label ?= {}
  options.label['class'] = addClass('checkbox', options.label['class']) unless (options.label['class'] or '').match(/checkbox/)
  options.input ?= {}
  options.input.name = name
  options.input.value = value
  options.input.type = 'checkbox'
  
  label options.label, -> 
    input options.input
    text display || name
