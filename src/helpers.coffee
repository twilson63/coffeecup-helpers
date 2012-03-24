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
  controlGroup: require "#{__dirname}/controlGroup"
  selectList: require "#{__dirname}/selectList"
  radios: require "#{__dirname}/radios"
  radiobtn: require "#{__dirname}/radiobtn"
  checkboxes: require "#{__dirname}/checkboxes"
  checkbox: require "#{__dirname}/checkbox"
  textField: require "#{__dirname}/textField"
  textArea: require "#{__dirname}/textArea"
  passwordField: require "#{__dirname}/passwordField"
  emailField: require "#{__dirname}/emailField"
  # fileField
  # buttonField
  # form
  # twitterField
  # dollarField
  # searchField
  # buttons and icons
  # controls
  textControl: require "#{__dirname}/controls/textControl"
  passwordControl: require "#{__dirname}/controls/passwordControl"