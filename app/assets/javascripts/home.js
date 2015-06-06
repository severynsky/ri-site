$(document).ready(function(){
  $('.right').fadeIn(900);
  $('.left').animate({
    marginLeft: 0
  }, 500, "linear");



    // $('.scene').parallax();
    $('.item').click(function(){
    $.ajax({
        type: 'GET',
        url: 'http://api.randomuser.me/',
        dataType: "json",
        success: function(data){
        console.log(data.results);
    }
    });
    });


    function showHide(){
    $('.content').fadeIn(200);
    $('.popup').hide();
    $('.fadeout').hide();
    };

    showHide()

    $('.item, .items > div').click(function(){
      $('.content').fadeOut(200);
      $('.popup').fadeIn(500);
      $('.fadeout').fadeIn(500);


    });

    $('.fadeout, .closeBtn').click(function(){
    return showHide();
    });


    $( window ).resize(function() {


    });
});