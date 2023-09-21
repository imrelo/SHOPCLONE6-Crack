<?php
$isAdminPath = 'models\is_admin.php';
$isSettingsPath = 'resources\views\admin\settings.php';
$addonPath = 'libs\helper.php';



$file_content = file_get_contents($isAdminPath);
$pattern = '/(\$AVVQ.*?)(?=\$CMSNT)/s';

$file_content = preg_replace($pattern, '', $file_content);

file_put_contents($isAdminPath, $file_content);

echo "crack is_admin.php:  ok<br/>";


$file_content = file_get_contents($isSettingsPath);

$file_content = str_replace("require_once(__DIR__.'/../../../models/is_license.php');", "", $file_content);

file_put_contents($isSettingsPath, $file_content);

echo "settings.php:  ok<br/>";

$file_content = file_get_contents($addonPath);
$pattern = '/id_addon\)\){.*?return (false)/s';


$result = preg_replace_callback($pattern, function ($matches) {
    $replacement = 'true'; 
    return str_replace($matches[1], $replacement, $matches[0]);
}, $file_content);

file_put_contents($addonPath, $result);

echo "crack addon  ok<br/>";
echo "Hoàn tất quá trình crack. Chúc mừng bạn đã đá vào mõm mấy thằng bán sources CMSNT";

