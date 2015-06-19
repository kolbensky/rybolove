<?php

$email_text = 'Имя: '.$_POST['form-name'].'      Телефон: '.$_POST['form-phone'].'      '.$_POST['form-textarea'];
$subject = 'Заявка';
mail('writerybolove@gmail.com', $subject, $email_text);

?>