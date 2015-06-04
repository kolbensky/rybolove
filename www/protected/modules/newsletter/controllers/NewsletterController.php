<?php

/**
 * Realize subscribing
 */
class NewsletterController extends Controller
{
	

	/**
	 * Saves email
	 */
	public function actionIndex()
	{
		$model=new NewsletterForm;
		if(Yii::app()->request->isPostRequest && isset($_POST['Newsletter']))
		{
			$model = $_POST['Newsletter'];

			$valid = $model->validate();

			if($valid)
			{
				$model->save();
			}
		}
		
		$this->render('index',array('model'=>$model));
	}
	
}
