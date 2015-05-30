		<?php
            Yii::import('application.modules.store.models.StoreCategory');
            $items = StoreCategory::model()->findByPk(1)->asCMenuArray();
            if(isset($items['items']))
            {
                $this->widget('application.extensions.mbmenu.MbMenu',array(
                    'cssFile'=>Yii::app()->theme->baseUrl.'/assets/css/menu.css',
                    'htmlOptions'=>array('class'=>'dropdown', 'id'=>'nav'),
                    'items'=>$items['items'])
                );
            }
            ?>