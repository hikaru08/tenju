// main-footer-btn
$(document).on('turbolinks:load',function(){
  var pagetop = $('.return-top');
    $(window).scroll(function () {
      if ($(this).scrollTop() > 500) {
          pagetop.fadeIn();
      } 
      else {
          pagetop.fadeOut();
          }
      });
      pagetop.click(function () {
        $('body, html').animate({ scrollTop: 0 }, 500);
          return false;
    });
});