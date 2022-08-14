<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-menu.php");
?>



<div class="wrapper">
    <section class="promo">

    </section>
</div>

<div class="wrapper">
    <section class="offers__piza">

        <div class="offers__title">
            <h3>ПІЦА</h3>
            <div class="underline"> </div>
        </div>
        
        <div class="offers__container">
            <div class="card">
                <div class="card__container">
                    <img src="assets/img/products/pizza/pizza_rancho.png" alt="pizza_rancho">

                    <div class="card__description">
                        <h4 class="card__title">Ранчо</h4>
                        <p class="card__subtitle">Тісто, соус вершковий, сир моцарела, шинка, смажене куряче філе,
                            печериці, цибуля синя, помідори, рукола.</p>
                        <p class="card__weight">Вага: 350 г</p>
                        <p class="card__price">180 ₴</p>
                    </div>
                </div>

                <button class="add__cart">Додати у кошик</button>
            </div>

            <div class="card">
                <div class="card__container">
                    <img src="assets/img/products/pizza/pizza_4cheeses.png" alt="pizza_4cheeses">
                    
                    <div class="card__description">
                        <h4 class="card__title">4 сира</h4>
                        <p class="card__subtitle">Тісто, соус вершковий, сир моцарела, сир пармезан, сир рікота, сир дорблю, грецький горіх, рукола.</p>
                        <p class="card__weight">Вага: 350 г</p>
                        <p class="card__price">180 ₴</p>
                    </div>
                </div>

                <button class="add__cart">Додати у кошик</button>
            </div>

            <div class="card">
                <div class="card__container">
                    <img src="assets/img/products/pizza/pizza_vegano.png" alt="pizza_vegano">
                    <div class="card__description">
                        <h4 class="card__title">Вегано</h4>
                        <p class="card__subtitle">Тісто, соус томатний, сир моцарела, броколі, перець болгарський, цибуля синя, маслини, рукола.</p>
                        <p class="card__weight">Вага: 350 г</p>
                        <p class="card__price">180 ₴</p>
                    </div>
                </div>

                <button class="add__cart">Додати у кошик</button>
            </div>
        </div>
        
    </section>
</div>


<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer-site.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?>
<!-- @tasita: 
те ж саме зробила і тут - перевір чи все є в футері php на всяк випадок і видали це-->
<!-- <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
<script src="assets/js/burger.js"></script>
</body>

</html> -->