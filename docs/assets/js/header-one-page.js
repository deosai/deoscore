/* One Page Header */

var Custom = function() {
  // We extend jQuery by method hasAttr
  $.fn.hasAttr = function(name) {
    return this.attr(name) !== undefined;
  };

  // Full Screen
  var handleFullscreen = function() {
    var WindowHeight = $(window).height();
    var HeaderHeight = 0;

    if ($(document.body).hasClass('promo-padding-top')) {
      HeaderHeight = $('.header').height();
    } else {
      HeaderHeight = 0;
    }

    $('.fullheight').height(WindowHeight - HeaderHeight);

    $(window).resize(function() {
      var WindowHeight = $(window).height();
      $('.fullheight').height(WindowHeight - HeaderHeight);
    });
  }

  // Header
  function handleHeader() {
    // jQuery to collapse the navbar on scroll
    if ($('.navbar').offset().top > 150) {
      $('.navbar-fixed-top').addClass('top-nav-collapse');
    }
    $(window).scroll(function() {
      if ($('.navbar').offset().top > 150) {
        $('.navbar-fixed-top').addClass('top-nav-collapse');
      } else {
        $('.navbar-fixed-top').removeClass('top-nav-collapse');
      }
    });

    var $offset = 0;
    if ($('.one-page-nav-scrolling').hasClass('one-page-nav__fixed')) {
      $offset = $(".one-page-nav-scrolling").height()+8;
    }
    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $('.page-scroll a').bind('click', function(event) {
      var $position = $($(this).attr('href')).offset().top;
      $('html, body').stop().animate({
        scrollTop: $position - $offset
      }, 600);
      event.preventDefault();
    });

    var $scrollspy = $('body').scrollspy({target: '.one-page-nav-scrolling', offset: $offset+2});

    // Collapse Navbar When It's Clickicked
    $(window).scroll(function() {
      $('.navbar-collapse.in').collapse('hide');
    });
  }

  return {
    init: function() {
      handleFullscreen();
      handleHeader();
    },

  };
}();