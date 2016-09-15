$(function(){
    
});

$(document).on('click', '#favoris li', function(){
    $.ajax({
        method: "POST",
        url: "php/service.php",
        data: { 
            action: "John", location: "Boston" 
        }
      })
        .done(function( msg ) {
            console.log(msg);
            var data = $.parseJSON(msg);
            console.log(data, data.salut);
        });
});