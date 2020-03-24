window.onload = function(){
  $(document).on('click', '.toggle', function(){
    $('.toggle').toggleClass('active');
    $('.navi').toggleClass('active');
  });
};