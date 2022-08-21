<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-top.php");
?>

<div class="container" style="padding: 100px;">

    <h2>Замовлення прийняте</h2>

    <div style="padding-top: 50px;">
        <h3>Ваше замовлення прийняте</h3>

        
        <h3>Склад замовлення:</h3>
        
        <p>Сума замовлення: 180 &#8372;</p>
        
        <p>Повідомляти про бонуси, акції та нові продукти</p>

    </div>
    
    <button class="btnLog-admin" type="button" onclick="window.location.href='/'">Повернутись на головну</button> 
</div>






<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer-site.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?>