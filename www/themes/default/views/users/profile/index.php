<?php

/**
 * @var $profile UserProfile
 * @var $user User
 * @var $form CActiveForm
 * @var $changePasswordForm ChangePasswordForm
 */

$this->pageTitle=Yii::t('UsersModule.core', 'Личный кабинет');
?>
<h1 class="has_background"><?php echo Yii::t('UsersModule.core', 'Личный кабинет'); ?></h1>
    <input id="prof" class="button_profile" type="submit" name="yt0" value="Личные данные" style="display: none">
    <input id="blod"  class="button_profile" type="submit" name="yt0" value="миниБлог" style="display: none">
<div class="box_profile">
<div class="form wide padding-all">
	<?php $form=$this->beginWidget('CActiveForm'); ?>

	<?php echo $form->errorSummary(array($profile, $user)); ?>

	<div class="row">
		<?php echo $form->label($profile,'full_name'); ?>
		<?php echo $form->textField($profile,'full_name') ?>
		<span class="required"> *</span>
	</div>

	<div class="row">
		<?php echo $form->label($user,'email'); ?>
		<?php echo $form->textField($user,'email') ?>
		<span class="required"> *</span>
	</div>

	<div class="row">
		<?php echo $form->label($profile,'phone'); ?>
		<?php echo $form->textField($profile,'phone') ?>
	</div>

	<div class="row">
		<?php echo $form->label($profile,'delivery_address'); ?>
		<?php echo $form->textArea($profile,'delivery_address') ?>
	</div>

	<div class="row submit">
		<label>&nbsp;</label>
		<?php echo CHtml::submitButton(Yii::t('UsersModule.admin', 'Сохранить')); ?>
	</div>

	<?php $this->endWidget(); ?>
</div><!-- form -->

<div style="clear: both;"></div>

<div class="form wide padding-all">
	<?php $form=$this->beginWidget('CActiveForm'); ?>

	<?php echo $form->errorSummary($changePasswordForm); ?>

	<div class="row">
		<label></label>
		<b><?php echo Yii::t('UsersModule.admin', 'Изменить пароль'); ?></b>
	</div>

	<div class="row">
		<?php echo $form->label($changePasswordForm,'current_password'); ?>
		<?php echo $form->passwordField($changePasswordForm,'current_password') ?>
	</div>

	<div class="row">
		<?php echo $form->label($changePasswordForm,'new_password'); ?>
		<?php echo $form->passwordField($changePasswordForm,'new_password') ?>
	</div>

	<div class="row submit">
		<label>&nbsp;</label>
		<?php echo CHtml::submitButton(Yii::t('UsersModule.admin', 'Изменить')); ?>
	</div>

	<?php $this->endWidget(); ?>
</div>
</div><!-- form -->

<div class="box_mini_blog">
    <div class="blog_top">
         <div class="blog_top_back">
         </div>
    <p>Вернуться в магазин</p>
    </div>
    <div class="blog_main">
        <div class="blog_content">
             <div class="blog_date">
            <P>17 марта 2015</P>
            </div>
            <div class="blog_content_photo">
            </div>
            <div class="blog_profile">
            <div class="fisherman_name">
               <p> Rybak_Xpystik</p>
            </div>
                <div class="box_fisherman_photo">
                <div class="fisherman_photo">
                </div>
                <div class="like_dislike">
                    <div class="dislike"></div>
                    <div class="sum_like"><p>31</p></div>
                    <div class="like"></div>
                </div>
                </div>
            </div>
             <div class="blog_social">
            <div class="button_vk"></div>
            <div class="button_inst"></div>
            </div>
        </div>
        <div class="blog_comment">
            <div class="button_comment">
                <input class="button_profile_comment" type="submit" name="yt0" value="Коментировать">
                <div class="sum_like_heart"> <p>175</p></div>
                <div class="like_heart"></div>
            </div>
            <div class="blog_date">
                <P>17 марта 2015</P>
            </div>
            <div class="comment">
                <p>1 - нам не нужно отбирать мусорные фотографии ведь в блок на наш
                    сайт будут выводиться самые высокорейтинговые фото или же фотки
                    с количесвом лайков больше 30. тогда случайные фотки будут
                    отсеиваться самими пользователями</p>
                    <p>2 - для того, чтобы получить скидку люди будут продвигать
                    свою фотку в соц сетях с просьбами поставить лайки и
                    это будет привлекать публику</p>
            </div>
            <div class="comment_people_box">
                <div class="comment_people">
                    <div class="photo_comment_people"></div>
                    <div class="comment_text">
                        <textarea name="" id="" cols="30" rows="10 disabled"></textarea>
                    </div>
                </div>
            </div>
            <div class="button_comments">
                <input class="button_profile_people" type="submit" name="yt0" value="Отмена" style="float: right;">
                <input class="button_profile_people" type="submit" name="yt0" value="Коментировать" style="float: right;">
            </div>
        </div>
    </div>
</div>
