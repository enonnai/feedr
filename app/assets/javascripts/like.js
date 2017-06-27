$(document).ready(function(){
  $("#im_going").on("ajax:success", function(e, response, status){
    console.log(response);
    location.reload();
  });
});
