$(document).ready(function() {
  $(document).on('click', 'form .add-fields', function(e) {
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time))
    e.preventDefault();
  });
});
