
//search Property
function getProperty() {
  var searchTerm = $('.search-input').val();
  var statusFilter = $('.').val()
  $.ajax({
    url: 'api/properties',
    data: {
      "$limit" : 100,
      status: statusFilter,
      clue_small_area: searchTerm
    }


  }).done( function(data){
    console.log(data);

    data.forEach(function(property) {

      var source = $('#property_template').html();  //gets the template
      console.log(source)
      var template = Handlebars.compile(source)  //turns template string
      var html = template(property)
      $('.wrapper').append(html)

    });
  });

};
