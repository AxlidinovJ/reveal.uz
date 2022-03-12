-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2022 at 10:27 AM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reveal`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `img`, `created_at`, `updated_at`) VALUES
(3, 'ig7E_q5HyPiQmPK4K8pt.jpg', 1646821411, 1646821411);

-- --------------------------------------------------------

--
-- Table structure for table `about_lang`
--

CREATE TABLE `about_lang` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `language` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_lang`
--

INSERT INTO `about_lang` (`id`, `owner_id`, `language`, `title`, `subtitle`, `items`) VALUES
(1, 3, 'en-US', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', ' Ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit.\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.'),
(2, 3, 'ru', 'Боль сама любовь, главный парень', 'Это исключения, которых жаждут слепые, они не видят, они отказываются от своих обязанностей по вине, успокаивающей душевные невзгоды.', 'Ни одна школа не может работать, кроме как для достижения поставленных перед ней задач.\r\nНо боль в фильме вредит удовольствию, которое он хочет осудить.\r\nНи одна школа не может работать, кроме как для достижения поставленных перед ней задач. Боль виновата в удовольствии от боли storacalaperda mastiro, чтобы избежать боли, не равнодействующей.'),
(3, 3, 'uz', 'Og\'riqning o\'zi sevgi, asosiy yigit', 'Ular ko\'rlar orzu qiladigan, ko\'rmaydigan istisnolardir, ular o\'z mas\'uliyatlarini qalbning mashaqqatlarini tinchituvchi aybga tashlab qo\'yadiganlardir.', 'Hech bir maktab o\'z maqsadlariga erishishdan boshqa ishlay olmaydi.\r\nAmmo filmdagi og\'riq, u qoralamoqchi bo\'lgan zavqga shikast etkazadi.\r\nHech bir maktab o\'z maqsadlariga erishishdan boshqa ishlay olmaydi. Og\'riq og\'riqdan qutulish uchun storacalaperda mastiro og\'rig\'idan zavqlanish uchun aybdordir.');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `img`, `title`, `created_at`, `updated_at`) VALUES
(2, 'QgiYiZ1QrdzRB3znCa0O.png', 'client2', 1646840779, 1646840779),
(3, 'MDVuwj-JVu1fWCa3NLzs.png', 'client3', 1646840789, 1646840789),
(4, 'CurwVbXnITXzCUgpa5J3.png', 'client4', 1646840800, 1646840800),
(5, 'w8Uj30YzdAGCFhk44Bse.png', 'client5', 1646840812, 1646840812),
(6, 'T3A3ItTFFGoFVX7ba8il.png', 'client6', 1646840830, 1646840830),
(7, 'KIzsoZxn6jhFXH3sOHkW.png', 'clinent 7', 1646840841, 1646840841),
(8, 'BXXMjhZQNMg7uSeaWVBc.png', 'client8', 1646840853, 1646840853),
(9, 'SnvvXgZJ5p8V_EkwlYDK.png', 'client1', 1646840868, 1646840868);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'jamshidbek', '+998-91-157-77-69', 'smdklm', 'lkmkldmk', 1, 1646840779, 1646840779),
(5, 'jamshidbek', '+998-91-157-77-69', 'o\'qish bo\'yicha', 'Zor narsa ekan qoyil', 1, 1646840779, 1647061235),
(6, 'jamshidbek', '+998-91-157-77-69', 'sajasdn', 'ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh vv', 1, 1646840779, 1647061238);
INSERT INTO `contact` (`id`, `name`, `phone`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(7, 'jamshidbek', '+998-91-157-77-69', 'sajasdn', 'ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh vv', 1, 1646840779, 1646840779);
INSERT INTO `contact` (`id`, `name`, `phone`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(8, 'jamshidbek', '+998-91-157-77-69', 'sajasdn', 'ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh ygb bkj bvgh vv', 1, 1646840779, 1646840779),
(9, 'scdjnkasd', '+998-09-808-88-90', 'kjbdjhb', 'jbjhcsbh', 1, 1647061035, 1647061228);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `addres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `addres`, `phone`, `email`, `location`) VALUES
(1, 'A108 Adam Street, NY 535022, USA', '+999 90 123 45 67', 'info@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24311.748147871866!2d71.78219454970704!3d40.38739033590023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38bb834e3d0e41df%3A0xde0b15447812c74f!2s%22Festival%22%20ko&#39;ngilochar%20markazi!5e0!3m2!1suz!2s!4v1646906028326!5m2!1suz!2s');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `img`, `created_at`, `updated_at`) VALUES
(2, 'hlX5CbXWC3edw5R62o_3.jpg', 1646820486, 1646820486);

-- --------------------------------------------------------

--
-- Table structure for table `header_lang`
--

CREATE TABLE `header_lang` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `language` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_btn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_btn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_lang`
--

INSERT INTO `header_lang` (`id`, `owner_id`, `language`, `title`, `about_btn`, `project_btn`) VALUES
(4, 2, 'en-US', 'Making your ideas happen!', 'Get Started', ' Our Projects'),
(5, 2, 'ru', 'дизайн помогает маркетингу.', 'Начать', 'Наши проекты'),
(6, 2, 'uz', 'Fikrlaringizni amalga oshirish sodir bo\'lmoqda!', 'Boshlash', 'Bizning loyihalarimiz');

-- --------------------------------------------------------

--
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `id` int(11) NOT NULL,
  `products_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`id`, `products_id`, `name`) VALUES
(22, 3, 'VLZR2zkqrZoo9EtEbM5G.jpg'),
(23, 3, '7loBh-Fsf16DRxN5Kguh.jpg'),
(25, 4, 'Hf8lTfxDCZ_e7K2UGn_y.jpg'),
(26, 4, 'wAbqZTmvQnPmMumIoAnC.jpg'),
(27, 4, 'ObPAa0RU75K-o_20wine.jpg'),
(28, 5, '32FhlHpJjEGpBAFxNLJp.jpg'),
(29, 5, 'GGAes3hxarZGEj4emNlq.jpg'),
(30, 5, 'GkY1IxLBVygMydMHxd9U.jpg'),
(34, 1, 'kFdjAMJI8XC5bo_nSOm6.jpg'),
(35, 1, 'XNS1RjOnKliy4-Mz0KqZ.jpg'),
(36, NULL, 'J3AMqsugjJ9m7kJVaGgA.jpg'),
(37, NULL, 'D3C_S-7YYvt3sQLFhvrg.jpg'),
(38, NULL, 'vCmDwY52UdijLVkgWdXo.jpg'),
(39, NULL, 'UXXAdL31dubYTz5hqV9M.jpg'),
(40, NULL, 'TDulvCfh96T8zNgpTzu6.jpg'),
(41, NULL, 'GegH0Jm8WymBUTN2gTTR.jpg'),
(42, NULL, 'uOUGRkl9B4-MyvT_rRx2.jpg'),
(43, NULL, 'E6dmtsHfvsE9h3Cf1n4F.jpg'),
(44, NULL, 'UG-zhk0ShOOGQBpHIO72.jpg'),
(45, NULL, 'Vvw6Lbcs1sHl-pjPflMR.jpg'),
(46, NULL, 'aN8G3XxKP7gwxjVhPid7.jpg'),
(47, NULL, 'q5VLBnGvNnVYDGUiI2MY.jpg'),
(48, NULL, 'ql5j1chyAB9BEVQzdYJT.png'),
(49, NULL, 'RLLiMrxuv6aO0FI0HJLs.png'),
(50, 8, 'YD9PveNWOV-MhCx7RVU2.jpg'),
(51, 8, 'rSrjLZK_OoHxEhvniytS.jpg'),
(52, 8, 'dkp96txXf_J0cw42LoSy.jpg'),
(53, 8, 'VtCX2LNisx7bmJUmdHEH.jpg'),
(54, 8, 'Oj9nCjOahUwKIwV_azXZ.jpg'),
(55, 9, 'zuL4lXNJ1Pr57qTEpXrg.jpg'),
(56, 9, 'Y3pw3CmanuG4iQsSan-D.jpg'),
(57, 9, 'qNiVYbWcjCNw7xvGdiWp.jpg'),
(58, 9, 'JdqC0PW389FTvOb0FgAQ.jpg'),
(59, 9, 'CjHBwrL4corW-MfPR7xN.jpg'),
(60, 9, 'nsB3qo1GaceFOvxeeQY0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `language` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `translation` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(1, 'en', 'Save <i class=\"fa-solid fa-floppy-disk\"></i>'),
(1, 'ru', 'Сохранять  <i class=\"fa-solid fa-floppy-disk\"></i>'),
(1, 'uz', 'Saqlash <i class=\"fa-solid fa-floppy-disk\"></i>'),
(2, 'en', 'Home'),
(2, 'ru', 'Дома'),
(2, 'uz', 'Uy'),
(3, 'en', 'About'),
(3, 'ru', 'O'),
(3, 'uz', 'Haqida'),
(4, 'en', 'Services'),
(4, 'ru', 'Услуги'),
(4, 'uz', 'Xizmatlar'),
(5, 'en', 'Portfolio'),
(5, 'ru', 'портфолио'),
(5, 'uz', 'Portfel'),
(6, 'en', 'Team'),
(6, 'ru', 'Команда'),
(6, 'uz', 'Jamoa'),
(7, 'en', 'Contact'),
(7, 'ru', 'Контакт'),
(7, 'uz', 'Aloqa'),
(8, 'en', 'Language'),
(8, 'ru', 'Язык'),
(8, 'uz', 'Til'),
(9, 'en', 'Clients'),
(9, 'ru', 'Клиенты'),
(9, 'uz', 'Mijozlar'),
(10, 'en', 'Contact Us'),
(10, 'ru', 'Связаться с нами'),
(10, 'uz', 'Biz bilan bog\'lanish'),
(11, 'en', 'Project information'),
(11, 'ru', 'Информационный проект'),
(11, 'uz', 'Loyiha haqida ma\'lumot'),
(12, 'en', 'This is an example of portfolio detail'),
(12, 'ru', 'Это пример детализации портфолио'),
(12, 'uz', 'Bu portfel tafsilotlariga misol'),
(13, 'en', 'Category'),
(13, 'ru', 'Категория'),
(13, 'uz', 'Turkum'),
(14, 'en', 'Project date'),
(14, 'ru', 'Дата проекта'),
(14, 'uz', 'Loyiha sanasi'),
(15, 'en', 'Project URL'),
(15, 'ru', 'URL-адрес проекта'),
(15, 'uz', 'Project URL'),
(16, 'en', 'Client'),
(16, 'ru', 'Клиент'),
(16, 'uz', 'Mijoz'),
(17, 'en', 'Our Portfolio'),
(17, 'ru', 'Наше портфолио'),
(17, 'uz', 'Bizning portfelimiz'),
(18, 'en', 'Our Team'),
(18, 'ru', 'Наша команда'),
(18, 'uz', 'Bizning jamoamiz'),
(19, 'en', 'Testimonials'),
(19, 'ru', 'Отзывы'),
(19, 'uz', 'Guvohlar'),
(20, 'en', 'Address'),
(20, 'ru', 'Адрес'),
(20, 'uz', 'Manzil'),
(21, 'en', 'Phone Number'),
(21, 'ru', 'Телефонный номер'),
(21, 'uz', 'Telefon raqami'),
(22, 'en', 'Email'),
(22, 'ru', 'Эл. адрес'),
(22, 'uz', 'Elektron pochta'),
(23, 'en', 'Name'),
(23, 'ru', 'Имя'),
(23, 'uz', 'Ism'),
(24, 'en', 'Phone'),
(24, 'ru', 'Телефон'),
(24, 'uz', 'Telefon'),
(25, 'en', 'Title'),
(25, 'ru', 'Заголовок'),
(25, 'uz', 'Sarlavha'),
(26, 'en', 'Message'),
(26, 'ru', 'Сообщение'),
(26, 'uz', 'Xabar'),
(27, 'en', 'Send Message'),
(27, 'ru', 'Отправить сообщение'),
(27, 'uz', 'Xabar yuborish');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1646810371),
('m130524_201442_init', 1646810373),
('m150207_210500_i18n_init', 1646824245),
('m190124_110200_add_verification_token_column_to_user_table', 1646810373),
('m220309_091109_create_header_table', 1646817646),
('m220309_091133_create_header_lang_table', 1646817646),
('m220309_091142_create_about_table', 1646817646),
('m220309_091148_create_about_lang_table', 1646817646),
('m220309_103103_create_services_table', 1646824034),
('m220309_103113_create_services_lang_table', 1646824034),
('m220309_103136_create_clients_table', 1646824035),
('m220309_103251_create_portfolio_category_table', 1646824035),
('m220309_103305_create_portfolio_table', 1646824035),
('m220309_103415_create_testimonial_table', 1646824035),
('m220309_103422_create_testimonial_lang_table', 1646824035),
('m220309_103520_create_team_table', 1646824035),
('m220309_103602_create_contact_us_table', 1646824035),
('m220309_103621_create_contact_table', 1646824035),
('m220309_104447_create_portfolio_lang_table', 1646824035),
('m220309_104903_create_imgs_table', 1646842589),
('m220309_150456_create_telegram_bot_table', 1646838406),
('m220311_045309_create_add_portfolio_column_table', 1646974527),
('m220311_064045_create_contact_add_column_table', 1646980913),
('m220311_090755_create_tarmoqlar_table', 1646989734),
('m220312_044844_create_contact_add_column_table', 1647060668);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `img` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `category_id`, `img`, `date`, `created_at`, `updated_at`, `url`) VALUES
(1, 2, 'rasm', 342427889, 1646843040, 1646988931, 'https://www.example.com/'),
(3, 2, 'rasm', 2420349, 1646896453, 1646896453, 'https://www.example.com/'),
(4, 4, 'rasm', 2420349, 1646896480, 1646896480, 'https://www.example.com/'),
(5, 3, 'rasm', 12310333, 1646897648, 1646897648, 'https://www.example.com/'),
(6, 5, 'rasm', 873923479, 1646898250, 1646898250, 'https://www.example.com/'),
(8, 3, 'rasm', 1649624400, 1646993237, 1646994276, 'kjnkjnjnkjn'),
(9, 3, 'rasm', 1647032400, 1647061788, 1647061788, 'lkmlkmlk');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_category`
--

CREATE TABLE `portfolio_category` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_category`
--

INSERT INTO `portfolio_category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'web', 1646841162, 1646841162),
(3, 'app', 1646841172, 1646841172),
(4, 'card', 1646841178, 1646841178),
(5, 'PC', 1646898069, 1646898069);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_lang`
--

CREATE TABLE `portfolio_lang` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_lang`
--

INSERT INTO `portfolio_lang` (`id`, `owner_id`, `language`, `title`, `content`, `clent`) VALUES
(1, 1, 'en-US', 'Aplacation', 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', 'ASU Company'),
(2, 1, 'ru', 'Умиротворение', 'Он играл для физического мира. Кто заставляет их чувствовать боль, и поэтому является их изобретателем, потому что это попытка получить преимущество. Обучение не должно восприниматься как обязанность, и поэтому от него не следует отказываться без ответственности за эти нужды. Они знают, что удовольствие обвинителей самое достойное за все время. Но нет причин следовать за ним, когда они его оставят.', 'Компания АСУ'),
(3, 1, 'uz', 'app', 'U jismoniy dunyo uchun o\'ynadi. Kim ularga og\'riqni his qiladi va ularning ixtirochisi ham shundaydir, chunki bu foyda olish uchun harakatdir. O\'qitish majburiyat sifatida qabul qilinmasligi kerak va shuning uchun bu ehtiyojlar uchun javobgarliksiz rad etilmasligi kerak. Ular biladilarki, ayblovchilarning zavqi hamma zamonlardan eng munosibi. Ammo unga ergashishga hech qanday sabab yo\'q, chunki ular uni tashlab ketishganida.', 'ASU kompaniyasi'),
(7, 3, 'en-US', '', '', ''),
(8, 3, 'ru', '', '', ''),
(9, 3, 'uz', 'App2', 'Donec quis nunc mollis, tincidunt mi vel', 'ASU Company'),
(10, 4, 'en-US', '', '', ''),
(11, 4, 'ru', '', '', ''),
(12, 4, 'uz', 'web3', 'asdkjnkj', 'JK Company'),
(13, 5, 'en-US', '', '', ''),
(14, 5, 'ru', '', '', ''),
(15, 5, 'uz', 'klmm', 'klmlkmlk', 'mklmklm'),
(16, 6, 'en-US', '', '', ''),
(17, 6, 'ru', '', '', ''),
(18, 6, 'uz', 'klmdsflkm', 'mklm', 'opkopkop'),
(22, 8, 'en-US', 'asdkm', 'lkmlkm', 'lkm'),
(23, 8, 'ru', 'asdf', 'alsdf', 'lkmlk'),
(24, 8, 'uz', 'asdnjk', 'nkjnkjn', 'kjnjkn'),
(25, 9, 'en-US', 'askldmlm', 'a,mdn.', 'kmklmm'),
(26, 9, 'ru', 'aslkdml', 'mlkml', 'kmlkml'),
(27, 9, 'uz', 'qdkmlm', 'lkmklmlkm', 'lkmlkm');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `img`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-taxi', 1646839801, 1646997003),
(2, 'fas fa-drum', 1646839910, 1646997030),
(3, 'fas fa-ambulance', 1646839910, 1646998216),
(4, 'fas fa-cocktail', 1646839984, 1646998235),
(5, 'fas fa-flag-checkered', 1646993924, 1646997046);

-- --------------------------------------------------------

--
-- Table structure for table `services_lang`
--

CREATE TABLE `services_lang` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_lang`
--

INSERT INTO `services_lang` (`id`, `owner_id`, `language`, `title`, `content`) VALUES
(1, 1, 'en-US', 'Lorem Ipsum', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident etiro rabeta lingo.'),
(2, 1, 'ru', 'лорем ипсум', 'Успокоенные и испорченные удовольствия, которые они получат, эти боли и их беды, ослепленные похотью, не предвидят, какие боли и досады они получат.'),
(3, 1, 'uz', 'Lorem Ipsum', 'Ular oladigan tinchlantirilgan va buzuq lazzatlar, shahvat ko\'r bo\'lgan o\'sha dardlar va ularning qayg\'ulari qanday azob va bezovtaliklarni olishlarini oldindan bilmaydilar.Etiro rabeta lingo.'),
(4, 2, 'en-US', 'Dolor Sitema', 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata nodera clas.'),
(5, 2, 'ru', 'Система боли', 'Минимум прости, кто из наших, занятие любым видом труда, кроме того, что цели его выгодны для достижения tarad limino ata nodera clas.'),
(6, 2, 'uz', 'Og\'riq tizimi', 'Minim afv, bizniki, har qanday turdagi mehnatni amalga oshirish, bundan tashqari, uning maqsadlari tarad limino ata nodera sinfiga erishish uchun foydalidir.'),
(7, 3, 'en-US', 'Sed ut perspiciatis', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur trinige zareta lobur trade.'),
(8, 3, 'ru', 'Но как вы наблюдаете', 'Боль виновата в боли в удовольствии, она хочет быть cillum в боли, и боль избегает любой результирующей сделки trinige zareta lobur.'),
(9, 3, 'uz', 'Ammo siz kuzatganingizdek', 'Og\'riq og\'riqda cillum bo\'lishni istaydi rohatda og\'riq aybdor va og\'riq har qanday natijaviy trinige zareta lobur savdoni chetlab o\'tadi.'),
(10, 4, 'en-US', 'Magni Dolores', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum rideta zanox satirente madera'),
(11, 4, 'ru', 'большие боли', 'Excepteur черные жаждут не видеть, они виноваты, что отказываются от своих услуг, успокаивают ум'),
(12, 4, 'uz', 'Katta og\'riqlar', 'Qora tanlilar ko\'rmaslikni orzu qiladilar, ular o\'z xizmatlaridan voz kechib, aqlni tinchlantiradigan aybdorlar.'),
(13, 5, 'en-US', 'Service to all', 'we all help.'),
(14, 5, 'ru', 'Сервис для всех', 'мы все помогаем.'),
(15, 5, 'uz', 'Hmmaga hizmat korsatish', 'biz hammag ayordam beramiz.');

-- --------------------------------------------------------

--
-- Table structure for table `source_message`
--

CREATE TABLE `source_message` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `source_message`
--

INSERT INTO `source_message` (`id`, `category`, `message`) VALUES
(1, 'app', 'Save'),
(2, 'app', 'Home'),
(3, 'app', 'About'),
(4, 'app', 'Services'),
(5, 'app', 'Portfolio'),
(6, 'app', 'Team'),
(7, 'app', 'Contact'),
(8, 'app', 'Language'),
(9, 'app', 'Clients'),
(10, 'app', 'Contact Us'),
(11, 'app', 'Project information'),
(12, 'app', 'This is an example of portfolio detail'),
(13, 'app', 'Category'),
(14, 'app', 'Project date'),
(15, 'app', 'Project URL'),
(16, 'app', 'Client'),
(17, 'app', 'Our Portfolio'),
(18, 'app', 'Our Team'),
(19, 'app', 'Testimonials'),
(20, 'app', 'Address'),
(21, 'app', 'Phone Number'),
(22, 'app', 'Email'),
(23, 'app', 'Name'),
(24, 'app', 'Phone'),
(25, 'app', 'Title'),
(26, 'app', 'Message'),
(27, 'app', 'Send Message');

-- --------------------------------------------------------

--
-- Table structure for table `tarmoqlar`
--

CREATE TABLE `tarmoqlar` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tarmoqlar`
--

INSERT INTO `tarmoqlar` (`id`, `img`, `url`) VALUES
(1, 'fab fa-telegram', 'https://t.me/Nod32bazaa'),
(2, 'fab fa-instagram', 'https://www.instagram.com/jamshidbekaxlidinov/'),
(3, 'fab fa-facebook', 'https://www.facebook.com/jamshidbek.axlidinov.3/');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `img`, `field`, `twitter`, `telegram`, `ok`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Walter White', '5y89GdnnHaSFqjjVjXoI.jpg', 'Chief Executive Officer', '#', 'https://t.em/JamshidbekAxlidinov', 'https://ok.ru/profile/577173401922', '#', 1646905803, 1646905803),
(2, 'Sarah Jhinson', 'P3q2VqR439Kc7zimKUOT.jpg', 'Product Manager', '#', 'https://t.em/akjndkjd', '#', 'https:://linkedin.com', 1646905654, 1646905654),
(3, 'William Anderson', 'Qe20ZOrRPCTqTABRI_yK.jpg', 'CTO', 'https://twitter.com/', 'https://t.em', 'https://ok.ru', 'https:://linkedin.com', 1646905710, 1646905710),
(4, 'Amanda Jepson', 'VVWnzMNWTMw_zsl1cFiX.jpg', 'Accountant', 'https://twitter.com/', 'https://t.em', 'https://ok.ru', 'https:://linkedin.com', 1646905728, 1646905728);

-- --------------------------------------------------------

--
-- Table structure for table `telegram_bot`
--

CREATE TABLE `telegram_bot` (
  `id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kanal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guruh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telegram_bot`
--

INSERT INTO `telegram_bot` (`id`, `token`, `kanal`, `guruh`) VALUES
(1, '5129553826:AAE4eAwb4ACjFcmUTHiPAaMH-jqcPHrGd0k', '@test7769', '@');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `img`) VALUES
(8, 'H3au4YcWhVWsTXO2PR6W.jpg'),
(9, '9kcF6KIQQVkxRD1PIUPq.jpg'),
(10, 'Yqj4Wpg8TOvB10dG61e1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_lang`
--

CREATE TABLE `testimonial_lang` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial_lang`
--

INSERT INTO `testimonial_lang` (`id`, `owner_id`, `language`, `name`, `field`, `text`) VALUES
(1, 8, 'en-US', 'Jena Karlis', 'Store Owner', 'Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.'),
(2, 8, 'ru', 'Йена Карлис', 'Владелец магазина', 'Proin сахара чистые последствия sem лечения достойных ssim до тех пор, пока паром энтум не получит дзен. То, что нужно обвинителям, это просто свободный анализ. Некоторые улыбаются, но всегда.'),
(3, 8, 'uz', 'Jena Karlis', 'Do\'kon egasi', 'Proin shakarning sof oqibatlari parom entum Zenni qabul qilmaguncha, munosib ssimni davolashadi. Ayblovchilarga nima kerak, shunchaki, buning uchun bepul tahlil kerak. Ba\'zilar tabassum qiladilar, lekin har doim.'),
(4, 9, 'en-US', 'Matt Brandon', 'Frilanser', 'Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.'),
(5, 9, 'ru', 'Мэтт Брэндон', 'Фрилансер', 'Ибо я должен был убежать от боли, которая была cillum, боль боли не любит вины многих, export minim fugiat minim velit minim dolor enim duis pardon ipsum anima magna sunt elit fore quem dolor Labori illum venio.'),
(6, 9, 'uz', 'Mett Brandon', 'Freelancer', 'Chunki men cillum bo\'lgan og\'riqdan qochishim kerak edi, og\'riq og\'rig\'i ko\'pchilikning aybi yo\'q, eksport minimal fugiat minimal velit minimal dolor enim duis pardon ipsum anima magna sunt elit fore quem dolor labori illum venio.'),
(7, 10, 'en-US', 'Saul Goodman', 'Ceo & Founder', 'Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.'),
(8, 10, 'ru', 'Сол Гудман', 'Генеральный директор и основатель', 'Ибо я должен был убежать от боли, которая была cillum, боль боли не любит вины многих, export minim fugiat minim velit minim dolor enim duis pardon ipsum anima magna sunt elit fore quem dolor Labori illum venio.'),
(9, 10, 'uz', 'Saul Goodman', 'Bosh direktor va asoschi', 'Chunki men cillum bo\'lgan og\'riqdan qochishim kerak edi, og\'riq og\'rig\'i ko\'pchilikning aybi yo\'q, eksport minimal fugiat minimal velit minimal dolor enim duis pardon ipsum anima magna sunt elit fore quem dolor labori illum venio.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'WA4uj19W9Xk5zNVVdWu_03lE0wDxQbfO', '$2y$13$7LhFRbeBEWkWjqw3Bc6LFO.hfwljMbQSde6Q.kxqBPIk5gPft7paG', NULL, 'axlidinovj@gmail.com', 10, 1646810376, 1646810376, 'Wo9OU1iXnJQELXwVRk5WRl-yDeOLBagv_1646810376');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_about_lang` (`owner_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_lang`
--
ALTER TABLE `header_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_header_lang` (`owner_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_img` (`products_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`,`language`),
  ADD KEY `idx_message_language` (`language`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_category`
--
ALTER TABLE `portfolio_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_lang`
--
ALTER TABLE `portfolio_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_portfolio_lang` (`owner_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_lang`
--
ALTER TABLE `services_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source_message`
--
ALTER TABLE `source_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_source_message_category` (`category`);

--
-- Indexes for table `tarmoqlar`
--
ALTER TABLE `tarmoqlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telegram_bot`
--
ALTER TABLE `telegram_bot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_lang`
--
ALTER TABLE `testimonial_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_testimonial_lang` (`owner_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `header_lang`
--
ALTER TABLE `header_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1669;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portfolio_category`
--
ALTER TABLE `portfolio_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolio_lang`
--
ALTER TABLE `portfolio_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services_lang`
--
ALTER TABLE `services_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `source_message`
--
ALTER TABLE `source_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tarmoqlar`
--
ALTER TABLE `tarmoqlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `telegram_bot`
--
ALTER TABLE `telegram_bot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonial_lang`
--
ALTER TABLE `testimonial_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_lang`
--
ALTER TABLE `about_lang`
  ADD CONSTRAINT `fk_about_lang` FOREIGN KEY (`owner_id`) REFERENCES `about` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `header_lang`
--
ALTER TABLE `header_lang`
  ADD CONSTRAINT `fk_header_lang` FOREIGN KEY (`owner_id`) REFERENCES `header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imgs`
--
ALTER TABLE `imgs`
  ADD CONSTRAINT `fk_products_img` FOREIGN KEY (`products_id`) REFERENCES `portfolio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_message_source_message` FOREIGN KEY (`id`) REFERENCES `source_message` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio_lang`
--
ALTER TABLE `portfolio_lang`
  ADD CONSTRAINT `fk_portfolio_lang` FOREIGN KEY (`owner_id`) REFERENCES `portfolio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonial_lang`
--
ALTER TABLE `testimonial_lang`
  ADD CONSTRAINT `fk_testimonial_lang` FOREIGN KEY (`owner_id`) REFERENCES `testimonial` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
