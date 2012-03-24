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
    <input class="bar" name="name" id="name" type="text" />
  </p>
</form>
```

# passwordField(name, value, attributes)

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
    <input class="bar" name="name" id="name" type="password" />
  </p>
</form>
```

---

### Bootstrap Form Controls

### textControl(name, value, attributes)

generates form text control with help text

params

Parameter  |  Type  |  Required  | Description
-----------|--------|------------|----------------------
name       | string | optional   | input element name attribute and label display
value      | string | optional   | input element value attribute
attributes | object | optional   | object containing both input and label attributes as well as help text

usage

``` coffeescript
t = ->
  textControl 'foo', help: 'Help text here'
coffeecup.render(t, {hardcode})
```

output

``` html
<div class="control-group">
  <label for="foo" class="control-label">Foo</label>
  <div class="controls">
    <input name="foo" id="foo" type="text" />
    <p class="help-block">Help text here</p>
  </div>
</div>
```

### passwordControl(name, value, attributes)

generates form password control with help text

params

Parameter  |  Type  |  Required  | Description
-----------|--------|------------|----------------------
name       | string | optional   | input element name attribute and label display
value      | string | optional   | input element value attribute
attributes | object | optional   | object containing both input and label attributes as well as help text

usage

``` coffeescript
t = ->
  textControl 'foo', help: 'Help text here'
coffeecup.render(t, {hardcode})
```

output

``` html
<div class="control-group">
  <label for="foo" class="control-label">Foo</label>
  <div class="controls">
    <input name="foo" id="foo" type="password" />
    <p class="help-block">Help text here</p>
  </div>
</div>
```
