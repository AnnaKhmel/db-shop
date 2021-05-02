-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 02 2021 г., 23:55
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id_cart`, `id_customer`, `total`) VALUES
(1, 1, 13.5),
(2, 2, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `cart_item`
--

CREATE TABLE `cart_item` (
  `id_cart_item` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_options_products` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `cart_item`
--

INSERT INTO `cart_item` (`id_cart_item`, `id_cart`, `id_options_products`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 1, 21, 2),
(5, 2, 40, 1),
(6, 2, 45, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `category_product`
--

CREATE TABLE `category_product` (
  `id_category_prod` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `category_product`
--

INSERT INTO `category_product` (`id_category_prod`, `id_products`, `id_category`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 2),
(8, 3, 3),
(9, 3, 5),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 3),
(14, 5, 4),
(15, 5, 5),
(16, 6, 1),
(17, 6, 2),
(18, 6, 5),
(19, 7, 4),
(20, 7, 5),
(21, 7, 6),
(22, 8, 4),
(23, 8, 5),
(24, 8, 6),
(25, 9, 1),
(26, 9, 4),
(27, 9, 6),
(28, 10, 1),
(29, 10, 2),
(30, 10, 3),
(31, 11, 6),
(32, 11, 3),
(33, 11, 4),
(34, 12, 1),
(35, 12, 2),
(36, 12, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `colours`
--

CREATE TABLE `colours` (
  `id_colour` int(11) NOT NULL,
  `colour` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `colours`
--

INSERT INTO `colours` (`id_colour`, `colour`) VALUES
(1, 'red'),
(2, 'black'),
(3, 'white'),
(4, 'green'),
(5, 'blue'),
(6, 'yellow'),
(7, 'orange');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name_customer` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `lastname_customer` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id_customer`, `name_customer`, `lastname_customer`, `phone`, `email`) VALUES
(1, 'Iryna', 'Marchenko', '+380951593578', 'marchenko@gmail.com'),
(2, 'Inna', 'Kostenko', '+380934568527', 'kostenko@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `customer-order`
--

CREATE TABLE `customer-order` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total` float NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_shipping_method` int(11) NOT NULL,
  `id_paid_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `customer-order`
--

INSERT INTO `customer-order` (`id_order`, `id_customer`, `total`, `id_status`, `id_shipping_method`, `id_paid_type`) VALUES
(1, 1, 13.5, 1, 1, 1),
(2, 2, 7, 2, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`id_gender`, `gender`) VALUES
(1, 'men'),
(2, 'women'),
(3, 'unisex adults'),
(4, 'boys'),
(5, 'girls');

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE `materials` (
  `id_materials` int(11) NOT NULL,
  `materials` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`id_materials`, `materials`) VALUES
(1, '100% cotton'),
(2, '90% cotton, 10% polyester'),
(3, '95% cotton, 5% viscose');

-- --------------------------------------------------------

--
-- Структура таблицы `options`
--

CREATE TABLE `options` (
  `id_options_product` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `id_colour` int(11) NOT NULL,
  `id_gender` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `options`
--

INSERT INTO `options` (`id_options_product`, `id_products`, `id_size`, `id_colour`, `id_gender`) VALUES
(1, 1, 1, 1, 2),
(2, 1, 1, 2, 2),
(3, 1, 1, 3, 2),
(4, 1, 1, 4, 2),
(5, 1, 2, 1, 2),
(6, 1, 2, 2, 2),
(7, 1, 2, 3, 2),
(8, 1, 2, 4, 2),
(9, 1, 3, 4, 2),
(10, 1, 3, 5, 2),
(21, 2, 6, 5, 4),
(22, 2, 6, 6, 4),
(23, 2, 6, 7, 4),
(24, 2, 6, 1, 4),
(25, 2, 7, 2, 4),
(26, 2, 6, 3, 4),
(27, 2, 6, 4, 4),
(28, 2, 6, 5, 4),
(29, 2, 7, 6, 4),
(30, 2, 7, 7, 4),
(31, 3, 4, 1, 1),
(32, 3, 4, 2, 1),
(33, 3, 5, 3, 1),
(34, 3, 5, 4, 1),
(35, 3, 3, 5, 1),
(36, 3, 4, 6, 1),
(37, 3, 5, 7, 1),
(38, 3, 3, 1, 1),
(39, 4, 4, 2, 1),
(40, 4, 3, 3, 1),
(41, 4, 5, 4, 1),
(42, 4, 5, 5, 1),
(43, 4, 4, 6, 1),
(44, 4, 4, 7, 1),
(45, 5, 1, 4, 2),
(46, 5, 1, 2, 2),
(47, 5, 1, 3, 2),
(48, 5, 2, 3, 2),
(49, 5, 3, 2, 2),
(50, 5, 1, 7, 2),
(51, 6, 7, 5, 4),
(52, 6, 7, 1, 4),
(53, 6, 7, 3, 4),
(54, 6, 6, 2, 4),
(55, 6, 6, 4, 4),
(56, 6, 6, 3, 4),
(57, 7, 6, 2, 5),
(58, 7, 6, 3, 5),
(59, 7, 6, 4, 5),
(60, 7, 7, 5, 5),
(61, 7, 7, 6, 5),
(62, 7, 7, 7, 5),
(63, 8, 6, 6, 5),
(64, 8, 6, 5, 5),
(65, 8, 6, 4, 5),
(66, 8, 7, 3, 5),
(67, 8, 7, 2, 5),
(68, 8, 7, 1, 5),
(69, 9, 6, 1, 5),
(70, 9, 6, 2, 5),
(71, 9, 6, 3, 5),
(72, 9, 7, 4, 5),
(73, 9, 7, 5, 5),
(74, 9, 7, 6, 5),
(75, 10, 2, 1, 3),
(76, 10, 3, 2, 3),
(77, 10, 4, 3, 3),
(78, 10, 2, 4, 3),
(79, 10, 3, 5, 3),
(80, 10, 4, 6, 3),
(81, 10, 1, 7, 3),
(82, 11, 2, 7, 3),
(83, 11, 4, 6, 3),
(84, 11, 3, 5, 3),
(85, 11, 5, 4, 3),
(86, 11, 2, 3, 3),
(87, 11, 4, 2, 3),
(88, 11, 3, 1, 3),
(89, 12, 2, 1, 3),
(90, 12, 3, 2, 3),
(91, 12, 4, 3, 3),
(92, 12, 5, 4, 3),
(93, 12, 4, 5, 3),
(94, 12, 3, 6, 3),
(95, 12, 2, 7, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_options_products` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `order_detail`
--

INSERT INTO `order_detail` (`id_order_detail`, `id_order`, `id_options_products`, `price`, `quantity`) VALUES
(1, 1, 1, 5.5, 1),
(2, 1, 21, 4, 2),
(3, 2, 40, 3, 1),
(4, 2, 45, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `paid_type`
--

CREATE TABLE `paid_type` (
  `id_paid_type` int(11) NOT NULL,
  `paid_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `active` set('YES','NO') COLLATE utf8mb4_bin NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `paid_type`
--

INSERT INTO `paid_type` (`id_paid_type`, `paid_type`, `active`) VALUES
(1, 'Cash on delivery', 'YES'),
(2, 'Online card', 'YES'),
(3, 'Google Pay', 'YES'),
(4, 'PrivatPay', 'YES');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_products` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `price` float NOT NULL,
  `id_materials` int(11) NOT NULL,
  `sleeve short` set('yes','no') COLLATE utf8mb4_bin NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_products`, `name`, `price`, `id_materials`, `sleeve short`) VALUES
(1, 'Swoosh Half-Zip Running Top Womens', 5.5, 1, 'no'),
(2, 'Dry Football Top Junior Boys', 4, 2, 'yes'),
(3, 'Gear Long Sleeve T Shirt Mens', 8.2, 3, 'no'),
(4, 'Technical Training T Shirt Mens', 3, 1, 'yes'),
(5, 'Linear QT T Shirt Ladies', 4, 2, 'yes'),
(6, 'Thermal Mock Base Layer Top Junior Boys', 3.6, 2, 'no'),
(7, 'Logo T Shirt Junior Girls', 6.2, 1, 'yes'),
(8, 'Girls Essentials Linear T-Shirt', 4.1, 2, 'yes'),
(9, 'Pro Boyfriend T Shirt Junior Girls', 3.7, 3, 'yes'),
(10, 'Unisex Washed T Shirt', 3.2, 1, 'yes'),
(11, 'Logo T Shirt', 4.5, 2, 'yes'),
(12, 'Logo Sweatshirt', 5.8, 3, 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `shipping_method`
--

CREATE TABLE `shipping_method` (
  `id_shipping_method` int(11) NOT NULL,
  `shipping_method` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `cost of delivery` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `active` set('YES','NO') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `shipping_method`
--

INSERT INTO `shipping_method` (`id_shipping_method`, `shipping_method`, `cost of delivery`, `active`) VALUES
(1, 'novaposhta', '0$', 'YES'),
(2, 'ukrposhta', 'cost according to the rates of the courier service', 'YES'),
(3, 'justin', 'cost according to the rates of the courier service', 'YES');

-- --------------------------------------------------------

--
-- Структура таблицы `size`
--

CREATE TABLE `size` (
  `id_size` int(11) NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `size`
--

INSERT INTO `size` (`id_size`, `size`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL'),
(6, '8-11 years'),
(7, '12-15 years');

-- --------------------------------------------------------

--
-- Структура таблицы `status-order`
--

CREATE TABLE `status-order` (
  `id_status` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `status-order`
--

INSERT INTO `status-order` (`id_status`, `status`) VALUES
(1, 'new'),
(2, 'paid'),
(3, 'sended'),
(4, 'cancel');

-- --------------------------------------------------------

--
-- Структура таблицы `сategories`
--

CREATE TABLE `сategories` (
  `id_category` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `сategories`
--

INSERT INTO `сategories` (`id_category`, `category`) VALUES
(1, 'sport'),
(2, 'auto'),
(3, 'IT'),
(4, 'music'),
(5, 'holiday'),
(6, 'humor');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `customer_fk` (`id_customer`);

--
-- Индексы таблицы `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id_cart_item`),
  ADD KEY `cart_fk` (`id_cart`),
  ADD KEY `options_products_fk` (`id_options_products`);

--
-- Индексы таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id_category_prod`),
  ADD KEY `categories_fk` (`id_category`),
  ADD KEY `t-shirt_fk` (`id_products`);

--
-- Индексы таблицы `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id_colour`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Индексы таблицы `customer-order`
--
ALTER TABLE `customer-order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `paid_fk` (`id_paid_type`),
  ADD KEY `shipping_fk` (`id_shipping_method`),
  ADD KEY `status_fk` (`id_status`),
  ADD KEY `customer-id_fk` (`id_customer`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Индексы таблицы `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id_materials`);

--
-- Индексы таблицы `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id_options_product`),
  ADD KEY `colour_fk` (`id_colour`),
  ADD KEY `size_fk` (`id_size`),
  ADD KEY `products_fk` (`id_products`),
  ADD KEY `gender_fk` (`id_gender`);

--
-- Индексы таблицы `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `order-id_fk` (`id_order`),
  ADD KEY `options_products-id_fk` (`id_options_products`);

--
-- Индексы таблицы `paid_type`
--
ALTER TABLE `paid_type`
  ADD PRIMARY KEY (`id_paid_type`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`),
  ADD KEY `material_fk` (`id_materials`);

--
-- Индексы таблицы `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id_shipping_method`);

--
-- Индексы таблицы `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Индексы таблицы `status-order`
--
ALTER TABLE `status-order`
  ADD PRIMARY KEY (`id_status`);

--
-- Индексы таблицы `сategories`
--
ALTER TABLE `сategories`
  ADD PRIMARY KEY (`id_category`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id_cart_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id_category_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `colours`
--
ALTER TABLE `colours`
  MODIFY `id_colour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `customer-order`
--
ALTER TABLE `customer-order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gender`
--
ALTER TABLE `gender`
  MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `materials`
--
ALTER TABLE `materials`
  MODIFY `id_materials` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `options`
--
ALTER TABLE `options`
  MODIFY `id_options_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT для таблицы `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `paid_type`
--
ALTER TABLE `paid_type`
  MODIFY `id_paid_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id_shipping_method` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `status-order`
--
ALTER TABLE `status-order`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `сategories`
--
ALTER TABLE `сategories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `customer_fk` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_fk` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`),
  ADD CONSTRAINT `options_products_fk` FOREIGN KEY (`id_options_products`) REFERENCES `options` (`id_options_product`);

--
-- Ограничения внешнего ключа таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `categories_fk` FOREIGN KEY (`id_category`) REFERENCES `сategories` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t-shirt_fk` FOREIGN KEY (`id_products`) REFERENCES `products` (`id_products`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer-order`
--
ALTER TABLE `customer-order`
  ADD CONSTRAINT `customer-id_fk` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `paid_fk` FOREIGN KEY (`id_paid_type`) REFERENCES `paid_type` (`id_paid_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipping_fk` FOREIGN KEY (`id_shipping_method`) REFERENCES `shipping_method` (`id_shipping_method`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_fk` FOREIGN KEY (`id_status`) REFERENCES `status-order` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `colour_fk` FOREIGN KEY (`id_colour`) REFERENCES `colours` (`id_colour`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gender_fk` FOREIGN KEY (`id_gender`) REFERENCES `gender` (`id_gender`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_fk` FOREIGN KEY (`id_products`) REFERENCES `products` (`id_products`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `size_fk` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `options_products-id_fk` FOREIGN KEY (`id_options_products`) REFERENCES `options` (`id_options_product`) ON DELETE CASCADE,
  ADD CONSTRAINT `order-id_fk` FOREIGN KEY (`id_order`) REFERENCES `customer-order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `material_fk` FOREIGN KEY (`id_materials`) REFERENCES `materials` (`id_materials`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
