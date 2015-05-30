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
                <div class="col-md-4">
<!--
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Products</h2>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Recent Posts</h2>
                        <ul>
                            <li><a href="">Sony Smart TV - 2015</a></li>
                            <li><a href="">Sony Smart TV - 2015</a></li>
                            <li><a href="">Sony Smart TV - 2015</a></li>
                            <li><a href="">Sony Smart TV - 2015</a></li>
                            <li><a href="">Sony Smart TV - 2015</a></li>
                        </ul>
                    </div>-->
                </div>
                
                <div class="col-md-8">
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
                                    <h2 class="product-name">Sony Smart TV - 2015</h2>
                                    <div class="product-inner-price">
                                        <ins>
                                        	<?php echo Yii::app()->currency->active->symbol; ?>
                                        	<?php echo StoreProduct::formatPrice($model->toCurrentCurrency()); ?>
                                        </ins> 
                                        <del><!-- discount price-->
                                            <?php
                                            if($model->appliedDiscount)
                                                echo $model->toCurrentCurrency('originalPrice').' '.Yii::app()->currency->active->symbol;
                                            ?></del>
                                    </div>    
                                    
                              
            <?php
                echo CHtml::form(array('/cart/add'),  'post',array('id'=>'prod'.$model->id));
                echo CHtml::hiddenField('product_id', $model->id);
                echo CHtml::hiddenField('product_price', $model->price);
                echo CHtml::hiddenField('use_configurations', $model->use_configurations);
                echo CHtml::hiddenField('currency_rate', Yii::app()->currency->active->rate);
                echo CHtml::hiddenField('configurable_id', 0);
                echo CHtml::hiddenField('quantity', 1);

                echo CHtml::button(Yii::t('StoreModule.core','Купить'), array('onclick'=>'addToCart(this)','class'=>'blue_button'))
            ?>

            <?php echo CHtml::endForm() ?>


        </div>
                                    </form>   
                                    
                                    <div class="product-inner-category">
                                        <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla. Quisque volutpat nulla risus, id maximus ex aliquet ut. Suspendisse potenti. Nulla varius lectus id turpis dignissim porta. Quisque magna arcu, blandit quis felis vehicula, feugiat gravida diam. Nullam nec turpis ligula. Aliquam quis blandit elit, ac sodales nisl. Aliquam eget dolor eget elit malesuada aliquet. In varius lorem lorem, semper bibendum lectus lobortis ac.</p>

                                                <p>Mauris placerat vitae lorem gravida viverra. Mauris in fringilla ex. Nulla facilisi. Etiam scelerisque tincidunt quam facilisis lobortis. In malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.</p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
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
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Related Products</h2>
                            <div class="related-products-carousel">
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-1.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony Smart TV - 2015</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$700.00</ins> <del>$800.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-2.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Apple new mac book 2015 March :P</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>$899.00</ins> <del>$999.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-3.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Apple new i phone 6</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$400.00</ins> <del>$425.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-4.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony playstation microsoft</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$200.00</ins> <del>$225.00</del>
                                    </div>                            
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-5.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony Smart Air Condtion</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$1200.00</ins> <del>$1355.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-6.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Samsung gallaxy note 4</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$400.00</ins>
                                    </div>                            
                                </div>                                    
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>

