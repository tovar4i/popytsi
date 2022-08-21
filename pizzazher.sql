-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 21 2022 г., 15:50
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pizzazher`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
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
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `id_composition`, `id_category`, `price`, `amount_catalog`, `imagename`, `comments`) VALUES
(10, 1, 1, 180, 350, 'pizza_rancho.png', 'Тісто, соус вершковий, сир моцарела, шинка, смажене куряче філе, печериці, цибуля синя, помідори, рукола.'),
(12, 6, 1, 160, 350, 'pizza_carbonara.png', 'Тісто, соус вершковий, сир моцарела, шинка, помідори, перепелині яйця, сир пармезан, рукола.'),
(13, 3, 1, 123, 300, 'pizza_4cheeses.png', 'Тісто, соус вершковий, сир моцарела, сир пармезан, сир рікота, сир дорблю, грецький горіх, рукола.'),
(14, 7, 1, 200, 350, 'pizza_bavarian.png', 'Тісто, соус пікантний гірчичний, сир моцарела, ковбаски баварські, помідори, печериці, рукола.'),
(15, 4, 1, 360, 210, 'pizza_vegano.png', 'Тісто, соус томатний, сир моцарела, броколі, перець болгарський, цибуля синя, маслини, рукола.'),
(16, 5, 1, 350, 158, 'pizza_philadelphia.png', 'Тісто, соус томатний, моцарелла, лосось с/с, авокадо, соус песто, сир філадельфія, свіжа зелень.'),
(17, 8, 4, 80, 150, 'salat_tsezar_z_lososem.jpg', 'Салат айсберг, помідори чері, перепелині яйця, сухарики, лосось, соус цезар, сир пармезан.'),
(18, 9, 4, 90, 130, 'salat_tsezar_z_kurkoyu.jpg', 'Салат айсберг, помідори чері, перепелині яйця, сухарики, смажене куряче філе, фірмовий соус цезар, сир пармезан.'),
(19, 10, 4, 75, 160, 'salat_ z_vugrem.jpg', 'Салат айсберг, вугор, авокадо, помідори чері, кунжут, соус унагі.'),
(20, 11, 2, 65, 1000, 'drink_apple juice.png', 'Виробник: Rich.'),
(21, 12, 2, 65, 1000, 'drink_orange_nectar.png', 'Виробник: Rich.'),
(22, 14, 2, 80, 1000, 'drink_tomato_juice.png', 'Виробник: Rich.'),
(23, 13, 2, 60, 1000, 'drink_coca-cola.png', 'Виробник: Coca-cola'),
(24, 18, 2, 88, 1000, 'drink_cherry_nectar.png', 'Виробник: Rich.'),
(25, 19, 2, 66, 1000, 'drink_peach_nectar.png', 'Виробник: Rich.'),
(26, 15, 3, 50, 60, 'dessert_muffin_coconut.jpeg', 'Власне виробництво. Скуштуйте'),
(27, 17, 3, 60, 80, 'dessert_muffin_latte.jpg', 'Власне виробництво. Скуштуйте'),
(28, 16, 3, 110, 150, 'dessert_chocolate_roles.jpg', 'Власне виробництво. Скуштуйте');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Піца'),
(2, 'Напої'),
(3, 'Десерти'),
(4, 'Салати');

-- --------------------------------------------------------

--
-- Структура таблицы `composition`
--

CREATE TABLE `composition` (
  `id` int(11) NOT NULL,
  `composition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `composition`
--

INSERT INTO `composition` (`id`, `composition`) VALUES
(1, 'Ранчо'),
(3, '4 сира'),
(4, 'Вегано'),
(5, 'Філадельфія'),
(6, 'Карбонара'),
(7, 'Баварська'),
(8, 'Цезар  з лососем'),
(9, 'Цезар  з куркою'),
(10, 'Салат  з вугрем'),
(11, 'Яблучний  сік'),
(12, 'Апельсиновий нектар'),
(13, 'Coca-Cola'),
(14, 'Томатний  сік'),
(15, 'Мафін  кокосовий'),
(16, 'Шоколадні  роли'),
(17, 'Мафін  лате з  маршмелоу'),
(18, 'Вишневий  нектар'),
(19, 'Персиковий нектар');

