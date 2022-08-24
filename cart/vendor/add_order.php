<?php 
require_once($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");

    
        
$id_users = $_SESSION["user_id"];
$composition = $_SESSION['composition'];
$quantity = $_SESSION['quantity'];
$price = $_SESSION['subtotal'];


mysqli_query($connect,"INSERT INTO `users_cart` (`id`, `id_users`, `id_composition`, `quantity`, `price`) VALUES (NULL, '$id_users', '$composition', '$quantity', '$price')");

unset($_SESSION['users_cart']);
header("Location: /cart/order_success.php");




?>

    

            

    

