
function getProperty() {
  var searchTerm = $('.search-input').val();
  var searchStatus = $("input[name='search-status']:checked").val();

  $.ajax({
    url: 'https://data.melbourne.vic.gov.au/resource/xt73-zf4j.json',
    data: {
      "$limit" : 100,
      status: searchStatus,
      clue_small_area: searchTerm
    }
  }).done( function(data){

    if (data.length > 0) {

    }
    var locations = [];
    for (var i = 0; i < data.length; i++) {
      var id = data[i].property_id
      var lat = data[i].location_1.coordinates[0]
      var long = data[i].location_1.coordinates[1]
      locations.push([id, long, lat, i]);
    };

    initMap(locations);

      //display script template
    data.forEach(function(property) {
      var source = $('#property_template').html();  //gets the template
      var template = Handlebars.compile(source)  //turns template string
      var html = template(property)
      $('.wrapper').append(html)
    });

    }).done( function(data){

  });

};


$(document).ready(function() {

  $(".search-btn").click(function(event){
    event.preventDefault();
    if($('.wrapper').children('.property').length > 0) {
      $('.wrapper').children('.property').remove();
    }
    getProperty();
  })
});//document ready function finished


        var template = Handlebars.compile(source);  //turns template string
        var html = template(property);

        $('.wrapper').append(html);
      });

      $('.star').on('click', function(event){
        key = $(this).closest('.property').data('id');
        $.ajax({
          url: '/api/properties',
          method: 'post',
          data: {
            development_key: key
          }
        });
      });
    });


function initMap(locations) {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
    center: new google.maps.LatLng(-37.8136, 144.963),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  var infowindow = new google.maps.InfoWindow();

  var marker, i;

  for (i = 0; i < locations.length; i++) {
    marker = new google.maps.Marker({
      position: new google.maps.LatLng(locations[i][1], locations[i][2]),
      map: map
    });

    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
        infowindow.setContent(locations[i][0]);
        infowindow.open(map, marker);
      }
    })(marker, i));
  }
}
