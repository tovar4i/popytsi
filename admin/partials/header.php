<?php 
require($_SERVER['DOCUMENT_ROOT'] . '/config/db.php');

  if(!isset($_SESSION)) {
      session_start();
  }

  $is_session = isset($_SESSION["user_id"]) && $_SESSION["user_id"] != null;      //true/false
  
  if($is_session) {
    $userID = $_SESSION["user_id"];
    $sql = "SELECT * FROM `users` WHERE id=" . $userID;

    $result = mysqli_query($conn, $sql);
    $user = $result->fetch_assoc();

    if($user['role'] != "admin") {
    header("Location: /");
    }
   }
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin panel</title>

    <!-- Custom fonts for this template-->
    <link href="/admin/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400;600;800&display=swap" rel="stylesheet">
    <!-- Custom styles for this template-->
    <!-- <link href="/admin/assets/css/sb-admin-2.min.css" rel="stylesheet"> -->
    <link href="/admin/assets/css/sb-admin-2.css" rel="stylesheet">
    <!-- Це попередні стилі-->
    <!-- <link rel="stylesheet" type="text/css" href="assets/css/style.css"> -->

</head>

<body id="page-top">