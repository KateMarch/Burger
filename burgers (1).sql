-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 16 2022 г., 12:33
-- Версия сервера: 5.6.51
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `burgers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `text`, `name`, `image`) VALUES
(1, 'вкусно, быстро, недорого', 'Анна', 'http://localhost/img/testmonial/1.png'),
(2, 'Обширное меню, много акций, вкусные блюда, широкая сеть ресторанов', 'Игорь', 'http://localhost/img/testmonial/2.png');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `description`, `img`) VALUES
(1, 'Гамбургер', '100', 'Разрезанная пополам булочка с жареной котлетой из мясного фарша в середине. Не только вкусную, но еще и полезно.', 'http://localhost/img/burger/1.png'),
(2, 'Чизбургер', '200', 'Разрезанная пополам булочка и поджаренная на кунжутном масле с говяжьей котлетой, сыром и салатным листом. ', 'http://localhost/img/burger/2.png'),
(3, 'Чикенбургер', '250', 'Фирменный куриный бургер с нежной курочкой в хрустящей панировке и листовым салатом под кетчупом и майонезом на подрумяненной булочке.', 'http://localhost/img/burger/3.png'),
(4, 'Веджибургер', '150', 'Это вегетарианский гамбургер, который не содержит убойных продуктов. Замена мясной прослойки может быть сделана из овощей, соевого текстурата. ', 'http://localhost/img/burger/4.png'),
(5, 'Джуниор', '110', 'Под воздушной булочкой скрываются отборные стрипсы в оригинальной хрустящей панировка, сочная курица, свежий огурчик и фирменный соус.', 'http://localhost/img/burger/6.png'),
(6, 'Шефбургер', '169', 'Нежная и сочная курица в оригинальной панировке с идеально подобранным сочетанием трав и специй.', 'http://localhost/img/burger/7.png');

-- --------------------------------------------------------

--
-- Структура таблицы `slaider`
--

CREATE TABLE `slaider` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slaider`
--

INSERT INTO `slaider` (`id`, `picture`) VALUES
(1, 'https://mtdata.ru/u14/photo4B0D/20517148567-0/original.jpg'),
(2, 'http://images.unsplash.com/photo-1547647407-953870c65ae3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slaider`
--
ALTER TABLE `slaider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `slaider`
--
ALTER TABLE `slaider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
