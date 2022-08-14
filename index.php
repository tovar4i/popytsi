<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");
?>
<!-- @tasita:
закоментувала нижче і додала хедер php - перевір що з цього додати потрібно, якщо нічого - видали тут -->
<!-- <!DOCTYPE html>
<html lang="ua">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="assets/css/main.css">
    <title>PizzaZher</title>
</head>

<body> -->
<div class="wrapper">

    <!-- header -->
    <header>
        <nav>
            <div class="container">
                <ul class="menu">
                    <li class="menu__item shedule">
                        <img src="assets/icons/clock.png" alt="clock">
                        <p>Працюємо <br>
                            з 10:00 до 21:30</p>
                    </li>
                    <li class="menu__item">
                        <img src="assets/icons/phone.png" alt="phone">
                        <a href="tel:380673633366" class="menu__link">(067)3633366</a>
                    </li>
                    <li class="menu__item">
                        <img src="assets/icons/email.png" alt="mail">
                        <a href="mailto:popitsy@gmail.com" class="menu__link">popitsy@gmail.com</a>
                    </li>
                    <li class="menu__item">
                        <img src="assets/icons/place.png" alt="placeholder">
                        <a href="#" class="menu__link">Наша адреса</a>
                    </li>
                    <li class="menu__item menu__social">
                        <a href="#2" class="menu__link"><img src="assets/icons/insta.png" alt="instagram link"></a>

                        <a href="#1" class="menu__link"><img src="assets/icons/facebook.png" alt="facebook link"></a>
                    </li>
                    <li class="menu__item">
                        <a href="#" class="menu__link">Реєстрація</a>
                    </li>
                    <li class="menu__item menu__signin">
                        <a href="/modal/login.php" class="menu__link">Вхід</a>
                        <img src="assets/icons/sign-in.png" alt="sign-in" class="signin">

                    </li>
                </ul>

                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

            </div>
        </nav>

        <div class="subheader">
            <div class="subheader__container">
                <div class="products">
                    <div class="subheader__logo">
                        <a href="#">
                            <img src="assets/icons/logo.png" alt="">
                            <p>POPYTSI
                                <br><span> "Вмажемо по пицці?!"</span>
                            </p>
                        </a>
                    </div>

                    <div class="food">
                        <img src="assets/icons/piza.png" alt="piza">
                        <a href="#">Піца</a>
                    </div>


                    <div class="food">
                        <img src="assets/icons/salad.png" alt="salad">
                        <a href="#">Салати</a>
                    </div>
                    <div class="food">
                        <img src="assets/icons/potables.png" alt="potable">
                        <a href="#">
                            Напої</a>
                    </div>
                    <div class="food">
                        <img src="assets/icons/dessert.png" alt="potable">
                        <a href="#">
                            Десерти</a>
                    </div>

                    <div class="greeting">
                        <p greeting__title>Привіт,
                            <br>
                            <span class="username">неавторизований візітер</span>
                            !
                        </p>
                    </div>
                    <div class="cart">
                        <a href="#">
                            <img src="assets/icons/cart.png" alt="cart">
                        </a>
                    </div>
                </div>

            </div>
        </div>

    </header>

    <section class="promo">

    </section>

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

    <footer>
        I am a footer
    </footer>
</div>

<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?>
<!-- @tasita: 
те ж саме зробила і тут - перевір чи все є в футері php на всяк випадок і видали це-->
<!-- <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
<script src="assets/js/burger.js"></script>
</body>

</html> -->