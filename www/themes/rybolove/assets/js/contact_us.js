//маска номера телефона
jQuery(function($){
    $("#form-phone").mask("+3 (999) 999-99-99");
    });

$('.input').click(function() {
    if ($('#form-name').val() == '' || $('#form-phone').val() == '') {
        $('#valid').text('Заполнены не все поля');
        return 0;
    }
    var check_name = /^[a-zA-Zа-яА-Яё -]+$/i;
    var count_fails = 0;
    if (!check_name.test($('#form-name').val())) {
        $('#form-name').css({'border': '1px solid #ff0000'});
        $('#valid').text('Имя введено неверно');
        count_fails = 1;
    } else {
        $('#form-name').css({'border': '1px solid #ddd'});
    }
    if (count_fails == 0) {
        $('#valid').text('');
        $.post("../form.php", $('#contact-with-us-form').serialize(), function () {
            $('#valid').text('Спасибо, мы скоро свяжемся с вами');
            $('#form-name').val('');
            $('#form-phone').val('');
            $('#form-textarea').val('');
        });
    }
});



