<div class="subheader">
    <div class="subheader__container">
        <div class="products">
            <div class="subheader__logo">
                <a href="/">
                    <img src="/assets/icons/logo.png" alt="">
                    <p>POPYTSI
                        <br><span> "Вмажемо по пицці?!"</span>
                    </p>
                </a>
            </div>

            <div class="food-piza">
                <a href="#piza">
                    <div class="food-img-piza"></div>
                    <div class="food-title">Піца </div>
                </a>
            </div>

            <div class="food-salads">
                <a href="#salads">
                    <div class="food-img-salads"></div>
                    <div class="food-title">Салати</div>
                </a>
            </div>

            <div class="food-potables">
                <a href="#potables">
                    <div class="food-img-potables"></div>
                    <div class="food-title">Напої</div>
                </a>
            </div>

            <div class="food-deserts">
                <a href="#deserts">
                    <div class="food-img-deserts"></div>
                    <div class="food-title">Десерти</div>
                </a>
            </div>


            <div class="greeting">
                <div class="greetingInfo">    
                    <p>Привіт,
                        <?php
                        if (isset($_SESSION["user_id"]) && $_SESSION["user_id"] != null) {
                            $sql = "SELECT * FROM users WHERE id =" . $_SESSION["user_id"];
                            $result = mysqli_query($connect, $sql);
                            $user = $result->fetch_assoc();
                        ?>
                            <br><span style="color:#CF2203" class="username"> <?php echo $user["username"] ?> !</span>
                        <?php
                        } else {
                        ?>
                            <span class="username">гість!</span> <br> <span style="color:#CF2203">Зареєструйся,</span><br>щоб замовити!

                        <?php
                        }
                        ?>
                    </p>
                </div>
            
                <a href="cart/cart.php">
                    <div class="cart-image"></div>
                </a>
           
        </div>
        </div>

    </div>

</div>