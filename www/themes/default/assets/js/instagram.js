function instagram() {
    if (window.location.pathname == '/'){ //only works on the mainpage
    var instagram = '';
    
    //images
    var images = []; 
    images[1] = 'data:image/jpeg;base64,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';

/*  var imageFolder = '';  
    var image1 = imageFolder+'4837 500.jpg';
    var image2 = imageFolder+'4837 600.jpg';
    var image3 = imageFolder+'4837 700.jpg';
    var image4 = imageFolder+'4837 800.jpg';
    var image5 = imageFolder+'4837 900.jpg';
    var image6 = imageFolder+'4837 1000.jpg';
    var image7 = imageFolder+'4839 200.jpg.jpg';
    var image8 = imageFolder+'4839 300.jpg.jpg';
    var image9 = imageFolder+'4839 400.jpg.jpg';
    var image10 = imageFolder+'4839 500.jpg.jpg';
*/
    var photoBox = [];
    for(var i=1; i<=10;i++){
        photoBox[i] = '<div class = "photoBox" id = "photoBox_'+i+'" style="background-image:url('+images[i]+'); background-size:contain; background-repeat: no-repeat; background-position: center; "></div>';
        instagram += photoBox[i];
    }
    //test
    //console.log(photoBox);
    //output instagram into banners
    var banners = document.getElementsByClassName('banners');
    banners[0].innerHTML = instagram;
}
}
//MAIN
$(
    instagram
);