-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 11 2022 г., 14:15
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mydb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `heading` varchar(500) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `heading`, `img`, `price`, `count`) VALUES
(1, NULL, 'Костюм снеговика', NULL, 2500, NULL),
(2, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL),
(4, 3, 'Микки Маус', 'https://яснаяполяна.бел/wp-content/uploads/2020/05/mickey-mouse-003.jpg', 5500, 1),
(5, 3, 'Микки Маус', 'https://яснаяполяна.бел/wp-content/uploads/2020/05/mickey-mouse-003.jpg', 5500, 1),
(6, 3, 'Микки Маус', 'https://яснаяполяна.бел/wp-content/uploads/2020/05/mickey-mouse-003.jpg', 5500, 1),
(7, 3, 'Костюм снеговика', 'https://bambolo.ru/images/13/80/138049.jpg', 2500, 1),
(8, 3, 'Костюм снеговика', 'https://bambolo.ru/images/13/80/138049.jpg', 2500, 1),
(9, 3, 'Костюм Пирата', 'https://bambolo.ru/images/14/12/14122.jpg', 7670, 1),
(10, 3, 'Костюм Пирата', 'https://bambolo.ru/images/14/12/14122.jpg', 7670, 4),
(11, 3, 'Костюм Пирата', 'https://bambolo.ru/images/14/12/14122.jpg', 7670, 4),
(12, 3, 'Костюм Пирата', 'https://bambolo.ru/images/14/12/14122.jpg', 7670, 4),
(13, 3, 'Костюм Конфетка', 'https://bambolo.ru/images/16/01/160118.jpg', 2450, 1),
(14, 3, 'Костюм Конфетка', 'https://bambolo.ru/images/16/01/160118.jpg', 2450, 1),
(15, 3, 'Костюм Бэтмэн', 'https://bambolo.ru/images/16/52/165271.jpg', 2750, 1),
(16, 3, 'Костюм снеговика', 'https://bambolo.ru/images/13/80/138049.jpg', 2500, 1),
(17, 1, 'Костюм снеговика', 'https://bambolo.ru/images/13/80/138049.jpg', 2500, 1),
(18, 1, 'Костюм \"Крокодил\"', 'https://bambolo.ru/images/18/00/180046.jpg', 1100, 1),
(19, 1, 'Костюм Золотой королевы', 'https://bambolo.ru/images/17/98/179859.jpg', 3050, 1),
(20, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL),
(30, 8, 'Снежная Королева', 'https://bambolo.ru/images/12/00/120033.jpg', 3220, 1),
(31, NULL, NULL, NULL, NULL, NULL),
(32, 8, 'Костюм разбойника', 'https://bambolo.ru/images/13/78/137861.jpg', 2210, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `section_id` int NOT NULL,
  `heading` varchar(45) NOT NULL,
  `preview_img` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`section_id`, `heading`, `preview_img`, `description`) VALUES
(1, 'Для мальчиков', 'https://moskva.sveterra.ru/upload/iblock/a37/a3738911323accd5cfaa1a4e1c30c582.jpg', 'Костюмы для мальчиков'),
(2, 'Для девочек', 'https://cdn1.ozone.ru/s3/multimedia-u/6135893406.jpg', 'Костюмы для девочек'),
(3, 'Новогодние', 'https://mosmy.ru/image/cache/catalog/category/batik/dedmorozpljush178-800x800.jpg', 'Костюмы на Новый Год'),
(4, 'Ростовые куклы', 'https://яснаяполяна.бел/wp-content/uploads/2020/05/mickey-mouse-003.jpg', 'Ростовые куклы'),
(5, 'Супергерои', 'https://diamondelectric.ru/images/930/929086/karnavalnii_kostum_1.jpg', 'Костюмы супергероев'),
(6, 'Пираты', 'https://feygas.ru/wa-data/public/shop/products/95/09/70995/images/75086/75086.970.jpg', 'Костюмы пиратов');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `image_id` int NOT NULL,
  `link` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ALT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`image_id`, `link`, `ALT`) VALUES
