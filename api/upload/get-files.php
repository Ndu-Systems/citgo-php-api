<?php
$dir    = 'C:\xampp\htdocs\citgo-php-api\api\upload\uploads';
$files1 = scandir($dir);
// $files2 = scandir($dir, 1);
echo $files1[1];

// print_r($files1);
// print_r($files2);
?>