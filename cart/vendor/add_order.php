<?php 
require_once($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");

    
if (isset($_REQUEST['toOrder'])) {
        $id_users = $_SESSION["user_id"];
        $composition = $_POST['composition'];
        $quantity = $_POST['quantity'];
        $price = $_POST['price'];
      

        $sql= "INSERT INTO `users_cart` (`id`, `id_users`, `id_composition`, `quantity`, `price`) VALUES (NULL, '$id_users', '$composition', '$quantity', '$price')";


        // mysqli_query($connect,"INSERT INTO `users_cart` (`id`, `id_users`, `id_composition`, `quantity`, `price`) VALUES (NULL, '$user_id', '$composition', '$quantity', '$price')");
        
        foreach($_SESSION['users_cart'] as $id => $value) { 
        $sql.=$id.","; 
        }
        // $sql=substr($sql, 0, -1).") ORDER BY id ASC";
        $query=mysqli_query($connect, $sql);  
        header("Location: /card/order_success.php");

        }  

        
?>

            

    

