<?php
/**
 * @var $this Controller
 * @var $form CActiveForm
 */

// Load module
$module = Yii::app()->getModule('comments');
// Validate and save comment on post request
$comment = $module->processRequest($model);
// Load model comments
$comments = Comment::getObjectComments($model);

$currentUrl = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];

// Display comments
if(!empty($comments))
{
	foreach($comments as $row)
	{
	?>
		<div class="comment" id="comment_<?php echo $row->id; ?>">
			<span class="username"><?php echo CHtml::encode($row->name); ?></span> <span class="created">(<?php echo $row->created; ?>)</span>
			<?php echo CHtml::link('#', Yii::app()->request->getUrl().'#comment_'.$row->id) ?>
			<div class="message">
				<?php echo nl2br(CHtml::encode($row->text)); ?>
			</div>
			<hr>
		</div>
	<?php
	}
}
?>

	<h3><?php echo Yii::t('CommentsModule.core', 'Оставить отзыв') ?></h3>
	<div class="submit-review ">
	<?php $form=$this->beginWidget('CActiveForm', array(
		'id'                     =>'comment-create-form',
		'action'                 =>$currentUrl.'#comment-create-form',
		'enableAjaxValidation'   =>false,
		'enableClientValidation' =>true,
	)); ?>

	<?php if(Yii::app()->user->isGuest): ?>
		<p>
			<?php echo $form->labelEx($comment,'name'); ?>
			<?php echo $form->textField($comment,'name'); ?>
			<?php echo $form->error($comment,'name'); ?>
		</p>

		<p>
			<?php echo $form->labelEx($comment,'email'); ?>
			<?php echo $form->textField($comment,'email'); ?>
			<?php echo $form->error($comment,'email'); ?>
		</p>
	<?php endif; ?>

		<p>
			<?php echo $form->labelEx($comment,'text'); ?>
			<?php echo $form->textArea($comment,'text', array('rows'=>10, 'cols'=>30)); ?>
			<?php echo $form->error($comment,'text'); ?>
		</p>

		<?php if(Yii::app()->user->isGuest): ?>
		<p>
			<?php echo CHtml::activeLabelEx($comment, 'verifyCode')?>
			<?php $this->widget('CCaptcha', array(
				'clickableImage'=>true,
				'showRefreshButton'=>false,
			)) ?>
			<br/>
			<label>&nbsp;</label>
			<?php echo CHtml::activeTextField($comment, 'verifyCode')?>
			<?php echo $form->error($comment,'verifyCode'); ?>
		</p>
		<?php endif ?>

		<p>
			<?php echo CHtml::submitButton(Yii::t('CommentsModule.core', 'Отправить'), array('value' => 'Отправить')); ?>
		</p>

	<?php $this->endWidget(); ?><!-- /form -->
	</div>
</div>