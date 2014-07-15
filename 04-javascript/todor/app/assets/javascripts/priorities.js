$(document).ready(function() {
  var renderPriorityBoxes = function () {
    var $colors = $('.color');
    $colors.each(function (i, color) {
      var $color = $(color);
      var hex = $color.text();
      var $box = $('<div></div>');
      $box.addClass('priority');
      $box.css('background-color', hex);
      // $color.prev().before($box);
      // $color.after($box);
      $color.closest('li').prepend($box);
    });
  };

  // var showForm = function () {
  //   $('form').show();
  //   $('#new_priority').hide();
  // };
  // $('#new_priority').on('click', showForm);

  // var hideForm = function(event) {
  //   event.preventDefault();
  //   $('form').hide();
  //   $('#new_priority').show();
  // };

  var toggleForm = function(event) {
    event.preventDefault();
    $('form').toggle();
    $('#new_priority').toggle();
  };

  $('#new_priority').on('click', toggleForm);
  $('#cancel_priority').on('click', toggleForm);
  renderPriorityBoxes();
});