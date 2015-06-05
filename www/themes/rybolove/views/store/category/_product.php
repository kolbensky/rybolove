<?
if($data->mainImage)
			$imgSource = $data->mainImage->getUrl('190x150');
		else
			$imgSource = 'http://placehold.it/190x150';

/**
 * @var StoreProduct $data
 */
?>

<div class="col-md-4 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <? echo CHtml::link('<img src="'.$imgSource.'" alt="">', array('frontProduct/view', 'url'=>$data->url), array('title'=> $title)); ?>
                        </div>
                        <h2>
                            <?php
                        	$title = CHtml::encode($data->name);
                        	echo CHtml::link(CHtml::encode($data->name), array('frontProduct/view', 'url'=>$data->url), array('title'=> $title));
                            ?>
                        </h2>
                        <div class="product-carousel-price">
                            <?php /*
								if($data->appliedDiscount)
								echo '<span style=""><s>'.$data->toCurrentCurrency('originalPrice').'</s></span>';
							*/
							?>
							<div class="price">
								<?php echo $data->priceRange() ?>
							</div>
                        </div>  
                        
                        <div class="product-option-shop">
                            
                                    <?php
                                     ///форма для отправки данных о добавлении товара в карзину
                                        echo CHtml::form(array('/cart/add'),  'post',array('id'=>'prod'.$data->id));
                                        echo CHtml::hiddenField('product_id', $data->id);
                                        echo CHtml::hiddenField('product_price', $data->price);
                                        echo CHtml::hiddenField('use_configurations', $data->use_configurations);
                                        echo CHtml::hiddenField('currency_rate', Yii::app()->currency->active->rate);
                                        echo CHtml::hiddenField('configurable_id', 0);
                                        echo CHtml::hiddenField('quantity', 1);
                                        echo CHtml::ajaxSubmitButton(Yii::t('StoreModule.core','Купить'), array('/orders/cart/add'), array(
                'id'=>'addProduct'.$data->id,
                'dataType'=>'json',
                'success'=>'js:function(data, textStatus, jqXHR){processCartResponseFromList(data, textStatus, jqXHR, "'.Yii::app()->createAbsoluteUrl('/store/frontProduct/view', array('url'=>$data->url)).'")}',
            ), array('class'=>'blue_button'));
                                        //echo CHtml::button(Yii::t('StoreModule.core','Купить'), array('onclick'=>'addToCart(this)','class'=>'blue_button'))
                                    ?>

                                    <?php echo CHtml::endForm() ?>
                          
                        </div>                       
                    </div>
                </div>