(1, 'https://bambolo.ru/images/18/00/180046.jpg', 'крокодил'),
(2, 'https://bambolo.ru/images/13/80/138049.jpg', 'снеговик'),
(3, 'https://bambolo.ru/images/12/04/120454.jpg', 'богатырь'),
(5, 'https://bambolo.ru/images/16/02/160273.jpg', 'Гусар'),
(6, 'https://bambolo.ru/images/58/55/58552.jpg', 'дед мороз'),
(7, 'https://bambolo.ru/images/17/98/179859.jpg', 'золотая королева'),
(8, 'https://bambolo.ru/images/16/01/160118.jpg', 'конфетка'),
(9, 'https://bambolo.ru/images/12/00/120033.jpg', 'снежная королева'),
(10, 'https://bambolo.ru/images/14/61/146104.jpg', 'елочка'),
(11, 'https://pinkpanda-event.ru/images/thumbnails/550/450/detailed/57/Мишка-тедди-м-2-1.jpg.webp', 'тедди'),
(12, 'https://яснаяполяна.бел/wp-content/uploads/2020/05/mickey-mouse-003.jpg', 'маус'),
(13, 'https://sun9-47.userapi.com/XayjiUJeTYh1REv7ym4OLSm2gbemRRBRo0InNA/Jt6ccS3HpoU.jpg', 'сердце'),
(14, 'https://cdn.kostüme.com/media/catalog/product/cache/1/image/1200x/9df78eab33525d08d6e5fb8d27136e95/a/c/ac894.jpg', 'заяц'),
(15, 'https://bambolo.ru/images/16/52/165271.jpg', 'бэтмэн'),
(16, 'https://bambolo.ru/images/70/68/70683.jpg', 'джедай'),
(17, 'https://bambolo.ru/images/78/05/78052.jpg', 'америка'),
(18, 'https://bambolo.ru/images/80/85/80852.jpg', 'тор'),
(19, 'https://bambolo.ru/images/13/78/137861.jpg', 'лесной'),
(20, 'https://bambolo.ru/images/98/36/98360.jpg', 'сейди'),
(21, 'https://bambolo.ru/images/14/12/14122.jpg', 'карибского моря'),
(22, 'https://bambolo.ru/images/81/11/81118.jpg', 'ведьма'),
(23, 'https://static.insales-cdn.com/images/products/1/1455/387040687/large_cap20181122-25211-yzu2lx.jpg', 'капитан америка 2');

-- --------------------------------------------------------

--
-- Структура таблицы `main_categories`
--

