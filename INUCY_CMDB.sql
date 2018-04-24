-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 24 2018 г., 20:35
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `INUCY_CMDB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Application`
--

CREATE TABLE `Application` (
  `id_app` int(11) NOT NULL,
  `id_softw` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Complect`
--

CREATE TABLE `Complect` (
  `id_complect` int(11) NOT NULL,
  `id_infra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Componet`
--

CREATE TABLE `Componet` (
  `id_comp` varchar(7) NOT NULL,
  `id_computer` varchar(8) DEFAULT NULL,
  `id_hard` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Componet`
--

INSERT INTO `Componet` (`id_comp`, `id_computer`, `id_hard`) VALUES
('UE4001', '2018001', 34);

-- --------------------------------------------------------

--
-- Структура таблицы `Computer`
--

CREATE TABLE `Computer` (
  `id_computer` varchar(8) NOT NULL,
  `id_work` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_os` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `id_hard` int(11) NOT NULL,
  `id_vendor` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Computer`
--

INSERT INTO `Computer` (`id_computer`, `id_work`, `id_type`, `id_os`, `id_status`, `id_hard`, `id_vendor`, `Name`) VALUES
('2018001', NULL, 1, NULL, 1, 34, NULL, 'PC1');

-- --------------------------------------------------------

--
-- Структура таблицы `Hardware`
--

CREATE TABLE `Hardware` (
  `id_hard` int(11) NOT NULL,
  `id_infra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Hardware`
--

INSERT INTO `Hardware` (`id_hard`, `id_infra`) VALUES
(34, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Infrastructure`
--

CREATE TABLE `Infrastructure` (
  `id_infra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Infrastructure`
--

INSERT INTO `Infrastructure` (`id_infra`) VALUES
(5);

-- --------------------------------------------------------

--
-- Структура таблицы `Location`
--

CREATE TABLE `Location` (
  `id_location` int(11) NOT NULL,
  `Kabin` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `id_infra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `NetHard`
--

CREATE TABLE `NetHard` (
  `id_nethard` int(11) NOT NULL,
  `id_hard` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `OS`
--

CREATE TABLE `OS` (
  `id_os` int(11) NOT NULL,
  `id_softw` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Software`
--

CREATE TABLE `Software` (
  `id_softw` int(11) NOT NULL,
  `id_infra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Software`
--

INSERT INTO `Software` (`id_softw`, `id_infra`) VALUES
(24, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Status`
--

CREATE TABLE `Status` (
  `id_status` int(11) NOT NULL,
  `Name` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Status`
--

INSERT INTO `Status` (`id_status`, `Name`) VALUES
(1, 'Offline'),
(2, 'Online'),
(3, 'Ready'),
(4, 'Working');

-- --------------------------------------------------------

--
-- Структура таблицы `TypeCMPC`
--

CREATE TABLE `TypeCMPC` (
  `id_type` int(11) NOT NULL,
  `Name` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `TypeCMPC`
--

INSERT INTO `TypeCMPC` (`id_type`, `Name`) VALUES
(1, 'PC'),
(2, 'Server'),
(3, 'Switch'),
(4, 'Router'),
(5, 'HUB');

-- --------------------------------------------------------

--
-- Структура таблицы `TypeOfComp`
--

CREATE TABLE `TypeOfComp` (
  `id_comp` varchar(7) NOT NULL,
  `Name` char(18) DEFAULT NULL,
  `Type` char(18) DEFAULT NULL,
  `Socket` char(18) DEFAULT NULL,
  `Cores` char(18) DEFAULT NULL,
  `mHz` char(18) DEFAULT NULL,
  `memory` char(18) DEFAULT NULL,
  `MaxScale` char(18) DEFAULT NULL,
  `SpeedUp` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `TypeOfComp`
--

INSERT INTO `TypeOfComp` (`id_comp`, `Name`, `Type`, `Socket`, `Cores`, `mHz`, `memory`, `MaxScale`, `SpeedUp`) VALUES
('UE4001', 'Intel Core i5-4440', 'Processor', 'LGA 1150', '4', '3100', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Vendor`
--

CREATE TABLE `Vendor` (
  `Name` varchar(180) NOT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Address` varchar(55) DEFAULT NULL,
  `id_vendor` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Virtual_machine`
--

CREATE TABLE `Virtual_machine` (
  `id_virtual` int(11) NOT NULL,
  `id_softw` int(11) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_os` int(11) DEFAULT NULL,
  `id_computer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Workplace`
--

CREATE TABLE `Workplace` (
  `id_workplace` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Id_location` int(11) DEFAULT NULL,
  `id_complect` int(11) DEFAULT NULL,
  `Type` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Application`
--
ALTER TABLE `Application`
  ADD PRIMARY KEY (`id_app`),
  ADD UNIQUE KEY `app` (`id_app`),
  ADD UNIQUE KEY `soft` (`id_softw`,`id_app`);

--
-- Индексы таблицы `Complect`
--
ALTER TABLE `Complect`
  ADD PRIMARY KEY (`id_complect`),
  ADD KEY `R_13` (`id_infra`);

--
-- Индексы таблицы `Componet`
--
ALTER TABLE `Componet`
  ADD PRIMARY KEY (`id_comp`),
  ADD UNIQUE KEY `Components` (`id_comp`),
  ADD UNIQUE KEY `ser` (`id_comp`),
  ADD UNIQUE KEY `Hardware` (`id_hard`,`id_comp`),
  ADD KEY `R_23` (`id_computer`);

--
-- Индексы таблицы `Computer`
--
ALTER TABLE `Computer`
  ADD PRIMARY KEY (`id_computer`),
  ADD UNIQUE KEY `Computer` (`id_computer`,`id_hard`),
  ADD UNIQUE KEY `Hardware` (`id_hard`);

--
-- Индексы таблицы `Hardware`
--
ALTER TABLE `Hardware`
  ADD PRIMARY KEY (`id_hard`),
  ADD KEY `R_10` (`id_infra`);

--
-- Индексы таблицы `Infrastructure`
--
ALTER TABLE `Infrastructure`
  ADD PRIMARY KEY (`id_infra`);

--
-- Индексы таблицы `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`id_location`),
  ADD KEY `R_14` (`id_infra`);

--
-- Индексы таблицы `NetHard`
--
ALTER TABLE `NetHard`
  ADD PRIMARY KEY (`id_nethard`),
  ADD KEY `R_21` (`id_hard`);

--
-- Индексы таблицы `OS`
--
ALTER TABLE `OS`
  ADD PRIMARY KEY (`id_os`),
  ADD UNIQUE KEY `OS` (`id_os`),
  ADD UNIQUE KEY `soft` (`id_softw`,`id_os`);

--
-- Индексы таблицы `Software`
--
ALTER TABLE `Software`
  ADD PRIMARY KEY (`id_softw`),
  ADD KEY `R_11` (`id_infra`);

--
-- Индексы таблицы `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`id_status`);

--
-- Индексы таблицы `TypeCMPC`
--
ALTER TABLE `TypeCMPC`
  ADD PRIMARY KEY (`id_type`);

--
-- Индексы таблицы `TypeOfComp`
--
ALTER TABLE `TypeOfComp`
  ADD PRIMARY KEY (`id_comp`);

--
-- Индексы таблицы `Vendor`
--
ALTER TABLE `Vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- Индексы таблицы `Virtual_machine`
--
ALTER TABLE `Virtual_machine`
  ADD PRIMARY KEY (`id_virtual`),
  ADD UNIQUE KEY `Mach` (`id_virtual`,`id_softw`),
  ADD UNIQUE KEY `soft` (`id_softw`);

--
-- Индексы таблицы `Workplace`
--
ALTER TABLE `Workplace`
  ADD PRIMARY KEY (`id_workplace`),
  ADD KEY `R_1` (`id_complect`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Application`
--
ALTER TABLE `Application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`id_softw`) REFERENCES `Software` (`id_softw`);

--
-- Ограничения внешнего ключа таблицы `Complect`
--
ALTER TABLE `Complect`
  ADD CONSTRAINT `complect_ibfk_1` FOREIGN KEY (`id_infra`) REFERENCES `Infrastructure` (`id_infra`);

--
-- Ограничения внешнего ключа таблицы `Componet`
--
ALTER TABLE `Componet`
  ADD CONSTRAINT `componet_ibfk_1` FOREIGN KEY (`id_computer`) REFERENCES `Computer` (`id_computer`),
  ADD CONSTRAINT `componet_ibfk_2` FOREIGN KEY (`id_hard`) REFERENCES `Hardware` (`id_hard`);

--
-- Ограничения внешнего ключа таблицы `Computer`
--
ALTER TABLE `Computer`
  ADD CONSTRAINT `computer_ibfk_1` FOREIGN KEY (`id_hard`) REFERENCES `Hardware` (`id_hard`);

--
-- Ограничения внешнего ключа таблицы `Hardware`
--
ALTER TABLE `Hardware`
  ADD CONSTRAINT `hardware_ibfk_1` FOREIGN KEY (`id_infra`) REFERENCES `Infrastructure` (`id_infra`);

--
-- Ограничения внешнего ключа таблицы `Location`
--
ALTER TABLE `Location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`id_infra`) REFERENCES `Infrastructure` (`id_infra`);

--
-- Ограничения внешнего ключа таблицы `NetHard`
--
ALTER TABLE `NetHard`
  ADD CONSTRAINT `nethard_ibfk_1` FOREIGN KEY (`id_hard`) REFERENCES `Hardware` (`id_hard`);

--
-- Ограничения внешнего ключа таблицы `OS`
--
ALTER TABLE `OS`
  ADD CONSTRAINT `os_ibfk_1` FOREIGN KEY (`id_softw`) REFERENCES `Software` (`id_softw`);

--
-- Ограничения внешнего ключа таблицы `Software`
--
ALTER TABLE `Software`
  ADD CONSTRAINT `software_ibfk_1` FOREIGN KEY (`id_infra`) REFERENCES `Infrastructure` (`id_infra`);

--
-- Ограничения внешнего ключа таблицы `TypeOfComp`
--
ALTER TABLE `TypeOfComp`
  ADD CONSTRAINT `typeofcomp_ibfk_1` FOREIGN KEY (`id_comp`) REFERENCES `Componet` (`id_comp`);

--
-- Ограничения внешнего ключа таблицы `Virtual_machine`
--
ALTER TABLE `Virtual_machine`
  ADD CONSTRAINT `virtual_machine_ibfk_1` FOREIGN KEY (`id_softw`) REFERENCES `Software` (`id_softw`);

--
-- Ограничения внешнего ключа таблицы `Workplace`
--
ALTER TABLE `Workplace`
  ADD CONSTRAINT `workplace_ibfk_1` FOREIGN KEY (`id_complect`) REFERENCES `Complect` (`id_complect`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
