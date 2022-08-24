<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-top.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-menu.php");
?>


<section class="promo">
    <div class="container">
    </div>
</section>

<section id="piza" class="offers">
    <div  class="container">
        <div class="title">
            <h3 >ПІЦА</h3>
            <div class="underline"> </div>
        </div>
        <div class="offers-container">
            
            <?php
            $catalogs = mysqli_query($connect, "SELECT catalogs.id, composition, category, price, amount_catalog, imagename, comments FROM (catalogs JOIN category ON id_category = category.id) JOIN composition ON id_composition = composition.id WHERE id_category = 1;");
            $catalogs = mysqli_fetch_all($catalogs);
            // var_dump($catalogs);
            // die();
            foreach ($catalogs as $catalogs) {
                ?>
                <div class="card">
                <div class="card-container">
                    <div class="card-description">
                        <h4 class="card-title"><?= $catalogs[1] ?></h4>
                        <p class="card-subtitle"> <?=$catalogs[6] ?> </p>
                        <p class="card-weight">Вага: <?= $catalogs[4] ?> г</p>
                        <p class="card-price"><?= $catalogs[3] ?> грн</p>
                    </div>
                </div>
                    
                <img class="card-image" src="/assets/img/products/<?= $catalogs[5] ?>" >
                
                <div class="add-cart">
                    <!-- <a class="btn-title" href="?cart=add&id=<?= $catalogs[0] ?>" data-id="<?= $catalogs[0] ?>">Замовити</a> -->
                    <a class="btn-title" href="/cart/vendor/add_to_card.php?&action=add&id=<?= $catalogs[0] ?>">Додати у кошик</a>
                </div> 
                    
            </div>
            <?php
                        }
                    ?>
        </div>
    </div>
</section>

<section class="offers" id="salads">
    <div class="container">
        <div class="title">
            <h3>САЛАТИ</h3>
            <div class="underline"> </div>
        </div>
        <div class="offers-container">
            
            <?php
            $catalogs = mysqli_query($connect, "SELECT catalogs.id, composition, category, price, amount_catalog, imagename, comments FROM (catalogs JOIN category ON id_category = category.id) JOIN composition ON id_composition = composition.id WHERE id_category = 4;");
            $catalogs = mysqli_fetch_all($catalogs);
            // var_dump($catalogs);
            // die();
            foreach ($catalogs as $catalogs) {
                ?>
                <div class="card">
                <div class="card-container">
                    <div class="card-description">
                        <h4 class="card-title"><?= $catalogs[1] ?></h4>
                        <p class="card-subtitle"> <?=$catalogs[6] ?> </p>
                        <p class="card-weight">Вага: <?= $catalogs[4] ?> г</p>
                        <p class="card-price"><?= $catalogs[3] ?> грн</p>
                    </div>
                </div>
                    
                <img class="card-image" src="/assets/img/products/<?= $catalogs[5] ?>" >

                <div class="add-cart">
                    <!-- <a href="?cart=add&id=<?= $catalogs[0] ?>" data-id="<?= $catalogs[0] ?>"><i class=""></i> Замовити </a> -->
                    <a class="btn-title" href="/cart/vendor/add_to_card.php?&action=add&id=<?= $catalogs[0] ?>">Додати у кошик</a>
                </div> 
                    
            </div>
            <?php
                        }
                    ?>
        </div>
    </div>
</section>

