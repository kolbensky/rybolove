<?php

/**
 * Display cart
 * @var Controller $this
 * @var SCart $cart
 * @var $totalPrice integer
 */

Yii::app()->clientScript->registerScriptFile($this->module->assetsUrl.'/cart.js', CClientScript::POS_END);
Yii::app()->clientScript->registerScript('cartScript', "var orderTotalPrice = '$totalPrice';", CClientScript::POS_HEAD);

$this->pageTitle = Yii::t('OrdersModule.core', 'Оформление заказа');

if(empty($items))
{
    echo CHtml::openTag('h2',array('class'=>'cart_h2'));
    echo Yii::t('OrdersModule.core', 'Корзина пуста');
    echo CHtml::closeTag('h2');
    return;
}
?>
<div class="container">
<h1 class="has_background zagolovok-korzina"><?php echo Yii::t('OrdersModule.core', 'Оформление заказа'); ?></h1>


<div class="product-content-right">
<div class="woocommerce">
    <?php echo CHtml::form() ?>
    <table cellspacing="0" class="shop_table cart">
        <thead>
        <tr>
            <th class="product-remove">&nbsp;</th>
            <th class="product-thumbnail">&nbsp;</th>
            <th class="product-name">Наименование</th>
            <th class="product-price">Цена</th>
            <th class="product-quantity">Количество</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach($items as $index=>$product): ?>
        <tr class="cart_item">
            <td class="product-remove">
                <?php echo CHtml::link('×', array('/orders/cart/remove', 'index'=>$index), array('class'=>'remove')); ?>
            </td>

            <td class="product-thumbnail">
                <?php
                // Display image
                if($product['model']->mainImage)
                    $imgSource = $product['model']->mainImage->getUrl('100x100');
                else
                    $imgSource = 'http://placehold.it/100x100';
                echo CHtml::link(CHtml::image($imgSource, '', array('class'=>'shop_thumbnail')), array('/store/frontProduct/view', 'url'=>$product['model']->url)).'<br/>';
                ?>
            </td>

            <td class="product-name">
                <?
                echo CHtml::link(CHtml::encode($product['model']->name), array('/store/frontProduct/view', 'url'=>$product['model']->url)).'<br/>';
                ?>
                </td>
            <td class="product-price">
                <?
                $price = StoreProduct::calculatePrices($product['model'], $product['variant_models'], $product['configurable_id']);
                echo CHtml::openTag('span', array('class'=>'amount'));
                echo StoreProduct::formatPrice(Yii::app()->currency->convert($price));
                echo ' '.Yii::app()->currency->active->symbol;
                echo CHtml::closeTag('span');
                ?>
            </td>
            <td class="product-quantity">
                <div class="quantity buttons_added">
                    <button class="small_silver_button plus">+</button>
                    <?php echo CHtml::numberField("quantities[$index]", $product['quantity'], array('class'=>'count','onkeyup'=>'ff2(this)')) ?>
                    <button class="small_silver_button minus">&minus;</button>
                </div>
            </td>
        </tr>
        <?php endforeach ?>
        <tr>
            <td class="actions" colspan="6">
                <button class="recount" name="recount" type="submit" value="1" >Пересчитать</button>

            </td>
        </tr>
        </tbody>
    </table>


    <div class="cart-collaterals">

    <div class="cart_totals ">
        <h2>К оплате</h2>

        <table cellspacing="0">
            <tbody>
            <tr class="order-total">
                <th>Всего</th>
                <td><strong><span class="amount">
                            <?php echo StoreProduct::formatPrice($totalPrice) ?>
                            <?php echo Yii::app()->currency->active->symbol ?>
                        </span></strong> </td>
            </tr>
            </tbody>
        </table>



    </div>

    </div>
    <div class="order_data">
        <div class="left">
            <div class="delivery rc5">
                <h2>Способ доставки</h2>
                <ul>
                    <?php foreach($deliveryMethods as $delivery): ?>
                        <li>
                            <label class="radio">
                                <?php
                                echo CHtml::activeRadioButton($this->form, 'delivery_id', array(
                                    'checked'        => ($this->form->delivery_id == $delivery->id),
                                    'uncheckValue'   => null,
                                    'value'          => $delivery->id,
                                    'data-price'     => Yii::app()->currency->convert($delivery->price),
                                    'data-free-from' => Yii::app()->currency->convert($delivery->free_from),
                                    'onClick'        => 'recountOrderTotalPrice(this);',
									'checked'        => 'checked'
                                ));
                                ?>
                                <span><?php echo CHtml::encode($delivery->name) ?></span>
                            </label>
                            <p><?=$delivery->description?></p>
                        </li>
                    <?php endforeach; ?>
            </div>
        </div>

        <div class="user_data rc5">
            <h2>Адрес получателя</h2>

            <div class="form wide">
                <?php echo CHtml::errorSummary($this->form, $header = 'Пожалуйста, исправьте следующие ошибки:'); ?>

                <div class="row">
                    <?php echo CHtml::activeLabel($this->form,'name', array('required'=>true)); ?>
                    <?php echo CHtml::activeTextField($this->form,'name'); ?>
                </div>

                <div class="row">
                    <?php echo CHtml::activeLabel($this->form,'email', array('required'=>true)); ?>
                    <?php echo CHtml::activeTextField($this->form,'email'); ?>
                </div>

                <div class="row">
                    <?php echo CHtml::activeLabel($this->form,'phone', array('required'=>true)); ?>
                    <?php echo CHtml::activeTextField($this->form,'phone'); ?>
                </div>

                <div class="row">
                    <?php echo CHtml::activeLabel($this->form,'address'); ?>
                    <?php echo CHtml::activeTextField($this->form,'address'); ?>
                </div>

                <div class="row">
                    <?php echo CHtml::activeLabel($this->form,'comment'); ?>
                    <?php echo CHtml::activeTextArea($this->form,'comment'); ?>
                </div>
            </div>
        </div>
    </div>
    <div style="clear: both;"></div>
    <button id="cart_button" class="oformit" type="submit" name="create" value="1">Оформить</button>
    <?php echo CHtml::endForm() ?>
</div>

</div>


</div>
<script type="text/javascript">
    $("#cart").css("display","none");
    

  
</script>
