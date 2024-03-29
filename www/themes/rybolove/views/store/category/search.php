<?php

/**
 * Search view
 * @var $this CategoryController
 */

// Set meta tags
$this->pageTitle = Yii::t('StoreModule.core', 'Поиск');
$this->breadcrumbs[] = Yii::t('StoreModule.core', 'Поиск');

?>
<div class="container">
	<div class="leftWrapper" style="margin-right:60px;">
        <div class="mainm">
        <?php
            $this->renderPartial('//layouts/_mainm');
        ?>
        </div>
        <div id="filter">
        <?php
            $this->widget('application.modules.store.widgets.filter.SFilterRenderer', array(
                'model'=>$this->model,
                'attributes'=>$this->eavAttributes,
            ));
        ?>
		</div>
	</div>
	
<div class="catalog">

	<div class="products_list">
		<?php
			$this->widget('zii.widgets.CBreadcrumbs', array(
				'links'=>$this->breadcrumbs,
			));
		?>

		<h1><?php
			echo Yii::t('StoreModule.core', 'Результаты поиска');
			if(($q=Yii::app()->request->getParam('q')))
				echo ' "'.CHtml::encode($q).'"';
		?></h1>

		<div class="actions">
			<?php
				echo Yii::t('StoreModule.core', 'Сортировать:');
				echo CHtml::dropDownList('sorter', Yii::app()->request->url, array(
					Yii::app()->request->removeUrlParam('/store/category/search', 'sort')  => '---',
                        Yii::app()->request->addUrlParam('/store/category/search', array('sort'=>'price'))  => Yii::t('StoreModule.core', 'Сначала дешевые'),
					Yii::app()->request->addUrlParam('/store/category/search', array('sort'=>'price.desc')) => Yii::t('StoreModule.core', 'Сначала дорогие'),
				), array('onchange'=>'applyCategorySorter(this)'));
			?>

			<?php
				$limits=array(Yii::app()->request->removeUrlParam('/store/category/search', 'per_page')  => $this->allowedPageLimit[0]);
				array_shift($this->allowedPageLimit);
				foreach($this->allowedPageLimit as $l)
					$limits[Yii::app()->request->addUrlParam('/store/category/search', array('per_page'=> $l))]=$l;

				echo Yii::t('StoreModule.core', 'На странице:');
				echo CHtml::dropDownList('per_page', Yii::app()->request->url, $limits, array('onchange'=>'applyCategorySorter(this)'));
			?>
		</div>

		<?php /*
			if(isset($provider))
			{
				$this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$provider,
					'ajaxUpdate'=>false,
					'template'=>'{items} {pager} {summary}',
					'itemView'=>'_product',
					'sortableAttributes'=>array(
						'name', 'price'
					),
				));
			}
			else
			{
				echo Yii::t('StoreModule.core', 'Нет результатов');
			}
		*/

			$this->widget('zii.widgets.CListView', array(
				'dataProvider'=>$provider,
				'ajaxUpdate'=>false,
				'template'=>'{items} <div class="row"> <div class="col-md-12">{pager} </div></div>{summary}' ,
				'itemView'=>$itemView,
				'sortableAttributes'=>array(
					'name', 'price'
				),
				'emptyText' => 'Нет результатов',
                'pagerCssClass' => 'product-pagination text-center',

                'pager' => array('class' => 'CLinkPager', 'header' => '', 'htmlOptions'=>array('class'=>'pagination')),
			));
		?>
	</div>
</div>
</div>

