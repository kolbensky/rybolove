<?php

if(YII_DEBUG) return array(
    'connectionString' => 'mysql:host=localhost; dbname=rybolove',
    'username' => 'root',
    'password' => '',
    'enableProfiling' => YII_DEBUG, // Disable in production
    'enableParamLogging' => YII_DEBUG, // Disable in production
    'emulatePrepare' => true,
    'schemaCachingDuration' => YII_DEBUG ? 0 : 3600,
    'charset' => 'utf8',
);

else return 
    
array(
    'connectionString' => 'mysql:host=localhost; dbname=u732441123_site',
    'username' => 'root',
    'password' => '',
    'enableProfiling' => YII_DEBUG, // Disable in production
    'enableParamLogging' => YII_DEBUG, // Disable in production
    'emulatePrepare' => true,
    'schemaCachingDuration' => YII_DEBUG ? 0 : 3600,
    'charset' => 'utf8',
);
