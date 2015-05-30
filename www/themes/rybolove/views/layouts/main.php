<!DOCTYPE html>
<?php
    $temdir = Yii::app()->theme->baseUrl.'/assets/';
    $assetsManager = Yii::app()->clientScript;
    $assetsManager->registerCoreScript('jquery');
    $assetsManager->registerCoreScript('jquery.ui');
?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo CHtml::encode($this->pageTitle) ?></title>
	<meta name="description" content="<?php echo CHtml::encode($this->pageDescription) ?>">
	<meta name="keywords" content="<?php echo CHtml::encode($this->pageKeywords) ?>">
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?=$temdir?>css/owl.carousel.css">
    <link rel="stylesheet" href="<?=$temdir?>style.css">
    <link rel="stylesheet" href="<?=$temdir?>css/responsive.css">
    <link rel="stylesheet" href="<?=$temdir?>categoryPage.css">
    <link rel="stylesheet" href="<?=$temdir?>main.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <?php
                $this->widget('zii.widgets.CMenu', array(
                    'items'=>array(
                        //array('label'=>Yii::t('core', 'Помощь'), 'url'=>array('/pages/pages/view', 'url'=>'help')),
                        //array('label'=>Yii::t('core', 'Как сделать заказ'), 'url'=>array('/pages/pages/view', 'url'=>'how-to-create-order')),
                        //array('label'=>Yii::t('core', 'Гарантия'), 'url'=>array('/pages/pages/view', 'url'=>'garantiya')),
                        //array('label'=>Yii::t('core', 'Доставка и оплата'), 'url'=>array('/pages/pages/view', 'url'=>'dostavka-i-oplata')),
                        //array('label'=>Yii::t('core', 'Обратная связь'), 'url'=>array('/feedback/default/index')),
                        array('label'=>Yii::t('core', 'Личный кабинет'), 'url'=>array('#', 'url'=>'garantiya')),
                        array('label'=>Yii::t('core', 'Мои заказы'), 'url'=>array('#', 'url'=>'dostavka-i-oplata')),
                        array('label'=>Yii::t('core', 'Выход'), 'url'=>array('#')),
                    ),
                ));
            ?>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">

                    <?php /*
                            <li>
                                <a href="<?php echo Yii::app()->createUrl('/store/compare/index') ?>">
                                    <span class="icon compare"></span><?php echo Yii::t('core', 'Товары на сравнение ({c})', array('{c}'=>SCompareProducts::countSession())) ?>
                                </a>
                            </li>
                    
                            <li>
                                <a href="<?php echo Yii::app()->createUrl('/store/wishlist/index') ?>">
                                    <span class="icon heart"></span><?php echo Yii::t('core', 'Список желаний ({c})', array('{c}'=>StoreWishlist::countByUser())) ?>
                                </a>
                            </li>
                            */?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->

    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <img src="<?=$temdir?>img/logo.png" alt="">
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart.html">Cart - <span class="cart-amunt">$800</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->


    
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Каталог товаров</a></li>
                        <li><a href="#">Как сделать заказ</a></li>
                        <li><a href="#">Гарантия</a></li>
                        <li><a href="#">Доставка и оплата</a></li>
                        <li><a href="#">Обратная связь</a></li>
                        <li><a href="#">Помощь</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div><!-- End mainmenu area -->
    <? echo $content;?>
    
    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>e<span>Electronics</span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order history</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Vendor contact</a></li>
                            <li><a href="#">Front page</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="#">Mobile Phone</a></li>
                            <li><a href="#">Home accesseries</a></li>
                            <li><a href="#">LED TV</a></li>
                            <li><a href="#">Computer</a></li>
                            <li><a href="#">Gadets</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2015 eElectronics. All Rights Reserved. Coded with <i class="fa fa-heart"></i> by <a href="http://wpexpand.com" target="_blank">WP Expand</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="<?=$temdir?>js/owl.carousel.min.js"></script>
    <script src="<?=$temdir?>js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="<?=$temdir?>js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="<?=$temdir?>js/main.js"></script

    <script src="<?=$temdir?>js/common.js"></script>

    <script src="<?=$temdir?>js/menu.js"></script>

  </body>
</html>