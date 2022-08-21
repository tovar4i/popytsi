<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-top.php");
?>

<div class="container" style="padding: 100px;">

    <h2>Оформлення замовлення</h2>

    <div style="padding-top: 50px;">
        <h3>Перевірка даних</h3>

        <div class="form-group"> 
            <p>Ім’я:</p>
            <input type="username" name="username" placeholder="Ваше ім’я" required>
        </div>

        <div class="form-group">
            <p>Номер телефону:</p> 
            <input type="tel" id="phone" name="phone" placeholder="Номер телефону" required>
        </div>

        <div class="form-group">
            <p>Адреса доставки:</p> 
            <input type="text" placeholder="Адреса доставки" required>
        </div>

        <div class="form-group">
            <p>Часовий проміжок доставки:</p> 
            <input type="text" placeholder="Адреса доставки">
        </div>
        
        <div class="form-group">
            <p>Коментарі:</p> 
            <input type="text" placeholder="Коментарі">
        </div>

        <h2>Спосіб оплати</h2>


    </div>
    
    <button class="btnLog-admin" type="button" onclick="window.location.href='/cart/cart.php'">Повернутись до кошика</button> 
    <button class="btnLog-admin" type="button" onclick="window.location.href='/cart/order_success.php'">Підтвердити замовлення</button> 
</div>






<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer-site.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?>