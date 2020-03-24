window.onload = function(){
  $(document).on('click', '.footer__btn', function(){
    $('.footer').toggleClass('hidden');
    $('.footer__btn').toggleClass('hidden');
  });
};