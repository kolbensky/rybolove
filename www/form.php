<?php

$email_text = 'Имя: '.$_POST['form-name'].'\n Телефон: '.$_POST['form-phone'].'\n'.$_POST['form-textarea'];
$subject = 'Заявка';
mail('dumbik77@gmail.com', $subject, $email_text);

?>