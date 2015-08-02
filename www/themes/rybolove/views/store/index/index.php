    <div class="bg-green">

    <div class="container">
<style>
.instansive-widget img{
	padding: 0px!important;
	}
</style>
<div style="height: 585px">
<!-- INSTANSIVE WIDGET -->
<script src="//instansive.com/widget/js/instansive.js"></script>
<iframe src="//instansive.com/widgets/99bb44d9c2c9d419561c620a3c8b1c029da1c2ae.html" id="instansive_99bb44d9c2" name="instansive_99bb44d9c2"  scrolling="no" allowtransparency="true" class="instansive-widget" style="width: 100%; border: 0; overflow: hidden;">    
</iframe>
</div>
   <!-- <div class="slider-area">
        <div id="slide-list" class="carousel carousel-fade slide" data-ride="carousel">
            
            <div class="slide-bulletz">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <ol class="carousel-indicators slide-indicators">
                                <li data-target="#slide-list" data-slide-to="0" class="active"></li>
                                <li data-target="#slide-list" data-slide-to="1"></li>
                                <li data-target="#slide-list" data-slide-to="2"></li>
                            </ol>                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="single-slide">
                        <div class="col-sm-6"><img class="big-img" src="themes/rybolove/assets/img/slide1-1.png" alt=""></div>
						<div class="col-sm-6">
                            <img class="col-sm-12" src="themes/rybolove/assets/img/slide1-2.png" alt="">
							<img class="col-sm-6 adaptive-slide" src="themes/rybolove/assets/img/slide1-3.png" alt="">
							<img class="col-sm-6 adaptive-slide" src="themes/rybolove/assets/img/slide1-4.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="single-slide">
                        <div class="col-sm-6"><img class="big-img" src="themes/rybolove/assets/img/slide2-1.png" alt=""></div>
                        <div class="col-sm-6">
                            <img class="col-sm-12" src="themes/rybolove/assets/img/slide2-2.png" alt="">
                            <img class="col-sm-6 adaptive-slide" src="themes/rybolove/assets/img/slide2-4.png" alt="">
                            <img class="col-sm-6 adaptive-slide" src="themes/rybolove/assets/img/slide2-3.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="single-slide">
                        <div class="col-sm-6"><img class="big-img" src="themes/rybolove/assets/img/slide3-1.png" alt=""></div>
                        <div class="col-sm-6">
                            <img class="col-sm-12" src="themes/rybolove/assets/img/slide3-2.png" alt="">
                            <img class="col-sm-6 adaptive-slide" src="themes/rybolove/assets/img/slide3-3.png" alt="">
                            <img class="col-sm-6 adaptive-slide" src="themes/rybolove/assets/img/slide3-4.png" alt="">
                        </div>
                    </div>
                </div>
            </div>

        </div>        
    </div> <!-- End slider area -->
    </div>
        <div class="zigzag-bottom first-zigzag"></div>
    </div>
    
    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <?php include_once("text/mainpage.php") ?>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo">
                        <i class="fa fa-refresh"></i>
                        <p>Возврат до 30 дней</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo">
                        <i class="fa fa-truck"></i>
                        <p>Бесплатная доставка</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo">
                        <i class="fa fa-lock"></i>
                        <p>Безопасные платежи</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo">
                        <i class="fa fa-gift"></i>
                        <p>Новые товары</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Популярные товары</h2>
                        <div class="product-carousel">
                            <?php
                            foreach($popular as $p)
                                $this->renderPartial('_product', array('data'=>$p));
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
    
    <div class="brands-area">
        <!--     <div class="zigzag-bottom"></div> -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="brand-wrapper">
                            <h2 class="section-title">Бренды</h2>
                            <div class="brand-list">
                                <img src="themes/rybolove/assets/img/brand_1.png" alt="">
                                <img src="themes/rybolove/assets/img/brand_2.png" alt="">
                                <img src="themes/rybolove/assets/img/brand_3.png" alt="">
                                <img src="themes/rybolove/assets/img/brand_4.png" alt="">
                                <img src="themes/rybolove/assets/img/brand_5.png" alt="">
                                <img src="themes/rybolove/assets/img/brand_6.png" alt="">
                                <img src="themes/rybolove/assets/img/brand_7.png" alt="">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End brands area -->

