<?php

/**
 * Site start view
 */
?>
<div class="banners" align="center">

	<div class="mcContainer">
		<div class="mcmPhoto1 mcmPhoto"><a href=""><img src="https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-15/11226734_1099748480042093_57204282_n.jpg"></a></div>
		<div class="mcmPhoto2 mcmPhoto"><a href=""><img src="https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-15/11243676_805885319489468_236670592_n.jpg"></a></div>
		<div class="mcmPhoto3 mcmPhoto"><a href=""><img src="https://igcdn-photos-d-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-15/11208352_1453892154902003_1317284392_n.jpg"></a></div>
		<div class="mcmPhoto4 mcmPhoto"><a href=""><img src="https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xfp1/t51.2885-15/11024353_785484394862564_50627063_n.jpg"></a></div>
		<div class="mcmPhoto5 mcmPhoto"><a href=""><img src="https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xfp1/t51.2885-15/11024353_785484394862564_50627063_n.jpg"></a></div>
		<div class="mcmPhoto6 mcmPhoto"><a href=""><img src="https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xfp1/t51.2885-15/11024353_785484394862564_50627063_n.jpg"></a></div>
		<div class="mcmPhoto7 mcmPhoto"><a href=""><img src="https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xfp1/t51.2885-15/11024353_785484394862564_50627063_n.jpg"></a></div>
	</div>

</div>

<div class="wide_line">
	<span>Популярные товары</span>
</div>

<div class="products_list">
	<?php
		foreach($popular as $p)
			$this->renderPartial('_product', array('data'=>$p));
	?>
</div>

<?php $this->beginClip('underFooter'); ?>
<div style="clear:both;"></div>

<script type="text/javascript">
	$(document).ready(function(){
		$("#shares .share_list ul li a").click(function(){
			$("#shares .share_list ul li").removeClass('active');
			$(this).parent().addClass('active');
			$("#shares .products_list").load('/store/index/renderProductsBlock/'+$(this).attr('href'));
			return false;
		});
	});
</script>
<!--<div id="shares">
	<div class="shared_products">
		<div class="share_list">
			<ul>
				<li class="active"><a href="newest">Новинки</a></li>
				<li><a href="added_to_cart">Хиты продаж</a></li>
			</ul>
		</div>

		<div style="clear:both;"></div>

		<div class="products_list">
			<?php
			foreach($newest as $p)
				$this->renderPartial('_product', array('data'=>$p));
			?>
		</div>
	</div>
</div>


<div class="centered">
	<div class="wide_line">
		<span>Новости</span>

	</div>

	<ul class="news">
		<?php foreach($news as $n): ?>
		<li>
			<span class="date"><?php echo $n->created ?></span>
			<a href="<?php echo $n->viewUrl ?>" class="title"><?php echo $n->title ?></a>
			<p><?php echo $n->short_description ?></p>
		</li>
		<?php endforeach; ?>
	</ul>

	<div class="all_news">
		<a href="<?=$n->category->viewUrl?>">Все новости</a>
	</div>
</div>-->
<?php $this->endClip(); ?>
