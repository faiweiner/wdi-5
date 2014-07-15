var numbers = [];

$(document).ready(function() {
  var add_number = function () {
    var number = parseInt($('#number').val());
    numbers.push(number);
    // jQuery can create new elements on the fly, instead of selecting them.
      add_box(number);
    $('#number').val('').focus();
  };
  

  var square = function() {
    clear_boxes();
    numbers = _(numbers).map(function (n) {
      return n * n; 
    });
    show_boxes();
  };

  var generic_function = function () {
    clear_boxes();
    console.log("going through");
    numbers = _(numbers).map(funky_calc);
    show_boxes();
  };

  var funky_calc = function (i) {
    var equation = $('#number').val();
    var result = eval(equation);
    return result;
  };


  var clear_boxes = function() {
    $('#boxes').empty();
  };

  var show_boxes = function() {
    _(numbers).each(add_box);
  };

  var add_box = function(n) {
    var $box = $('<div></div>');
      $box.addClass('box');
      $box.text(n);

      $('#boxes').prepend($box);
  };

  var timer = null;

  var start_timer = function () {
    timer = setInterval(generate_random_number, 100);  
  };
  var stop_timer = function () {
    clearInterval(timer);
  };

  var generate_random_number = function () {
    var randomNum = _.random(0, 1000);
    numbers.push(randomNum);
    add_box(randomNum);
  };

  $('#add_number').click(add_number);
  $('#square').click(square);
  $('#fn').click(generic_function);
  $('#start').click(start_timer);
  $('#stop').click(stop_timer);

 });

console.log("is this thing on?");