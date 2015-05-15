<?php

/**
 * Super secret license checker.
 */
class SLicenseChecker {

    /**
     * @static
     * @return bool
     */
    public static function check() {

        // Check license file.
        $licensePath = Yii::getPathOfAlias('webroot') . DIRECTORY_SEPARATOR . 'eximus_license.key';

        if (!file_exists($licensePath) || !is_readable($licensePath))
            $licenseExists = self::create();
        else
            $licenseExists = true;

        if (!$licenseExists)
            return self::create();

        $serverName = str_replace(array('http://', 'www.'), array('', ''), Yii::app()->request->serverName);

        $licenseFileContents = file_get_contents($licensePath);

        if (trim($licenseFileContents) === base64_encode(base64_encode($serverName)))
            return true;

        return self::create();
    }

    public static function create($serverName = null) {
        if (null == $serverName)
            $serverName = str_replace(array('http://', 'www.'), array('', ''), Yii::app()->request->serverName);
        
        $licensePath = Yii::getPathOfAlias('webroot') . DIRECTORY_SEPARATOR . 'eximus_license.key';
        $key = base64_encode(base64_encode($serverName));
        file_put_contents($licensePath,$key);
        
        return true;
    }

    /**
     * @return bool
     */
    public static function isOnLocalhost() {
        
        switch (substr($_SERVER['SERVER_ADDR'], 0, strrpos($_SERVER['SERVER_ADDR'], '.'))) {
            case '127.0.1':
            case '127.0.0':
            case '172.16.0':
            case '192.168.0':
            case '10.0.0':
                return true;
                break;
        }

        return false;
    }

}