CREATE TABLE `main_categories` (
  `main_categories_id` int NOT NULL,
  `categories_section_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `main_categories`
--

INSERT INTO `main_categories` (`main_categories_id`, `categories_section_id`, `product_id`) VALUES
(1, 1, 13),
(2, 1, 14),
(3, 1, 15),
(4, 1, 16),
(5, 1, 17),
(14, 1, 26),
(15, 1, 27),
(16, 1, 28),
(17, 1, 29),
(18, 1, 30),
(20, 1, 32),
(6, 2, 18),
(7, 2, 19),
(8, 2, 20),
(9, 2, 21),
(19, 2, 31),
(21, 2, 33),
(10, 4, 22),
(11, 4, 23),
(12, 4, 24),
(13, 4, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `main_product_image`
--

CREATE TABLE `main_product_image` (
  `main_product_image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `main_product_image`
--

INSERT INTO `main_product_image` (`main_product_image_id`, `product_id`, `image_id`) VALUES
(1, 13, 1),
(2, 14, 2),
(3, 15, 3),
(4, 16, 5),
(5, 17, 6),
(6, 18, 7),
(7, 19, 8),
(8, 20, 9),
(9, 21, 10),
(10, 22, 11),
(11, 23, 12),
(12, 24, 13),
(13, 25, 14),
(14, 26, 15),
(15, 27, 16),
(16, 28, 17),
(17, 29, 18),
(18, 30, 19),
(19, 31, 20),
(20, 32, 21),
(21, 33, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `heading` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` double NOT NULL,
  `availability` tinyint NOT NULL,
  `full_price` double NOT NULL,
  `promo_price` double NOT NULL,
  `descripiton` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`product_id`, `heading`, `price`, `availability`, `full_price`, `promo_price`, `descripiton`) VALUES
(13, 'Костюм \"Крокодил\"', 1100, 1, 1100, 1100, 'Детский костюм \"Крокодил\"'),
(14, 'Костюм снеговика', 2500, 1, 2500, 2500, 'Костюм снеговика Олафа'),
(15, 'Костюм Богатыря', 2780, 1, 2780, 2780, 'Костюм Богатыря'),
(16, 'Костюм Гусар', 2400, 1, 2400, 2400, 'Костюм Гусар для мальчика'),
(17, 'Костюм Деда мороза', 2750, 1, 2750, 2750, 'Костюм Деда мороза на ребенка'),
(18, 'Костюм Золотой королевы', 3050, 1, 3050, 3050, 'Детский карнавальный костюм Королева Золотая '),
(19, 'Костюм Конфетка', 2450, 1, 2450, 2450, 'Костюм конфетки состоит всего из трёх элементов'),
(20, 'Снежная Королева', 3220, 1, 3220, 3220, 'Детский костюм \"Снежная Королева\"'),
(21, 'Елочка Малышка', 2500, 1, 2500, 2500, 'Состав костюма: платье, головной убор'),
(22, 'Мишка Тедди', 7000, 1, 7000, 7000, 'Аниматоры в костюмах мишек Тедди - лучший подарок ребенку!'),
(23, 'Микки Маус', 5500, 1, 5500, 5500, 'Ростовой костюм Микки Маус'),
(24, 'Костюм Сердце', 4000, 1, 4000, 4000, 'Ростовой костюм Сердца'),
(25, 'Костюм Заяц', 5000, 1, 5000, 5000, 'Ростовой костюм Заяц'),
(26, 'Костюм Бэтмэн', 2750, 1, 2750, 2750, 'Костюм Бэтмэн с мускулами для мальчика'),
(27, 'Костюм Джедая', 5860, 1, 5860, 5860, 'Состав костюма: штаны, туника'),
(28, 'Костюм Капитан Америка', 7740, 1, 7740, 7740, 'Костюм капитана Америки состоит из комбинезона'),
(29, 'Костюм Тора', 7740, 1, 7740, 7740, 'Состав костюма: комбинезон'),
(30, 'Костюм разбойника', 2210, 1, 2210, 2210, 'Состав костюма: жилет, рубашка, брюки с сапогами'),
(31, 'Костюм Пиратки', 2450, 1, 2450, 2450, 'Состав костюма: платье, бандана, шляпа, сабля'),
(32, 'Костюм Пирата', 7670, 1, 7670, 7670, 'Костюм маленького  флибустьера. Костюм универсальный, полностью формирует образ и включает бандану, жилетку, накладки на обувь, пояс, рубашку, шляпу ,штаны, сабля, мушкет, наглазник.'),
(33, 'Костюм Ведьмочки', 3240, 1, 3240, 3240, 'Состав костюма: платье, колпак');

-- --------------------------------------------------------

--
-- Структура таблицы `secondary_product_category`
--

CREATE TABLE `secondary_product_category` (
  `secondary_product_category_id` int NOT NULL,
  `categories_section_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `secondary_product_category`
--

INSERT INTO `secondary_product_category` (`secondary_product_category_id`, `categories_section_id`, `product_id`) VALUES
(1, 3, 13),
(2, 3, 14),
(4, 3, 16),
(5, 3, 17),
(6, 3, 18),
(7, 3, 19),
(8, 3, 20),
(9, 3, 21),
(12, 3, 28),
(13, 3, 29),
(3, 5, 15),
(14, 5, 26),
(15, 5, 27),
(18, 5, 30),
(10, 6, 32),
(11, 6, 33),
(19, 6, 31);

-- --------------------------------------------------------

--
-- Структура таблицы `secondary_product_image`
--

CREATE TABLE `secondary_product_image` (
  `secondary_product_image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `secondary_product_image`
--

INSERT INTO `secondary_product_image` (`secondary_product_image_id`, `product_id`, `image_id`) VALUES
(27, 28, 23);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Павел', 'pavel@mail.ru', 'ef1652b79c940145b600de7a2fe0288e'),
(3, 'test', 'test@mail.ru', '098f6bcd4621d373cade4e832627b4f6'),
(4, '', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, 'zxcv', 'zxcv@mail.ru', 'fd2cc6c54239c40495a0d3a93b6380eb');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`section_id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Индексы таблицы `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`main_categories_id`,`categories_section_id`,`product_id`),
  ADD KEY `fk_main_categories_categories_idx` (`categories_section_id`),
  ADD KEY `fk_main_categories_product1_idx` (`product_id`);

--
-- Индексы таблицы `main_product_image`
--
ALTER TABLE `main_product_image`
  ADD PRIMARY KEY (`main_product_image_id`,`product_id`,`image_id`),
  ADD KEY `fk_main_product_image_product1_idx` (`product_id`),
  ADD KEY `fk_main_product_image_image1_idx` (`image_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `secondary_product_category`
--
ALTER TABLE `secondary_product_category`
  ADD PRIMARY KEY (`secondary_product_category_id`,`categories_section_id`,`product_id`),
  ADD KEY `fk_secondary_product_category_categories1_idx` (`categories_section_id`),
  ADD KEY `fk_secondary_product_category_product1_idx` (`product_id`);

--
-- Индексы таблицы `secondary_product_image`
--
ALTER TABLE `secondary_product_image`
  ADD PRIMARY KEY (`secondary_product_image_id`,`product_id`,`image_id`),
  ADD KEY `fk_secondary_product_image_product1_idx` (`product_id`),
  ADD KEY `fk_secondary_product_image_image1_idx` (`image_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `section_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `main_categories_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `main_product_image`
--
ALTER TABLE `main_product_image`
  MODIFY `main_product_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `secondary_product_category`
--
ALTER TABLE `secondary_product_category`
  MODIFY `secondary_product_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `secondary_product_image`
--
ALTER TABLE `secondary_product_image`
  MODIFY `secondary_product_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `main_categories`
--
ALTER TABLE `main_categories`
  ADD CONSTRAINT `fk_main_categories_categories` FOREIGN KEY (`categories_section_id`) REFERENCES `categories` (`section_id`),
  ADD CONSTRAINT `fk_main_categories_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ограничения внешнего ключа таблицы `main_product_image`
--
ALTER TABLE `main_product_image`
  ADD CONSTRAINT `fk_main_product_image_image1` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `fk_main_product_image_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ограничения внешнего ключа таблицы `secondary_product_category`
--
ALTER TABLE `secondary_product_category`
  ADD CONSTRAINT `fk_secondary_product_category_categories1` FOREIGN KEY (`categories_section_id`) REFERENCES `categories` (`section_id`),
  ADD CONSTRAINT `fk_secondary_product_category_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ограничения внешнего ключа таблицы `secondary_product_image`
--
ALTER TABLE `secondary_product_image`
  ADD CONSTRAINT `fk_secondary_product_image_image1` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `fk_secondary_product_image_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
