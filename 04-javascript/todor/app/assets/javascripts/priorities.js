$(document).ready(function() {

  var toggleForm = function(event) {
    ( event && event.preventDefault ) && event.preventDefault();
    $('form').toggle();
    $('#new_priority').toggle();
    $('form')[0].reset;
    $('#add_priority').show;
    $('#update_priority').hide;
    $('#name').focus();
  };

  $('#new_priority').on('click', toggleForm);
  $('#cancel_priority').on('click', toggleForm);

  $('#priorities').on('submit', function(event) {
    event.preventDefault();

    var priorityName = $('#name').val();
    var priorityColor = $('#color').val();
    var priorityUrgency = $('#urgency').val();
    var priorityId = $('#priority_id').val();

    console.log(name, color, urgency);

    toggleForm();

    $.ajax({
      url: '/priorities',
      type: 'POST',
      dataType: 'json',
      data: {
        name: priorityName,
        color: priorityColor,
        urgency: priorityUrgency,
        id: priorityId
      },
      success: function(p) {
        console.log('done', p);
        var $li = $('<li>');
        var $span1 = $('<span>');
        $span1.addClass('name');
        $span1.text(p.name);
        var $span2 = $('<span>');
        $span2.addClass('invisible color');
        $span2.text(p.color);
        var $span3 = $('<span>');
        $span3.addClass('invisible urgency');
        $span3.text(p.urgency);
        var $span4 = $('<span>');
        $span4.addClass('invisible priority_id');
        $span4.text(p.id);
        var $box = $('<div></div>');
        $box.addClass('priority');
        $box.css('background-color', p.color);
        $li.prepend($box);
        $li.append($span1);
        $li.append($span2);
        $li.append($span3);
        $li.append($span4);
        $li.appendTo('#priority-list');
      }

    });
  });

 var edit_priority = function() {
    if ($('form').is(':hidden')) {
        toggleForm(); 
    }

    $('#add_priority').hide();
    $('#update_priority').show();
    
    var $li = $(this).closest('li');  
    var name = $li.find('.name').text();
    var color = $li.find('.color').text();
    var urgency = $li.find('.urgency').text();
    var priority_id = $li.find('.priority_id').text();
    $('#name').val(name);
    $('#color').val(color);
    $('#urgency').val(urgency);
    $('#priority_id').val(priority_id);
  };

  // Delegation! Make sure you under
  $('#priority-list').on('click', '.priority', edit_priority);

  var renderPriorityBoxes = function() {
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

  renderPriorityBoxes();

  var render_priority = function(priority) {

  };
});