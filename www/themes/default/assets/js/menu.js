(function($){
$(document).ready(function(){
$('.mainm li.parent').addClass('has-sub')
var filter = $(document).find('#filter');//find filter
var content = $(document).find('#content');//find content
var menu = $(document).find('.mainm');//find menu
var productsList = $(document).find('.products_list');//products_list
var openUl = [];
var openUlHeigth = [];
var liNumber = 0;
var FilterStartHeight = 540;
var newFilterHeight = 0;
//checks if it is necessary to display menu
    if (productsList.length != 0){
        menu.css("display","inline-block");
    }
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

//cancel min-height for #content if there is no filter on the page
    if ((filter.length == 1)&&(content.length != 0)){
        content.css("min-height","1150px");
    }
    else if ((filter.length == 0)&&(content.length != 0)){
        content.css("min-height","none");
    }

});
})(jQuery);

