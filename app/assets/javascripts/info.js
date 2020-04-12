$(document).on('turbolinks:load',function(){
  $(function() {
    $('.submit-btn').prop('disabled', true);
    $('.agree').on('click', function() {
      if ($(this).prop('checked') == false) {
          $('.submit-btn').prop('disabled', true);
      } else {
          $('.submit-btn').prop('disabled', false);
      }
    });
  });
});

function addToNewUrl() {
  let path = location.pathname;
  let pattern = /^.*\/info.*$/

  // URLが正しければ変更は不要
  if(path.match(pattern)) return;

  // URLを変更
  history.replaceState('', '', `/root/info`)
}