<section class="offers" id="potables">
    <div class="container">
        <div class="title">
            <h3>НАПОЇ</h3>
            <div class="underline"> </div>
        </div>
        <div class="offers-container">
            
            <?php
            $catalogs = mysqli_query($connect, "SELECT catalogs.id, composition, category, price, amount_catalog, imagename, comments FROM (catalogs JOIN category ON id_category = category.id) JOIN composition ON id_composition = composition.id WHERE id_category = 2;");
            $catalogs = mysqli_fetch_all($catalogs);
            // var_dump($catalogs);
            // die();
            foreach ($catalogs as $catalogs) {
                ?>
                <div class="card">
                <div class="card-container">
                    <div class="card-description">
                        <h4 class="card-title"><?= $catalogs[1] ?></h4>
                        <p class="card-subtitle"> <?=$catalogs[6] ?> </p>
                        <p class="card-weight">Вага: <?= $catalogs[4] ?> л</p>
                        <p class="card-price"><?= $catalogs[3] ?> грн</p>
                    </div>
                </div>
                    
                <img class="card-image" src="/assets/img/products/<?= $catalogs[5] ?>" >

                <div class="add-cart">
                    <!-- <a href="?cart=add&id=<?= $catalogs[0] ?>" data-id="<?= $catalogs[0] ?>"><i class=""></i> Замовити </a> -->
                    <a class="btn-title" href="/cart/vendor/add_to_card.php?&action=add&id=<?= $catalogs[0] ?>">Додати у кошик</a>
                </div> 
                    
            </div>
            <?php
                        }
                    ?>
        </div>
    </div>
</section>

<section class="offers" id="deserts">
    <div class="container">
        <div class="title">
            <h3>ДЕСЕРТИ</h3>
            <div class="underline"> </div>
        </div>
        <div class="offers-container">
            
            <?php
            $catalogs = mysqli_query($connect, "SELECT catalogs.id, composition, category, price, amount_catalog, imagename, comments FROM (catalogs JOIN category ON id_category = category.id) JOIN composition ON id_composition = composition.id WHERE id_category = 3;");
            $catalogs = mysqli_fetch_all($catalogs);
            // var_dump($catalogs);
            // die();
            foreach ($catalogs as $catalogs) {
                ?>
                <div class="card">
                <div class="card-container">
                    <div class="card-description">
                        <h4 class="card-title"><?= $catalogs[1] ?></h4>
                        <p class="card-subtitle"> <?=$catalogs[6] ?> </p>
                        <p class="card-weight">Вага: <?= $catalogs[4] ?> г</p>
                        <p class="card-price"><?= $catalogs[3] ?> грн</p>
                    </div>
                </div>
                    
                <img class="card-image" src="/assets/img/products/<?= $catalogs[5] ?>" >

                <div class="add-cart">
                    <!-- <a href="?cart=add&id=<?= $catalogs[0] ?>" data-id="<?= $catalogs[0] ?>"><i class=""></i> Замовити </a> -->
                    <a class="btn-title" href="/cart/vendor/add_to_card.php?&action=add&id=<?= $catalogs[0] ?>">Додати у кошик</a>
                </div> 
                    
            </div>
            <?php
                        }
                    ?>
        </div>
    </div>
</section>







<section class="about-us">
        <div class="container">
            <div class="title">
                <h5>Про нашу піцу</h5>
                <div class="underline"> </div>
            </div>
            <div class="about-us-description">
                <div class="about-us-subtitle">
                    <p>Ми випікаємо справжню італійську піцу, і в цьому процесі ми не переслідували ідею якомога
                        дешевшого та вигідного для бізнесу способу випічки, ми запросили справжніх майстрів для побудови
                        печі по італійських, виточених та перевірених століттями, технологіях. <br></p>
                    <p> Піца на дровах має інший смак, сама ідея створення такого сервісу народилася в Італії, коли
                        вдалось відчути на смак справжню піцу, з того моменту ми йшли до своєї мети і ось ви маєте
                        можливість насолодитись справжньою італійською піцою прямо в себе вдома, на роботі чи просто
                        десь за прогулянкою по місту. <br> </p>
                    <p> Нам цікава Ваша думка та відгуки! Ми пропагуємо новий смак та нову філософію піци для нашого
                        міста. Ми гадаємо що піца має бути смачна, не дорога та завжди доступна в найкоротший строк, в
                        нашому випадку не пізніше 33 хвилин з моменту її замовлення. <br> </p>
                </div>
            </div>

        </div>
    </section>


<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?>
