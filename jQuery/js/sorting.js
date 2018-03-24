$(document).ready(function(){


  $(".nav li").click(function(){

      // 1. store data-type attribute
      var color = $(this).attr("id"); 

      // 2. hide all matched elements
      $('.objects li').hide(); 

      // 3. if 'color' is not defined hide/show all elements ("show all" button), if color IS defined show elemtnts that match color variable
      if (color == 'all') {
        $("li").fadeIn(625);  
      } else {
        $('.'+color).fadeIn(625);
      }

      // classes for nav buttons
      $('.active').removeClass('active'); 
      $(this).addClass('active'); 

    });


});  


