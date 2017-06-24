$(document).ready(function(){
  $("#im_going").on("ajax:success", function(e, response, status){
    console.log(response);
    var goingCount = response.likes + " going";
    document.getElementById("going_count").innerHTML = goingCount;
    var placesLeft = response.places_left + " places left";
    document.getElementById("places_left").innerHTML = placesLeft;
    if (response.full_house) {
      var fullHouse = "FULL HOUSE! Find another event to attend here";
      document.getElementById("full_house").innerHTML = fullHouse;
    }
  });
});
