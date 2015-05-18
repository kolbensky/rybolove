(function($){
$(document).ready(function(){
$('.mainm li.parent').addClass('has-sub')
var filter = $(document).find('#filter');//find filter
var openUl = [];
var openUlHeigth = [];
var liNumber = 0;
var FilterStartHeight = 540;
var newFilterHeight = 0;
    $('.mainm li.has-sub>a').on('click', function(){
        $(this).removeAttr('href');
        var element = $(this).parent('li');
        
        if (element.hasClass('open')) {
            element.removeClass('open');
            element.find('li').removeClass('open');
            element.find('ul').slideUp(200);
            if(filter.length == 1){ //if there is a filter on the page
                filter.css('top',FilterStartHeight);
                
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
                openUl = $(document).find('.open');
                ul = $(openUl).find("ul");
                liNumber = $(ul).find( "li" ).size();//the number of li
                newFilterHeight = FilterStartHeight + 42*liNumber;
                filter.css('top',newFilterHeight);
            }
        }
    });

});
})(jQuery);

