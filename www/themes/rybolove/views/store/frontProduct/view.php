<?php
/**
 * Product view
 * @var StoreProduct $model
 * @var $this Controller
 */

// Set meta tags
$this->pageTitle = ($model->meta_title) ? $model->meta_title : $model->name;
$this->pageKeywords = $model->meta_keywords;
$this->pageDescription = $model->meta_description;

// Register main script
Yii::app()->clientScript->registerScriptFile($this->module->assetsUrl.'/product.view.js', CClientScript::POS_END);
Yii::app()->clientScript->registerScriptFile($this->module->assetsUrl.'/product.view.configurations.js', CClientScript::POS_END);

// Create breadcrumbs
if($model->mainCategory)
{
	$ancestors = $model->mainCategory->excludeRoot()->ancestors()->findAll();

	foreach($ancestors as $c)
		$this->breadcrumbs[$c->name] = $c->getViewUrl();

	// Do not add root category to breadcrumbs
	if ($model->mainCategory->id != 1)
		$this->breadcrumbs[$model->mainCategory->name] = $model->mainCategory->getViewUrl();
}

// Fancybox ext
$this->widget('application.extensions.fancybox.EFancyBox', array(
	'target'=>'a.thumbnail',
));

?>

 <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="leftWrapper">
						<div class="mainm">
						<?php
							$this->renderPartial('//layouts/_mainm');
						?>
						</div>
						
					</div>

                </div>
                
                <div class="col-md-9">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <?php
								$this->widget('zii.widgets.CBreadcrumbs', array(
								'links'=>$this->breadcrumbs,
							));
							?>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <?php
										// Main product image
										if($model->mainImage)
											echo CHtml::link(CHtml::image($model->mainImage->getUrl('340x250', 'resize'), $model->mainImage->title), $model->mainImage->getUrl(), array('class'=>'thumbnail'));
										else
											echo CHtml::link(CHtml::image('http://placehold.it/340x250'), '#', array('class'=>'thumbnail'));
										?>
                                    </div>
                                    
                                    <div class="product-gallery">
                                        <?php
										// Display additional images
										foreach($model->imagesNoMain as $image)
										{
											echo CHtml::openTag('li', array('class'=>'span2'));
											echo CHtml::link(CHtml::image($image->getUrl('160x120'), $image->title), $image->getUrl(), array('class'=>'thumbnail'));
											echo CHtml::closeTag('li');
										}
										?>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name"><?php echo CHtml::encode($model->name); ?></h2>
                                    <div class="product-inner-price">
                                        <ins>
                                        	<?php echo StoreProduct::formatPrice($model->toCurrentCurrency()); ?>
                                            <?php echo Yii::app()->currency->active->symbol; ?>
                                        </ins> 
                                        <del><!-- discount price-->
                                            <?php /*
                                            if($model->appliedDiscount)
                                                echo $model->toCurrentCurrency('originalPrice').' '.Yii::app()->currency->active->symbol;
                                            */?></del>
                                    </div>    
                                    

                              
                                    <?php
                                     ///форма для отправки данных о добавлении товара в карзину
                                        echo CHtml::form(array('/cart/add'),  'post',array('id'=>'prod'.$model->id, 'class'=>'cart'));
                                        echo CHtml::hiddenField('product_id', $model->id);
                                        echo CHtml::hiddenField('product_price', $model->price);
                                        echo CHtml::hiddenField('use_configurations', $model->use_configurations);
                                        echo CHtml::hiddenField('currency_rate', Yii::app()->currency->active->rate);
                                        echo CHtml::hiddenField('configurable_id', 0);
                                        echo '<div class="quantity">' . CHtml::numberField('quantity', 1, array('class' => 'input-text qty text', 'min' => '1','onkeyup'=>'ff2(this)','pattern'=>'^[ 1-9]+$')) . '</div>';
                                                echo CHtml::ajaxSubmitButton(Yii::t('StoreModule.core','Купить'), array('/orders/cart/add'), array(
                'id'=>'addProduct'.$data->id,
                'dataType'=>'json',
                'success'=>'js:function(data, textStatus, jqXHR){processCartResponse(data, textStatus, jqXHR, "'.Yii::app()->createAbsoluteUrl('/store/frontProduct/view', array('url'=>$data->url)).'")}',
            ), array('class'=>'add_to_cart_button'));
                                        //echo CHtml::button(Yii::t('StoreModule.core','Купить'), array('onclick'=>'addToCart(this)','class'=>'add_to_cart_button'))
                                    ?>

                                    <?php echo CHtml::endForm() ?>
									<div class="clear"></div>
                                    <div class="shareBlock">
                                        Поделиться в социальной сети:
                                        <?php include_once("shareBlock.php") ?>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Описание</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Отзывы</a></li> 
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <div class="desc"><?php echo $model->full_description; ?></div>
                                            </div>
                                                
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                
                                                    <?php $this->renderPartial('comments.views.comment.create', array('model'=>$model)); ?>
                                                   <!-- <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>-->

                                                
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        

                    </div>                    
                </div>
            </div>
        </div>
    </div>


<script type="text/javascript">
	$(document).ready(function(){
		$("#profile").css( "display", "none" );
    $("a[aria-controls='home']").click(function(){
    	$("#profile").css( "display", "none" );
    	$(".product-tab li:first").addClass("active");
    	$(".product-tab li:last").removeClass("active");
    	$("#home").fadeIn(1000);
    });
    $("a[aria-controls='profile']").click(function(){
    	$(".product-tab li:last").addClass("active");
    	$(".product-tab li:first").removeClass("active");
       	$("#home").css( "display", "none" );
        $("#profile").fadeIn(1000);
    });
        
});

</script>
