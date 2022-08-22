<?php 
require_once($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");

    if(isset($_GET['action']) && $_GET['action']=="add"){ 
        $id=intval($_GET['id']); 
        
        if(isset($_SESSION['users_cart'][$id])){ 
            
            $_SESSION['users_cart'][$id]['quantity']++;
        }else{ 
        
            $sql_s="SELECT * FROM catalogs WHERE id={$id}"; 
            $query_s=mysqli_query($connect, $sql_s); 
            if(mysqli_num_rows($query_s)!=0){ 
                $row_s=mysqli_fetch_array($query_s); 

                
                $_SESSION['users_cart'][$row_s['id']]=array( 
                        "quantity" => 1, 
                        "price" => $row_s['price'] 
                    ); 
            }else{ 
                $message="Данної страви не існує!"; 
            } 
        } 
    } 
header('Location: /');
?>