<?php /* 
<div class="product">
	<?php
		$this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		));
	?>

	<div class="images">
		<div class="image_row">
			<div class="main">
				<?php
					// Main product image
					if($model->mainImage)
						echo CHtml::link(CHtml::image($model->mainImage->getUrl('340x250', 'resize'), $model->mainImage->title), $model->mainImage->getUrl(), array('class'=>'thumbnail'));
					else
						echo CHtml::link(CHtml::image('http://placehold.it/340x250'), '#', array('class'=>'thumbnail'));
				?>
			</div>
			<div class="stars">
				<?php $this->widget('CStarRating',array(
					'name'=>'rating_'.$model->id,
					'id'=>'rating_'.$model->id,
					'allowEmpty'=>false,
					'readOnly'=>isset(Yii::app()->request->cookies['rating_'.$model->id]),
					'minRating'=>1,
					'maxRating'=>5,
					'value'=>($model->rating+$model->votes) ? round($model->rating / $model->votes) : 0,
					'callback'=>'js:function(){rateProduct('.$model->id.')}',
			)); ?>
			</div>
		</div>
		<div class="additional">
			<ul>
			<?php
			// Display additional images
			foreach($model->imagesNoMain as $image)
			{
				echo CHtml::openTag('li', array('class'=>'span2'));
				echo CHtml::link(CHtml::image($image->getUrl('160x120'), $image->title), $image->getUrl(), array('class'=>'thumbnail'));
				echo CHtml::closeTag('li');
			}
			?>
			</ul>
		</div>
	</div>

	<div class="info">
		<?php echo CHtml::form(array('/orders/cart/add')) ?>

		<h1><?php echo CHtml::encode($model->name); ?></h1>

		<?php $this->renderPartial('_configurations', array('model'=>$model)); ?>

		<div class="errors" id="productErrors"></div>
		
		<div style="clear: both;font-size: 16px">
			<?php
			if($model->appliedDiscount)
				echo '<span style="color:red; "><s>'.$model->toCurrentCurrency('originalPrice').' '.Yii::app()->currency->active->symbol.'</s></span>';
			?>
		</div>

		<div class="price">
			<span id="productPrice"><?php echo StoreProduct::formatPrice($model->toCurrentCurrency()); ?></span>
			<?php echo Yii::app()->currency->active->symbol; ?>
		</div>
		<div style="clear:both;"></div>
				<div class="quantity">
            <?php echo CHtml::numberField("quantities[$index]", $product['quantity'], array('class'=>'count','placeholder'=>'1')) ?>
        </div>
		<div class="actions">
			<?php
				echo CHtml::hiddenField('product_id', $model->id);
				echo CHtml::hiddenField('product_price', $model->price);
				echo CHtml::hiddenField('use_configurations', $model->use_configurations);
				echo CHtml::hiddenField('currency_rate', Yii::app()->currency->active->rate);
				echo CHtml::hiddenField('configurable_id', 0);
				echo CHtml::hiddenField('quantity', 1);

				if($model->isAvailable)
				{
					echo CHtml::ajaxSubmitButton(Yii::t('StoreModule.core','Купить'), array('/orders/cart/add'), array(
						'dataType' => 'json',
						'success'  => 'js:function(data, textStatus, jqXHR){processCartResponse(data, textStatus, jqXHR)}',
					), array(
						'id'=>'buyButton',
						'class'=>'blue_button'
					));
				}
				else
				{
					echo CHtml::link('Сообщить о появлении', '#', array(
						'onclick' => 'showNotifierPopup('.$model->id.'); return false;',
					));
				}

				echo CHtml::endForm();
			?>


		</div>
		<div style="clear:both;"></div>
			<div role="tabpanel" style="margin-top:30px;">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active" ><a  aria-controls="home" role="tab" data-toggle="tab" style="cursor: pointer;">Описание</a></li>
                                            <li role="presentation" class="" ><a  aria-controls="profile" role="tab" data-toggle="tab" style="cursor: pointer;">Отзывы</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade active in" id="home">
                                                <div class="desc"><?php echo $model->full_description; ?></div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <div class="submit-review">
                                                    <?php
		$tabs = array();

		// EAV tab


		// Comments tab
		$tabs[Yii::t('StoreModule.core', 'Отзывы').' ('.$model->commentsCount.')'] = array(
			'id'=>'comments_tab',
			'content'=>$this->renderPartial('comments.views.comment.create', array(
				'model'=>$model,
			), true));

		// Related products tab
		if($model->relatedProductCount)
		{
			$tabs[Yii::t('StoreModule.core', 'Сопутствующие продукты').' ('.$model->relatedProductCount.')'] = array(
				'id'=>'related_products_tab',
				'content'=>$this->renderPartial('_related', array(
					'model'=>$model,
				), true));
		}

		// Render tabs
		$this->widget('zii.widgets.jui.CJuiTabs', array(
			'id'=>'tabs',
			'tabs'=>$tabs
		));

		// Fix tabs opening by anchor
		Yii::app()->clientScript->registerScript('tabSelector', '
			$(function() {
				var anchor = $(document).attr("location").hash;
				var result = $("#tabs").find(anchor).parents(".ui-tabs-panel");
				if($(result).length)
				{
					$("#tabs").tabs("select", "#"+$(result).attr("id"));
				}
			});
		');
	?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

	</div>


	<div style="clear:both;"></div>

</div>
*/?>
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
