hardcode = require '../lib/helpers'
cc = require 'coffeecup'

describe 'coffeecup-helpers', ->
  describe '#radiobtn(name, value)', ->
    htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
    it 'should render input radio tag', ->
      t = ->
        radiobtn 'foo', 'Radio Foo'
      output = htmlf """
<label class="radio">
  <input name="foo" type="radio" />Radio Foo
</label>
      """
      cc.render(t, { hardcode }).should.equal output

    # it 'should render input checkbox tag value', ->
    #   template = ->
    #     checkbox 'foo', @bar, class: 'inline' 
    #   helpers = formHelpers
    #   coffeecup.render(template, bar: 'Hello World', hardcode: helpers).should.equal "<label class=\"checkbox inline\"><input class=\"checkbox inline\" name=\"foo\" type=\"checkbox\" />Hello World</label>"
  
    # it 'should render input text tag nothing else', ->
    #   template = ->
    #     checkbox()
    #   helpers = formHelpers
    #   coffeecup.render(template, bar: 'bar', hardcode: helpers).should.equal "<input type=\"text\" />"

