-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 23 2022 г., 17:37
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
(1, 'борошно', 1, 5, 40),
(2, 'сухарики', 1, 2, 50),
(3, 'кунжут', 1, 1, 73),
(4, 'соус пікантний гірчичний', 2, 2, 40),
(5, 'соус вершковий ', 2, 0.5, 30),
(6, 'соус томатний', 2, 0.9, 57),
(7, 'соус песто', 2, 1.5, 130),
(8, 'соус цезар', 2, 0.7, 42),
(9, 'соус унагі', 2, 1.3, 160),
(10, 'сир моцарела', 1, 3, 133),
(11, 'сир пармезан', 1, 3.2, 152),
(12, 'сир філадельфія', 1, 2.3, 143),
(13, 'сир рікота', 1, 3.2, 172),
(14, 'сир дорблю', 1, 2.8, 274),
(15, 'ковбаски баварські', 1, 3.6, 85),
(16, 'шинка', 1, 2.4, 200),
(17, 'лосось', 1, 1.4, 360),
(18, 'вугор', 1, 3.5, 455),
(19, 'куряче філе', 1, 2.7, 430),
(20, 'перепелині яйця', 3, 20, 40),
(21, 'помідори', 1, 4.2, 60),
(22, 'помідори чері', 1, 3.2, 82),
(23, 'печериці', 1, 2.6, 260),
(24, 'рукола', 1, 1.3, 75),
(25, 'салат айсберг', 1, 1.3, 132),
(26, 'свіжа зелень', 1, 2.1, 150),
(27, 'авокадо', 1, 1.8, 120),
(28, 'броколі', 1, 1.6, 153),
(29, 'перець болгарський', 1, 1.5, 137),
(30, 'цибуля синя', 1, 2.5, 174),
(31, 'маслини', 1, 1.8, 189),
(32, 'грецький горіх', 1, 2.3, 233),
(33, 'Яблучний сік', 3, 44, 240),
(34, 'Вишневий нектар', 3, 52, 166),
(35, 'Апельсиновий нектар', 3, 32, 147),
(36, 'Персиковий нектар', 3, 48, 178),
(37, 'Coca-Cola', 3, 62, 218),
(38, 'Томатний сік', 3, 39, 178),
(39, 'молоко', 2, 6, 450),
(40, 'яйце', 3, 40, 120),
(41, 'дріжді', 1, 1.7, 145),
(42, 'кокосова стружка', 1, 1.6, 265),
(43, 'чорний шоколад', 1, 1.4, 234),
(44, 'маршмелоу', 1, 2.4, 264);

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
(5, 12, 1),
(6, 12, 40),
(7, 12, 41),
(8, 12, 4),
(9, 12, 10),
(10, 12, 15),
(11, 12, 21),
(12, 12, 23),
(13, 12, 24),
(14, 13, 1),
(15, 13, 41),
(16, 13, 40),
(17, 13, 5),
(18, 13, 10),
(19, 13, 16),
(20, 13, 21),
(21, 13, 20),
(22, 13, 11),
(23, 13, 24),
(24, 14, 1),
(25, 14, 41),
(26, 14, 40),
(27, 14, 6),
(28, 14, 10),
(29, 14, 17),
(30, 14, 27),
(31, 14, 7),
(32, 14, 12),
(33, 14, 26),
(34, 15, 1),
(35, 15, 41),
(36, 15, 40),
(37, 15, 6),
(38, 15, 10),
(39, 15, 28),
(40, 15, 29),
(41, 15, 30),
(42, 15, 31),
(43, 15, 24),
(44, 16, 1),
(45, 16, 41),
(46, 16, 40),
(47, 16, 5),
(48, 16, 10),
(49, 16, 11),
(50, 16, 13),
(51, 16, 14),
(52, 16, 32),
(53, 16, 24),
(54, 17, 1),
(55, 17, 41),
(56, 17, 40),
(57, 17, 5),
(58, 17, 10),
(59, 17, 16),
(60, 17, 19),
(61, 17, 23),
(62, 17, 30),
(63, 17, 21),
(64, 17, 24),
(65, 18, 25),
(66, 18, 22),
(67, 18, 20),
(68, 18, 2),
(69, 18, 17),
(70, 18, 8),
(71, 18, 11),
(72, 19, 25),
(73, 19, 22),
(74, 19, 20),
(75, 19, 2),
(76, 19, 19),
(77, 19, 8),
(78, 19, 11),
(79, 20, 25),
(80, 20, 18),
(81, 20, 27),
(82, 20, 22),
(83, 20, 3),
(84, 20, 9),
(85, 21, 33),
(86, 22, 34),
(87, 23, 35),
(88, 24, 36),
(89, 25, 37),
(90, 26, 38),
(91, 27, 1),
(92, 27, 41),
(93, 27, 40),
(94, 27, 42),
(95, 28, 1),
(96, 28, 41),
(97, 28, 40),
(98, 28, 43),
(99, 29, 1),
(100, 29, 41),
(101, 29, 40),
(102, 29, 44);

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
(4, 'Кузя', 'fdkjf@df', '555', '6644444444', 'admin'),
(5, 'Тетяна', 'myyyyy@h', '555', '6644444444', 'uzer'),
(7, 'Тетяна', 'myyyyy@h', '66666', '6644444444', 'uzer'),
(8, 'olecsandr', 'sany00ksenz@gmail.com', 'san1a00ksenz', '0632235132', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `users_cart`
--

CREATE TABLE `users_cart` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_composition` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_cart`
--

INSERT INTO `users_cart` (`id`, `id_users`, `id_composition`, `quantity`, `price`) VALUES
(1, 4, 25, 1, '1.00'),
(2, 5, 13, 2, '180.00'),
(3, 5, 13, 4, '180.00'),
(4, 5, 13, 5, '180.00'),
(5, 5, 12, 3, '180.00'),
(6, 5, 12, 3, '540.00'),
(7, 5, 13, 5, '900.00'),
(8, 5, 13, 5, '900.00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `composition`
--
ALTER TABLE `composition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `ttk`
--
ALTER TABLE `ttk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users_cart`
--
ALTER TABLE `users_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `ttk_ibfk_1` FOREIGN KEY (`id_composition`) REFERENCES `composition` (`id`),
  ADD CONSTRAINT `ttk_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

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
