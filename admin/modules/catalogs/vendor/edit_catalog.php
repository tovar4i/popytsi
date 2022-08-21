<?php 
require_once($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');

$id = $_POST['id'];
$id_composition = $_POST['id_composition'];
$id_category = $_POST['id_category'];
$price = $_POST['price'];
$amount_catalog = $_POST['amount_catalog'];
$imageName = "";
$comments = $_POST['comments'];

/*if(!empty($_FILES)) {
    $uploaddir = $_SERVER['DOCUMENT_ROOT'] . '/assets/img/products/';
    $ext = pathinfo($_FILES['filename']['name']);
    $imageName = $ext['filename'] . "." . $ext['extension'];
    $uploadfile = $uploaddir . $imageName;
    // var_dump ($ext);
    // die();
    if (!move_uploaded_file($_FILES['filename']['tmp_name'], $uploadfile)) {
        echo "Можлива атака за допомогою файлового завантаження!\n";
        die();
    }
}*/



 if($_FILES && $_FILES['filename']['error'] == UPLOAD_ERR_OK) {
     $imagename = $_SERVER['DOCUMENT_ROOT'] . '/assets/img/products/' . $_FILES['filename']['name'];
    $ext = pathinfo($_FILES['filename']['name']);
    $imageName = $ext['filename'] . "." . $ext['extension'];
     move_uploaded_file($_FILES['filename']['tmp_name'], $imagename);
 }
   

mysqli_query($connect, "UPDATE `catalogs` SET `id_composition` = '$id_composition', `id_category` = '$id_category', `price` = '$price', `amount_catalog` = '$amount_catalog', `imagename` = '$imageName', `comments` = '$comments' WHERE `catalogs`.`id` = $id;");


header('Location: /admin/catalogs.php');
?>