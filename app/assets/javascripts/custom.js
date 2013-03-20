$(document).ready(function() {
  var $search = $("#search"),
      $tagInput = $("#tag"),
      $map = $("#map"),
      $country = $("#country");

  /*
  ** When user clicks on the search
  ** button, take the input of the
  ** query and go to /query
  */
  $search.bind("click", function() {
    var tag = $tagInput.val(),
        country = $country.val();
    window.location = "/" + tag + "/" + country;
  });

});