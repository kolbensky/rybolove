<?php

/**
 * Small cart.
 * This template is loaded thru ajax request after new product added to cart.
 */
?>
	<a href="<?php echo Yii::app()->createUrl('/orders/cart/index') ?>" class="light" >Корзина - 
		<span class="cart-amunt"><?php echo Yii::app()->currency->active->symbol ?> <?php echo StoreProduct::formatPrice(Yii::app()->currency->convert(Yii::app()->cart->getTotalPrice())) ?></span>
		<i class="fa fa-shopping-cart"></i>
		<span class="product-count"><?php echo Yii::app()->cart->countItems() ?></span>
	</a>