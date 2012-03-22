# control group
#
# options allow you to pass attributes
# for all three tags
# 
# options.group is the object for the control-group attributes
# options.label is the object for the control-label attributes
# options.controls is the object for the controls attributes
#
# creates the following html markup
#
# <div class="control-group">
#   <label class="control-label">[Display]</label>
#   <div class="controls">
#      [controls]
#   </div>
# </div>
module.exports = (display, options, controls) ->
  if typeof options is 'function'
    controls = options
    options = {}
  else if typeof display is 'function'
    controls = display
    display = 'No Display Text Provided'

  addClass = (klass, classes) -> ("#{klass} #{classes || ''}").trim()
  options ?= {}
  options.group ?= {}
  options.group['class'] = addClass 'control-group', options.group['class']

  options.label ?= {}
  options.label['class'] = addClass 'control-label', options.label['class']

  options.controls ?= {}
  options.controls['class'] = addClass 'controls', options.controls['class']


  div options.group, ->
    label options.label, display
    div options.controls, controls
