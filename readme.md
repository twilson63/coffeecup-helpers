# coffeecup helpers

[![build status](https://secure.travis-ci.org/twilson63/coffeecup-helpers.png)](http://travis-ci.org/twilson63/coffeecup-helpers)

coffeecup helpers project is a set of helpers to add some sugar
to generating forms and twitter bootstrap classes

### install

`npm install coffeecup-helpers`

### usage

``` coffeescript
cc = require 'coffeecup'
helpers = require 'coffeecup-helpers'

template = ->
  form ->
    p ->
      textField 'name', class: 'small'

cc.render template, hardcode: helpers
```

### output

``` html
<form>
  <p>
    <label for="name">Name</label>
    <input name="name" id="name" type="text" />
  </p>
</form>
```


## api

# textField(name, value, attributes)

generate label and input type text element.

params

Parameter  |  Type  |  Required  | Description
-----------|--------|------------|----------------------
name       | string | optional   | input element name attribute and label display
value      | string | optional   | input element value attribute
attributes | object | optional   | object containing both input and label attributes

usage

``` coffeescript
template = ->
 form ->
   p ->
     textField 'name', label: { class: 'foo' }, input: { class: 'bar'}
```

output

``` html
<form>
  <p>
    <label class="foo" for="name">Name</label>
    <input class="bar" name="name" id="name" />
  </p>
</form>
```


