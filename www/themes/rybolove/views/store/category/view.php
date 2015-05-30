 
<div class="container">
    <div class="leftWrapper">
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

    <div class="product-breadcroumb">
        <?php
            $this->widget('zii.widgets.CBreadcrumbs', array(
                           'links'=>$this->breadcrumbs,
                                    ));
        ?>
    </div>
        <?php
			$this->widget('zii.widgets.CListView', array(
				'dataProvider'=>$provider,
				'ajaxUpdate'=>false,
				'template'=>'{items} <div class="row"> <div class="col-md-12">{pager} </div></div>{summary}' ,
				'itemView'=>$itemView,
				'sortableAttributes'=>array(
					'name', 'price'
				),
                'pagerCssClass' => 'product-pagination text-center',

                'pager' => array('class' => 'CLinkPager', 'header' => '', 'htmlOptions'=>array('class'=>'pagination')),
			));
		?>
        </div>
<?php  ?>