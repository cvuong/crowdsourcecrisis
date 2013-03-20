$(document).ready(function() {
  var $search = $("#search"),
      $tagInput = $("#tag"),
      $map = $("#map");

  /*
  ** When user clicks on the search
  ** button, take the input of the
  ** query and go to /query
  */
  $search.bind("click", function() {
    var tag = $tagInput.val();
    window.location = "/" + tag;
  });

  /*
  ** Resize the maps DOM element
  ** to be the height of the window
  */
  //$map.css("height", ($(window).height() - 300) + "px");
});