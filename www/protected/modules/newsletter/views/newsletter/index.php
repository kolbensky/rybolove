<div class="newsletter-form">
	<?php $form=$this->beginWidget('CActiveForm'); ?>

	<?php echo $form->errorSummary($model); ?>
	
	<?php echo $form->textField($model,'email', array('placeholder' => 'Введите ваш e-mail')) ?>
    
	<?php echo CHtml::submitButton(Yii::t('NewsletterModule.subscribe', 'Подписаться'); ?>
	<?php $this->endWidget(); ?>
</div>
