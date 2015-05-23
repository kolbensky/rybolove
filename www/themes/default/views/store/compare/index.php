<?php

/**
 * Compare products view
 *
 * @var CompareController $this
 */

$this->pageTitle = Yii::t('StoreModule.core', 'Сравнение продуктов');
?>

<h1 class="has_background"><?php echo Yii::t('StoreModule.core', 'Сравнение продуктов') ?></h1>

<div>

	<?php if(!empty($this->model->products)): ?>
	<div class="compareTable">
		<div class="products_list wish_list">
			<?php foreach($this->model->products as $p): ?>
				
					<?php $this->renderPartial('_product', array('data'=>$p)) ?>
				
			<?php endforeach; ?>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<?php else: ?>
		<?php echo Yii::t('StoreModule.core','Нет результатов.'); ?>
	<?php endif ?>
</div>