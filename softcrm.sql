-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 01:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_type` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$Rs1GXyxknp20m0fV7dpXJO/vwfP/SB2gQnlLM6sB.HYTfxatINj9K', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `full_name`, `phone`, `email`, `section`, `budget`, `location`, `zip`, `city`, `country`, `is_active`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Alfreda Effertz', '661.250.3630 x6066', 'elmore.gleason@predovic.com', 'transport', '693', 'Venezuela', '42782-6293', 'North Aminaton', 'Indonesia', 1, 1, '2021-02-19 11:03:34', '2021-02-22 00:47:44', NULL),
(2, 'Ryley Batz Jr.', '1-405-817-9082 x381', 'conner.rutherford@okon.com', 'transport', '807', 'Netherlands Antilles', '39298', 'Cormierview', 'Equatorial Guinea', 1, 1, '2021-01-25 16:33:31', '2021-02-22 00:47:44', NULL),
(3, 'Justus Ledner', '932.655.7018 x007', 'cruickshank.ardella@windler.com', 'transport', '493', 'Faroe Islands', '30922', 'Port Lillyside', 'Slovenia', 1, 1, '2021-02-09 07:15:31', '2021-02-22 00:47:44', NULL),
(4, 'Nicholas Koch', '627.610.4518 x579', 'vergie.gleichner@block.net', 'finances', '440', 'Kazakhstan', '62424', 'Hicklestad', 'Finland', 1, 1, '2021-02-17 10:51:37', '2021-02-22 00:47:45', NULL),
(5, 'Prof. Torey Stracke', '691-665-9535 x1097', 'antonina.boyle@doyle.info', 'finances', '881', 'Jersey', '52180-5904', 'Lake Christian', 'Kazakhstan', 1, 1, '2021-02-19 18:54:37', '2021-02-22 00:47:45', NULL),
(6, 'Amalia Runolfsdottir', '1-713-735-4671 x428', 'ulises67@moen.org', 'transport', '156', 'Vietnam', '99178', 'Port Maybelle', 'Guadeloupe', 1, 1, '2021-02-14 09:49:59', '2021-02-22 00:47:45', NULL),
(7, 'Rory Leannon', '503-909-6392', 'larue93@schamberger.biz', 'logistic', '357', 'Nicaragua', '04545-0883', 'Hirthemouth', 'Libyan Arab Jamahiriya', 1, 1, '2021-01-27 23:41:35', '2021-02-22 00:47:45', NULL),
(8, 'Miss Greta Turcotte Jr.', '(982) 847-9012 x327', 'maida03@jakubowski.com', 'logistic', '808', 'Togo', '87243', 'Port Travonhaven', 'Burundi', 1, 1, '2021-02-18 03:24:17', '2021-02-22 00:47:45', NULL),
(9, 'Jerod Heidenreich', '(410) 507-3066', 'gregory00@harber.info', 'finances', '635', 'Kiribati', '92264-0857', 'Eloisefurt', 'Svalbard & Jan Mayen Islands', 1, 1, '2021-01-24 11:47:56', '2021-02-22 00:47:45', NULL),
(10, 'Benjamin Gottlieb', '318.969.9458 x800', 'london.smith@romaguera.net', 'finances', '626', 'Bulgaria', '79883', 'Macejkovicfurt', 'Belarus', 1, 1, '2021-02-14 04:36:15', '2021-02-22 00:47:45', NULL),
(11, 'Dr. Amya Gorczany II', '+1 (370) 250-0538', 'wbruen@oconner.info', 'finances', '931', 'Poland', '42415-7214', 'East Brooke', 'Haiti', 1, 1, '2021-01-23 15:22:10', '2021-02-22 00:47:45', NULL),
(12, 'Macey Schoen', '613.580.4715', 'bradly33@jacobs.org', 'finances', '161', 'Tanzania', '47656-3509', 'East Teaganberg', 'Netherlands Antilles', 1, 1, '2021-02-09 15:38:39', '2021-02-22 00:47:45', NULL),
(13, 'Paige Weber', '(870) 834-9557', 'nkunze@schumm.org', 'finances', '382', 'Kazakhstan', '45933', 'Lavonnetown', 'Haiti', 1, 1, '2021-02-18 20:32:29', '2021-02-22 00:47:46', NULL),
(14, 'Christophe Kub V', '714-877-0285 x848', 'layla44@eichmann.com', 'finances', '565', 'Timor-Leste', '69182-3352', 'New Marisa', 'Uruguay', 1, 1, '2021-01-29 07:07:45', '2021-02-22 00:47:46', NULL),
(15, 'Rene Murphy', '(487) 628-9525 x21061', 'leta14@leffler.com', 'transport', '267', 'Italy', '97736-5644', 'Johnstonmouth', 'Colombia', 1, 1, '2021-02-20 07:12:15', '2021-02-22 00:47:46', NULL),
(16, 'Ruthie Jacobi', '423.679.1626 x87188', 'laurence48@champlin.com', 'logistic', '117', 'Paraguay', '84948-1594', 'Lockmanport', 'Saint Vincent and the Grenadines', 1, 1, '2021-02-17 21:10:56', '2021-02-22 00:47:46', NULL),
(17, 'Prof. Jayce Considine', '292-358-6422', 'letha00@romaguera.com', 'finances', '917', 'Iraq', '74441', 'Barrowshaven', 'Finland', 1, 1, '2021-02-03 17:59:56', '2021-02-22 00:47:46', NULL),
(18, 'Dexter Hahn', '1-765-715-1420', 'lura33@brown.biz', 'logistic', '573', 'Holy See (Vatican City State)', '62461', 'Port Kara', 'Zimbabwe', 1, 1, '2021-02-03 19:12:43', '2021-02-22 00:47:46', NULL),
(19, 'Troy Herzog III', '1-610-607-5508 x8185', 'ablick@langworth.com', 'transport', '308', 'Iraq', '79737-2292', 'Mrazburgh', 'Norway', 1, 1, '2021-02-01 05:17:39', '2021-02-22 00:47:46', NULL),
(20, 'Mrs. Kaylie Kihn', '686-541-5207 x8462', 'bogisich.hildegard@little.biz', 'logistic', '363', 'Burundi', '19940-3125', 'Port Aileen', 'Belgium', 1, 1, '2021-02-11 19:34:16', '2021-02-22 00:47:46', NULL),
(21, 'Coty Orn', '(664) 773-8768', 'lexus.ritchie@schoen.com', 'finances', '977', 'Myanmar', '15268-6008', 'Gutmannhaven', 'Philippines', 1, 1, '2021-02-02 13:47:14', '2021-02-22 00:47:46', NULL),
(22, 'Judge Runolfsdottir IV', '(434) 415-0957 x1114', 'gmarks@tremblay.net', 'finances', '301', 'Saint Helena', '22651', 'Terrychester', 'Turks and Caicos Islands', 1, 1, '2021-01-29 02:16:56', '2021-02-22 00:47:46', NULL),
(23, 'Mrs. Lenore Kassulke', '1-570-554-4714', 'tressie93@cummings.org', 'logistic', '420', 'Western Sahara', '90329', 'Lake Kaylin', 'Cape Verde', 1, 1, '2021-01-29 19:38:14', '2021-02-22 00:47:46', NULL),
(24, 'Mrs. Micaela Parker', '+1.349.351.4252', 'stehr.roberto@bauch.org', 'finances', '163', 'Puerto Rico', '09330-0167', 'Sagechester', 'Dominica', 1, 1, '2021-02-11 07:06:55', '2021-02-22 00:47:46', NULL),
(25, 'Prof. Yvonne Kirlin', '(743) 379-7396', 'leila.sawayn@nolan.biz', 'finances', '527', 'Ukraine', '34947-8329', 'Hirthechester', 'Mayotte', 1, 1, '2021-02-16 09:03:37', '2021-02-22 00:47:46', NULL),
(26, 'Dr. Jarret Macejkovic II', '+1-549-714-9607', 'carmela12@stanton.com', 'logistic', '277', 'Ireland', '62674-9946', 'Wardshire', 'Brazil', 1, 1, '2021-02-07 16:03:29', '2021-02-22 00:47:46', NULL),
(27, 'Burley Ebert', '626-962-7319 x372', 'jennyfer32@corkery.com', 'logistic', '266', 'Saudi Arabia', '10224-1622', 'Port Caroline', 'Mauritania', 1, 1, '2021-02-10 02:58:57', '2021-02-22 00:47:47', NULL),
(28, 'Kieran Rodriguez', '702-464-9166 x34827', 'mraz.adeline@sipes.com', 'transport', '257', 'Isle of Man', '45235-0637', 'New Titusland', 'Mauritius', 1, 1, '2021-02-13 11:32:51', '2021-02-22 00:47:47', NULL),
(29, 'Shanny Harber II', '1-279-950-1139 x3942', 'cnikolaus@bogan.info', 'finances', '703', 'New Caledonia', '44760-6126', 'East Brantshire', 'Madagascar', 1, 1, '2021-02-20 15:22:08', '2021-02-22 00:47:47', NULL),
(30, 'Minerva Harvey', '615-985-9848', 'bashirian.jane@gusikowski.org', 'transport', '350', 'Belgium', '64402', 'Burdetteton', 'Indonesia', 1, 1, '2021-01-30 00:55:25', '2021-02-22 00:47:47', NULL),
(31, 'Pink Trantow', '1-420-425-3007 x63050', 'keeling.candice@thiel.org', 'transport', '626', 'Libyan Arab Jamahiriya', '55085-7788', 'Eastertown', 'Congo', 1, 1, '2021-02-21 18:06:31', '2021-02-22 00:47:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employees_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `client_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `tax_number`, `phone`, `city`, `billing_address`, `country`, `postal_code`, `employees_size`, `fax`, `description`, `is_active`, `client_id`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pfeffer-Christiansen', '789552409', '798-362-0552 x1119', 'Margeside', '77533 Jayda Drives Suite 610', 'Dominican Republic', '21562', '940', '+15824554704', 'Laboriosam est quisquam nemo assumenda eaque. Autem deserunt sed commodi eos nemo voluptatem placeat. Ut a eius quam in.', 1, 23, 1, '2021-02-03 00:47:47', '2021-02-22 00:47:47', NULL),
(2, 'Hagenes, Bahringer and Herzog', '1120514593', '283.982.3392', 'South Simone', '8185 Barbara Pine Suite 746', 'Grenada', '91115-4965', '360', '(264) 462-8661', 'At sit architecto aut iste itaque facere. Et in voluptate minima. Sed voluptatibus quos sit quo sunt. Aut saepe fuga provident quasi quod quam vitae.', 1, 29, 1, '2021-02-13 00:47:48', '2021-02-22 00:47:48', NULL),
(3, 'Krajcik-Friesen', '1289519782', '+1-353-258-9429', 'Metzburgh', '6857 Marguerite Estates Apt. 710', 'Afghanistan', '63921', '669', '968.777.9266 x65171', 'Repudiandae et qui aliquam similique pariatur esse expedita ratione. Reprehenderit quae est fugiat. Distinctio repellat odit architecto error quibusdam nostrum.', 1, 2, 1, '2021-02-14 00:47:48', '2021-02-22 00:47:48', NULL),
(4, 'Bogan-Kshlerin', '958573523', '637-312-8065 x34599', 'West Oma', '5577 Hubert Falls', 'Iceland', '01653-2255', '905', '702.785.4144 x83793', 'Quo cum impedit sapiente ut illo velit est accusantium. Aut autem est aut aliquam ut sapiente et qui. Et sed odit facilis sint sed. Eos quia perspiciatis quibusdam.', 1, 4, 1, '2021-01-21 00:47:48', '2021-02-22 00:47:48', NULL),
(5, 'Abernathy LLC', '579794099', '1-250-590-9353 x4417', 'New Felipe', '6875 Turner Fields', 'Mozambique', '03461-6531', '628', '+1 (576) 934-9712', 'Dignissimos natus et possimus. Est aut possimus voluptatum. Minus quo laborum exercitationem. Qui quia doloribus magnam quidem.', 1, 21, 1, '2021-01-27 00:47:48', '2021-02-22 00:47:48', NULL),
(6, 'Donnelly, Hills and Kohler', '741749484', '379-366-5852', 'Port Rafaelville', '48772 Kohler Mountains', 'Belize', '54299-3302', '794', '1-389-562-0311 x80513', 'Soluta aut illo et aut non quod. Quae et dolores assumenda distinctio modi sint. Maxime eum aut beatae molestiae officiis illo vero.', 1, 29, 1, '2021-02-12 00:47:49', '2021-02-22 00:47:49', NULL),
(7, 'Howell-Muller', '897032237', '221.608.2801', 'Minaberg', '892 Hagenes Rest', 'Greece', '25138-6811', '734', '(462) 269-5871', 'Voluptate qui ut voluptas rerum autem quod qui enim. Sit voluptatem occaecati soluta sequi illum mollitia.', 1, 25, 1, '2021-01-27 00:47:49', '2021-02-22 00:47:49', NULL),
(8, 'Lueilwitz-Schmitt', '762773526', '880-850-6911 x61823', 'North Isadore', '5672 Kling Island', 'Falkland Islands (Malvinas)', '19249-6782', '230', '618.953.9683', 'Voluptatem et quisquam eos non ea sit quisquam harum. Ut doloremque mollitia id animi. Doloremque fuga vitae voluptatibus neque qui harum enim. Sit vel dolorem deserunt exercitationem sit ullam.', 1, 6, 1, '2021-02-19 00:47:49', '2021-02-22 00:47:49', NULL),
(9, 'Kutch, Ankunding and Ledner', '1561290490', '(586) 898-7587', 'Karolannfurt', '8780 Hegmann Locks Suite 160', 'Mayotte', '31115-6417', '841', '(814) 947-4708', 'Velit est nemo eos animi. Deleniti consequatur quia atque expedita qui. Et dolorum culpa perferendis veritatis sunt minus aut est. Cum sequi deleniti illum quaerat quo.', 1, 5, 1, '2021-02-17 00:47:49', '2021-02-22 00:47:49', NULL),
(10, 'Terry, Hermann and Schulist', '630310847', '+1-941-457-6732', 'New Uniquefort', '835 Darryl Ports', 'Antarctica (the territory South of 60 deg S)', '34294', '589', '993.297.3657', 'Eos omnis beatae debitis. Porro odio rem et qui. Atque harum rerum voluptas numquam corrupti et.', 1, 13, 1, '2021-02-02 00:47:49', '2021-02-22 00:47:49', NULL),
(11, 'Mante-Barton', '834793699', '+1.679.527.0454', 'New Rogers', '405 Runolfsson Route', 'British Indian Ocean Territory (Chagos Archipelago)', '59191-3345', '130', '367-753-1945', 'Quod et ullam eos necessitatibus dolorem consequuntur. Aliquam enim cupiditate consequatur dolorem animi sed est et.', 1, 10, 1, '2021-01-30 00:47:49', '2021-02-22 00:47:49', NULL),
(12, 'Jacobi Group', '1366236868', '(846) 961-7831', 'South Monserrate', '70176 Cruz Rue', 'Greece', '15992', '861', '534-516-5752', 'Aut nihil vel soluta quo animi. Impedit recusandae porro placeat qui aspernatur molestiae doloremque. Recusandae possimus quis voluptatem dolore.', 1, 21, 1, '2021-02-17 00:47:49', '2021-02-22 00:47:49', NULL),
(13, 'Green-Breitenberg', '1570965946', '+1-480-475-2770', 'West Juanatown', '1205 Sylvester Drive', 'Guinea-Bissau', '26917', '430', '457-800-2560 x5311', 'Sed aut aperiam eos esse odit quas harum. Et quidem harum est eos. Libero repudiandae optio laudantium est porro omnis.', 1, 5, 1, '2021-02-09 00:47:49', '2021-02-22 00:47:49', NULL),
(14, 'Doyle, Kovacek and Reinger', '1525095216', '(729) 902-0224 x5536', 'North Alva', '3954 Beer Prairie Suite 528', 'Rwanda', '62770', '868', '+1 (496) 472-5807', 'Aliquam et quidem qui et iure similique. Error dicta cum aut nihil quo adipisci. Corrupti reiciendis fugit qui voluptas sed. Facilis magni expedita dignissimos a accusamus dignissimos.', 1, 13, 1, '2021-02-07 00:47:49', '2021-02-22 00:47:49', NULL),
(15, 'McDermott-Harber', '76414962', '+13957555636', 'New Sebastianfurt', '284 Schamberger Views', 'Guyana', '03593', '200', '+1 (889) 632-3676', 'Natus sunt vero molestiae occaecati consequatur qui autem. Praesentium qui omnis nostrum dolorem numquam quod. Dolore aut odit laborum temporibus.', 1, 11, 1, '2021-01-20 00:47:49', '2021-02-22 00:47:49', NULL),
(16, 'Mitchell, Fritsch and Rau', '1022952450', '538-352-4592', 'Armstrongtown', '319 Schroeder Brooks', 'Comoros', '67865', '172', '1-837-325-9154 x63936', 'Ut aut rerum vel quis sit excepturi impedit. Et ea quae commodi beatae est alias dolor. Quis aut molestias fugiat eaque enim nisi.', 1, 4, 1, '2021-01-25 00:47:50', '2021-02-22 00:47:50', NULL),
(17, 'Mayert-Streich', '1353430834', '+1-821-942-8476', 'Reubenview', '874 Bette Junction Apt. 286', 'Cocos (Keeling) Islands', '65687-9365', '945', '803.717.8293 x92245', 'Et rem sit optio vero. A cupiditate aut molestiae suscipit sapiente rerum qui. Error sint quidem quaerat sed sunt.', 1, 16, 1, '2021-02-12 00:47:50', '2021-02-22 00:47:50', NULL),
(18, 'Blick Inc', '1339016451', '320-668-5930 x050', 'New Rahsaanburgh', '2997 Zita Views Suite 119', 'Guadeloupe', '48012', '550', '891.276.7938', 'A similique et rerum repellat mollitia dolorum. Aperiam impedit id ducimus vel voluptates. Nemo dicta laborum aut et debitis quibusdam sint. Porro voluptas ut quis est quia.', 1, 18, 1, '2021-02-03 00:47:50', '2021-02-22 00:47:50', NULL),
(19, 'Satterfield Group', '1467551501', '(328) 331-6108 x758', 'Evalynstad', '5002 Marjory Roads Suite 792', 'Nauru', '13046', '478', '781-676-5870 x68085', 'Itaque et eos molestias odit. Dolor mollitia eaque distinctio blanditiis quia sunt. Qui ad incidunt itaque repellat sed. Et quis quia et aut veniam et dolor. Dolor itaque aut et harum.', 1, 24, 1, '2021-01-20 00:47:50', '2021-02-22 00:47:50', NULL),
(20, 'Williamson Ltd', '221937042', '426-503-9808 x2764', 'Dewittmouth', '8877 Art Walk Suite 607', 'Armenia', '27751-8764', '899', '1-305-270-1258 x9838', 'Praesentium occaecati totam quas quam ea quos. Optio est ducimus et ullam enim. Rem sequi et vero ab enim.', 1, 9, 1, '2021-02-16 00:47:50', '2021-02-22 00:47:50', NULL),
(21, 'Streich-Barrows', '727598448', '884.388.8628', 'Port Bell', '797 Jacquelyn Track', 'Italy', '21721', '592', '653.725.3837', 'Quis ut eos quasi velit itaque aut eos. Facilis commodi ut sed sunt veniam beatae vel et. Earum quis consequatur nobis praesentium officia dolore dolorem.', 1, 16, 1, '2021-02-14 00:47:50', '2021-02-22 00:47:50', NULL),
(22, 'Bosco, Mraz and Jacobs', '250144815', '287-868-5477 x363', 'Port Wilmachester', '907 Rhianna Common', 'Antigua and Barbuda', '44514-6121', '764', '1-974-588-7889', 'Omnis repudiandae inventore sint veniam est. Doloremque alias corporis libero accusantium nulla commodi nulla. Neque sunt cupiditate ad rerum et culpa incidunt.', 1, 22, 1, '2021-01-30 00:47:50', '2021-02-22 00:47:50', NULL),
(23, 'Trantow Ltd', '187341376', '776.851.6995 x519', 'Beckerton', '7450 Hershel Haven', 'Bulgaria', '94014', '732', '512.416.4129 x949', 'Deserunt dolorum quis ducimus esse est magnam ad. Qui vero nihil eaque beatae fugit aut officia. Et minus aut sunt qui nulla sapiente et quis. Sunt rerum dolores et rerum aut doloribus.', 1, 30, 1, '2021-02-18 00:47:50', '2021-02-22 00:47:50', NULL),
(24, 'Rutherford-Harris', '1085907803', '563-358-6866 x09296', 'West Koleton', '855 Tiara Drive', 'Iceland', '70662-2146', '254', '(567) 253-2847', 'Dolorem sed dolorum sed. Rem ut laudantium est quam autem. Libero ea eveniet consequuntur reiciendis voluptatem et numquam. Illo ipsa sed accusamus temporibus et accusamus.', 1, 31, 1, '2021-01-25 00:47:50', '2021-02-22 00:47:50', NULL),
(25, 'Runolfsdottir LLC', '1108375199', '+1.604.316.0594', 'West Earnestberg', '72267 Edgardo Hill Apt. 115', 'Puerto Rico', '55878-8146', '814', '612-373-6740 x9742', 'Accusamus enim quam ipsum optio similique ut fuga. Vel doloribus temporibus sunt aspernatur. Minus vero et nostrum quasi consequatur sunt sed.', 1, 1, 1, '2021-02-10 00:47:50', '2021-02-22 00:47:50', NULL),
(26, 'Kemmer, Beier and Wuckert', '478268482', '231-354-0841 x983', 'Margaretborough', '478 Roberts Trail', 'Finland', '09815-3696', '733', '338.320.4207 x94891', 'Qui officia voluptates et. Ipsa necessitatibus sunt aut sunt iusto est qui. Ea nisi sit et qui.', 1, 1, 1, '2021-02-08 00:47:50', '2021-02-22 00:47:50', NULL),
(27, 'Sporer, Koss and Frami', '1242456384', '737.301.7466 x51905', 'New Dawsonmouth', '261 Makenzie Parks Suite 218', 'Kazakhstan', '29227', '205', '1-234-235-3543', 'Voluptas nobis voluptates eos ex facilis ut. Qui vel aut et nihil nulla et et. Minima minus magnam accusantium accusamus qui ab.', 1, 20, 1, '2021-01-23 00:47:50', '2021-02-22 00:47:50', NULL),
(28, 'Homenick PLC', '119979588', '234.916.6454 x322', 'Cortneyton', '487 Colt Light Suite 791', 'Malta', '39924-5514', '332', '409.553.0043 x7724', 'Enim molestias ad eos voluptas voluptatibus vel eligendi. Voluptas ea provident et minus. Incidunt molestiae minus voluptate fuga impedit at.', 1, 11, 1, '2021-01-24 00:47:50', '2021-02-22 00:47:50', NULL),
(29, 'McCullough, Kerluke and Sporer', '881419458', '+1 (519) 370-3822', 'Reichertmouth', '946 Cassin Fords Apt. 436', 'Bangladesh', '65293-9910', '179', '1-631-508-3208 x86194', 'Eos eum deleniti beatae doloremque voluptatem. Veniam qui sequi ullam soluta commodi minus. Quia quisquam quo animi voluptas. Neque numquam error et expedita sunt repudiandae perspiciatis.', 1, 4, 1, '2021-02-14 00:47:50', '2021-02-22 00:47:50', NULL),
(30, 'Hackett, Bernier and Halvorson', '1444785074', '929.693.6329', 'East Cydney', '1050 Herzog Lodge', 'Argentina', '18030', '842', '1-302-243-8672', 'Fuga ab quae officiis et incidunt consequatur. Modi ea earum est necessitatibus expedita totam et.', 1, 25, 1, '2021-02-14 00:47:50', '2021-02-22 00:47:50', NULL),
(31, 'Fahey Ltd', '1544319115', '423.515.8517', 'Lake Manuel', '7367 Abdullah Mall Suite 267', 'Canada', '55277-7467', '342', '(874) 746-1897', 'Quidem eum omnis ut autem voluptatem. Ut non sit deleniti quibusdam quod corporis ut sed. Beatae facere aut aut reiciendis molestiae. Pariatur omnis et quidem nulla sint rerum.', 1, 22, 1, '2021-01-20 00:47:50', '2021-02-22 00:47:50', NULL),
(32, 'Cruickshank PLC', '1167996190', '640.409.7686', 'East Sisterhaven', '41368 Emmet Coves Apt. 809', 'Bouvet Island (Bouvetoya)', '82142', '261', '553.679.5846 x133', 'Non laborum fugiat velit aut repudiandae earum. Praesentium quis itaque ad ullam veritatis perferendis. Deserunt asperiores sunt qui.', 1, 21, 1, '2021-01-24 00:47:50', '2021-02-22 00:47:50', NULL),
(33, 'Hyatt Group', '324435669', '1-962-413-7778 x9696', 'West Miaview', '8752 Taya Cliff', 'Switzerland', '95365', '484', '653.864.6357', 'Assumenda similique aut nulla aut eius officia. Officiis repellendus est in occaecati alias. Molestiae numquam inventore eum minima. Id ut vitae ut a ducimus voluptatem exercitationem.', 1, 27, 1, '2021-02-05 00:47:50', '2021-02-22 00:47:50', NULL),
(34, 'Nitzsche Group', '1564189796', '269-731-7627 x599', 'South Albertaville', '9501 Cynthia Alley Suite 671', 'Egypt', '57112-8381', '932', '(680) 219-9576 x24661', 'Deserunt sequi voluptas autem delectus. Labore et et enim facilis praesentium maiores. Sed aut id ut non reiciendis asperiores sit. Soluta voluptatem aut sed id.', 1, 27, 1, '2021-02-12 00:47:51', '2021-02-22 00:47:51', NULL),
(35, 'Rippin, Haag and Lesch', '323270519', '1-958-338-3577 x67863', 'Brekkeberg', '104 Sporer Plains Apt. 967', 'Cameroon', '73469-9670', '228', '(619) 713-8844 x24453', 'Libero unde et magni est dolorem officiis. A sed numquam doloremque in ut rerum. Sequi aut ut dolorem assumenda dicta ullam. Atque harum iure perspiciatis autem quia incidunt dolorem.', 1, 31, 1, '2021-02-20 00:47:51', '2021-02-22 00:47:51', NULL),
(36, 'Thompson, Legros and Boyer', '1580676938', '321-378-2980 x572', 'Dillanfurt', '67184 Rashad Summit', 'Christmas Island', '91156', '646', '874.565.3169 x0143', 'Animi et quisquam doloribus corrupti repudiandae et consequatur. Consequuntur ut aut ducimus officiis. Ut quibusdam animi possimus aut quas. Nostrum repellendus est enim saepe et dolores dolorem rem.', 1, 10, 1, '2021-02-19 00:47:51', '2021-02-22 00:47:51', NULL),
(37, 'Leffler PLC', '1297075677', '849-620-9312 x1859', 'Loumouth', '56863 Nicolas Rapids Suite 378', 'Namibia', '48356', '884', '364.879.0295 x881', 'Architecto dicta porro quia eum rem vel aliquam. Et illum voluptatem optio iste voluptate. Ullam dolore neque repellat aut qui aliquam quam.', 1, 28, 1, '2021-02-18 00:47:51', '2021-02-22 00:47:51', NULL),
(38, 'Armstrong, Schoen and Schmeler', '1151111347', '1-753-316-1638 x685', 'East Maximilliabury', '4770 Nienow Mission Suite 890', 'Oman', '95436-2415', '113', '(905) 744-9018 x485', 'Voluptas similique omnis veniam alias. Vel ipsa dolores est. Architecto provident iste illum non ea. Occaecati suscipit aspernatur laudantium omnis molestiae itaque enim.', 1, 13, 1, '2021-01-29 00:47:51', '2021-02-22 00:47:51', NULL),
(39, 'Witting, Reichel and Hane', '534627690', '(669) 864-0905', 'South Guy', '37792 Elisa Flat Suite 849', 'China', '77111', '897', '+1.328.328.4425', 'A soluta aut voluptas. Deleniti saepe non ullam iste dignissimos nihil nostrum. Qui numquam enim nemo magni quia. Quos veritatis voluptas voluptatibus qui amet provident fuga.', 1, 24, 1, '2021-02-21 00:47:51', '2021-02-22 00:47:51', NULL),
(40, 'Batz, Windler and Lynch', '642229766', '1-298-605-5022 x587', 'South Christopberg', '8642 Schumm Landing', 'Brazil', '51402', '878', '+1 (445) 305-6954', 'Quis veniam eveniet ducimus modi atque adipisci. Qui reiciendis deserunt rerum quos et odio. Fugiat debitis mollitia expedita quia.', 1, 23, 1, '2021-02-08 00:47:51', '2021-02-22 00:47:51', NULL),
(41, 'Wiza and Sons', '982145172', '661-765-0525 x38891', 'South Veronica', '57465 Roberts Centers', 'Spain', '13371-7757', '778', '+16197098581', 'Voluptatibus doloribus delectus illum illum. Velit inventore in possimus aut.', 1, 13, 1, '2021-01-20 00:47:51', '2021-02-22 00:47:51', NULL),
(42, 'Kling LLC', '1373387134', '541.544.9262', 'Port Adanberg', '820 Prosacco Alley Apt. 312', 'Nigeria', '73521', '621', '1-541-307-1719', 'Occaecati consequatur magnam quod atque sunt quis id iste. Aut similique sint architecto quisquam temporibus. Suscipit repellat aut quo nulla. Nesciunt accusamus repellendus aspernatur sint.', 1, 2, 1, '2021-02-04 00:47:51', '2021-02-22 00:47:51', NULL),
(43, 'Brown-Ratke', '269128191', '1-686-735-0155', 'New Santaborough', '4925 Durgan Path', 'Korea', '39015', '426', '(256) 694-1455 x37673', 'Consequatur dicta sunt qui quis nihil. Debitis sequi cupiditate est ut commodi debitis nihil quia. Et asperiores sint dolor qui facilis. Nam officia incidunt culpa.', 1, 22, 1, '2021-01-30 00:47:51', '2021-02-22 00:47:51', NULL),
(44, 'Gleichner-Rau', '814215807', '(760) 951-2189 x9016', 'Paucekmouth', '47720 Griffin Stravenue', 'Jordan', '05724-6090', '825', '587.470.7079', 'Sed quo dolorem voluptatem cum. Rerum eum rerum quasi aliquid. Consequatur dolorem consequatur voluptatem explicabo sunt.', 1, 23, 1, '2021-02-09 00:47:51', '2021-02-22 00:47:51', NULL),
(45, 'Stiedemann-Kulas', '1286734085', '(919) 919-9039', 'Juvenalbury', '19089 Lowe Throughway Suite 823', 'Finland', '86320', '891', '(257) 655-4672 x73988', 'Et consequatur fugit illo. Architecto nostrum ipsum qui labore qui blanditiis. Mollitia odio sequi unde perspiciatis ipsa sit.', 1, 16, 1, '2021-02-19 00:47:51', '2021-02-22 00:47:51', NULL),
(46, 'Little-Osinski', '921834971', '278.740.3010 x10436', 'East Meta', '310 William Well', 'Poland', '50503', '516', '(591) 559-6653', 'Dicta explicabo dignissimos sint suscipit tempora. Nisi voluptas quae eius dicta est et placeat.', 1, 11, 1, '2021-01-29 00:47:51', '2021-02-22 00:47:51', NULL),
(47, 'Roob-Botsford', '1501287258', '282-794-6174 x03009', 'Lake Lincolnton', '656 Larkin Inlet', 'Niue', '82121', '149', '+1-602-493-2697', 'Voluptates nesciunt ducimus dolores vel quia quibusdam. Perferendis et quia id dignissimos accusantium laudantium fuga.', 1, 26, 1, '2021-01-30 00:47:51', '2021-02-22 00:47:51', NULL),
(48, 'Dooley, Zemlak and Klocko', '717561972', '(674) 783-3428', 'Kshlerinmouth', '9567 Constantin Place Suite 127', 'Rwanda', '10854', '470', '(874) 634-9359', 'Veniam quaerat sint non et. At harum nam sequi earum. Quos neque temporibus qui deserunt totam voluptatibus similique. Iusto quaerat aut veniam asperiores unde voluptas cupiditate dolorem.', 1, 20, 1, '2021-01-28 00:47:51', '2021-02-22 00:47:51', NULL),
(49, 'Shields, Jakubowski and Wolf', '845410433', '(821) 694-8963', 'West Jaclynview', '73366 Goodwin Roads Suite 124', 'Iraq', '79847', '503', '247-363-1113 x208', 'Quia quibusdam enim quas aspernatur corporis modi. Labore ea explicabo aut consequatur incidunt voluptatibus. Et ullam eum veritatis aut ab. Pariatur laboriosam officiis asperiores id et.', 1, 1, 1, '2021-01-21 00:47:51', '2021-02-22 00:47:51', NULL),
(50, 'Kessler-Littel', '825012772', '+1-474-278-7480', 'North Brisaport', '45741 Jensen Plains Suite 929', 'Thailand', '66877-5458', '948', '991.272.7116', 'Veniam labore ullam beatae nisi quia et. Ut at officia modi at laborum. Aperiam aliquam veritatis aliquam assumenda saepe assumenda. Sapiente alias numquam delectus.', 1, 18, 1, '2021-02-06 00:47:51', '2021-02-22 00:47:51', NULL),
(51, 'Zieme, Dach and Kerluke', '397415228', '838.553.9801', 'Justonmouth', '45009 Jillian Keys Suite 216', 'Samoa', '25912', '960', '539-915-0915 x86283', 'Et ut soluta hic recusandae dolorum pariatur sed. Nobis recusandae saepe minus eveniet voluptatem magni.', 1, 13, 1, '2021-02-19 00:47:51', '2021-02-22 00:47:51', NULL),
(52, 'Hoeger-Gorczany', '396736988', '683.619.6409 x8638', 'North Adrientown', '2724 Cummerata Underpass Suite 685', 'Dominica', '21057-6844', '474', '337-815-1037 x373', 'Deserunt ipsa enim fugit a. Voluptates expedita qui vel. Ullam dolore in dolorum accusamus saepe.', 1, 27, 1, '2021-01-21 00:47:51', '2021-02-22 00:47:51', NULL),
(53, 'Gleichner-Bartoletti', '1048619578', '(956) 517-4431 x786', 'Kuphalbury', '38727 Mraz Center', 'Cyprus', '65931-4208', '792', '1-837-518-5189 x3004', 'Quaerat soluta quibusdam vel animi nemo. A incidunt eveniet odit ea tempore cupiditate. Non minus in distinctio quam necessitatibus sed. Aut aut iste sit facere.', 1, 23, 1, '2021-01-28 00:47:51', '2021-02-22 00:47:51', NULL),
(54, 'Smitham, Bruen and Funk', '1389876015', '+16658620033', 'Fredhaven', '880 Kling Mill Suite 530', 'Nicaragua', '71858', '595', '273-661-8882', 'Dicta eos ipsa qui blanditiis. Inventore laborum fugit mollitia id mollitia atque quo. Itaque eos repellendus molestiae dolore doloribus.', 1, 3, 1, '2021-02-15 00:47:52', '2021-02-22 00:47:52', NULL),
(55, 'Glover-Ziemann', '896744649', '1-441-436-6252 x078', 'West Ervin', '371 Dach Flats', 'Dominica', '66653', '200', '472.604.8192 x6915', 'Aliquam fugiat amet expedita ipsam. Doloremque placeat vero corrupti ut eum. Quos ipsa deserunt non corrupti autem harum in. Quos recusandae unde doloribus molestiae quos.', 1, 16, 1, '2021-02-05 00:47:52', '2021-02-22 00:47:52', NULL),
(56, 'Dare Group', '703942133', '628-565-8148', 'New Dessie', '961 Hessel Mill Apt. 754', 'Pitcairn Islands', '97253-0788', '841', '+1 (949) 284-0190', 'Qui possimus non eum eaque. Aut suscipit praesentium omnis nihil eum et. Vitae quaerat repellendus ullam quisquam deleniti dolor quia eum. Quo et nesciunt quas quae quos.', 1, 27, 1, '2021-02-10 00:47:53', '2021-02-22 00:47:53', NULL),
(57, 'Koelpin, Shanahan and Brown', '1268474675', '(967) 395-9167 x1618', 'Runteburgh', '2197 Kovacek Shore', 'Micronesia', '21421-7167', '750', '(209) 592-5958', 'Reiciendis eligendi ipsa tempora enim sint fuga. Perferendis distinctio blanditiis illum at asperiores sint veritatis. Sint non qui iste. Aut odit similique fuga sed impedit repudiandae dolores.', 1, 19, 1, '2021-02-11 00:47:53', '2021-02-22 00:47:53', NULL),
(58, 'Stokes Ltd', '1167338327', '+1-234-396-1268', 'New Gilberto', '991 Dietrich Fall', 'Christmas Island', '25648-3198', '723', '872-682-1449 x933', 'Quos sequi aut eius. Aut nulla autem qui soluta expedita modi aut. Saepe quis rem placeat ut. Cupiditate natus quod alias ducimus consequuntur explicabo at aperiam.', 1, 12, 1, '2021-01-25 00:47:53', '2021-02-22 00:47:53', NULL),
(59, 'Nicolas-Hermann', '1457392749', '(967) 706-4254 x95327', 'North Christian', '1832 Charlie Alley', 'United States Virgin Islands', '76897', '718', '1-227-567-2494 x40596', 'Veritatis nobis corporis vitae illum commodi. Blanditiis aut architecto quasi commodi. Quia quos reprehenderit voluptatem sint provident.', 1, 11, 1, '2021-02-08 00:47:53', '2021-02-22 00:47:53', NULL),
(60, 'Bahringer-Marquardt', '1145430650', '1-254-976-0199', 'Daxside', '9208 Lavina Unions Apt. 748', 'Bangladesh', '62661', '520', '(250) 335-3872 x8737', 'Dolor deleniti beatae amet molestias et corporis. Quo maiores sed ratione sit quo nihil doloribus rem.', 1, 13, 1, '2021-02-18 00:47:54', '2021-02-22 00:47:54', NULL),
(61, 'Kautzer-Connelly', '357415075', '(623) 820-5778 x127', 'Jaylonshire', '49403 Wiegand Wells Suite 969', 'Dominican Republic', '25828', '267', '+15545724247', 'Quia et ut sint molestias cumque doloremque et. Ipsum non perspiciatis sit non a dolores nihil. Ipsam labore sint doloremque omnis voluptate optio.', 1, 27, 1, '2021-02-05 00:47:54', '2021-02-22 00:47:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countryzone`
--

CREATE TABLE `countryzone` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countryzone`
--

INSERT INTO `countryzone` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'East', 1, '2021-02-22 11:23:25', '2021-02-22 11:23:14', NULL),
(2, 'West', 1, '2021-02-22 11:40:40', '2021-02-22 11:40:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companies_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `name`, `start_time`, `end_time`, `companies_id`, `is_active`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hauck, Gorczany and Corkery', '1996-06-07', '2019-02-28', 32, 1, 1, '2021-01-28 09:00:06', '2021-02-22 00:47:58', NULL),
(2, 'Lockman-Hoppe', '1983-12-26', '1973-01-28', 44, 1, 1, '2021-02-03 06:36:12', '2021-02-22 00:47:58', NULL),
(3, 'Ernser Ltd', '1982-03-25', '1985-11-12', 53, 1, 1, '2021-01-26 08:00:17', '2021-02-22 00:47:58', NULL),
(4, 'O\'Reilly and Sons', '1975-12-10', '2011-11-10', 44, 1, 1, '2021-02-16 14:26:30', '2021-02-22 00:47:59', NULL),
(5, 'Hintz, Mueller and Paucek', '1996-07-18', '2018-01-20', 40, 1, 1, '2021-02-07 14:55:20', '2021-02-22 00:47:59', NULL),
(6, 'Dicki-Schmitt', '1973-06-30', '2006-08-10', 53, 1, 1, '2021-02-15 13:26:20', '2021-02-22 00:47:59', NULL),
(7, 'Greenfelder-Steuber', '2007-06-11', '2006-03-30', 40, 1, 1, '2021-01-30 21:48:42', '2021-02-22 00:47:59', NULL),
(8, 'Larkin Ltd', '2000-07-30', '2012-03-21', 57, 1, 1, '2021-02-01 07:59:29', '2021-02-22 00:47:59', NULL),
(9, 'Welch Inc', '1994-03-02', '1988-08-10', 10, 1, 1, '2021-01-25 04:02:47', '2021-02-22 00:47:59', NULL),
(10, 'Conroy-Marks', '1993-03-26', '1984-07-30', 5, 1, 1, '2021-02-04 22:43:41', '2021-02-22 00:47:59', NULL),
(11, 'Ortiz, Stoltenberg and Carroll', '2011-03-26', '2008-04-11', 30, 1, 1, '2021-02-11 17:10:24', '2021-02-22 00:47:59', NULL),
(12, 'Hyatt PLC', '1991-01-27', '2019-05-22', 21, 1, 1, '2021-01-26 17:33:05', '2021-02-22 00:47:59', NULL),
(13, 'Lesch-Simonis', '1978-06-19', '2002-03-29', 10, 1, 1, '2021-02-12 17:35:07', '2021-02-22 00:47:59', NULL),
(14, 'Sauer LLC', '1992-04-06', '1992-03-31', 6, 1, 1, '2021-02-06 05:07:43', '2021-02-22 00:47:59', NULL),
(15, 'Kirlin LLC', '2017-04-10', '2006-03-18', 43, 1, 1, '2021-01-28 22:51:09', '2021-02-22 00:47:59', NULL),
(16, 'McClure PLC', '2017-12-07', '1992-08-02', 17, 1, 1, '2021-02-03 19:39:04', '2021-02-22 00:47:59', NULL),
(17, 'Fadel-Schaefer', '1980-01-11', '1974-01-03', 23, 1, 1, '2021-02-09 15:46:51', '2021-02-22 00:48:00', NULL),
(18, 'Jacobi, Thompson and Barrows', '1978-08-18', '2007-09-30', 12, 1, 1, '2021-01-25 23:56:30', '2021-02-22 00:48:00', NULL),
(19, 'Gutmann-Konopelski', '1987-10-13', '1987-10-14', 46, 1, 1, '2021-02-11 07:15:43', '2021-02-22 00:48:00', NULL),
(20, 'Weimann Inc', '1983-01-16', '1982-01-02', 37, 1, 1, '2021-01-30 01:58:16', '2021-02-22 00:48:00', NULL),
(21, 'Weimann-Pacocha', '2002-03-24', '2002-09-27', 6, 1, 1, '2021-02-16 19:49:23', '2021-02-22 00:48:00', NULL),
(22, 'Kutch, Jacobi and Moen', '2000-04-05', '2006-08-21', 15, 1, 1, '2021-02-10 02:35:25', '2021-02-22 00:48:00', NULL),
(23, 'Nicolas-O\'Hara', '2016-06-16', '1977-11-06', 5, 1, 1, '2021-02-05 14:54:03', '2021-02-22 00:48:00', NULL),
(24, 'Jaskolski, Johns and Abernathy', '1999-09-22', '1991-09-26', 15, 1, 1, '2021-02-05 07:20:31', '2021-02-22 00:48:00', NULL),
(25, 'Beer, Sanford and Kulas', '1983-04-28', '1993-11-18', 40, 1, 1, '2021-02-19 08:31:33', '2021-02-22 00:48:00', NULL),
(26, 'Effertz-Streich', '1978-05-19', '1984-02-09', 35, 1, 1, '2021-02-10 05:21:35', '2021-02-22 00:48:00', NULL),
(27, 'Crooks-Christiansen', '2010-11-18', '1998-05-22', 4, 1, 1, '2021-02-10 11:57:03', '2021-02-22 00:48:00', NULL),
(28, 'Hettinger Group', '1993-09-17', '2004-10-17', 13, 1, 1, '2021-01-25 23:21:13', '2021-02-22 00:48:00', NULL),
(29, 'Powlowski, Renner and Blick', '2008-08-14', '2008-09-10', 14, 1, 1, '2021-02-06 04:21:15', '2021-02-22 00:48:00', NULL),
(30, 'Barton Ltd', '1983-05-23', '2020-03-15', 14, 1, 1, '2021-02-02 02:52:30', '2021-02-22 00:48:00', NULL),
(31, 'Altenwerth, Rohan and Mraz', '1992-02-01', '2001-07-11', 28, 1, 1, '2021-02-10 10:13:54', '2021-02-22 00:48:01', NULL),
(32, 'Sanford and Sons', '1983-04-24', '1987-12-02', 55, 1, 1, '2021-01-26 05:38:12', '2021-02-22 00:48:01', NULL),
(33, 'Skiles LLC', '1977-11-05', '1993-07-20', 48, 1, 1, '2021-02-17 19:09:44', '2021-02-22 00:48:01', NULL),
(34, 'Oberbrunner-Klein', '2012-10-10', '1988-06-05', 31, 1, 1, '2021-02-18 06:15:21', '2021-02-22 00:48:01', NULL),
(35, 'Donnelly, Mills and Shanahan', '2011-09-24', '1987-12-26', 48, 1, 1, '2021-01-29 20:55:37', '2021-02-22 00:48:01', NULL),
(36, 'Langworth, Hudson and Prohaska', '1972-09-10', '1990-07-14', 48, 1, 1, '2021-02-08 09:02:45', '2021-02-22 00:48:01', NULL),
(37, 'Vandervort, Baumbach and Miller', '2012-03-31', '2014-06-11', 48, 1, 1, '2021-02-09 10:17:27', '2021-02-22 00:48:01', NULL),
(38, 'Rowe-Skiles', '2007-05-27', '1995-11-12', 20, 1, 1, '2021-02-15 10:03:49', '2021-02-22 00:48:01', NULL),
(39, 'Huels, Schuppe and Langworth', '2014-06-15', '1984-06-08', 25, 1, 1, '2021-02-01 20:52:46', '2021-02-22 00:48:01', NULL),
(40, 'Boyle Inc', '2005-07-10', '1995-02-13', 50, 1, 1, '2021-02-12 19:44:28', '2021-02-22 00:48:01', NULL),
(41, 'Greenfelder-Bailey', '2019-07-28', '2016-02-15', 27, 1, 1, '2021-02-11 17:16:11', '2021-02-22 00:48:01', NULL),
(42, 'Rempel-Barrows', '1972-09-09', '1988-06-01', 53, 1, 1, '2021-02-20 14:16:03', '2021-02-22 00:48:01', NULL),
(43, 'Stehr-Greenholt', '2020-03-12', '1981-05-15', 15, 1, 1, '2021-02-15 12:25:57', '2021-02-22 00:48:01', NULL),
(44, 'O\'Hara, Mayer and Heller', '1999-06-26', '2008-05-28', 20, 1, 1, '2021-02-05 20:00:36', '2021-02-22 00:48:01', NULL),
(45, 'Wehner, Luettgen and Schuppe', '1991-09-08', '1982-05-28', 23, 1, 1, '2021-02-02 10:49:51', '2021-02-22 00:48:01', NULL),
(46, 'Marks-Davis', '2011-11-03', '2005-01-21', 1, 1, 1, '2021-01-30 11:09:38', '2021-02-22 00:48:02', NULL),
(47, 'Senger, Balistreri and Collier', '1981-07-24', '1977-11-14', 24, 1, 1, '2021-02-18 09:17:24', '2021-02-22 00:48:02', NULL),
(48, 'Funk Ltd', '2008-03-11', '2007-01-05', 37, 1, 1, '2021-02-01 00:00:58', '2021-02-22 00:48:02', NULL),
(49, 'Watsica, Bruen and Dicki', '2006-01-06', '1978-01-01', 35, 1, 1, '2021-02-18 12:18:46', '2021-02-22 00:48:02', NULL),
(50, 'Goyette PLC', '1989-07-29', '1980-10-17', 58, 1, 1, '2021-02-02 00:02:03', '2021-02-22 00:48:02', NULL),
(51, 'Tillman, Waelchi and Abernathy', '2010-04-21', '2019-07-21', 19, 1, 1, '2021-01-30 04:25:31', '2021-02-22 00:48:02', NULL),
(52, 'White Group', '2008-05-16', '2012-05-30', 53, 1, 1, '2021-02-09 22:31:03', '2021-02-22 00:48:02', NULL),
(53, 'Spencer, Prohaska and Keeling', '2016-11-19', '1998-01-28', 10, 1, 1, '2021-02-04 06:12:03', '2021-02-22 00:48:02', NULL),
(54, 'Strosin, Hintz and Stokes', '2012-04-14', '1993-05-30', 52, 1, 1, '2021-02-06 13:44:22', '2021-02-22 00:48:02', NULL),
(55, 'Rau-McCullough', '1982-04-13', '1972-07-03', 3, 1, 1, '2021-02-08 18:32:46', '2021-02-22 00:48:02', NULL),
(56, 'Gorczany, Jacobs and Torphy', '1990-02-09', '2017-08-27', 24, 1, 1, '2021-02-12 05:18:48', '2021-02-22 00:48:02', NULL),
(57, 'Doyle Inc', '1975-06-02', '1970-11-16', 29, 1, 1, '2021-01-23 01:52:24', '2021-02-22 00:48:02', NULL),
(58, 'Leffler-Towne', '1998-04-25', '1982-09-06', 29, 1, 1, '2021-02-11 19:39:59', '2021-02-22 00:48:02', NULL),
(59, 'Bruen, Jakubowski and Little', '1995-02-04', '2010-07-20', 1, 1, 1, '2021-01-31 03:00:36', '2021-02-22 00:48:02', NULL),
(60, 'Schneider Ltd', '2000-01-12', '1995-01-15', 27, 1, 1, '2021-02-20 02:46:39', '2021-02-22 00:48:02', NULL),
(61, 'Koch-Bartell', '1973-06-22', '2019-09-11', 61, 1, 1, '2021-02-18 00:30:30', '2021-02-22 00:48:02', NULL),
(62, 'Cummings, Howell and Steuber', '1996-05-05', '2018-09-23', 33, 1, 1, '2021-02-03 20:07:05', '2021-02-22 00:48:02', NULL),
(63, 'Towne Inc', '2005-06-06', '1988-01-17', 12, 1, 1, '2021-01-23 09:05:30', '2021-02-22 00:48:02', NULL),
(64, 'Effertz and Sons', '2010-03-18', '2001-08-21', 50, 1, 1, '2021-01-29 11:04:26', '2021-02-22 00:48:02', NULL),
(65, 'Walter and Sons', '2015-05-06', '1994-12-15', 40, 1, 1, '2021-02-09 12:48:11', '2021-02-22 00:48:03', NULL),
(66, 'Cruickshank Ltd', '1993-07-12', '2003-06-02', 55, 1, 1, '2021-02-06 07:20:17', '2021-02-22 00:48:03', NULL),
(67, 'Paucek and Sons', '2006-12-26', '2016-10-15', 16, 1, 1, '2021-02-09 16:07:16', '2021-02-22 00:48:03', NULL),
(68, 'Runolfsdottir, Goyette and Bergstrom', '2006-08-19', '2000-05-01', 59, 1, 1, '2021-02-04 23:42:47', '2021-02-22 00:48:03', NULL),
(69, 'Green-Stracke', '2004-11-05', '2018-03-18', 40, 1, 1, '2021-02-16 07:47:06', '2021-02-22 00:48:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deals_terms`
--

CREATE TABLE `deals_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `full_name`, `phone`, `email`, `job`, `note`, `client_id`, `is_active`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adolf Hills', '1-851-346-3117 x460', 'tanner91@kovacek.net', 'Instructional Coordinator', 'Et iste libero aut quisquam id. Qui est ut voluptatum temporibus sed.', 7, 1, 1, '2021-02-15 23:38:52', '2021-02-22 00:47:54', NULL),
(2, 'Josefa Stracke MD', '603.746.3476', 'estelle34@hotmail.com', 'Flight Attendant', 'Optio explicabo corrupti ut voluptates sint facere et. Impedit eaque quis rerum accusamus ipsam eum eum. Est ea quaerat et.', 30, 1, 1, '2021-02-03 20:13:39', '2021-02-22 00:47:54', NULL),
(3, 'Mr. Francesco Feeney I', '(638) 604-9433', 'wgrant@deckow.com', 'Extruding and Drawing Machine Operator', 'Consequatur vel dolorum odio esse quaerat nihil harum rerum. Aut qui similique fuga non voluptatem molestiae voluptatem maiores. Quia pariatur ut dolores aperiam magni consequatur consequuntur est.', 19, 1, 1, '2021-02-11 07:50:56', '2021-02-22 00:47:54', NULL),
(4, 'Mrs. Albina Baumbach DVM', '324.694.2042', 'larue.hermiston@hotmail.com', 'Mechanical Engineer', 'Natus dolore iste sed ex molestias assumenda itaque. Qui facere sit quaerat sequi. In corporis molestiae iure deleniti enim.', 21, 1, 1, '2021-01-25 02:11:29', '2021-02-22 00:47:55', NULL),
(5, 'Destiny Larkin MD', '623.212.3895 x597', 'jimmie15@gmail.com', 'User Experience Researcher', 'Ea saepe consequatur aut illo animi modi. Doloribus harum fuga molestiae est cumque fugit reiciendis. Quis eos eligendi reprehenderit quia.', 10, 1, 1, '2021-02-21 07:55:29', '2021-02-22 00:47:55', NULL),
(6, 'Tyrel Schultz', '413-313-6431 x4256', 'kuhic.edd@gmail.com', 'Keyboard Instrument Repairer and Tuner', 'Enim unde qui quia quasi alias qui. Voluptatem asperiores nesciunt non qui itaque deserunt. Enim quo ut et molestias harum vero vel enim. Explicabo repudiandae est eaque non cumque earum vel.', 27, 1, 1, '2021-02-08 05:24:16', '2021-02-22 00:47:55', NULL),
(7, 'Guillermo Bernhard', '+1 (925) 844-8488', 'brooks.kassulke@halvorson.com', 'Bindery Machine Operator', 'Aut ut quia architecto. Accusantium ipsa explicabo et. Dicta corrupti facilis neque laborum non perspiciatis id commodi. Inventore qui aut suscipit sint et.', 3, 1, 1, '2021-01-29 09:16:53', '2021-02-22 00:47:55', NULL),
(8, 'Dave Heidenreich', '+1-636-730-9141', 'bbruen@cummerata.com', 'Textile Knitting Machine Operator', 'Vitae iure quia ut. Aut eos corrupti culpa. Debitis qui voluptatem sit dolor aut. Dolores molestiae velit quo et. Ut perspiciatis voluptate commodi enim et fugiat dolorem.', 21, 1, 1, '2021-02-18 19:12:27', '2021-02-22 00:47:55', NULL),
(9, 'Kaya Bayer', '(708) 857-4648', 'charlotte.roob@koss.info', 'Metal Pourer and Caster', 'Debitis aut quam quia optio provident. Nulla est iure aut qui. Natus et nam quibusdam consequatur ducimus quia. Consequatur ut culpa reiciendis enim aut molestiae minima rerum.', 15, 1, 1, '2021-01-28 18:28:10', '2021-02-22 00:47:55', NULL),
(10, 'Rosetta Rath', '283.218.5313 x206', 'ncruickshank@hotmail.com', 'Petroleum Pump System Operator', 'Accusantium sunt omnis ad assumenda earum aspernatur. Nesciunt commodi autem quod laboriosam et vel. Ut quo eveniet dignissimos et et illum accusantium. Harum quasi tenetur placeat qui animi.', 15, 1, 1, '2021-02-16 22:32:57', '2021-02-22 00:47:55', NULL),
(11, 'Willow Legros', '304-724-7543', 'aglae67@waelchi.com', 'Janitorial Supervisor', 'Ut ut quo animi ea aspernatur odio autem tempore. Repellat sed dolorem assumenda ex amet. Laboriosam est sed hic nesciunt earum.', 21, 1, 1, '2021-02-04 03:43:13', '2021-02-22 00:47:55', NULL),
(12, 'Neil Mertz', '582-489-2755', 'awisozk@wolf.com', 'Personnel Recruiter', 'Soluta dolorem maxime corporis rerum temporibus dignissimos saepe beatae. Ex nihil maxime ut possimus sit. Tenetur a ad et. Nam nam dolorum vero.', 19, 1, 1, '2021-01-23 16:26:54', '2021-02-22 00:47:55', NULL),
(13, 'Desmond Kuhlman', '1-451-462-3965 x05927', 'elise48@thompson.org', 'Forest and Conservation Technician', 'Ex sequi facere est vel minus. Et eum est tempora saepe deleniti. Placeat dolores cupiditate earum fuga eum quibusdam.', 26, 1, 1, '2021-02-01 20:07:11', '2021-02-22 00:47:55', NULL),
(14, 'Miss Larissa Schoen', '1-445-292-7082', 'amie.schneider@gmail.com', 'Home Health Aide', 'Tempore modi voluptas impedit quis quasi illo. Voluptas occaecati ut laudantium. Tempora minima sed voluptas. Quis omnis doloremque ullam voluptatem vitae aut.', 20, 1, 1, '2021-02-18 21:10:32', '2021-02-22 00:47:55', NULL),
(15, 'Mrs. Rebeka Mitchell DVM', '1-334-263-8172 x51385', 'gleichner.lauriane@reynolds.org', 'Claims Adjuster', 'Corrupti voluptatem corrupti ipsum modi provident iure. Et aliquam minus doloribus unde dolores quidem ut enim. Veniam rerum impedit rerum accusantium. Quia ea qui dolorem eaque aut.', 25, 1, 1, '2021-02-14 19:39:30', '2021-02-22 00:47:55', NULL),
(16, 'Judson Toy Sr.', '+1 (896) 277-6138', 'alexanne.schaefer@turcotte.com', 'Retail Salesperson', 'Saepe est cumque quis natus id dolor omnis in. Quo dicta est eum inventore. Dolore perspiciatis sed ut.', 10, 1, 1, '2021-02-07 15:19:53', '2021-02-22 00:47:55', NULL),
(17, 'Anthony Schuster', '(385) 384-6996 x5052', 'jaeden.pfeffer@yahoo.com', 'Shampooer', 'Iusto laudantium nulla debitis ut ipsam omnis dolores ipsum. Cupiditate possimus vel voluptatem perspiciatis veritatis.', 20, 1, 1, '2021-02-21 23:02:01', '2021-02-22 00:47:55', NULL),
(18, 'Mr. Hector Greenholt', '1-396-233-5980', 'reanna83@yahoo.com', 'Entertainer and Performer', 'Rerum ab quasi modi delectus aut. Saepe quia itaque tenetur nemo sunt ea. Rerum quisquam explicabo rem deserunt rerum assumenda.', 1, 1, 1, '2021-01-30 13:52:17', '2021-02-22 00:47:55', NULL),
(19, 'Mozelle Parker', '720.357.7515', 'berry54@goyette.org', 'Painting Machine Operator', 'Dolore eligendi similique aperiam ducimus. Et expedita a quae sapiente dolores. Est eveniet similique ut molestias voluptatum. Dolorem sit porro culpa maiores esse eligendi minus animi.', 5, 1, 1, '2021-02-20 04:06:54', '2021-02-22 00:47:55', NULL),
(20, 'Braeden Schroeder', '(365) 382-3465', 'steuber.eino@brown.com', 'Lawyer', 'Praesentium repellendus exercitationem reprehenderit. Repellendus voluptatem debitis autem at. Officiis ex eum commodi ut cumque. Qui ex fuga nisi deleniti.', 9, 1, 1, '2021-02-01 06:54:41', '2021-02-22 00:47:55', NULL),
(21, 'Adrien Langosh Sr.', '(891) 287-0063', 'ogislason@gmail.com', 'Locomotive Firer', 'Quo eveniet exercitationem cupiditate eveniet et corrupti ipsam et. A consectetur nobis mollitia beatae voluptatem. Nobis dolor facilis dolor eos. Odio quisquam ut quaerat hic asperiores.', 23, 1, 1, '2021-02-03 18:34:51', '2021-02-22 00:47:55', NULL),
(22, 'Kaitlin Herman', '720-393-2876 x505', 'heaney.janelle@kirlin.com', 'Aircraft Structure Assemblers', 'Ut libero ea aut sit. Esse repudiandae quas doloribus quasi. Assumenda provident hic ut nesciunt. Ut molestiae temporibus possimus at.', 23, 1, 1, '2021-01-25 18:14:08', '2021-02-22 00:47:55', NULL),
(23, 'River Veum', '883.445.9323 x967', 'krussel@marvin.net', 'Motion Picture Projectionist', 'Autem aut illo voluptatem inventore. Repellendus perferendis quos sint unde. At laborum esse facere in. Sequi iusto sit facilis fuga. Et magnam et aut a quaerat.', 17, 1, 1, '2021-02-03 06:52:04', '2021-02-22 00:47:55', NULL),
(24, 'Prof. Caterina Rutherford II', '+1-716-406-5868', 'jaeden01@gmail.com', 'Insulation Worker', 'Sapiente quis tenetur est placeat vel. Esse beatae quibusdam ut et saepe aliquam. Consequatur deserunt placeat corrupti minus amet dolorem autem.', 17, 1, 1, '2021-02-06 08:56:41', '2021-02-22 00:47:55', NULL),
(25, 'Aaliyah Lesch', '(993) 620-9021', 'cecil.hirthe@hodkiewicz.com', 'Telemarketer', 'Doloribus aut delectus magni ullam ratione sed minima. Sequi vero nulla ex nam deleniti magnam. Veniam nihil eveniet neque quasi non tenetur.', 28, 1, 1, '2021-02-02 10:14:15', '2021-02-22 00:47:55', NULL),
(26, 'Ms. Felipa Russel I', '469.906.1588', 'mwilliamson@gmail.com', 'Police and Sheriffs Patrol Officer', 'Labore dolorem quae rerum id sed rerum. Voluptatem maxime quia illum. Ut error earum non autem. Cumque quia vero repudiandae ipsa animi totam occaecati. Consequatur iure accusantium illo suscipit.', 27, 1, 1, '2021-02-21 06:10:27', '2021-02-22 00:47:56', NULL),
(27, 'Dominic King DVM', '(441) 502-0663 x56945', 'suzanne39@windler.com', 'Clinical Psychologist', 'Sunt aut voluptas vel dignissimos quaerat. Voluptatem placeat perferendis dolorum provident alias. Consequatur minima rerum harum fuga ea. Numquam at et est error fugiat quisquam.', 9, 1, 1, '2021-01-24 09:45:13', '2021-02-22 00:47:56', NULL),
(28, 'Dasia Brown', '(638) 443-2110', 'khalil08@cartwright.com', 'Industrial Production Manager', 'Non aut adipisci sed. Excepturi vitae quas sit enim. Explicabo ut non rem natus unde. Aut architecto praesentium et quos velit dolorem quidem. Laudantium laudantium tenetur non qui.', 27, 1, 1, '2021-02-20 09:55:34', '2021-02-22 00:47:56', NULL),
(29, 'Mr. Paris Durgan MD', '(765) 365-6580', 'dimitri97@gmail.com', 'Interpreter OR Translator', 'Laboriosam cumque autem dicta fugiat quo voluptas rerum libero. Vel et dolorem itaque.', 16, 1, 1, '2021-02-07 09:20:15', '2021-02-22 00:47:56', NULL),
(30, 'Emery Bogisich', '+1-745-727-4475', 'nya45@yahoo.com', 'Social Worker', 'Hic ducimus ad eos sint. Est odit harum id repellendus ut illum. Occaecati sit voluptates nulla. Aut esse officia eum fuga repellendus et iusto.', 23, 1, 1, '2021-02-20 22:05:27', '2021-02-22 00:47:56', NULL),
(31, 'Clementine Ward', '742.964.3111 x8024', 'aidan.jakubowski@hotmail.com', 'Secretary', 'Consequatur amet molestiae dicta rem maxime ullam voluptas. Sint sint commodi asperiores aliquid veniam quae pariatur harum. Sunt est consequatur in totam et a qui.', 21, 1, 1, '2021-01-25 02:18:19', '2021-02-22 00:47:56', NULL),
(32, 'Sonny Hagenes', '+13844864024', 'brook.grady@gmail.com', 'Sheriff', 'Vel qui molestiae necessitatibus ex. Eius quisquam maxime sunt sed consequatur. Quae sint accusamus consequatur et eligendi.', 21, 1, 1, '2021-02-09 14:04:25', '2021-02-22 00:47:56', NULL),
(33, 'Dr. Stefanie Hane I', '1-476-610-3025', 'royal44@gmail.com', 'Precision Devices Inspector', 'Iste nisi tempore et aliquid. Molestias quia cumque ab eius maiores voluptatem ipsum. Nam qui eos autem rerum dolorem consequatur. Corporis deserunt qui voluptatibus rerum dolor minus blanditiis.', 25, 1, 1, '2021-02-19 22:17:38', '2021-02-22 00:47:56', NULL),
(34, 'Opal Kemmer IV', '924.942.1280 x284', 'emmerich.antonietta@jacobi.com', 'Locksmith', 'Deserunt sit dicta quos et est ipsam. Nulla veritatis nobis a qui unde quod distinctio. Eveniet odio explicabo eos fugit ratione neque in.', 22, 1, 1, '2021-02-21 13:41:37', '2021-02-22 00:47:56', NULL),
(35, 'Dandre Ziemann', '(929) 913-9446 x4592', 'giovanni96@kuhn.com', 'Protective Service Worker', 'Facilis distinctio quaerat perferendis nam vitae. Consequatur nostrum laudantium omnis quis nostrum. Laborum dolor ut consectetur sit omnis odit omnis.', 30, 1, 1, '2021-02-15 21:52:54', '2021-02-22 00:47:56', NULL),
(36, 'Cesar Ruecker', '478.791.8466 x0294', 'lizeth.smitham@dicki.com', 'Shipping and Receiving Clerk', 'Distinctio molestiae et blanditiis qui. Libero sit provident eaque. Rerum harum voluptatum blanditiis quia.', 17, 1, 1, '2021-01-23 19:12:01', '2021-02-22 00:47:56', NULL),
(37, 'Abelardo Pfeffer', '1-943-908-5486 x8846', 'blick.tracey@gmail.com', 'Soil Scientist', 'Aliquam quis omnis odit veritatis. Nisi maiores voluptatem dolor velit eum. Voluptatum vel repellendus ad nobis et nihil.', 6, 1, 1, '2021-02-02 16:48:01', '2021-02-22 00:47:56', NULL),
(38, 'Ms. Susie Treutel V', '949-418-4424 x1657', 'simonis.isadore@lubowitz.com', 'Biologist', 'Sed ullam eveniet consequatur perferendis. Est ipsum culpa impedit sit. Facere libero veniam provident error incidunt.', 25, 1, 1, '2021-01-30 13:58:50', '2021-02-22 00:47:56', NULL),
(39, 'Reinhold Streich', '637-406-8477', 'xhomenick@ward.org', 'Athletic Trainer', 'Distinctio ut vero sapiente. Molestiae odio sint voluptatem ullam alias aut harum. Maxime et labore esse officia. Et officiis et consequatur.', 21, 1, 1, '2021-02-16 21:23:29', '2021-02-22 00:47:56', NULL),
(40, 'Evan Dooley', '+1.301.396.8278', 'mccullough.aliyah@gmail.com', 'Annealing Machine Operator', 'Ducimus doloribus consequuntur quia repudiandae. Eos aperiam iusto magnam. Commodi et voluptatum et libero. Sed eum ipsa maxime qui et.', 23, 1, 1, '2021-02-12 19:44:06', '2021-02-22 00:47:57', NULL),
(41, 'Katrina Gleason', '+1-394-707-6983', 'mohr.isaac@hotmail.com', 'Air Traffic Controller', 'Et rerum laborum nobis molestiae dolor aliquam. Commodi dolorem illum expedita. Velit facilis a tempore unde. Rerum ea veritatis libero. In pariatur in vel commodi sunt dolorem.', 27, 1, 1, '2021-02-15 15:22:05', '2021-02-22 00:47:57', NULL),
(42, 'Megane Dooley', '508.443.5019 x3878', 'jaylan.keebler@kulas.org', 'Computer Operator', 'Et aliquid ut totam impedit voluptatem doloremque dolore eum. Repellendus explicabo recusandae delectus ex perspiciatis. Maxime quia itaque incidunt sunt.', 6, 1, 1, '2021-01-28 13:21:17', '2021-02-22 00:47:57', NULL),
(43, 'Marian Anderson', '965-528-3201 x889', 'foreilly@yahoo.com', 'Fabric Mender', 'Ad sit ipsa sed veniam perferendis. Temporibus necessitatibus et aut quo. Eos sit aut est totam assumenda consectetur et voluptatum.', 27, 1, 1, '2021-02-11 18:22:30', '2021-02-22 00:47:57', NULL),
(44, 'Cyril Greenholt', '373-978-2354 x01900', 'alanis.kutch@schaden.com', 'Social Service Specialists', 'Tempore ut totam mollitia doloremque culpa. Dolor ut similique quos. Commodi vel vel vel voluptatem maxime in est.', 26, 1, 1, '2021-01-28 13:28:05', '2021-02-22 00:47:57', NULL),
(45, 'Concepcion Sauer PhD', '823.264.4918', 'gail70@yahoo.com', 'Word Processors and Typist', 'Autem maxime maxime nihil odit aliquid ea. Illo fugiat vel velit eveniet.', 5, 1, 1, '2021-02-08 17:18:15', '2021-02-22 00:47:57', NULL),
(46, 'Camren Oberbrunner', '739.316.0547 x941', 'schimmel.tania@gmail.com', 'Fire-Prevention Engineer', 'Dignissimos consequuntur atque quae sed. Omnis et corporis exercitationem quos consequatur autem omnis. Harum est omnis rerum aut.', 31, 1, 1, '2021-01-24 12:28:19', '2021-02-22 00:47:57', NULL),
(47, 'Robin Veum', '(807) 774-6014 x65688', 'iwiza@wyman.org', 'Private Household Cook', 'Omnis voluptate qui voluptatem architecto autem. Aliquam dolores et voluptatibus qui ea officiis eaque. Qui in sunt asperiores aliquam et id. Aut tenetur libero qui corporis doloribus quia.', 26, 1, 1, '2021-02-07 09:13:15', '2021-02-22 00:47:57', NULL),
(48, 'Erik Little', '1-730-319-5875 x83777', 'carlo.vonrueden@hotmail.com', 'Chemistry Teacher', 'Dolor provident impedit est vel. Provident et maiores iusto recusandae rem laborum. Aut ut fuga omnis eius.', 24, 1, 1, '2021-01-29 14:06:41', '2021-02-22 00:47:57', NULL),
(49, 'Marlene Rogahn', '(664) 917-6477 x81058', 'suzanne.schroeder@gmail.com', 'Gaming Manager', 'Accusamus quidem non debitis rerum natus minus facilis recusandae. Quam voluptatum et saepe et ea quia occaecati reprehenderit. Quo ex exercitationem omnis vitae ad.', 12, 1, 1, '2021-02-10 07:50:13', '2021-02-22 00:47:57', NULL),
(50, 'Dylan Kling', '383-342-9037', 'marcelino.thiel@gmail.com', 'Forest and Conservation Technician', 'Cum ex quis non. Quas ullam neque sed quae enim odit non. Eligendi est id fugiat recusandae dolor rerum. Aspernatur aut natus earum et itaque rerum ex quia.', 4, 1, 1, '2021-02-17 12:14:56', '2021-02-22 00:47:57', NULL),
(51, 'Bethany Rice', '(249) 315-9585', 'dillon15@botsford.com', 'Health Educator', 'Enim aspernatur et soluta omnis. Magnam recusandae pariatur ea tempora ex sed. Et et officiis ab perferendis deserunt. Voluptatem nulla quia dignissimos debitis molestiae quis quis.', 1, 1, 1, '2021-02-18 08:15:54', '2021-02-22 00:47:57', NULL),
(52, 'Gerardo Mills', '(238) 456-8917 x1633', 'macejkovic.skyla@yahoo.com', 'Typesetting Machine Operator', 'Et cumque et quod sit sed quas voluptatem et. Aut fuga minus consectetur. Fugit explicabo cum velit commodi et ut qui.', 31, 1, 1, '2021-02-03 19:16:30', '2021-02-22 00:47:57', NULL),
(53, 'Ms. Marina Crooks', '602-232-2323 x08989', 'cole.willis@bernhard.biz', 'Environmental Engineer', 'Nihil ut magnam nesciunt repellendus aut et laborum. Eos rerum et hic. Eligendi cupiditate ipsam officiis in adipisci qui sed. Qui qui vero deleniti consequatur.', 16, 1, 1, '2021-02-14 09:03:22', '2021-02-22 00:47:57', NULL),
(54, 'Robb Macejkovic', '+1-237-330-8037', 'ocie.mante@hotmail.com', 'Engineering Technician', 'Modi quasi nesciunt voluptas iste est autem. Rerum ex id voluptate quaerat. Cumque libero alias et et vel vero. Nostrum et atque architecto officiis explicabo expedita.', 29, 1, 1, '2021-02-15 14:10:08', '2021-02-22 00:47:58', NULL),
(55, 'Prof. Yesenia Bergnaum', '1-775-592-9840 x0895', 'connelly.reta@hotmail.com', 'Bicycle Repairer', 'Qui rem voluptas minus nostrum necessitatibus. Tempore hic dicta eius commodi voluptatem dolores.', 13, 1, 1, '2021-01-31 20:40:31', '2021-02-22 00:47:58', NULL),
(56, 'Jude Feest', '+1-598-634-6732', 'marlin64@gulgowski.com', 'Auditor', 'Dolores earum reprehenderit sed exercitationem quis. Odio ut ut est dolor nam nemo. Esse reiciendis culpa ducimus incidunt repudiandae harum officiis. Nostrum dolorum atque et quae et.', 20, 1, 1, '2021-02-14 07:27:56', '2021-02-22 00:47:58', NULL),
(57, 'Janelle Shields', '+1.473.768.6556', 'zkutch@hotmail.com', 'Broadcast News Analyst', 'Minus velit quam omnis dolor. Eius dolorem voluptatem doloribus et velit. Doloribus aut totam ut voluptas facilis magni omnis. Beatae harum et ipsa nesciunt. Quas iste ipsa et.', 25, 1, 1, '2021-02-09 01:43:29', '2021-02-22 00:47:58', NULL),
(58, 'Ara Feeney', '373.932.7541', 'cruecker@yahoo.com', 'Transportation Attendant', 'Omnis aut omnis id dolores. Dolorem ea libero consectetur rem dolor officia temporibus recusandae. Libero et totam sed libero ut. Iusto dolores omnis totam similique in dolorem.', 19, 1, 1, '2021-01-24 11:58:19', '2021-02-22 00:47:58', NULL),
(59, 'Laura Emmerich', '+1-692-790-3877', 'frederik.hintz@kreiger.com', 'Petroleum Engineer', 'Voluptatibus repudiandae numquam exercitationem tempore suscipit. Rerum ea quis omnis cumque sit voluptas sit. Autem voluptatibus sed omnis tempora provident rem.', 23, 1, 1, '2021-02-04 20:06:36', '2021-02-22 00:47:58', NULL),
(60, 'Haylee Reichel', '+1-785-598-6714', 'jarod.hoppe@hotmail.com', 'Bartender Helper', 'Molestiae et ab aut et ut. Qui itaque consequuntur earum dolore. In eaque beatae animi necessitatibus maiores.', 14, 1, 1, '2021-01-28 21:23:37', '2021-02-22 00:47:58', NULL),
(61, 'Ernie Marvin', '276-260-1805', 'kuhic.sage@kulas.com', 'Construction Manager', 'Illum explicabo qui earum voluptas aut et quam. Earum vel cumque omnis quos et dolorem. Qui veritatis ratione pariatur.', 10, 1, 1, '2021-01-30 17:48:08', '2021-02-22 00:47:58', NULL),
(62, 'Jacques Roberts', '306.325.6616', 'johnny73@dare.com', 'Farmworker', 'Et ea culpa sequi est. Consequatur saepe exercitationem atque ipsa aspernatur tempore. Mollitia provident omnis molestiae ut explicabo. Libero sit et nostrum dolorem.', 18, 1, 1, '2021-02-03 07:16:38', '2021-02-22 00:47:58', NULL),
(63, 'Hildegard Runolfsdottir', '872-381-0146 x9321', 'rafael24@dickinson.biz', 'Home', 'Non officia facilis voluptate. Laudantium et neque est consequatur sed blanditiis. Quo cupiditate ipsa error quia eum et est eos.', 2, 1, 1, '2021-02-03 08:59:21', '2021-02-22 00:47:58', NULL),
(64, 'Rosalee Murphy Sr.', '452.475.2448 x692', 'erik.yost@adams.org', 'Compliance Officers', 'Velit dolorum voluptas magnam accusamus est aut sequi. Iste quia expedita illo qui vitae rerum quasi.', 11, 1, 1, '2021-02-06 21:28:06', '2021-02-22 00:47:58', NULL),
(65, 'Prof. Jan Morar II', '+1-292-670-2401', 'amuller@harris.net', 'Parking Enforcement Worker', 'Commodi dolores ad rem sed. Commodi dolor quia rerum sunt odit ducimus illum voluptates. Molestiae tenetur quo officia ut porro. Consequatur impedit nobis quaerat.', 24, 1, 1, '2021-02-12 19:03:32', '2021-02-22 00:47:58', NULL),
(66, 'Mrs. Zula Parisian II', '669-234-1258', 'gislason.dax@batz.com', 'Public Relations Manager', 'Aliquam omnis ipsam quis iste soluta totam et numquam. Voluptatem dicta harum similique quasi non. Sapiente qui earum voluptatem qui itaque esse non. Optio dolor sed consequatur labore ut.', 8, 1, 1, '2021-02-09 10:27:01', '2021-02-22 00:47:58', NULL),
(67, 'Zion Fadel', '(950) 695-9462 x1125', 'gdavis@hotmail.com', 'Cost Estimator', 'Id atque laudantium ut iusto quis aut. Ipsa non illo porro totam quae. Ea porro quam molestias excepturi ipsam. Sunt est sit temporibus est quis quaerat cum.', 13, 1, 1, '2021-02-16 05:01:56', '2021-02-22 00:47:58', NULL),
(68, 'Prof. Rey Purdy III', '1-702-232-9999 x70041', 'ecollins@gmail.com', 'Sales and Related Workers', 'Quas ut aut doloribus id non possimus a. Cum magnam voluptatem et earum expedita. Eius ut natus enim repellendus nesciunt non quod dolorem. Sed eius ut facilis est vitae nobis vitae.', 8, 1, 1, '2021-02-19 16:00:03', '2021-02-22 00:47:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `finances`
--

CREATE TABLE `finances` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross` int(11) NOT NULL,
  `net` int(11) DEFAULT 0,
  `vat` int(11) DEFAULT 0,
  `date` date NOT NULL,
  `companies_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finances`
--

INSERT INTO `finances` (`id`, `name`, `description`, `category`, `type`, `gross`, `net`, `vat`, `date`, `companies_id`, `is_active`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Destinee Schimmel', 'Voluptatem ut suscipit quia quis. Ut aut nobis ad.', 'steady income', 'Invoice', 1577, 1577, 0, '2021-02-08', 7, 1, 1, '2021-01-26 00:48:21', '2021-02-22 00:48:21', NULL),
(2, 'Dallas Rutherford PhD', 'Possimus ut autem omnis ducimus itaque. Quae ut sit hic qui tempore autem labore.', 'steady income', 'advance', 1879, 1879, 0, '2021-02-03', 40, 1, 1, '2021-01-22 00:48:22', '2021-02-22 00:48:22', NULL),
(3, 'Houston Bernier', 'Sit rerum sunt aliquid libero. Est ducimus neque id corporis quos ex. Sit alias ipsum voluptatum.', 'large order', 'proforma invoice', 1263, 1263, 0, '2021-02-14', 54, 1, 1, '2021-01-21 00:48:22', '2021-02-22 00:48:22', NULL),
(4, 'Prof. Carmelo Steuber V', 'Ut quisquam repellendus atque. Quia libero sed molestiae est sint eius.', 'one-off order', 'proforma invoice', 1340, 1340, 0, '2021-01-24', 1, 1, 1, '2021-02-12 00:48:22', '2021-02-22 00:48:22', NULL),
(5, 'Stephon Schinner I', 'Earum quia neque qui enim velit est fugit mollitia. Expedita enim itaque est. Quo hic quia et qui.', 'large order', 'Invoice', 1094, 1094, 0, '2021-02-21', 28, 1, 1, '2021-01-31 00:48:22', '2021-02-22 00:48:22', NULL),
(6, 'Sterling Kutch', 'Et illo inventore ipsum nihil. Quam consequatur laborum aliquid voluptates sunt delectus.', 'large order', 'proforma invoice', 1315, 1315, 0, '2021-02-02', 24, 1, 1, '2021-01-30 00:48:22', '2021-02-22 00:48:22', NULL),
(7, 'Jillian Cummings IV', 'Perferendis est possimus quo sapiente reiciendis dolores. Nihil ea laboriosam sit dicta ut.', 'small order', 'Invoice', 1233, 1233, 0, '2021-01-26', 19, 1, 1, '2021-01-24 00:48:22', '2021-02-22 00:48:22', NULL),
(8, 'Kenneth Dicki', 'Doloremque quos odit aut ut. Autem quos ea a similique recusandae.', 'steady income', 'Invoice', 1712, 1712, 0, '2021-02-05', 20, 1, 1, '2021-02-16 00:48:22', '2021-02-22 00:48:22', NULL),
(9, 'George Medhurst', 'Quasi fuga et aspernatur explicabo. Est eos qui consequatur et voluptate.', 'large order', 'proforma invoice', 1008, 1008, 0, '2021-02-17', 9, 1, 1, '2021-02-14 00:48:22', '2021-02-22 00:48:22', NULL),
(10, 'Nikko Emard', 'Consequatur est cupiditate expedita aut omnis aspernatur a. Illo temporibus est sequi et.', 'small order', 'simple transfer', 1834, 1834, 0, '2021-01-31', 21, 1, 1, '2021-01-23 00:48:22', '2021-02-22 00:48:22', NULL),
(11, 'Ron Stehr MD', 'Error eum possimus et provident. Nemo commodi minus ipsa esse. Sapiente ut et dignissimos sunt.', 'large order', 'proforma invoice', 1099, 1099, 0, '2021-02-09', 39, 1, 1, '2021-02-16 00:48:22', '2021-02-22 00:48:22', NULL),
(12, 'Barrett Rutherford', 'Aliquam magni necessitatibus rerum vel et magnam. Sunt ipsa autem odit optio et recusandae.', 'small order', 'Invoice', 1212, 1212, 0, '2021-02-09', 52, 1, 1, '2021-01-26 00:48:22', '2021-02-22 00:48:22', NULL),
(13, 'Elenora Larkin', 'Perferendis blanditiis ut necessitatibus laborum. Earum omnis eos quae ad voluptatem.', 'large order', 'simple transfer', 1933, 1933, 0, '2021-02-11', 4, 1, 1, '2021-01-22 00:48:22', '2021-02-22 00:48:22', NULL),
(14, 'Rhea Glover', 'Ipsum necessitatibus ex et ad perferendis. Inventore rem doloremque nemo tenetur ullam sequi.', 'one-off order', 'simple transfer', 1804, 1804, 0, '2021-02-18', 43, 1, 1, '2021-01-27 00:48:23', '2021-02-22 00:48:23', NULL),
(15, 'Trevor Ebert', 'Quia quasi quia vitae ut vel ducimus. Deserunt eum mollitia beatae voluptatem neque.', 'small order', 'simple transfer', 1767, 1767, 0, '2021-02-15', 54, 1, 1, '2021-02-09 00:48:23', '2021-02-22 00:48:23', NULL),
(16, 'Dr. Otha Reichel II', 'Et officia est aut. Deserunt vitae veniam molestiae et. Ipsam ut occaecati et assumenda omnis.', 'small order', 'simple transfer', 1761, 1761, 0, '2021-02-05', 35, 1, 1, '2021-01-28 00:48:23', '2021-02-22 00:48:23', NULL),
(17, 'Prof. Letha Steuber I', 'Qui atque earum dolores. Repellat omnis repellat quo sunt.', 'large order', 'Invoice', 1293, 1293, 0, '2021-01-26', 6, 1, 1, '2021-02-10 00:48:23', '2021-02-22 00:48:23', NULL),
(18, 'Mrs. Natalie Zemlak', 'Pariatur provident adipisci esse. Aut ab hic maxime laudantium. In nisi laborum qui vel voluptatem.', 'steady income', 'Invoice', 1209, 1209, 0, '2021-01-30', 52, 1, 1, '2021-01-28 00:48:23', '2021-02-22 00:48:23', NULL),
(19, 'Aaron Watsica', 'Quas perferendis in quod impedit. Quia sit ducimus voluptates numquam veniam velit est perferendis.', 'one-off order', 'advance', 1079, 1079, 0, '2021-02-02', 41, 1, 1, '2021-02-18 00:48:23', '2021-02-22 00:48:23', NULL),
(20, 'Abbigail Harris IV', 'Dolorum neque eveniet et odio ratione. Consequatur numquam velit ipsum.', 'large order', 'simple transfer', 1099, 1099, 0, '2021-02-15', 29, 1, 1, '2021-02-20 00:48:23', '2021-02-22 00:48:23', NULL),
(21, 'Mrs. Destini Lockman', 'Vel architecto eveniet quia. Assumenda id pariatur et rerum. Aperiam molestiae iste magni facilis.', 'one-off order', 'simple transfer', 1972, 1972, 0, '2021-02-14', 54, 1, 1, '2021-02-07 00:48:23', '2021-02-22 00:48:23', NULL),
(22, 'Dr. Alanis Hoeger', 'Sapiente consectetur explicabo odio. Est expedita suscipit sed error sed aut et.', 'small order', 'simple transfer', 1997, 1997, 0, '2021-02-15', 34, 1, 1, '2021-02-17 00:48:23', '2021-02-22 00:48:23', NULL),
(23, 'Llewellyn Williamson', 'Et omnis quisquam non deleniti. Voluptatem consectetur aliquid rem suscipit voluptates.', 'steady income', 'simple transfer', 1025, 1025, 0, '2021-02-05', 24, 1, 1, '2021-02-12 00:48:23', '2021-02-22 00:48:23', NULL),
(24, 'Zack Rodriguez', 'Praesentium veritatis qui eaque eius non optio. Officia debitis labore maxime magni autem laborum.', 'small order', 'proforma invoice', 1255, 1255, 0, '2021-01-24', 23, 1, 1, '2021-01-24 00:48:23', '2021-02-22 00:48:23', NULL),
(25, 'Mr. Reymundo Mayer', 'Velit omnis quidem fugit commodi eaque. Cupiditate maxime itaque sit rem.', 'one-off order', 'Invoice', 985, 985, 0, '2021-01-25', 18, 1, 1, '2021-01-20 00:48:23', '2021-02-22 00:48:23', NULL),
(26, 'Dr. Tomasa Bednar DDS', 'Maiores eius ea labore id ut. Nisi eos molestiae facilis saepe.', 'steady income', 'simple transfer', 1385, 1385, 0, '2021-02-12', 57, 1, 1, '2021-01-24 00:48:23', '2021-02-22 00:48:23', NULL),
(27, 'Prof. Erwin Volkman', 'Libero animi adipisci est et unde et quia. Adipisci odit ipsum ut ut molestiae.', 'steady income', 'Invoice', 1898, 1898, 0, '2021-02-15', 56, 1, 1, '2021-02-04 00:48:23', '2021-02-22 00:48:23', NULL),
(28, 'Paxton Pacocha', 'Molestias debitis ut deleniti. Laborum sint numquam dolorem eius. Eius enim autem aut recusandae.', 'large order', 'Invoice', 1984, 1984, 0, '2021-02-16', 15, 1, 1, '2021-01-21 00:48:23', '2021-02-22 00:48:23', NULL),
(29, 'Zion Crona', 'Omnis nihil expedita ea et. Commodi qui nostrum dolorem sapiente rem soluta.', 'large order', 'Invoice', 1625, 1625, 0, '2021-02-20', 6, 1, 1, '2021-02-16 00:48:23', '2021-02-22 00:48:23', NULL),
(30, 'Dr. Roberto Ernser', 'Ut eaque sed porro hic totam. Rem velit aut vel consequatur exercitationem.', 'one-off order', 'simple transfer', 1111, 1111, 0, '2021-01-31', 9, 1, 1, '2021-01-27 00:48:23', '2021-02-22 00:48:23', NULL),
(31, 'Lloyd Kunde', 'Ab quia quasi sint beatae quae. Tenetur aliquam sit et vel.', 'steady income', 'proforma invoice', 1811, 1811, 0, '2021-01-27', 51, 1, 1, '2021-02-07 00:48:23', '2021-02-22 00:48:23', NULL),
(32, 'Prof. Vena Shanahan', 'Eos nobis illo natus commodi quis. Molestiae et consectetur delectus itaque.', 'one-off order', 'simple transfer', 1297, 1297, 0, '2021-02-07', 25, 1, 1, '2021-02-19 00:48:24', '2021-02-22 00:48:24', NULL),
(33, 'Lewis Padberg', 'Et itaque officia sed quis. Et numquam illo a sed est. Dignissimos sed illo quos enim.', 'large order', 'proforma invoice', 1897, 1897, 0, '2021-01-24', 47, 1, 1, '2021-02-02 00:48:24', '2021-02-22 00:48:24', NULL),
(34, 'Prof. Corbin Rice', 'Harum nam quia quam consequatur ad atque. Totam ad adipisci voluptas iste.', 'small order', 'proforma invoice', 942, 942, 0, '2021-02-07', 33, 1, 1, '2021-02-12 00:48:24', '2021-02-22 00:48:24', NULL),
(35, 'Myrtice Quigley II', 'Quas aut distinctio maiores illum. Vel ut quo consequatur dolores provident harum quos commodi.', 'steady income', 'simple transfer', 1690, 1690, 0, '2021-02-12', 38, 1, 1, '2021-01-20 00:48:24', '2021-02-22 00:48:24', NULL),
(36, 'Carol Kerluke', 'Minima aliquam dolorum sint velit aut ea. Debitis esse non consectetur quia quia unde qui.', 'steady income', 'Invoice', 1462, 1462, 0, '2021-01-24', 49, 1, 1, '2021-01-25 00:48:24', '2021-02-22 00:48:24', NULL),
(37, 'Joannie Shanahan', 'Sit ut quibusdam nesciunt. Amet sed quis et laborum ea.', 'one-off order', 'Invoice', 1740, 1740, 0, '2021-01-29', 26, 1, 1, '2021-02-10 00:48:24', '2021-02-22 00:48:24', NULL),
(38, 'Trudie Mosciski DVM', 'Maxime sapiente quia eligendi doloremque ad in facere. Dolorem qui magni laborum rerum.', 'large order', 'advance', 1219, 1219, 0, '2021-01-25', 15, 1, 1, '2021-02-09 00:48:24', '2021-02-22 00:48:24', NULL),
(39, 'Raleigh Mills', 'Et tempora deleniti iusto. Similique eaque omnis molestiae aut.', 'one-off order', 'advance', 1946, 1946, 0, '2021-01-23', 21, 1, 1, '2021-02-15 00:48:24', '2021-02-22 00:48:24', NULL),
(40, 'Hilton Parisian PhD', 'Sed reiciendis ut reprehenderit sequi et quas. Et labore culpa aut voluptatem.', 'small order', 'simple transfer', 1936, 1936, 0, '2021-02-16', 17, 1, 1, '2021-02-21 00:48:24', '2021-02-22 00:48:24', NULL),
(41, 'Otha Corkery', 'Maxime quae ut ut aut eaque in qui ut. Mollitia facilis commodi unde eum aut id explicabo.', 'steady income', 'Invoice', 1619, 1619, 0, '2021-02-15', 28, 1, 1, '2021-02-05 00:48:24', '2021-02-22 00:48:24', NULL),
(42, 'Sonny Trantow', 'Quia et odit enim sed et. Qui aut voluptatem nemo voluptates facere laudantium vero.', 'one-off order', 'proforma invoice', 1322, 1322, 0, '2021-01-28', 19, 1, 1, '2021-01-25 00:48:24', '2021-02-22 00:48:24', NULL),
(43, 'Maya Kulas', 'Consequatur et nesciunt illum numquam eos non. Doloremque quibusdam quo ipsam occaecati quia.', 'steady income', 'Invoice', 1180, 1180, 0, '2021-01-25', 46, 1, 1, '2021-01-27 00:48:24', '2021-02-22 00:48:24', NULL),
(44, 'Otis Brekke', 'Maiores quos nihil accusantium. Sequi odio non voluptatum eaque cum.', 'one-off order', 'advance', 920, 920, 0, '2021-02-11', 14, 1, 1, '2021-02-08 00:48:24', '2021-02-22 00:48:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_admins_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_08_063939_create_table_clients', 1),
(4, '2017_08_08_063944_create_table_companies', 1),
(5, '2017_08_18_073557_create_table_deals', 1),
(6, '2017_08_19_101613_create_table_Employees', 1),
(7, '2017_09_12_124214_create_table_tasks', 1),
(8, '2017_09_13_171158_create_table_reports', 1),
(9, '2017_09_13_171227_create_table_finances', 1),
(10, '2017_09_13_171236_create_table_products', 1),
(11, '2017_09_13_171248_create_table_sales', 1),
(12, '2017_11_18_122319_SystemLogs', 1),
(13, '2020_01_19_131843_add_settings_table', 1),
(14, '2020_01_22_121759_add_deals_terms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `count`, `price`, `is_active`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Photo camera', 'Hickle', 76, 854, 1, 1, '2021-02-22 00:48:03', '2021-02-22 00:48:03', NULL),
(2, 'Underwear', 'Borer', 196, 506, 1, 1, '2021-02-21 11:48:27', '2021-02-22 00:48:03', NULL),
(3, 'Hoodie', 'Luettgen', 356, 384, 1, 1, '2021-02-22 00:05:40', '2021-02-22 00:48:03', NULL),
(4, 'Boots', 'Stracke', 330, 583, 1, 1, '2021-02-21 00:55:10', '2021-02-22 00:48:03', NULL),
(5, 'Handkerchiefs', 'Yundt', 279, 546, 1, 1, '2021-02-18 00:49:20', '2021-02-22 00:48:03', NULL),
(6, 'Wet wipes', 'Kuhlman', 76, 433, 1, 1, '2021-02-17 23:15:42', '2021-02-22 00:48:04', NULL),
(7, 'Pen', 'Adams', 136, 666, 1, 1, '2021-02-20 15:01:54', '2021-02-22 00:48:04', NULL),
(8, 'Comb', 'Schroeder', 417, 34, 1, 1, '2021-02-15 05:17:34', '2021-02-22 00:48:04', NULL),
(9, 'Food from the fridge', 'Blanda', 144, 365, 1, 1, '2021-02-19 05:18:23', '2021-02-22 00:48:04', NULL),
(10, 'Card', 'Nikolaus', 341, 607, 1, 1, '2021-02-20 00:26:24', '2021-02-22 00:48:04', NULL),
(11, 'Compass', 'Beer', 488, 122, 1, 1, '2021-02-12 15:02:30', '2021-02-22 00:48:04', NULL),
(12, 'GOT books', 'Champlin', 468, 448, 1, 1, '2021-02-19 08:12:53', '2021-02-22 00:48:04', NULL),
(13, 'Slippers', 'Kling', 483, 671, 1, 1, '2021-02-11 09:11:56', '2021-02-22 00:48:04', NULL),
(14, 'Keys from the apartment', 'Wunsch', 249, 685, 1, 1, '2021-02-18 15:14:50', '2021-02-22 00:48:04', NULL),
(15, 'Cream', 'Hegmann', 94, 289, 1, 1, '2021-02-11 11:33:44', '2021-02-22 00:48:04', NULL),
(16, 'Binoculars', 'Lubowitz', 158, 263, 1, 1, '2021-02-10 13:38:29', '2021-02-22 00:48:04', NULL),
(17, 'Maps', 'Bartell', 217, 49, 1, 1, '2021-02-10 08:16:20', '2021-02-22 00:48:04', NULL),
(18, 'beverages', 'Koepp', 145, 571, 1, 1, '2021-02-15 06:39:34', '2021-02-22 00:48:05', NULL),
(19, 'Band', 'Auer', 82, 775, 1, 1, '2021-02-20 09:34:33', '2021-02-22 00:48:05', NULL),
(20, 'Toothpaste', 'Schaden', 152, 903, 1, 1, '2021-02-17 22:21:25', '2021-02-22 00:48:05', NULL),
(21, 'Cape', 'Yundt', 237, 96, 1, 1, '2021-02-06 10:28:28', '2021-02-22 00:48:05', NULL),
(22, 'Undershirt', 'Predovic', 57, 150, 1, 1, '2021-02-01 13:50:36', '2021-02-22 00:48:05', NULL),
(23, 'Wallet', 'Kerluke', 330, 550, 1, 1, '2021-02-13 13:07:11', '2021-02-22 00:48:05', NULL),
(24, 'Snacks on the road', 'Koch', 272, 381, 1, 1, '2021-02-13 02:53:29', '2021-02-22 00:48:05', NULL),
(25, 'Towel', 'Terry', 324, 852, 1, 1, '2021-02-02 17:35:07', '2021-02-22 00:48:05', NULL),
(26, 'Gloves', 'Abbott', 439, 537, 1, 1, '2021-02-10 19:14:17', '2021-02-22 00:48:05', NULL),
(27, 'Socks', 'Boyer', 351, 293, 1, 1, '2021-02-01 15:17:31', '2021-02-22 00:48:05', NULL),
(28, 'Trousers', 'Jones', 131, 419, 1, 1, '2021-02-15 20:22:12', '2021-02-22 00:48:05', NULL),
(29, 'Shampoo', 'Bartoletti', 209, 295, 1, 1, '2021-01-28 14:36:55', '2021-02-22 00:48:05', NULL),
(30, 'Brush', 'Berge', 126, 224, 1, 1, '2021-02-14 10:47:26', '2021-02-22 00:48:06', NULL),
(31, 'Sleeping bag', 'Batz', 152, 646, 1, 1, '2021-02-04 03:37:59', '2021-02-22 00:48:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companies_id` int(10) UNSIGNED NOT NULL,
  `clients_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date_of_payment` date NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `name`, `quantity`, `price`, `date_of_payment`, `product_id`, `is_active`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sadie Gutkowski', 16, 854, '2021-01-30', 1, 1, 1, '2021-02-05 04:53:24', '2021-02-22 00:48:06', NULL),
(2, 'Miss Lelah Crona', 13, 506, '2021-02-08', 2, 1, 1, '2021-02-03 22:15:13', '2021-02-22 00:48:06', NULL),
(3, 'Mikel Schulist II', 13, 384, '2021-02-06', 3, 1, 1, '2021-02-17 15:06:12', '2021-02-22 00:48:06', NULL),
(4, 'Dylan Feest', 18, 583, '2021-02-10', 4, 1, 1, '2021-02-15 06:16:03', '2021-02-22 00:48:07', NULL),
(5, 'Prof. Nathaniel Ritchie', 17, 546, '2021-02-06', 5, 1, 1, '2021-02-01 23:18:03', '2021-02-22 00:48:07', NULL),
(6, 'Scot Blick MD', 16, 433, '2021-02-06', 6, 1, 1, '2021-02-03 05:31:09', '2021-02-22 00:48:07', NULL),
(7, 'Phyllis Braun DVM', 12, 666, '2021-02-01', 7, 1, 1, '2021-01-23 12:46:22', '2021-02-22 00:48:07', NULL),
(8, 'Cara Emmerich', 16, 34, '2021-01-22', 8, 1, 1, '2021-01-27 20:23:49', '2021-02-22 00:48:07', NULL),
(9, 'Pasquale Spinka', 10, 365, '2021-01-22', 9, 1, 1, '2021-02-02 00:10:13', '2021-02-22 00:48:07', NULL),
(10, 'Javonte Funk Jr.', 13, 607, '2021-02-08', 10, 1, 1, '2021-01-23 00:58:38', '2021-02-22 00:48:07', NULL),
(11, 'Mabelle Witting', 13, 122, '2021-02-15', 11, 1, 1, '2021-01-25 08:26:32', '2021-02-22 00:48:07', NULL),
(12, 'Cathy Jones', 16, 448, '2021-02-19', 12, 1, 1, '2021-01-30 06:57:55', '2021-02-22 00:48:07', NULL),
(13, 'Mrs. Felicia Stamm V', 15, 671, '2021-02-17', 13, 1, 1, '2021-02-06 21:25:39', '2021-02-22 00:48:07', NULL),
(14, 'Miss Kali Trantow', 14, 685, '2021-02-20', 14, 1, 1, '2021-02-05 15:54:31', '2021-02-22 00:48:07', NULL),
(15, 'Marcelle Schamberger', 12, 289, '2021-01-28', 15, 1, 1, '2021-02-02 22:20:56', '2021-02-22 00:48:08', NULL),
(16, 'Curt Kuhlman', 19, 263, '2021-02-10', 16, 1, 1, '2021-02-13 22:27:40', '2021-02-22 00:48:08', NULL),
(17, 'Gudrun Champlin III', 20, 49, '2021-01-26', 17, 1, 1, '2021-02-13 11:30:54', '2021-02-22 00:48:08', NULL),
(18, 'Cathy Spinka', 19, 571, '2021-01-31', 18, 1, 1, '2021-02-19 18:55:49', '2021-02-22 00:48:08', NULL),
(19, 'Mariano Paucek', 16, 775, '2021-01-25', 19, 1, 1, '2021-02-12 06:20:42', '2021-02-22 00:48:08', NULL),
(20, 'Danyka Zemlak', 19, 903, '2021-02-12', 20, 1, 1, '2021-02-08 06:03:56', '2021-02-22 00:48:08', NULL),
(21, 'Ms. Krystel Wilderman Jr.', 13, 96, '2021-02-04', 21, 1, 1, '2021-02-18 21:39:41', '2021-02-22 00:48:09', NULL),
(22, 'Millie Keeling', 16, 150, '2021-02-21', 22, 1, 1, '2021-01-31 12:26:02', '2021-02-22 00:48:09', NULL),
(23, 'Lemuel Rutherford', 20, 550, '2021-01-23', 23, 1, 1, '2021-01-31 18:50:50', '2021-02-22 00:48:09', NULL),
(24, 'Norwood Moen', 15, 381, '2021-01-29', 24, 1, 1, '2021-01-24 12:07:02', '2021-02-22 00:48:09', NULL),
(25, 'Felipa Nikolaus', 15, 852, '2021-01-27', 25, 1, 1, '2021-02-06 06:36:15', '2021-02-22 00:48:09', NULL),
(26, 'Dana Reinger', 19, 537, '2021-02-20', 26, 1, 1, '2021-02-13 05:17:51', '2021-02-22 00:48:09', NULL),
(27, 'Margaret Rodriguez', 10, 293, '2021-01-26', 27, 1, 1, '2021-02-14 08:05:10', '2021-02-22 00:48:10', NULL),
(28, 'Dusty Bashirian Jr.', 20, 419, '2021-02-13', 28, 1, 1, '2021-01-23 12:17:10', '2021-02-22 00:48:10', NULL),
(29, 'Chaz Berge', 18, 295, '2021-02-10', 29, 1, 1, '2021-02-03 01:48:55', '2021-02-22 00:48:10', NULL),
(30, 'Dr. Jadon Funk', 15, 224, '2021-01-26', 30, 1, 1, '2021-02-20 17:35:26', '2021-02-22 00:48:10', NULL),
(31, 'Austin Corkery', 19, 646, '2021-02-09', 31, 1, 1, '2021-02-18 09:13:38', '2021-02-22 00:48:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pagination_size', '5', 'set pagination size', NULL, NULL, NULL),
(2, 'currency', 'EUR', 'set currency type', NULL, NULL, NULL),
(3, 'priority_size', '3', 'set priority size', NULL, NULL, NULL),
(4, 'invoice_tax', '3', 'set invoice tax size', NULL, NULL, NULL),
(5, 'invoice_tax', '3', 'set invoice tax size', NULL, NULL, NULL),
(6, 'loading_circle', '1', 'set loading circle', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `systemlogs`
--

CREATE TABLE `systemlogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` int(11) DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systemlogs`
--

INSERT INTO `systemlogs` (`id`, `user_id`, `actions`, `status_code`, `ip_address`, `city`, `country`, `date`, `admin_id`) VALUES
(1, NULL, 'First usage of process-softcrm command', 200, '66.249.69.115', '', 'United States', '2021-02-22 06:18:25', 1),
(2, '1', 'countryzoneModel has been add with id: 1', 201, '66.249.69.115', '', 'United States', '2021-02-22 11:38:45', 1),
(3, '1', 'countryzoneModel has been add with id: 2', 201, '66.249.69.115', '', 'United States', '2021-02-22 11:40:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `duration` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `completed` tinyint(1) DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `employee_id`, `duration`, `is_active`, `completed`, `admin_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Velit quia architecto ipsa. Rerum est sint autem qui. Eos eveniet illo veniam voluptatem doloremque. Omnis ipsum repellat unde sed maiores. Eligendi consequatur praesentium tempora aut.', 48, 29, 1, 1, 1, '2021-02-12 14:41:01', '2021-02-22 00:48:10', NULL),
(2, 'Perspiciatis debitis est recusandae aut accusamus sit. Provident cupiditate voluptatem reprehenderit dolor quia. Ea qui error possimus quis dolore tempore explicabo cupiditate.', 64, 7, 1, 0, 1, '2021-02-19 21:37:31', '2021-02-22 00:48:11', NULL),
(3, 'Dolore eaque eos ullam dolorem pariatur. Doloremque quo et tenetur nam. Hic sit fugiat expedita qui aliquid totam.', 35, 7, 1, 1, 1, '2021-02-08 12:52:56', '2021-02-22 00:48:11', NULL),
(4, 'Libero eius dolorem ut ducimus error. Perferendis consequatur et molestiae ad cupiditate debitis aspernatur. Nostrum dignissimos quia et numquam et. Sunt sit est animi rerum.', 33, 6, 1, 0, 1, '2021-02-08 18:41:18', '2021-02-22 00:48:12', NULL),
(5, 'Beatae nostrum voluptas laborum deleniti iure magnam. Et minima porro porro facere facilis alias.', 10, 3, 1, 1, 1, '2021-02-15 11:53:08', '2021-02-22 00:48:12', NULL),
(6, 'Iste mollitia autem quo praesentium eum. Quis illum sint magnam ea ipsa. Animi facere numquam in. Eaque voluptas repudiandae veniam eaque consectetur labore.', 17, 11, 1, 0, 1, '2021-02-18 06:29:01', '2021-02-22 00:48:12', NULL),
(7, 'Tempora sequi quae est ab ut. Veritatis fugit illo beatae exercitationem. Neque in aut in quo. Commodi fugit et voluptas eius reprehenderit cum sed.', 10, 22, 1, 1, 1, '2021-02-14 00:53:34', '2021-02-22 00:48:12', NULL),
(8, 'Inventore ipsam quaerat molestias occaecati. Eius sequi nihil vitae ut nihil dolores iure. Commodi fugiat et ad maiores repudiandae quia. Deleniti quo quae iure aut.', 58, 22, 1, 1, 1, '2021-02-09 12:47:25', '2021-02-22 00:48:12', NULL),
(9, 'Consequatur reprehenderit et quos sit. Culpa quia ut illo. Et et alias velit perspiciatis enim omnis. Nulla voluptatibus quidem aut culpa sapiente cum voluptas corrupti.', 66, 8, 1, 1, 1, '2021-02-20 13:46:23', '2021-02-22 00:48:13', NULL),
(10, 'Omnis maiores culpa eum corporis et aspernatur fugiat. Eligendi in quam tenetur fugiat et quidem esse. Rerum enim sequi voluptatem animi eius nihil cum.', 46, 6, 1, 0, 1, '2021-02-20 14:51:22', '2021-02-22 00:48:13', NULL),
(11, 'Numquam et dicta quia dolores neque. Est quia sapiente aut ut delectus vitae occaecati accusantium. Ipsum consequatur neque accusantium voluptas. Omnis ex quasi molestiae velit autem sit quo.', 4, 7, 1, 0, 1, '2021-02-16 11:00:44', '2021-02-22 00:48:13', NULL),
(12, 'Minima odit officia sapiente itaque veritatis consequatur in. Sit odio consectetur vel deleniti distinctio. Rerum quam vel minus. Qui reprehenderit quas amet fugiat.', 61, 27, 1, 1, 1, '2021-02-20 07:30:41', '2021-02-22 00:48:13', NULL),
(13, 'Illo maxime rerum sunt consequuntur voluptas ex. Molestias optio debitis veritatis qui non. Omnis et nobis officiis est eius nam. In rerum harum molestiae magni.', 1, 11, 1, 0, 1, '2021-02-14 13:18:36', '2021-02-22 00:48:13', NULL),
(14, 'Recusandae libero incidunt dolores ut id. Voluptatem rerum eligendi vitae qui sit consequatur consequatur. Nihil eius dignissimos aut sint sunt cumque.', 20, 26, 1, 1, 1, '2021-02-15 15:58:24', '2021-02-22 00:48:14', NULL),
(15, 'Possimus sunt magnam et exercitationem. Delectus earum vero atque exercitationem eos. Temporibus quibusdam sit rem repudiandae fugit earum aut.', 15, 7, 1, 0, 1, '2021-02-12 10:22:41', '2021-02-22 00:48:14', NULL),
(16, 'Molestiae tempora qui voluptatem excepturi ipsum. Veniam officia et vel quia molestias. Incidunt numquam aperiam explicabo deserunt quo. Quae et et repellat voluptatem at nostrum.', 17, 14, 1, 0, 1, '2021-02-20 22:48:52', '2021-02-22 00:48:14', NULL),
(17, 'Soluta modi fugit dolorum rerum eligendi. Amet placeat consequatur dolorem. Nesciunt ea minus id dolor ad. Non quae numquam et facere quia velit quam et.', 3, 12, 1, 0, 1, '2021-02-14 13:56:44', '2021-02-22 00:48:14', NULL),
(18, 'Ut facilis et sit sunt autem debitis autem voluptates. Doloribus cupiditate optio perspiciatis labore. Aut est quidem earum sed quae accusantium vitae id. Fugit corporis et consequatur esse sunt.', 55, 11, 1, 0, 1, '2021-02-14 19:13:00', '2021-02-22 00:48:14', NULL),
(19, 'Est consequatur ut inventore et adipisci esse. Deleniti rerum autem accusamus et dolorum et dolorum. Ratione placeat molestias doloribus qui. Sint magnam sit magni cum veritatis dolorum.', 32, 25, 1, 1, 1, '2021-02-09 11:13:41', '2021-02-22 00:48:14', NULL),
(20, 'Corporis natus unde molestiae blanditiis rerum nostrum. Quae error ex sint cupiditate odio molestiae ut. Assumenda minima sed suscipit aspernatur nulla minima. Ut enim impedit ut ab.', 20, 5, 1, 0, 1, '2021-02-08 21:19:45', '2021-02-22 00:48:15', NULL),
(21, 'Ut sit aliquam deserunt quam omnis cumque quidem. Sed voluptatem ratione eos impedit dolore sed.', 45, 4, 1, 0, 1, '2021-02-14 09:15:30', '2021-02-22 00:48:15', NULL),
(22, 'Facere praesentium sit ut quos dolores minus velit. Numquam nostrum modi pariatur qui et velit. Odit eius voluptates odit vel. Quidem quis et nam est placeat delectus.', 31, 28, 1, 1, 1, '2021-02-18 09:18:47', '2021-02-22 00:48:15', NULL),
(23, 'Numquam aspernatur reprehenderit dolore ducimus sed similique. Doloribus similique dolores illum molestiae culpa nobis incidunt. Iure eveniet enim odit quae voluptatem eum.', 26, 28, 1, 0, 1, '2021-02-19 02:52:57', '2021-02-22 00:48:15', NULL),
(24, 'Quo et eaque exercitationem ipsum omnis tenetur. Vel nostrum in iste impedit repudiandae ratione nihil. Eos minus ut eum dolorum id illo. Eos nisi accusamus ipsum laborum.', 16, 9, 1, 1, 1, '2021-02-19 01:04:51', '2021-02-22 00:48:15', NULL),
(25, 'Nihil qui sequi autem dolores perferendis et omnis quam. Est minima temporibus aut quia est consectetur voluptates. Voluptas et qui fugit quia id.', 6, 6, 1, 0, 1, '2021-02-07 09:45:46', '2021-02-22 00:48:15', NULL),
(26, 'Rem alias omnis accusantium accusantium cumque maxime quia unde. Autem veniam deserunt non dolores. Similique et ullam temporibus est voluptatem.', 53, 19, 1, 1, 1, '2021-02-19 02:33:55', '2021-02-22 00:48:15', NULL),
(27, 'Rerum voluptatum et animi nostrum tempore. Corrupti dolor qui rerum repudiandae similique et. Non omnis voluptas quo non itaque. Dolores similique quae itaque pariatur nihil dicta officiis.', 37, 19, 1, 0, 1, '2021-02-21 08:30:56', '2021-02-22 00:48:15', NULL),
(28, 'Corrupti quam et quo quidem voluptatem. Non dolores soluta fugiat aut ea dignissimos nostrum quia. Corrupti optio aut suscipit deserunt ad ipsam.', 55, 23, 1, 0, 1, '2021-02-09 22:37:50', '2021-02-22 00:48:15', NULL),
(29, 'In voluptate perspiciatis consequatur quis illum illum. Odio cum non rerum praesentium et debitis sed. Ipsam sit accusantium qui.', 43, 8, 1, 1, 1, '2021-02-07 11:02:25', '2021-02-22 00:48:15', NULL),
(30, 'Qui voluptas assumenda debitis occaecati excepturi. Nam amet dolorem et quibusdam. Illum veritatis animi aut iste assumenda illo. Ab dolore et eum reiciendis.', 51, 24, 1, 0, 1, '2021-02-13 17:50:38', '2021-02-22 00:48:15', NULL),
(31, 'Officiis nisi in velit ut aut ipsum fugit at. Laboriosam voluptatibus doloremque minus magni sit nostrum omnis. Magni voluptas sit maiores consectetur sunt.', 46, 6, 1, 0, 1, '2021-02-15 20:47:01', '2021-02-22 00:48:15', NULL),
(32, 'Et exercitationem ipsum repellat nobis expedita exercitationem odio. Ratione quaerat velit suscipit in necessitatibus. Quia maiores reiciendis accusantium nesciunt.', 22, 25, 1, 0, 1, '2021-02-11 18:17:50', '2021-02-22 00:48:15', NULL),
(33, 'Et non alias hic. Adipisci nesciunt eveniet quibusdam architecto id.', 18, 27, 1, 1, 1, '2021-02-08 23:48:07', '2021-02-22 00:48:15', NULL),
(34, 'Et maiores voluptas harum enim illo. Reiciendis sequi et dolores. In voluptatem ullam eum quia quam. Dolorem doloribus dolor est quia.', 68, 18, 1, 1, 1, '2021-02-13 22:41:04', '2021-02-22 00:48:15', NULL),
(35, 'Quasi iusto maiores reprehenderit officiis omnis. Ipsum consectetur similique accusamus pariatur at mollitia.', 14, 26, 1, 1, 1, '2021-02-07 18:50:08', '2021-02-22 00:48:15', NULL),
(36, 'Saepe officiis pariatur dolorem fugit ut. Quos totam magnam sint enim facilis eligendi. Non in repellat itaque voluptatum accusantium rerum.', 27, 1, 1, 1, 1, '2021-02-17 15:08:02', '2021-02-22 00:48:15', NULL),
(37, 'In adipisci ratione exercitationem et. Ut asperiores fuga non. Aliquam ullam aspernatur numquam.', 50, 22, 1, 1, 1, '2021-02-08 15:47:58', '2021-02-22 00:48:15', NULL),
(38, 'Et at et voluptate veniam. Sint aut nam aut veritatis aperiam. Aliquam fuga est qui veritatis. Rerum dolore ad dolores omnis sit modi. Consectetur et aspernatur a unde natus officiis ut.', 2, 27, 1, 1, 1, '2021-02-15 03:36:38', '2021-02-22 00:48:16', NULL),
(39, 'Natus odio numquam occaecati. In qui magni dolorem occaecati consequatur vel. Sed alias voluptatem reprehenderit voluptas praesentium fuga. Tempore voluptates pariatur aliquam.', 66, 12, 1, 0, 1, '2021-02-07 18:18:53', '2021-02-22 00:48:16', NULL),
(40, 'Dolor quaerat ut necessitatibus. Voluptas id ipsum ea. Et vel aut quos debitis fugit labore eum soluta. Ab quasi eum consectetur rerum in natus ut.', 59, 15, 1, 1, 1, '2021-02-18 21:04:49', '2021-02-22 00:48:16', NULL),
(41, 'Ab ut cumque ratione repellat nulla rem et. Cupiditate esse repellat possimus omnis in fugit magnam. Iusto accusamus blanditiis atque qui. Velit praesentium qui sapiente ad iure qui fugit.', 17, 2, 1, 0, 1, '2021-02-10 01:44:29', '2021-02-22 00:48:17', NULL),
(42, 'Velit et labore ea molestiae totam. Temporibus non et error asperiores nihil ex. Iusto ex minima laborum tempore non quae quia.', 25, 2, 1, 1, 1, '2021-02-14 07:32:14', '2021-02-22 00:48:18', NULL),
(43, 'Voluptatem consequatur velit quasi magni. Cumque praesentium atque quia harum eveniet. A veniam sed quia aut eius maiores. Enim voluptatem natus illo non.', 35, 7, 1, 1, 1, '2021-02-21 09:40:57', '2021-02-22 00:48:18', NULL),
(44, 'Vel nam similique rerum occaecati. Perferendis aperiam architecto animi nostrum ea. Vel beatae necessitatibus rem omnis corrupti dicta.', 62, 16, 1, 0, 1, '2021-02-15 18:59:10', '2021-02-22 00:48:18', NULL),
(45, 'Deserunt minima debitis ab qui libero. Sunt maiores nesciunt alias quos ea et et. Cupiditate nobis iure provident atque fuga quia laboriosam incidunt. Architecto optio aut velit est.', 10, 9, 1, 1, 1, '2021-02-08 11:55:11', '2021-02-22 00:48:18', NULL),
(46, 'Molestias et aspernatur dolores maxime consequatur nostrum. Est est molestias amet facere a mollitia. Suscipit qui facilis officiis sit ducimus dolores. Eos enim id veritatis.', 7, 2, 1, 1, 1, '2021-02-07 15:55:26', '2021-02-22 00:48:19', NULL),
(47, 'Quibusdam dolores quisquam et eius quis. Et consequatur repudiandae esse atque aperiam voluptatem eum. Iusto natus porro sit quidem aut nostrum.', 40, 14, 1, 0, 1, '2021-02-17 23:30:12', '2021-02-22 00:48:19', NULL),
(48, 'Ab optio et quibusdam corporis voluptatem ab. Commodi sint quaerat necessitatibus earum sed voluptas praesentium.', 63, 19, 1, 1, 1, '2021-02-18 02:29:47', '2021-02-22 00:48:19', NULL),
(49, 'Vel laudantium libero fugit. Rerum quo pariatur doloremque repudiandae et. Sit velit excepturi voluptatem unde quia inventore odio. Quaerat qui voluptatem ratione eveniet laudantium voluptatum.', 9, 20, 1, 0, 1, '2021-02-15 19:42:06', '2021-02-22 00:48:19', NULL),
(50, 'Et qui voluptatem qui qui veniam ut. Asperiores ut quisquam voluptate perspiciatis. Esse qui facere minima ad. Sint atque sed ab molestias et quis.', 36, 9, 1, 1, 1, '2021-02-19 18:24:10', '2021-02-22 00:48:19', NULL),
(51, 'Fugit occaecati qui iusto repudiandae qui veritatis. Possimus ut possimus ut inventore et iusto consequatur autem. Iste sit sunt et ut amet.', 35, 26, 1, 1, 1, '2021-02-09 23:25:37', '2021-02-22 00:48:19', NULL),
(52, 'Voluptas est iusto et tempore placeat consequuntur rerum. Eos iure nobis est aut in aperiam. Nobis deserunt earum numquam sequi neque qui.', 28, 28, 1, 1, 1, '2021-02-12 05:39:50', '2021-02-22 00:48:19', NULL),
(53, 'Aliquid totam quia molestiae est eos molestiae. Qui fugit voluptatibus quia error qui labore architecto. Dolor nemo dolor aspernatur vitae.', 21, 7, 1, 0, 1, '2021-02-18 10:20:17', '2021-02-22 00:48:19', NULL),
(54, 'Qui quis architecto vero velit qui voluptatem quia. Molestiae et praesentium iure facere quia mollitia earum ducimus. Architecto quia omnis voluptatem. Voluptas unde aut architecto.', 45, 9, 1, 0, 1, '2021-02-15 13:24:02', '2021-02-22 00:48:19', NULL),
(55, 'Sequi similique tenetur voluptatem ut quas voluptas doloremque. Odio et illum consequuntur adipisci. Aut tempora voluptatem architecto accusantium non consequatur repellendus sed.', 64, 22, 1, 1, 1, '2021-02-10 15:17:49', '2021-02-22 00:48:19', NULL),
(56, 'Maiores et architecto eos accusantium aut tenetur sit. Ut quas ut est vel et saepe quia. Deserunt quaerat saepe asperiores. Ad eos aut quia consequatur ut aut.', 64, 1, 1, 0, 1, '2021-02-16 02:51:15', '2021-02-22 00:48:19', NULL),
(57, 'Velit aut beatae nesciunt occaecati laboriosam doloribus. Quas reprehenderit eligendi dolorum ut. Quo et fugiat quia qui sit consequatur fugit quibusdam.', 68, 19, 1, 0, 1, '2021-02-13 02:18:20', '2021-02-22 00:48:19', NULL),
(58, 'Facere qui numquam et quisquam cumque eius dolor. Corrupti temporibus sunt ex est unde est tenetur.', 11, 15, 1, 1, 1, '2021-02-14 17:12:52', '2021-02-22 00:48:19', NULL),
(59, 'In unde et deleniti saepe magni sed. Dolores impedit provident enim ducimus aut ducimus. Sapiente voluptas mollitia suscipit pariatur sit. Fugiat perferendis quo aspernatur dolorem sit et eum labore.', 22, 27, 1, 0, 1, '2021-02-08 23:02:26', '2021-02-22 00:48:19', NULL),
(60, 'Quis ut quis sunt in. Eligendi blanditiis laborum fugiat magnam. Recusandae incidunt nesciunt commodi similique. Ut et nulla deserunt debitis.', 40, 3, 1, 1, 1, '2021-02-16 22:57:00', '2021-02-22 00:48:19', NULL),
(61, 'Quia soluta cupiditate beatae. Distinctio explicabo impedit non voluptates accusamus quisquam at sint. Possimus eos sunt cupiditate a in dolor. Nesciunt commodi inventore facilis dicta quidem omnis.', 42, 2, 1, 0, 1, '2021-02-11 01:05:59', '2021-02-22 00:48:20', NULL),
(62, 'Rerum voluptate voluptates magni quia. Ut sed deleniti explicabo sint nulla tempora.', 42, 12, 1, 0, 1, '2021-02-10 16:51:04', '2021-02-22 00:48:20', NULL),
(63, 'Quia sed minima reiciendis ut. Rerum nesciunt consequatur non voluptate dicta aliquam nam. Corrupti et ut explicabo aperiam aut error nemo.', 8, 11, 1, 1, 1, '2021-02-14 13:41:55', '2021-02-22 00:48:20', NULL),
(64, 'Iure voluptatem sunt consequatur voluptatem pariatur ut est qui. Rem illum asperiores maxime autem. Voluptas debitis optio aut illo ut reiciendis ipsum sed.', 12, 18, 1, 0, 1, '2021-02-11 11:29:06', '2021-02-22 00:48:20', NULL),
(65, 'Eveniet possimus debitis expedita enim libero aut. Quod iure esse quam. Aspernatur dolores id laudantium molestias illo consequuntur. Aut ut adipisci illum.', 49, 16, 1, 1, 1, '2021-02-07 13:18:01', '2021-02-22 00:48:20', NULL),
(66, 'In quas velit deleniti sit veniam. Molestias quia perspiciatis voluptatum excepturi id non assumenda. Eum nihil veritatis enim. Consequuntur libero accusantium cupiditate quia non dolor illum.', 27, 25, 1, 0, 1, '2021-02-10 06:20:32', '2021-02-22 00:48:20', NULL),
(67, 'Enim delectus et ut occaecati soluta tenetur rem. Quisquam quia inventore est enim architecto. Earum nobis numquam enim natus consequatur quaerat vel.', 22, 18, 1, 0, 1, '2021-02-08 18:33:21', '2021-02-22 00:48:20', NULL),
(68, 'Ea enim et accusantium cupiditate quia voluptate. Vero numquam fugit nemo numquam cumque fuga quam sit. Quisquam voluptates id aspernatur perspiciatis ad.', 7, 16, 1, 0, 1, '2021-02-13 09:56:51', '2021-02-22 00:48:20', NULL),
(69, 'Error tempore et harum quia repudiandae. Molestias eum reiciendis perferendis voluptate officia delectus sint corrupti. Unde harum sapiente et illum fuga debitis. Eaque aut unde error sunt provident.', 62, 5, 1, 1, 1, '2021-02-15 17:15:16', '2021-02-22 00:48:21', NULL),
(70, 'Qui sapiente quasi non voluptate omnis necessitatibus laudantium sunt. Consectetur veritatis debitis dolore voluptatem. Accusamus quibusdam eligendi nisi architecto vel.', 24, 19, 1, 0, 1, '2021-02-19 20:42:15', '2021-02-22 00:48:21', NULL),
(71, 'Tempora possimus sunt quis quia. Recusandae itaque facere est ut sit quasi. Qui blanditiis maiores dolorem totam nam.', 12, 14, 1, 0, 1, '2021-02-13 09:10:19', '2021-02-22 00:48:21', NULL),
(72, 'Quisquam nam veritatis veritatis et amet sit odit. Dolor repudiandae officiis quibusdam enim. Pariatur voluptas dicta at ut voluptates nihil.', 29, 17, 1, 0, 1, '2021-02-20 20:23:43', '2021-02-22 00:48:21', NULL),
(73, 'Ipsam et qui saepe quibusdam qui veniam aut. Adipisci blanditiis perferendis labore dolores hic. Voluptate fuga quia enim impedit consequuntur. Saepe quia ex ratione voluptatum dolorum distinctio.', 30, 15, 1, 1, 1, '2021-02-15 13:14:33', '2021-02-22 00:48:21', NULL),
(74, 'Autem hic sed soluta iusto fuga iure. Nihil ratione nihil assumenda. Et et et quaerat quisquam quisquam voluptatum qui earum. Deserunt cupiditate quae dignissimos nesciunt aliquid.', 34, 23, 1, 1, 1, '2021-02-10 10:14:52', '2021-02-22 00:48:21', NULL),
(75, 'Asperiores deserunt vitae eum nam. Eum qui harum quam accusantium id ab id.', 53, 25, 1, 1, 1, '2021-02-07 18:14:01', '2021-02-22 00:48:21', NULL),
(76, 'Modi ut ipsam suscipit quia veniam illum. Dolore provident non aperiam et voluptates dolorum natus itaque. Eos impedit voluptatem hic id consectetur et. Mollitia veniam vel vitae ut.', 58, 26, 1, 1, 1, '2021-02-14 16:47:35', '2021-02-22 00:48:21', NULL),
(77, 'Qui quas voluptatem quis explicabo natus. In aliquam vel ut fugit. Repudiandae quaerat fuga autem vitae. Minus enim illo itaque consequatur iste voluptas. Ad enim voluptas autem at qui.', 66, 29, 1, 0, 1, '2021-02-18 05:31:54', '2021-02-22 00:48:21', NULL),
(78, 'Laudantium quia quos alias numquam eligendi. Ea nostrum totam sit. Ut distinctio consequatur omnis. Vero suscipit sapiente pariatur voluptas.', 14, 19, 1, 1, 1, '2021-02-19 05:27:20', '2021-02-22 00:48:21', NULL),
(79, 'Quibusdam cum quidem eos. Occaecati blanditiis perspiciatis quia rerum eos voluptatem. Delectus consequuntur doloribus eaque deleniti.', 53, 26, 1, 1, 1, '2021-02-07 14:26:30', '2021-02-22 00:48:21', NULL),
(80, 'Ipsa magnam minima tenetur est repellendus soluta. Et quia exercitationem expedita nihil. Minima inventore eaque commodi quibusdam. Omnis delectus eum ab commodi suscipit vero amet error.', 55, 10, 1, 1, 1, '2021-02-09 11:58:46', '2021-02-22 00:48:21', NULL),
(81, 'Voluptatem suscipit perspiciatis doloribus qui. Earum iusto ut nisi voluptatem sed.', 18, 1, 1, 1, 1, '2021-02-17 15:29:23', '2021-02-22 00:48:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_client_id_foreign` (`client_id`),
  ADD KEY `companies_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `countryzone`
--
ALTER TABLE `countryzone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deals_companies_id_foreign` (`companies_id`),
  ADD KEY `deals_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `deals_terms`
--
ALTER TABLE `deals_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deals_terms_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_client_id_foreign` (`client_id`),
  ADD KEY `employees_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finances_companies_id_foreign` (`companies_id`),
  ADD KEY `finances_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_companies_id_foreign` (`companies_id`),
  ADD KEY `reports_clients_id_foreign` (`clients_id`),
  ADD KEY `reports_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`),
  ADD KEY `sales_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemlogs`
--
ALTER TABLE `systemlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `systemlogs_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_employee_id_foreign` (`employee_id`),
  ADD KEY `tasks_admin_id_foreign` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `countryzone`
--
ALTER TABLE `countryzone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `deals_terms`
--
ALTER TABLE `deals_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `finances`
--
ALTER TABLE `finances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `systemlogs`
--
ALTER TABLE `systemlogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `companies_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `deals`
--
ALTER TABLE `deals`
  ADD CONSTRAINT `deals_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `deals_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `deals_terms`
--
ALTER TABLE `deals_terms`
  ADD CONSTRAINT `deals_terms_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `employees_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `finances`
--
ALTER TABLE `finances`
  ADD CONSTRAINT `finances_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `finances_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `reports_clients_id_foreign` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `reports_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `systemlogs`
--
ALTER TABLE `systemlogs`
  ADD CONSTRAINT `systemlogs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tasks_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
