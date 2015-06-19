//pageUpButton
$(function(){
    //Check to see if the window is top if not then display button
    $(window).scroll(function(){
        if ($(this).scrollTop() > 600) {
            $('#pageUpButton').fadeIn();
        } else {
            $('#pageUpButton').fadeOut();
        }
    });
    
    //Click event to scroll to top
    $('#pageUpButton').click(function(){
        $('html, body').animate({scrollTop : 0},800);
        return false;
    });
   
});