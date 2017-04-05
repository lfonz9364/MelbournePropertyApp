
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

      data.forEach(function(property) {

        var source = $('#property_template').html();  //gets the template

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

  };

  $(document).ready(function() {

    $(".search-btn").click(function(event){
      event.preventDefault();
      if ($('.wrapper').children('.property').length > 0) {
        $('.wrapper').children('.property').remove();
      }
        getProperty();
      })
    });
