// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .




//LOGIC FOR AJAX QUERY FOR ORDER TOTAL


var orderDisplay = function(data) {
  console.log(data);
  console.log("test");

  // Data is visible here: http://localhost:3000/orders.json
  // An array of objects
  $(".clear_display").empty();


  for (var i = 0; i < data.length; i++) {
    var name = data[i].name;
    var address1 = data[i].address1;
    var status = data[i].status;

    var orderID2 = data[i].items[0].order_id;
    var $li5 = $("<li>").text("Order id:" + orderID2);
    var $li8 = $("<br>").text("");
    var $li = $("<li>").text("Name: " + name);
    var $li2 = $("<li>").text("Address: " + address1);
    var $li3 = $("<li>").text("Status: " + status);
    $(".clear_display").append($li8).append($li).append($li5).append($li2).append($li3).append($li5);
    var URL = "/orders/" + orderID2 + "/edit";
    var editOrder = $('<a href="' + URL + '">' + 'edit order' + '</a>');
    $(".clear_display").append(editOrder);

    for (var j = 0; j < data[i].items.length; j++) {
      var productName = data[i].items[j].product.product_name;
      var price = data[i].items[j].product.price;
      var quantity = data[i].items[j].quantity;
      var orderID = data[i].items[j].order_id;
      var total = quantity * price;
      var $li4 = $("<li>").text("Purchased " + quantity + " of " + productName + " items @ price of $" + price + " for $" + total);
      $(".clear_display").append($li4);
    }
  }

};
console.log("hello world");
var baseURL = "/orders";
var getOrderDisplay = function() {

  $.ajax({
    url: baseURL,
    type: "GET",
    dataType: "JSON"
  }).done(orderDisplay);
};





// LOGIC FOR DISPLAYING CHART FROM CHART.JS - FEED IN DATA VIA AJAX QUERY
var sale1 = 5;
var sale2 = 6;

var drawChart = function(){
  var ctx = document.getElementById("myChart");
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
          datasets: [{
              label: 'Current Orders',
              data: [sale1, sale2, 3, 5, 2, 3],
              backgroundColor: [
                  'rgba(255, 99, 132, 0.2)',
                  'rgba(54, 162, 235, 0.2)',
                  'rgba(255, 206, 86, 0.2)',
                  'rgba(75, 192, 192, 0.2)',
                  'rgba(153, 102, 255, 0.2)',
                  'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                  'rgba(255,99,132,1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
          }]
      },
      options: {
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero:true
                  }
              }]
          }
      }
  });
};





$(document).on("turbolinks:load", function() {
  drawChart();

  console.log("test again");
  var myTimer;
    var orderTimer = function() {
      if ( myTimer ) {
        return false;
      }
      myTimer = window.setInterval(function() {
        getOrderDisplay();
      }, 4000);
    };
    getOrderDisplay();
    $("#order_display").on("click", orderTimer);
    $("#stop_live_orders").on("click", function() {
      console.log("testing once again");
      window.clearInterval(myTimer);

    });




// CAROUSEL SLIDER FROM SLICK
  $('.autoplay').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    variableWidth: true,
    autoplay: true,
    autoplaySpeed: 3000

  });

  // $('.single-item-rtl').slick({
  //   rtl: true
  // });
  //
  $('.slick-prev').html('<');
  $('.slick-next').html('>');



});

// LOGIC FOR DISPLAYING LOCATION MAP USING GOOGLE API - SIMPLE MAP
var map;
function initMap() {

   var myLatLng = {lat: -33.9092452, lng: 151.1944616};

  map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 18
  });

  var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: ''
        });
}
