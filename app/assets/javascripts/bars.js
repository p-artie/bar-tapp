// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// var x = document.getElementById("demo");
// function getLocation() {
//     if (navigator.geolocation) {
//         navigator.geolocation.getCurrentPosition(showPosition);
//     } else {
//         x.innerHTML = "Geolocation is not supported by this browser.";
//     }
// }
// function showPosition(position) {
//     x.innerHTML = "Latitude: " + position.coords.latitude +
//     "<br>Longitude: " + position.coords.longitude;
// }

var bar = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=AIzaSyDZXTCzH0s0nEwgcAlNom-O1bLGzB3V3o0&location=25.8030863,-80.20433799999999&radius=5000&rankby=distance"

$.get(bar, function(data){
  console.log(data);
});

$(function(){
     $(".table").on("click", "tr[role=\"button\"]", function (e) {
          window.location = $(this).data("href");
     });
});
