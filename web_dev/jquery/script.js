
$(document).ready(function() {
   $("body").slideDown();
});

$(document).ready(function(){
    $('#title').click(function(){
        $(this).fadeOut();
    });
});

$(document).ready(function(){
    $('#first').mouseenter(function(){
        $('#second').fadeOut('slow');
    });
    $('#first').mouseleave(function(){
        $('#second').fadeIn('slow');
    });
    $('#second').mouseenter(function(){
        $('#first').fadeOut('slow');
    });
    $('#second').mouseleave(function(){
        $('#first').fadeIn('slow');
    });
    
});