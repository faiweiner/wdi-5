$(document).ready(function () {
  var add_color = function () {
    var color = $('#color').val();
    var $box = $('<div></div');
    $box.addClass('box');
    $box.css('background-color', color);
    $box.prependTo('#colors');
  };

  var set_color = function () {
    var $box = $(this);
    var color = $box.css('background-color');
    $('#selected').css('background-color', color);

  };

  var clear_color = function () {
    $('#colors').empty();
    $('#selected').css('background-color', 'white');
  };

  var holdActive = false;

  $('#canvas').mousedown(function () {
    console.log("downner");
    holdActive = true;
  });

  $('#canvas').mouseup(function () {
    console.log("upbaby");
    holdActive = false;
  });
  
  var paint = function () {
    if (holdActive == true) {
      var color = $('#selected').css('background-color');
      var $pixel = $(this);
      $pixel.css('background-color', color); 
    };
  };

  var clear_canvas = function () {
    var $pixel = $('.pixel');
    $pixel.css('background-color', 'white');
  };

  $('#add_color').on('click', add_color);
  $('#clear').on('click', clear_color);
  $('#colors').on('click', '.box', set_color);
  $('#canvas').on('mouseleave', '.pixel', paint);
  $('#reset_canvas').on('click', clear_canvas);


  var create_pixels = function () {
    var $canvas = $('#canvas');
    _(5000).times(function () {
      var $pixel = $('<div/>');
      $pixel.addClass('pixel');
      $pixel.appendTo($canvas);
    });
  };

  create_pixels();
});