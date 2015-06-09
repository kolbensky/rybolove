/**
 * Common functions
 */

$(document).ready(function() {
    $("#searchebet").css("display","none")
    // Hide flash messages block
    $(".flash_messages .close").click(function(){
        $(".flash_messages").fadeOut();
    });

    // Search box
    var searchQuery = $("#searchQuery");
    var defText = searchQuery.val();
    searchQuery.focus(function(){
        if($(this).val()==defText)
            $(this).val('');
    });
    searchQuery.blur(function(){
        if($(this).val()=='')
            $(this).val(defText);
    });
    $(".box_mini_blog").css( "display", "none" );
    $("#prof").css( "background-color", "#222" );
        $("#blod").click(function(){
        $(".box_profile").css( "display", "none" );
        $("#blod").css( "background-color", "#222" );
        $("#prof").css( "background-color", "#1abc9c" );
        $(".box_mini_blog").fadeIn(1000);
    });
    $("#prof").click(function(){
        $(".box_mini_blog").css( "display", "none" );
        $("#prof").css( "background-color", "#222" );
        $("#blod").css( "background-color", "#1abc9c" );
        $(".box_profile").fadeIn(1000);
    });
    $("#mainMob").click(function(){
        $(".navbar-collapse").toggle(200);
        $(".mainm").css("display","none");
        $("#filter").css("display","none");
      
    });
    $(".mobileMenu").click(function(){
        $(".navbar-header .mainm").toggle(200);
        $("#filter").css("display","none");
        $(".navbar-collapse").css("display","none");
    
    });
    
    $("#filterMob").click(function(){
        $("#filter").toggle(200);
        $(".navbar-collapse").css("display","none");
        $(".mainm").css("display","none");

    });
});

/**
 * Add product to compare list and reload page
 * @param id
 * @return {Boolean}
 */
function addProductToCompare(id)
{
    $.get('/products/compare/add/'+id, function(response){
        window.location=window.location;
    });
    return false;
}

/**
 * Add product to wish list and reload page
 * @param id
 * @return {Boolean}
 */
function addProductToWishList(id)
{
    $.ajax({
        url: '/wishlist/add/'+id,
        statusCode: {
            302: function (data) {
                window.location='/users/login';
            },
            200: function()
            {
                window.location=window.location;
            }
        }
    });
    return false;
}

/**
 * Update cart data after product added.
 */
function reloadSmallCart()
{
    $("#cart").load('/cart/renderSmallCart');
}

/**
 * Add product to cart from list
 * @param data
 * @param textStatus
 * @param jqXHR
 * @param redirect
 */
function processCartResponseFromList(data, textStatus, jqXHR, redirect)
{
    var productErrors = $('#productErrors');
    if(data.errors)
    {
        window.location = redirect
    }else{
        reloadSmallCart();
        $("#cart").fadeOut().fadeIn().fadeOut().fadeIn();
        $.jGrowl("Товар успешно добавлен в корзину. <a href='/cart'>Перейти к оформлению</a>.", {position:"bottom-right"});
        
    }
}

/**
 * Rate product
 * @param id product id
 */
function rateProduct(id)
{
    var url = '/store/ajax/rateProduct/'+id;
    var rating = $('input[name=rating_'+id+']:checked').val();
    $('input[name=rating_'+id+']').rating('disable');
    $.ajax({
        url: url,
        data:{rating:rating}
    });

}

function applyCategorySorter(el)
{
    window.location = $(el).val();
}
ff2=function(t){ 
        t.className=/\D/.test(t.value)?'err':''; 
        if(/\D/.test(t.value)){
            t.value=t.defaultValue; 
            if(self.ww)
            clearTimeout(ww); 
            o=t; 
            ww=setTimeout("o.className='';",999); 
        }
        else t.defaultValue=t.value;
        if(t.value==0){
            t.value=1;
        }
        }

 //добавления в корзину
/*
function addToCart(submitButton){
    var form = $(submitButton).closest('form');
    $.ajax({
    method: "POST",
    url: "/cart/add",
    data: $(form).serializeObject(),
    success: alert('Товар успешно добавлен в корзину')
    });
return false;
}*/