-- --------------------------------------------------------

--
-- Структура таблицы `final`
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
-- Структура таблицы `measurement`
--

CREATE TABLE `measurement` (
  `id` int(11) NOT NULL,
  `measurement` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `measurement`
--

INSERT INTO `measurement` (`id`, `measurement`) VALUES
(1, 'кг'),
(2, 'л'),
(3, 'шт');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `measurement_id` int(10) NOT NULL,
  `amount` float NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `products_name`, `measurement_id`, `amount`, `price`) VALUES
(3, 'булка ', 1, 25.1, 25.1),
(5, 'батон', 3, 25, 1),
(6, 'Салат', 1, 2, 3),
(7, 'Салат', 1, 31, 23),
(8, 'картопля', 1, 1, 1),
(10, 'Борошно', 1, 2, 1),
(11, 'Масло', 1, 2, 1),
(12, 'Компот', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ttk`
--

CREATE TABLE `ttk` (
  `id` int(11) NOT NULL,
  `id_composition` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ttk`
--

INSERT INTO `ttk` (`id`, `id_composition`, `products_id`) VALUES
(7, 1, 7),
(8, 4, 5),
(9, 1, 3),
(10, 1, 3),
(14, 1, 8),
(16, 1, 8),
(17, 4, 8),
(20, 1, 3),
(25, 4, 3),
(26, 1, 8),
(28, 4, 3),
(30, 4, 10),
(31, 1, 3),
(37, 6, 3),
(38, 6, 11),
(39, 3, 8),
(41, 1, 11),
(43, 6, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phone`, `role`) VALUES
(1, 'admin', 'admin@mail.ua', '1111', '000', 'admin'),
(2, 'admin', 'admin@mail.ua', '111', '111', 'uzer'),
(3, 'admin', 'admin@mail.ua', '111', '0632235133', 'uzer'),
(4, 'tovar4i', 'tovarchiigor@gmail.com', '1111', '0953332332', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `users_cart`
--

CREATE TABLE `users_cart` (
  `id` int(11) NOT NULL,
  `id_composition` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_composition` (`id_composition`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `final`
--
ALTER TABLE `final`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_users`);

--
-- Индексы таблицы `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measurement_id` (`measurement_id`);

--
-- Индексы таблицы `ttk`
--
ALTER TABLE `ttk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ttk_ibfk_1` (`products_id`),
  ADD KEY `ttk_ibfk_2` (`id_composition`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_cart`
--
ALTER TABLE `users_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_composition` (`id_composition`),
  ADD KEY `id_users` (`id_users`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `composition`
--
ALTER TABLE `composition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `final`
--
ALTER TABLE `final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `measurement`
--
ALTER TABLE `measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `ttk`
--
ALTER TABLE `ttk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users_cart`
--
ALTER TABLE `users_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD CONSTRAINT `catalogs_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `catalogs_ibfk_2` FOREIGN KEY (`id_composition`) REFERENCES `composition` (`id`);

--
-- Ограничения внешнего ключа таблицы `final`
--
ALTER TABLE `final`
  ADD CONSTRAINT `final_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`measurement_id`) REFERENCES `measurement` (`id`);

--
-- Ограничения внешнего ключа таблицы `ttk`
--
ALTER TABLE `ttk`
  ADD CONSTRAINT `ttk_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `ttk_ibfk_2` FOREIGN KEY (`id_composition`) REFERENCES `composition` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_cart`
--
ALTER TABLE `users_cart`
  ADD CONSTRAINT `users_cart_ibfk_1` FOREIGN KEY (`id_composition`) REFERENCES `composition` (`id`),
  ADD CONSTRAINT `users_cart_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
