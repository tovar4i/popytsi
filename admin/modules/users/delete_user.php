<?php 
require($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');

if(!empty($_GET)) {
    
    $sql = 'DELETE from users WHERE id = ' . $_GET['id'];
    
    if (mysqli_query($conn, $sql)) {
        echo "Користувача видалено";
        header("Location: /admin/users.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    mysqli_close($conn);
}
    
?>