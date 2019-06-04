-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 03 2019 г., 05:47
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `damir_pn_10`
--
CREATE DATABASE IF NOT EXISTS `damir_pn_10` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `damir_pn_10`;

-- --------------------------------------------------------

--
-- Структура таблицы `bike`
--

CREATE TABLE `bike` (
  `id` int(11) NOT NULL,
  `name` varchar(355) NOT NULL,
  `price` varchar(355) NOT NULL,
  `info` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bike`
--

INSERT INTO `bike` (`id`, `name`, `price`, `info`, `img`) VALUES
(1, 'stels', '150', 'Очень крутой велик. Берите не пожалеете', 'velik1.jpg'),
(2, 'salina', '130', 'Только для женщин!', 'velik2.jpg'),
(3, 'forward', '130', 'Для детей!', 'velik3.jpg'),
(4, 'three circle', '200', 'Модернизированный велик!', 'velik5.jpg'),
(8, 'LYNYX', '200', 'Велосипед для двоих', 'velikdlya2.jpg'),
(9, 'forward', '150', 'Хороший велосипед', 'velik4.jpg'),
(10, 'Неизвестно', '140', 'Деревенский!!!', 'velik6.jpg'),
(11, 'stels', '150', 'Женский велосипед', 'velik7.jpg'),
(12, 'bulls', '160', 'Современный велосипед с корзинкой', 'velik8.jpeg'),
(13, 'Topgear', '150', 'Скоростной велосипед', 'velik9.jpg'),
(14, 'Haro', '170', 'Горный велосипед', 'velik10.jpg'),
(15, 'Stels', '160', 'Велосипед с корзиной', 'velik11.jpeg'),
(16, 'Career', '180', 'Слишком крутой!', 'velik12.jpg'),
(17, 'Wind', '200', 'Велосипед с толстой резиной', 'fatbike1.jpg'),
(18, 'Volteco', '300', 'С утолщённой резиной и ещё электрический!', 'fatbike2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `blogg`
--

CREATE TABLE `blogg` (
  `title` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `instagramm`
--

CREATE TABLE `instagramm` (
  `email` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `login` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `avatar` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `instagramm`
--

INSERT INTO `instagramm` (`email`, `name`, `login`, `password`, `avatar`, `id`) VALUES
('damirzabolotskiy@gmail.com', 'Илон Маск', 'hope', '123', 'ava1.jpg', 1),
('damirzabolotskiy@gmail.com', 'John', 'qwerty', '112233', 'ava3.jpg', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bike_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `bike_id`, `date`, `time`) VALUES
(5, 1, '2019-03-12', '12:00:00'),
(6, 1, '2019-03-12', '12:00:00'),
(7, 8, '2019-03-22', '12:00:00'),
(8, 1, '2019-03-13', '15:00:00'),
(9, 1, '2019-03-16', '16:30:00'),
(10, 8, '2019-03-13', '15:00:00'),
(11, 8, '2019-03-29', '12:00:00'),
(12, 16, '2019-03-13', '13:00:00'),
(17, 1, '2019-03-14', '07:00:00'),
(18, 19, '0000-00-00', '00:00:00'),
(19, 2, '0000-00-00', '00:00:00'),
(20, 10, '2019-06-04', '11:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `img` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `img`, `text`, `users_id`) VALUES
(32, '9.jpg', 'Всем пока!', 6),
(33, '4.jpg', 'ti krut', 1),
(34, '4.jpg', 'rgr', 2),
(35, '9.jpg', 'Сегодня приобрёл крутую игру', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE `shop` (
  `img` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`img`, `text`, `price`, `id`) VALUES
('1.jpg', 'Just Cause 4', 2999, 1),
('2.jpg', 'Far Cry: New Dawn', 1849, 2),
('6.jpg', 'FIFA 19', 1999, 17),
('8.jpg', 'Battlefield 5', 1499, 19),
('3.jpg', 'Jagged Alliance', 999, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(355) NOT NULL,
  `surname` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `surname`, `id`) VALUES
('Илон', 'Маск', 0),
('Нил', 'Армстронг', 0),
('Майкл', 'Джексон', 5),
('Илон', 'Маск', 0),
('Нил', 'Армстронг', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tweet`
--

CREATE TABLE `tweet` (
  `logo` varchar(355) NOT NULL,
  `title` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tweet`
--

INSERT INTO `tweet` (`logo`, `title`, `text`, `img`, `id`) VALUES
('post1.jpg', 'Habr @habr_com три часа назад', 'lol', 'roscosmos.jpg', 36),
('post1.jpg', 'Habr @habr_com три часа назад', 'hello world', 'roscosmos.jpg', 37);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `username` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blogg`
--
ALTER TABLE `blogg`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `instagramm`
--
ALTER TABLE `instagramm`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bike`
--
ALTER TABLE `bike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `blogg`
--
ALTER TABLE `blogg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `instagramm`
--
ALTER TABLE `instagramm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
