-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Сер 22 2022 р., 23:38
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `pizzazher`
--

-- --------------------------------------------------------

--
-- Структура таблиці `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL,
  `id_composition` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `price` float NOT NULL,
  `amount_catalog` float NOT NULL,
  `imagename` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `catalogs`
--

INSERT INTO `catalogs` (`id`, `id_composition`, `id_category`, `price`, `amount_catalog`, `imagename`, `comments`) VALUES
(1, 12, 1, 180, 550, 'pizza_bavarian.png', 'Тісто, соус пікантний гірчичний, сир моцарела, ковбаски баварські, помідори, печериці, рукола.'),
(2, 13, 1, 180, 550, 'pizza_carbonara.png', 'Тісто, соус вершковий, сир моцарела, шинка, помідори, перепелині яйця, сир пармезан, рукола.'),
(3, 14, 1, 180, 630, 'pizza_philadelphia.png', 'Тісто, соус томатний, моцарелла, лосось с/с, авокадо, соус песто, сир філадельфія, свіжа зелень.'),
(4, 15, 1, 160, 580, 'pizza_vegano.png', 'Тісто, соус томатний, сир моцарела, броколі, перець болгарський, цибуля синя, маслини, рукола.'),
(5, 16, 1, 170, 520, 'pizza_4cheeses.png', 'Тісто, соус вершковий, сир моцарела, сир пармезан, сир рікота, сир дорблю, грецький горіх, рукола'),
(6, 18, 4, 150, 120, 'salat_tsezar_z_lososem.jpg', 'Салат айсберг, помідори чері, перепелині яйця, сухарики, лосось, соус цезар, сир пармезан.'),
(7, 19, 4, 150, 120, 'salat_tsezar_z_kurkoyu.jpg', 'Салат айсберг, помідори чері, перепелині яйця, сухарики, смажене куряче філе, фірмовий соус цезар, сир пармезан.'),
(8, 20, 4, 180, 150, 'salat_ z_vugrem.jpg', 'Салат айсберг, вугор, авокадо, помідори чері, кунжут, соус унагі.'),
(9, 21, 2, 100, 1, 'drink_apple juice.png', 'Виробник: Rich.'),
(10, 22, 2, 100, 1, 'drink_cherry_nectar.png', 'Виробник: Rich.'),
(11, 23, 2, 100, 1, 'drink_orange_nectar.png', 'Виробник: Rich.'),
(12, 24, 2, 100, 1, 'drink_peach_nectar.png', 'Виробник: Rich.'),
(13, 25, 2, 100, 1, 'drink_coca-cola.png', 'Виробник: Coca-Cola.'),
(14, 26, 2, 100, 1, 'drink_tomato_juice.png', 'Виробник: Rich.'),
(15, 27, 3, 60, 100, 'dessert_muffin_coconut.jpeg', 'Тісто, кокосова стружка.'),
(16, 28, 3, 100, 100, 'dessert_chocolate_roles.jpg', 'Тісто, чорний шоколад.'),
(17, 29, 3, 100, 60, 'dessert_muffin_latte.jpg', 'Тісто, маршмелоу.'),
(18, 17, 1, 180, 640, 'pizza_rancho.png', 'Тісто, соус вершковий, сир моцарела, шинка, смажене куряче філе, печериці, цибуля синя, помідори, рукола.');

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Піца'),
(2, 'Напої'),
(3, 'Десерти'),
(4, 'Салати');

-- --------------------------------------------------------

--
-- Структура таблиці `composition`
--

CREATE TABLE `composition` (
  `id` int(11) NOT NULL,
  `composition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `composition`
--

INSERT INTO `composition` (`id`, `composition`) VALUES
(12, 'Баварська піца'),
(13, 'Карбонара'),
(14, 'Філадельфія'),
(15, 'Вегано'),
(16, '4 сира'),
(17, 'Ранчо'),
(18, 'Цезар з лососем'),
(19, 'Цезар з куркою'),
(20, 'Салат з вугрем'),
(21, 'Яблучний сік'),
(22, 'Вишневий нектар'),
(23, 'Апельсиновий нектар'),
(24, 'Персиковий нектар'),
(25, 'Coca-Cola'),
(26, 'Томатний сік'),
(27, 'Мафін кокосовий'),
(28, 'Шоколадні роли'),
(29, 'Мафін лате з маршмелоу');

-- --------------------------------------------------------

--
-- Структура таблиці `final`
--

CREATE TABLE `final` (
  `id` int(11) NOT NULL,
  `id_users` int(255) NOT NULL,
  `id_composition` varchar(255) NOT NULL,
  `order_sum` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time_now` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `measurement`
--

CREATE TABLE `measurement` (
  `id` int(11) NOT NULL,
  `measurement` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `measurement`
--

INSERT INTO `measurement` (`id`, `measurement`) VALUES
(1, 'кг'),
(2, 'л'),
(3, 'шт');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `measurement_id` int(10) NOT NULL,
  `amount` float NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `products_name`, `measurement_id`, `amount`, `price`) VALUES
(27, 'тісто', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `ttk`
--

CREATE TABLE `ttk` (
  `id` int(11) NOT NULL,
  `id_composition` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'uzer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phone`, `role`) VALUES
(1, 'admin', 'admin@mail.ua', '1111', '000', 'admin'),
(4, 'Кузя', 'fdkjf@df', '555', '6644444444', 'admin'),
(5, 'Тетяна', 'myyyyy@h', '555', '6644444444', 'uzer'),
(7, 'Тетяна', 'myyyyy@h', '66666', '6644444444', 'uzer');

-- --------------------------------------------------------

--
-- Структура таблиці `users_cart`
--

CREATE TABLE `users_cart` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_composition` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_composition` (`id_composition`);

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `final`
--
ALTER TABLE `final`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_users`);

--
-- Індекси таблиці `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measurement_id` (`measurement_id`);

--
-- Індекси таблиці `ttk`
--
ALTER TABLE `ttk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ttk_ibfk_1` (`products_id`),
  ADD KEY `ttk_ibfk_2` (`id_composition`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users_cart`
--
ALTER TABLE `users_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_composition` (`id_composition`),
  ADD KEY `id_users` (`id_users`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `composition`
--
ALTER TABLE `composition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблиці `final`
--
ALTER TABLE `final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `measurement`
--
ALTER TABLE `measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблиці `ttk`
--
ALTER TABLE `ttk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `users_cart`
--
ALTER TABLE `users_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `catalogs`
--
ALTER TABLE `catalogs`
  ADD CONSTRAINT `catalogs_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `catalogs_ibfk_2` FOREIGN KEY (`id_composition`) REFERENCES `composition` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `final`
--
ALTER TABLE `final`
  ADD CONSTRAINT `final_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`measurement_id`) REFERENCES `measurement` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `ttk`
--
ALTER TABLE `ttk`
  ADD CONSTRAINT `ttk_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `ttk_ibfk_2` FOREIGN KEY (`id_composition`) REFERENCES `composition` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `users_cart`
--
ALTER TABLE `users_cart`
  ADD CONSTRAINT `users_cart_ibfk_1` FOREIGN KEY (`id_composition`) REFERENCES `composition` (`id`),
  ADD CONSTRAINT `users_cart_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
