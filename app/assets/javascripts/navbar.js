$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('#nav').addClass('scroll');
    $('#button-nav').removeClass('navbar-wagon-button');
    $('#button-nav').addClass('btn-danger');
  } else {
    $('#nav').removeClass('scroll');
    $('#button-nav').removeClass('btn-danger');
    $('#button-nav').addClass('navbar-wagon-button');
  }
});

$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('#nav2').addClass('scroll');
    $('#nav2').addClass('navbar-fixed-top');
  } else {
    $('#nav2').removeClass('scroll');
    $('#nav2').removeClass('navbar-fixed-top');
  }
});

