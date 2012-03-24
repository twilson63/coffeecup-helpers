
module.exports = function() {
  doctype(5);
  return html(function() {
    head(function() {
      meta({
        charset: 'utf-8'
      });
      title('Flatiron Sample');
      link({
        rel: 'icon',
        href: '/ico/favicon.png'
      });
      link({
        rel: 'stylesheet',
        href: '/css/bootstrap.css'
      });
      link({
        rel: 'stylesheet',
        href: '/css/bootstrap-responsive.css'
      });
      link({
        rel: 'stylesheet',
        href: '/css/docs.css'
      });
      link({
        rel: 'stylesheet',
        href: '/js/google-code-prettify/prettify.css'
      });
      link({
        rel: 'apple-touch-icon-precomposed',
        sizes: '114x114',
        href: '/ico/apple-touch-icon-114-precomposed.png'
      });
      link({
        rel: 'apple-touch-icon-precomposed',
        sizes: '72x72',
        href: '/ico/apple-touch-icon-72-precomposed.png'
      });
      return link({
        rel: 'apple-touch-icon-precomposed',
        href: '/ico/apple-touch-icon-57-precomposed.png'
      });
    });
    return body({
      'data-spy': 'scroll',
      'data-target': '.subnav',
      'data-offset': '50'
    }, function() {
      div('.navbar.navbar-fixed-top', function() {
        return div('.navbar-inner', function() {
          return div('.container', function() {
            a('.brand', {
              href: '/'
            }, 'FlatIron');
            return div('.nav-collapse', function() {
              return ul('.nav', function() {
                li('.active', function() {
                  return a({
                    href: '/'
                  }, 'Home');
                });
                return li({
                  "class": ''
                }, function() {
                  return a({
                    href: '/about'
                  }, 'About');
                });
              });
            });
          });
        });
      });
      content();
      script({
        type: 'text/javascript',
        src: 'http://platform.twitter.com/widgets.js'
      });
      script({
        src: '/js/jquery.js'
      });
      script({
        src: '/js/google-code-prettify/prettify.js'
      });
      script({
        src: '/js/bootstrap-transition.js'
      });
      script({
        src: '/js/bootstrap-alert.js'
      });
      script({
        src: '/js/bootstrap-modal.js'
      });
      script({
        src: '/js/bootstrap-dropdown.js'
      });
      script({
        src: '/js/bootstrap-scrollspy.js'
      });
      script({
        src: '/js/bootstrap-tab.js'
      });
      script({
        src: '/js/bootstrap-tooltip.js'
      });
      script({
        src: '/js/bootstrap-popover.js'
      });
      script({
        src: '/js/bootstrap-button.js'
      });
      script({
        src: '/js/bootstrap-collapse.js'
      });
      script({
        src: '/js/bootstrap-carousel.js'
      });
      return script({
        src: '/js/bootstrap-typeahead.js'
      });
    });
  });
};
