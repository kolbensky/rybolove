<?php

$title = CHtml::encode($data->name);

if($data->mainImage)
    $imgSource = $data->mainImage->getUrl('190x150');
else
    $imgSource = 'http://placehold.it/190x150';
//echo CHtml::link(CHtml::image($imgSource, $data->mainImageTitle), array('frontProduct/view', 'url'=>$data->url), array('class'=>'thumbnail'));
?>

<div class="single-product">
    <div class="product-f-image">
        <img src="<?=$imgSource?>" alt="">
        <div class="product-hover">

        <?php
         ///форма для отправки данных о добавлении товара в карзину
        echo CHtml::form(array('/cart/add'),  'post',array('id'=>'prod'.$data->id, 'class'=>'cart'));
        echo CHtml::hiddenField('product_id', $data->id);
        echo CHtml::hiddenField('product_price', $data->price);
        echo CHtml::hiddenField('use_configurations', $data->use_configurations);
        echo CHtml::hiddenField('currency_rate', Yii::app()->currency->active->rate);
        echo CHtml::hiddenField('configurable_id', 0);

        echo CHtml::ajaxSubmitButton(Yii::t('StoreModule.core','Купить'), array('/orders/cart/add'), array(
                'id'=>'addProduct'.$data->id,
                'dataType'=>'json',
                'success'=>'js:function(data, textStatus, jqXHR){processCartResponseFromList(data, textStatus, jqXHR, "'.Yii::app()->createAbsoluteUrl('/store/frontProduct/view', array('url'=>$data->url)).'")}',
            ), array('class'=>'blue_button add_to_cart_button add-to-cart-link'));
        //echo CHtml::button(Yii::t('StoreModule.core','Купить'), array('onclick'=>'cartOperation(this)','class'=>'add_to_cart_button add-to-cart-link'))
            ?>
                                    <?php echo CHtml::endForm() ?>

           <!-- <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>-->
            <?php echo CHtml::link('<i class="fa fa-link"></i>'.Yii::t('StoreModule.core','Подробнее'), array('frontProduct/view', 'url'=>$data->url), array('class'=>'view-details-link')) ?>

        </div>
    </div>

    <h2><?php echo CHtml::link($title, array('frontProduct/view', 'url'=>$data->url),array('title'=>$title)) ?></h2>

    <div class="product-carousel-price">
        <ins><?php echo $data->priceRange() ?></ins>
    </div>
</div>