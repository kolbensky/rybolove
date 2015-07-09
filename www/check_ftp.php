<?php
//проверяет, есть ли картинки, которые записаны в базу данных, в папке со всеми картинками


  $host = 'mysql.hostinger.com.ua';
$user = 'u732441123_root';
$pass = 'ysTJA23MFq';
$db_connect = mysqli_connect($host, $user, $pass, 'u732441123_site');

$rezult = array();
$query = "SELECT * FROM StoreProductImage GROUP BY name";
$rez = mysqli_query($db_connect, $query);
while($row = mysqli_fetch_assoc($rez)){
	$find = false;
	if ($handle = opendir('uploads/product/')) {
    //echo "Дескриптор каталога: $handle\n";
    //echo "Файлы:\n";
    while (false !== ($file = readdir($handle))) {
        if ($row['name'] == $file) {
		   $find = true;
		}
    }
	if ($find === false) {
	  $result[] = $row['name'];
	}
    closedir($handle);
}
}
print_r($result);
?>