-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Gru 2021, 17:35
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `phpcrud`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jacht_m`
--

CREATE TABLE `jacht_m` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `aval` varchar(255) NOT NULL,
  `rserv` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `jacht_m`
--

INSERT INTO `jacht_m` (`id`, `name`, `model`, `price`, `aval`, `rserv`) VALUES
(1, 'Baltica', '35', '500PLN', 'Zajęty', '0000-00-00 00:00:00.000000'),
(2, 'gfhfgh', 'dfgdfg', 'dfgdfg', 'gfhgfhgf', '2021-12-27 16:37:00.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jacht_s`
--

CREATE TABLE `jacht_s` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `aval` varchar(255) NOT NULL,
  `rserv` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `jacht_s`
--

INSERT INTO `jacht_s` (`id`, `name`, `model`, `price`, `aval`, `rserv`) VALUES
(1, 'dfssdf', '3000', '1000PLN', 'sdfsdfsdf', '2021-12-12 16:48:00.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jacht_srodladowy`
--

CREATE TABLE `jacht_srodladowy` (
  `id` int(11) NOT NULL,
  `name` varchar(6) NOT NULL,
  `created` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `jacht_srodladowy`
--

INSERT INTO `jacht_srodladowy` (`id`, `name`, `created`) VALUES
(21, 'admin', '2021-12-31 19:55:33.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `laptopy`
--

CREATE TABLE `laptopy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title1` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `laptopy`
--

INSERT INTO `laptopy` (`id`, `name`, `email`, `phone`, `title1`, `created`) VALUES
(33, '//po Magda Przemyłska', 'DELL Latitude E7470', '1GNTDC2', 'Wolny', '2021-10-26 11:39:00'),
(34, '//po Adam Klimowski', 'DELL Latitude E7470', ' 4MM6DC2', 'Wolny', '2021-10-26 11:39:00'),
(35, 'Sprzedany dla Piotr Dworakowski// po Piotr Dworakowski', 'DELL Latitude E7470', '40D8LC2', 'Sprzedany', '2021-10-26 11:39:00'),
(36, 'Michał Muzyka', 'DELL Latitude E7450', '7NG9J72', 'W użytku', '2021-01-18 11:40:00'),
(37, 'Mikołaj Wus', 'Dell Latitude E7450', 'H1PZR32', 'W użytku', '2021-01-18 11:40:00'),
(38, 'Sylwia Gawron', 'DELL Latitude E7450', 'HJ4HGC2', 'W użytku', '2021-01-18 11:40:00'),
(39, '//po Sławomir Rybałtowski', 'DELL Latitude E7450  ', '47D4N72', 'Wolny', '2021-10-26 11:40:00'),
(40, 'Paweł Domagała', 'DELL Latitude E7470', 'HSTCS72', 'W użytku', '2021-01-18 11:41:00'),
(41, '//po Magda Wiśniewska', 'DELL Latitude E7450 ', 'GD71S32 ', 'Wolny', '2021-10-26 11:41:00'),
(42, 'Ewa Cedro', 'DELL Latitude E7470', '4FTWDC2', 'W użytku', '2021-01-18 11:41:00'),
(43, '// po Monika Fingas // Sprzedany dla Piotr Dworakowski', 'Dell Latitude E7470', '3RZPRF2', 'Sprzedany', '2021-12-08 11:42:00'),
(44, 'Sprzedany dla Piotr Dworakowski// po Tomek Horczyński', 'DELL Latitude E7470', '5BB9N72', 'Sprzedany', '2021-10-26 11:42:00'),
(45, 'Katarzyna Małecka// po jkosmacinski', 'Dell Latitude E7450', '35J0Z52', 'W użytku', '2021-10-26 11:42:00'),
(46, 'Mikołaj Wus', 'Dell Latitude E6430', '9M2DJX1', 'Sprzedany', '2021-01-18 11:43:00'),
(47, 'Wolny', 'Dell Latitude E6431', 'FWH8PX1', 'Zastępczy', '2021-01-18 11:51:00'),
(48, 'Wolny', 'Dell Latitude E6430', 'DPN923G6A00', 'Zastępczy', '2021-01-18 11:51:00'),
(49, 'Wolny', 'Dell Latitude E6420', '2996577700047', 'Zastępczy', '2021-01-18 11:52:00'),
(50, 'Mikołaj Wus', 'Dell Latitude E6420', '1L3SLX1', 'Sprzedany', '2021-01-18 11:52:00'),
(51, 'Piotr Dworakowski', 'Dell Latitude E6430', 'CW9C8W1', 'Sprzedany', '2021-01-18 11:52:00'),
(52, 'Mikołaj Wus', 'Dell Latitude E6420', 'DVHR6R1', 'Sprzedany', '2021-01-18 11:52:00'),
(53, 'Jakub Kosmaciński', 'Dell Latitude E6420', '18H4GS1', 'Sprzedany', '2021-01-18 11:53:00'),
(54, 'Jakub Kosmaciński', 'Dell Latitude E6421', 'GNV1BY1 ', 'Sprzedany', '2021-01-18 11:53:00'),
(55, 'Serwer Windows 10', 'Dell e6430', '4C25YW1', 'W biurze', '2021-07-01 16:37:00'),
(56, 'Piotr Dworakowski', 'Dell Vostro 3500', 'JFNS1D3', 'W użyciu', '2021-10-26 10:23:00'),
(57, 'Adam Klimowski', 'Dell Vostro 3500', 'BTLHGD3', 'W użyciu', '2021-10-26 10:24:00'),
(58, 'Sławomir Rybałtowski', 'Dell Vostro 3500', 'HV8H2D3', 'W użyciu', '2021-10-26 10:24:00'),
(59, 'Monika Fingas', 'Dell Vostro 3500', '6B2H6C3', 'W użyciu', '2021-10-26 10:26:00'),
(60, 'Tomasz Horczyński', 'Dell Vostro 3500', '4X7B2D3', 'W użyciu', '2021-10-26 10:26:00'),
(61, 'Magda Przemyłska', 'Dell Vostro 3500', '46TB2D3', 'W użyciu', '2021-10-26 10:26:00'),
(62, 'Magda Wiśniewska', 'Dell Vostro 3500', 'CQYL6C3', 'W użyciu', '2021-10-26 10:29:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `telefony`
--

CREATE TABLE `telefony` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `telefony`
--

INSERT INTO `telefony` (`id`, `name`, `email`, `phone`, `title`, `created`) VALUES
(22, '//po Magda Przemyłska', 'iPhone 4s', 'DNWGLBG4DTC0', 'Wolny', '2021-12-08 11:55:00'),
(23, 'Adam Klimowski', 'GalaxyA20e', 'RF8M51HZ33T', 'W użytku', '2021-01-18 11:56:00'),
(24, 'Mikołaj Wus', 'GalaxyA20e', 'RF8M51HZ4GM', 'W użytku', '2021-06-10 11:56:00'),
(25, 'Michał Muzyka', 'GALAXY GRAND PRIME', 'S5618V59C4', 'W użytku', '2021-01-18 11:56:00'),
(26, 'Sylwia Gawron', 'GalaxyA20e', 'RF8M51HZA8J', 'W użytku', '2021-01-18 11:57:00'),
(27, 'Wolny Uszkodzony po Iwonie', 'Galaxy A10', 'RF8M540EC9X ', 'Zastępczy', '2021-01-18 11:57:00'),
(28, 'Paweł Domagała', 'HUAWEI Y6 2019', '5WH6R19329020464', 'W użytku', '2021-01-18 11:57:00'),
(29, 'Magda Wiśniewska', 'Galaxy A10', 'RF8M540D6BJ', 'W użytku', '2021-01-18 11:57:00'),
(30, 'Ewa Cedro', 'Galaxy A10', 'RF8M540FWMK', 'W użytku', '2021-01-18 11:57:00'),
(31, 'Tomek Horczyński', 'Samsung Galaxy A10 ', 'RF8M540F27V', 'W użytku', '2021-01-18 12:00:00'),
(33, 'Wolny po A.Klimowski', ' LG-M160', '801CQAS078896', 'Zastępczy', '2021-01-18 12:01:00'),
(34, 'Sławomir Rybałtowski', 'Samsung Galxy M11', 'R9JN90LVLNJ', 'W użytku', '2021-01-26 10:38:00'),
(35, 'Piotr Dworakowski', 'Samsung Galxy M11', 'R9JN90LVV0J', 'W użytku', '2021-06-10 10:40:00'),
(36, 'Katarzyna Malecka', 'Samsung Galaxy M11', 'R9JN90LVFDJ', 'W użytku', '2021-06-17 10:41:00'),
(37, 'gdfgdfgdfg', '', '', '', '2021-12-26 18:50:00'),
(38, 'gdfgdfgdfg', '', '', '', '2021-12-26 18:50:00'),
(39, '', '', '', '', '2021-12-26 18:51:00'),
(40, '', '', '', '', '2021-12-26 18:53:00'),
(41, '', '', '', '', '2021-12-26 18:53:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `jacht_m`
--
ALTER TABLE `jacht_m`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `jacht_s`
--
ALTER TABLE `jacht_s`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `jacht_srodladowy`
--
ALTER TABLE `jacht_srodladowy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `laptopy`
--
ALTER TABLE `laptopy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `telefony`
--
ALTER TABLE `telefony`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `jacht_m`
--
ALTER TABLE `jacht_m`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `jacht_s`
--
ALTER TABLE `jacht_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `jacht_srodladowy`
--
ALTER TABLE `jacht_srodladowy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `laptopy`
--
ALTER TABLE `laptopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT dla tabeli `telefony`
--
ALTER TABLE `telefony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
