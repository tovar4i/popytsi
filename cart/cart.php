<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");

if(empty($_SESSION["user_id"])) {
    header("Location: /");
  } else {
    require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-top.php");
  }


?>
<?php 
    if (isset($_REQUEST['updateOrder'])) {
            foreach($_POST['quantity'] as $key => $val) { 
                if($val==0) { 
                    unset($_SESSION['users_cart'][$key]); 
                }else{ 
                    $_SESSION['users_cart'][$key]['quantity']=$val; 
                } 
            } 
            header('Location: /cart/cart.php'); 
    }
    
?>




<div class="container" style="padding: 150px; text-align: center;">


    <!-- <h2>Кошик</h2> -->

<?php 
    if(isset($message)){ 
        echo "<h3>$message</h3>"; 
    } 
    // echo print_r($_SESSION['users_cart']);
    // echo ($_SESSION["user_id"]);
?>



    <div style="padding-top: 50px; text-align: center;">
        <h2 style="font-size: 24px; font-weight: 600; text-align: center;">Ваше замовлення</h2>
      
    <form method="post" action="#" >     
        <table id="tableDisplay" class="table" style="margin: 10px auto;">
            <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>    
            <!-- <tr>
                    <th>Фото страви</th>
                    <th>Назва страви</th>
                    <th>Ціна</th>
                    <th>Кількість</th>
                    <th>Сума</th>
                    <th>&nbsp;</th>
                </tr> -->
            </thead>
<?php
if(!isset($_SESSION['users_cart'])){ 
?> 
<script>
    document.getElementById("tableDisplay").style.display = 'none';
</script>
<?php 
echo "<p>Ваш кошик порожній. Час вмазати по пиці!</p>"; 
// die();
            
} else{ 
    
    $sql="SELECT catalogs.id, composition, price, amount_catalog, imagename, comments, id_composition FROM (catalogs JOIN composition ON id_composition = composition.id) WHERE catalogs.id IN ("; 
    // $sql="SELECT * FROM catalogs WHERE id IN ("; 
                        
    foreach($_SESSION['users_cart'] as $id => $value) { 
        $sql.=$id.","; 
    } 
        
    $sql=substr($sql, 0, -1).") ORDER BY id ASC"; 
    $query=mysqli_query($connect, $sql); 
    $totalprice=0; 
    if(mysqli_query($connect,$sql)!=0){
    while($row=mysqli_fetch_array($query)){ 

        $subtotal=$_SESSION['users_cart'][$row['id']]['quantity']*$row['price']; 
        $totalprice+=$subtotal; 
?>        
            <tbody>
                <tr>

                    <td>
                        <img src="/assets/img/products/<?php echo $row['imagename'] ?>"  style="height: 50px; width: 50px; background-size: cover; background-repeat: no-repeat; margin: 20px auto;">
                    </td>

                    <td>
                        <div>
                        <input type="hidden" name="id_composition" value="<?= $row['id_composition'] ?>">
                            <input type="hidden" name="composition" value="<?= $row['composition'] ?>">
                            <span><?php echo $row['composition'] ?></span>
                        </div>
                    </td>
                    
                    <td>
                        <input type="hidden" name="price" value="<?= $row['price'] ?>">
                        <span><?php echo $row['price'] ?>&#8372;</span>
                    </td>

                    <td>
                        <div class="input-group">
                        <!-- <input type="text" name="quantity" class="quantity form-control input-number" value="2" min="1" max="100"> -->
                        <input type="text" min="1" max="100" name="quantity[<?php echo $row['id'] ?>]" size="4" value="<?php echo $_SESSION['users_cart'][$row['id']]['quantity'] ?>" />
                        </div>
                    </td>
                    
                    <td><?php echo $_SESSION['users_cart'][$row['id']]['quantity']*$row['price'] ?>&#8372;</td>
                    
                    
                    <?php 
                      $_SESSION['composition'] = $row['id_composition'];
                      $_SESSION['quantity'] = $_SESSION['users_cart'][$row['id']]['quantity'];
                      $_SESSION['price'] = $row['price'];
                      $_SESSION['subtotal'] = $subtotal;
                    }}}
                    ?> 
                </tr>
                
                <tr>
                <td style="font-size: 20px; padding-top: 50px;" colspan="7">Сума замовлення: <?php echo $totalprice ?>&#8372;</td>
                </tr>

                <tr>
                <td colspan="7" style="font-size: 16px;">
                    <p style="padding-top: 50px;">Щоб видалити страву, встановіть її кількість на 0. </p>
                    <p style="padding-top: 10px;">Щоб зміни по кількості були внесені тицяйте "Оновити дані".</p>
                    <button class="btnLog-in-out" type="submit" name="updateOrder" >Оновити дані</button> 
                </td>
                </tr> 
            </tbody>

        </table>

    </div>

    
    </form> 
    <div style="padding-top: 50px;"></div>

    <button  class="btnLog-admin" type="button" onclick="window.location.href='/'">Повернутись до магазину</button>
 
    <button class="btnLog-admin" type="submit" name="toOrder" onclick="window.location.href='/cart/vendor/add_order.php'">Оформити замовлення</button>   

    
</div>



<!-- <?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?> -->