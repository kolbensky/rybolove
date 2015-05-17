(function($){
$(document).ready(function(){
$('.mainm li.parent').addClass('has-sub')
var filter = $(document).find('#filter');//find filter
    $('.mainm li.has-sub>a').on('click', function(){
        $(this).removeAttr('href');
        var element = $(this).parent('li');
        
        if (element.hasClass('open')) {
            element.removeClass('open');
            element.find('li').removeClass('open');
            element.find('ul').slideUp(200);
            if(filter.length == 1){ //if there is a filter on the page
                filter.css('display','block');
            }
        }
        else {
            element.addClass('open');
            element.children('ul').slideDown(200);
            element.siblings('li').children('ul').slideUp(200);
            element.siblings('li').removeClass('open');
            element.siblings('li').find('li').removeClass('open');
            element.siblings('li').find('ul').slideUp(200);
            if(filter.length == 1){ //if there is a filter on the page
                filter.css('display','none');
            }
        }
    });

});
})(jQuery);

