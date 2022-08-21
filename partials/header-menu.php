<div class="subheader">
    <div class="subheader__container">
        <div class="products">
            <div class="subheader__logo">
                <a href="#">
                    <img src="/assets/icons/logo.png" alt="">
                    <p>POPYTSI
                        <br><span> "Вмажемо по пицці?!"</span>
                    </p>
                </a>
            </div>

            <div class="food">
                <img src="/assets/icons/piza.png" alt="piza">
                <a href="#piza">Піца</a>
            </div>


            <div class="food">
                <img src="/assets/icons/salad.png" alt="salad">
                <a href="#salads">Салати</a>
            </div>
            <div class="food">
                <img src="/assets/icons/potables.png" alt="potable">
                <a href="#potables">
                    Напої</a>
            </div>
            <div class="food">
                <img src="/assets/icons/dessert.png" alt="potable">
                <a href="#deserts">
                    Десерти</a>
            </div>

            <div class="greeting">
                <p greeting__title>Привіт,
                    <br>
                    <?php
                    if(isset($_SESSION["user_id"]) && $_SESSION["user_id"] != null) {
                                        $sql = "SELECT * FROM users WHERE id =" . $_SESSION["user_id"];
                                        $result = mysqli_query($connect, $sql);
                                        $user = $result->fetch_assoc();
                    ?>
                    <span class="username"> <?php echo $user["username"] ?>!</span>
                    <?php
                    } else {
                    ?>
                    <span class="username">гість!</span>

                    <?php
                    }
                    ?>
                </p>
            </div>
            <div class="cart">
                <a href="cart/cart.php">
                    <img src="/assets/icons/cart.png" alt="cart">
                </a>
            </div>
        </div>

    </div>

</div>
        


