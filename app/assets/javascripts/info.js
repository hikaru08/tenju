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