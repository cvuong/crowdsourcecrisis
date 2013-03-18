$(document).ready(function() {
  var $search = $("#search"),
      $tagInput = $("#tag");

  /*
  ** When user clicks on the search
  ** button, take the input of the
  ** query and go to /query
  */
  $search.bind("click", function() {
    var tag = $tagInput.val();
    window.location = "/" + tag;
  });
});