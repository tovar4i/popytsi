<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-top.php");
?>

<div class="container" style="padding: 100px;">

    <h2>Кошик</h2>

    <div style="padding-top: 50px;">
        <h3>Ваше замовлення</h3>
        
        <table class="table">
            <thead class="thead-primary">
                <tr>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
        
            <tbody>
                <tr class="alert" role="alert">
                    <td>
                        <label class="checkbox-wrap checkbox-primary">
                            <input type="checkbox" checked="">
                            <span class="checkmark"></span>
                        </label>
                    </td>

                    <td>
                        <div class="img" style="background-image:url('/assets/img/products/pizza_bavarian.png'); height: 50px; width: 50px; background-size: cover; background-repeat: no-repeat;"></div>
                    </td>

                    <td>
                        <div class="email">
                            <span>Назва</span> <br>
                            <span>Коментарі</span>
                        </div>
                    </td>
                    
                    <td>180 &#8372;</td>

                    <td class="quantity">
                        <div class="input-group">
                        <input type="text" name="quantity" class="quantity form-control input-number" value="2" min="1" max="100">
                        </div>
                    </td>
                    
                    <td>180 &#8372;</td>
                    
                    <td>
                        <button type="button" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"></i>X</span>
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>

        <p style="padding: 50px;">Сума замовлення: 180 &#8372;</p>
    </div>
    
    <button class="btnLog-admin" type="button" onclick="window.location.href='/'">Повернутись до магазину</button> 
    <button class="btnLog-admin" type="button" onclick="window.location.href='/cart/order.php'">Оформити замовлення</button> 
</div>



<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer-site.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?>