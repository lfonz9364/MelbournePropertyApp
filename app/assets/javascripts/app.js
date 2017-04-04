
function getProperty() {
    var searchTerm = $('.search-input').val();
    var searchStatus = $('.search-status').val();
    $.ajax({
      url: 'https://data.melbourne.vic.gov.au/resource/xt73-zf4j.json',
      data: {
        "$limit" : 100,
        status: searchStatus,
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

  $(document).ready(function() {
    $('.wrapper').append("")//clear page before searching again
    $(".search-btn").click(function(event){
      event.preventDefault();
        getProperty();
    });
});
