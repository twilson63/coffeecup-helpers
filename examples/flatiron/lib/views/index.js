
module.exports = function(data) {
  return div('.container', function() {
    div('.jumbotron.masthead', function() {
      h1('FlatIron Sample');
      return p('A Sample Web Application using CoffeeCup Helpers');
    });
    div('.search', function() {
      h2('Find your favorite foods');
      return div('.row', function() {
        return center(function() {
          return form('#search-form', {
            action: '/search',
            method: 'GET'
          }, function() {
            input({
              placeholder: 'city, state',
              "class": 'input-large search-query',
              type: 'text',
              name: 'q'
            });
            return button({
              type: 'submit',
              "class": 'btn'
            }, function() {
              return text('Search');
            });
          });
        });
      });
    });
    hr('.soften');
    div({
      "class": '.marketing'
    }, function() {
      h1('Details');
      return div('.row', function() {
        div('.span4', function() {
          h2(function() {
            i('.icon-asterisk', '');
            return text(' FlatIron');
          });
          br();
          p('.marketing-byline', 'A NodeJs Web Framework.');
          return p('This new framework is forward thinking and low footprint');
        });
        div('.span4', function() {
          h2(function() {
            i('.icon-shopping-cart', '');
            return text(' CoffeeCup');
          });
          br();
          return p('.marketing-byline', 'CoffeeScript Template Engine');
        });
        return div('.span4', function() {
          h2(function() {
            i('.icon-screenshot', '');
            return text(' Bootstrap');
          });
          return p('Simple and Flexible User Interface');
        });
      });
    });
    return div({
      "class": 'foo'
    }, function() {
      return div('.row', function() {
        return p('.download-info', function() {
          return a('.btn.btn-primary.btn-large', {
            href: 'http://github.com/twilson63/tako-stand'
          }, 'View Source on Github');
        });
      });
    });
  });
};
