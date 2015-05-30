<?php

define('VERSION', '1.5');

//error_reporting(0);

$yii=dirname(__FILE__).'/framework/yii.php';
$config=dirname(__FILE__).'/protected/config/main.php';

// remove the following lines when in production mode
 defined('YII_DEBUG') or define('YII_DEBUG', true);
// defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);

require $yii;
require 'protected/components/SWebApplication.php';

// Create application
Yii::createApplication('SWebApplication', $config)->run();
