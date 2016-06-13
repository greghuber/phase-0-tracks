
$(document).ready(function() {
   $("body").slideDown();
});

$(document).ready(function(){
    $('div').click(function(){
        $('div').fadeOut();
    });
});

$(document).ready(function(){
    $('#first').mouseenter(function(){
        $('#first').fadeOut('slow');
    });
    $('#first').mouseleave(function(){
        $('#first').fadeIn('slow');
    });
    $('#second').mouseenter(function(){
        $('#second').fadeOut('slow');
    });
    $('#second').mouseleave(function(){
        $('#second').fadeIn('slow');
    });
    
});