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

// NOTE
// Create a global variable here, which is an array, which you can push objects to from your nested for loop
var chartData;

var orderDisplay = function(data) {

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
      // just want var total and to feed this as global variable value into chart.js
      // NOTE
      chartData.push(total);
      var $li4 = $("<li>").text("Purchased " + quantity + " of " + productName + " items @ price of $" + price + " for total of $" + total);
      $(".clear_display").append($li4);
    }
  }
  test();
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

var test = function(){
  var saleTotal = chartData.reduce(function (a, b) {
      return a + b;

  });
  if ($("#myChart").length > 0) {
    drawChart( saleTotal );
  }
};


// LOGIC FOR DISPLAYING CHART FROM CHART.JS - FEED IN DATA VIA AJAX QUERY
var budgetedSales = 1000;


var drawChart = function( saleTotal ){

  var ctx = document.getElementById("myChart");
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: ["Budget", "Orders", "Monthly", "Green", "Purple", "Orange"],
          datasets: [{
              label: 'Current Orders',
              // data: values,
              data: [budgetedSales, saleTotal],
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
  chartData = [];
  mapInit = false;
  if ( $("#map").length !== 0 ) {
    initMap();
  }

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
    slidesToShow: 4,
    slidesToScroll: 1,
    variableWidth: true,
    autoplay: true,
    autoplaySpeed: 3000
  });

  $('.slick-prev').html('<');
  $('.slick-next').html('>');

});

// LOGIC FOR DISPLAYING LOCATION MAP USING GOOGLE API - SIMPLE MAP
var map;
var mapInit = false;
function initMap() {
  if ( mapInit || $("#map").length === 0 ) { return false; }

   var myLatLng = {lat: -33.9092452, lng: 151.1944616};

  map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 18
  });

  var marker = new google.maps.Marker({
          position: myLatLng,
          label: "!",
          map: map,
          title: ''
        });
  mapInit = true;
}

// ADD OR REMOVE CLASS TO NAV BAR TO MAKE IT MOBILE RESPONSIVE

function navBarFunction() {
    var navigationBar = document.getElementById("myNavBar");
    if (navigationBar.className === "navBar") {
        navigationBar.className += " responsive";
    } else {
        navigationBar.className = "navBar";
    }

}
