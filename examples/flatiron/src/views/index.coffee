module.exports = (data) ->
  div '.container', ->
    div '.jumbotron.masthead', ->
      h1 'FlatIron Sample'
      p 'A Sample Web Application using CoffeeCup Helpers'
    div '.search', ->
      h2 'Find your favorite foods'
      div '.row', ->
        center ->
          form '#search-form', action: '/search', method: 'GET', ->
            input placeholder: 'city, state', class: 'input-large search-query', type: 'text', name: 'q'
            button type: 'submit', class: 'btn', -> text 'Search'
    hr '.soften'
    div class: '.marketing', ->
      h1 'Details'
      div '.row', ->
        div '.span4', ->
          h2 ->
            i '.icon-asterisk', ''
            text ' FlatIron'
          br()
          p '.marketing-byline', 'A NodeJs Web Framework.'
          p 'This new framework is forward thinking and low footprint'
        div '.span4', ->
          h2 ->
            i '.icon-shopping-cart', ''
            text ' CoffeeCup'
          br()
          p '.marketing-byline', 'CoffeeScript Template Engine'
          #p 'CoffeeCup is the maintained fork of CoffeeKup.  A templatng engine for NodeJs that lets your write your HTML templates'
        div '.span4', ->
          h2 ->
            i '.icon-screenshot', ''
            text ' Bootstrap'
          p 'Simple and Flexible User Interface'
    div class: 'foo', ->
      div '.row', ->
        p '.download-info', ->
          a '.btn.btn-primary.btn-large', href: 'http://github.com/twilson63/tako-stand', 'View Source on Github'
          #link 'foo', '/foo' #, class: '.btn.btn-primary.btn-large'