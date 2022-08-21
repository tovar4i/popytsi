<?php 
require_once($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');

if(!empty($_GET)) {
    
    $sql = 'DELETE from final WHERE id = ' . $_GET['id'];
    
    if (mysqli_query($connect, $sql)) {
        echo "Замовлення видалено";
        header("Location: /admin/orders.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($connect);
    }
    mysqli_close($connect);
}
    
?>