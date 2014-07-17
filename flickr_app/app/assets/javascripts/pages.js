$(document).ready(function() {
  var query = null
  var page = 1;
  var searchFlickr = function() {
    query = $('#search').val();
    var processImages = function (data) {
      var images = data.photos.photo;
      for (var i = 0; i < images.length; i++) {
        var item = images[i]
        var img_url = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
        console.log(img_url);
        var $link = $('<a>');
        $link.attr('href', img_url);
        $link.attr('target', '_blank');
        var $box = $('<div>');
        $box.attr('class', 'box');
        var $img = $('<img>');
        $('#images').append($link);
        $link.append($box);
        $img.attr('src', img_url);
        $img.attr('class', 'icon');
        $box.append($img);
      };
    };

    $.getJSON('https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=dd96d53efbfb947a2165436c6be875f8&text=' + query + '&per_page=50&page=' + page + '&format=json&jsoncallback=?', processImages);
  };

  var clearImages = function () {
    $('#images').empty();
    $('#search').val('').focus();
  };

  $(window).scroll(function () {
    if ($(window).scrollTop() + $(window).height() == $(document).height()) {
      console.log('load more');
      page += 1;
      searchFlickr();
    };
  });

  var clearSearch = function () {
    $('#search').val('').focus();
  };

  $('#search').on('click', clearSearch);

  $('#search_flickr').on('click', searchFlickr);
  $('#search').keypress(function(e) {
    if(e.which == 13) {
      jQuery(this).blur();
      jQuery('#search_flickr').focus().click();
    }});
  $('#clear_images').on('click', clearImages);
});