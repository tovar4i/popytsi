<?php 
require_once($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');

$id = $_GET['id'];
mysqli_query($connect, "DELETE FROM `users_cart` WHERE `users_cart`.`id` = '$id'");
header('Location: http://pizzazher/admin/orders.php');
?>