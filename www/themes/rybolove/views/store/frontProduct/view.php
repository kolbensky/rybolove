<?php
/**
 * Product view
 * @var StoreProduct $model
 * @var $this Controller
 */

// Set meta tags
$this->pageTitle = ($model->meta_title) ? $model->meta_title : $model->name;
//$this->pageKeywords = $model->meta_keywords;
$category_padegi = array('Катушки Безинерционные' => array('Безинерционная катушка', 'Безинерционную катушку', 'Безинерционной катушки', 'жен'),
    'Катушки Карп Байтранер' => array('Катушка карп байтранер', 'Катушку карп байтранер', 'Катушки карп байтранер', 'жен'),
    'Катушки Мультипликатор' => array('Катушка мультипликатор', 'Катушку мультипликатор', 'Катушки мультипликатор', 'жен'),
    'Электрокатушки' => array('Электрокатушка', 'Электрокатушку', 'Электрокатушки', 'жен'),
    'Удилища кастинговые' => array('Кастинговое удилище', 'Кастинговое удилище', 'Кастингового удилища', 'средн'),
    'Удилища спиннинговые' => array('Спиннинговое удилище', 'Спиннинговое удилище', 'Спиннингового удилища', 'средн'),
    'Удилища лодочные' => array('Лодочное удилище', 'Лодочное удилище', 'Лодочного удилища', 'средн'),
    'Удилища карповые' => array('Карповое удилище', 'Карповое удилище', 'Карпового удилища', 'средн'),
    'Удилища матчевые' => array('Матчевое удилище', 'Матчевое удилище', 'Матчевого удилища', 'средн'),
    'Удилища сёрфовые' => array('Сёрфовое удилище', 'Сёрфовое удилище', 'Сёрфового удилища', 'средн'),
    'Удилища нахлыстовые' => array('Нахлыстовое удилище', 'Нахлыстовое удилище', 'Нахлыстового удилища', 'средн'),
    'Удилища телескопические' => array('Телескопическое удилище', 'Телескопическое удилище', 'Телескопического удилища', 'средн'),
    'Блесны' => array('Блесна', 'Блесну', 'Блесны', 'жен'),
    'Воблеры' => array('Воблер', 'Воблер', 'Воблера', 'муж'),
    'Силиконовые приманки' => array('Силиконовая приманка', 'Силиконовую приманку', 'Силиконовой приманки', 'жен'),
    'Аттрактанты' => array('Аттрактант', 'Аттрактант', 'Аттрактанта', 'муж'),
    'Крючки' => array('Крючок', 'Крючок', 'Крючка', 'муж'),
    'Грузки' => array('Грузок', 'Грузок', 'Грузка', 'муж'),
    'Джиг-головки' => array('Джиг-головок', 'Джиг-головок', 'Джиг-головка', 'муж'),
    'Поплавки' => array('Поплавок', 'Поплавок', 'Поплавка', 'муж'),
    'Леска' => array('Леска', 'Леску', 'Лески', 'жен'),
    'Шнуры' => array('Шнур', 'Шнур', 'Шнура', 'муж'),
    'Флюрокарбон' => array('Флюрокарбон', 'Флюрокарбон', 'Флюрокарбона', 'муж'),
    'Очки' => array('Очки', 'Очки', 'Очков', 'множ'),
    'Обувь' => array('Обувь', 'Обувь', 'Обуви', 'жен'),
    'Костюмы' => array('Костюм', 'Костюм', 'Костюма', 'муж'),
    'Головные уборы' => array('Головной убор', 'Головной убор', 'Головного убора', 'муж'),
    'Куртки' => array('Куртка', 'Куртки', 'Куртки', 'жен'),
    'Кофты' => array('Кофта', 'Кофты', 'Кофты', 'жен'),
    'Футболки' => array('Футболка', 'Футболки', 'Футболки', 'жен'),
    'Брюки' => array('Брюки', 'Брюки', 'Брюк', 'множ'),
    'Перчатки' => array('Перчатки', 'Перчатки', 'Перчаток', 'множ'),
    'Инструменты' => array('Инструмент', 'Инструмент', 'Инструмента', 'муж'),
    'Ящики, коробки' => array('Коробка', 'Коробку', 'Коробки', 'жен'), //опасность
    //'Сумки, чехлы и кемпинг' => array('Коробка', 'Коробку', 'Коробки', 'жен'), //опасность
    'Подставки и рогачики' => array('Подставка', 'Подставку', 'Подставки', 'жен'),
    'Подсаки и садки' => array('Подсака', 'Подсаку', 'Подсаки', 'жен'),//опасность
    'Сигнализаторы' => array('Сигнализатор', 'Сигнализатор', 'Сигнализатора', 'муж'),
    'Палатки' => array('Палатка', 'Палатку', 'Палатки', 'жен'),
    'Лодки' => array('Лодка', 'Лодку', 'Лодки', 'жен'),
    'Монтажи' => array('Монтаж', 'Монтаж', 'Монтажа', 'муж'),
    // 'Разное' => array('Монтаж', 'Монтаж', 'Монтажа', 'муж'), //опасность
    // 'Зимняя рыбалка' => array('Монтаж', 'Монтаж', 'Монтажа', 'муж'), //опасность
);
if($category_padegi[$model->mainCategory->name][3] === 'жен'){
    $kachestv = 'качественная';
}
if($category_padegi[$model->mainCategory->name][3] === 'средн'){
    $kachestv = 'качественное';
}
if($category_padegi[$model->mainCategory->name][3] === 'муж'){
    $kachestv = 'качественный';
}
if($category_padegi[$model->mainCategory->name][3] === 'множ'){
    $kachestv = 'качественные';
}
$this->pageKeywords = 'Купить '.$model->mainCategory->name.', '.'Купить '.$model->mainCategory->name.' Киев, '.$model->mainCategory->name.' цена в Украине, '.$kachestv.' '.$model->mainCategory->name;



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
                                            <!--<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Описание</a></li>-->
                                            <!--<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Отзывы</a></li> -->
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <div class="desc"><?php echo $model->full_description; ?></div>
                                            </div>
                                            <!--        
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
                                            </div>-->
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
