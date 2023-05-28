-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 25, 2023 at 08:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `party`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(2, 'pacomorenonavarro10@gmail.com', 1, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add discotecas', 7, 'add_discotecas'),
(26, 'Can change discotecas', 7, 'change_discotecas'),
(27, 'Can delete discotecas', 7, 'delete_discotecas'),
(28, 'Can view discotecas', 7, 'view_discotecas'),
(29, 'Can add usuarios', 8, 'add_usuarios'),
(30, 'Can change usuarios', 8, 'change_usuarios'),
(31, 'Can delete usuarios', 8, 'delete_usuarios'),
(32, 'Can view usuarios', 8, 'view_usuarios'),
(33, 'Can add discotecass', 9, 'add_discotecass'),
(34, 'Can change discotecass', 9, 'change_discotecass'),
(35, 'Can delete discotecass', 9, 'delete_discotecass'),
(36, 'Can view discotecass', 9, 'view_discotecass'),
(37, 'Can add fiestas', 10, 'add_fiestas'),
(38, 'Can change fiestas', 10, 'change_fiestas'),
(39, 'Can delete fiestas', 10, 'delete_fiestas'),
(40, 'Can view fiestas', 10, 'view_fiestas'),
(41, 'Can add entradas', 11, 'add_entradas'),
(42, 'Can change entradas', 11, 'change_entradas'),
(43, 'Can delete entradas', 11, 'delete_entradas'),
(44, 'Can view entradas', 11, 'view_entradas'),
(45, 'Can add fotos', 12, 'add_fotos'),
(46, 'Can change fotos', 12, 'change_fotos'),
(47, 'Can delete fotos', 12, 'delete_fotos'),
(48, 'Can view fotos', 12, 'view_fotos'),
(49, 'Can add carrito', 13, 'add_carrito'),
(50, 'Can change carrito', 13, 'change_carrito'),
(51, 'Can delete carrito', 13, 'delete_carrito'),
(52, 'Can view carrito', 13, 'view_carrito'),
(53, 'Can add subscripciones', 14, 'add_subscripciones'),
(54, 'Can change subscripciones', 14, 'change_subscripciones'),
(55, 'Can delete subscripciones', 14, 'delete_subscripciones'),
(56, 'Can view subscripciones', 14, 'view_subscripciones'),
(57, 'Can add email address', 15, 'add_emailaddress'),
(58, 'Can change email address', 15, 'change_emailaddress'),
(59, 'Can delete email address', 15, 'delete_emailaddress'),
(60, 'Can view email address', 15, 'view_emailaddress'),
(61, 'Can add email confirmation', 16, 'add_emailconfirmation'),
(62, 'Can change email confirmation', 16, 'change_emailconfirmation'),
(63, 'Can delete email confirmation', 16, 'delete_emailconfirmation'),
(64, 'Can view email confirmation', 16, 'view_emailconfirmation'),
(65, 'Can add social account', 17, 'add_socialaccount'),
(66, 'Can change social account', 17, 'change_socialaccount'),
(67, 'Can delete social account', 17, 'delete_socialaccount'),
(68, 'Can view social account', 17, 'view_socialaccount'),
(69, 'Can add social application', 18, 'add_socialapp'),
(70, 'Can change social application', 18, 'change_socialapp'),
(71, 'Can delete social application', 18, 'delete_socialapp'),
(72, 'Can view social application', 18, 'view_socialapp'),
(73, 'Can add social application token', 19, 'add_socialtoken'),
(74, 'Can change social application token', 19, 'change_socialtoken'),
(75, 'Can delete social application token', 19, 'delete_socialtoken'),
(76, 'Can view social application token', 19, 'view_socialtoken'),
(77, 'Can add site', 20, 'add_site'),
(78, 'Can change site', 20, 'change_site'),
(79, 'Can delete site', 20, 'delete_site'),
(80, 'Can view site', 20, 'view_site');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$Pbb4cqA0JdWQVQXnmQxz2m$ddCNZzZUIVH5EtMOvq/y77rtwI2cTHWg7ycJC0aR0II=', '2023-05-25 14:24:54.074889', 1, 'pacommn', '', '', 'pacomorenonavarr@gmail.com', 1, 1, '2023-02-06 15:12:14.719044'),
(2, 'pbkdf2_sha256$320000$tBEEDp5uJ6xsQsLaLlTNBF$CgJBFXkrFy1VNWHb3oRaUid617cSt1QwyDejvhVhox4=', '2023-05-08 15:37:46.453442', 0, 'pepe', '', '', 'pacomorenonavarr@gmail.com', 0, 1, '2023-02-15 19:12:41.396640'),
(10, 'pbkdf2_sha256$320000$0veWNCH8UhjEFo3IeaWpGd$6oQ17tVNzSMrYheat99aTSS3UdAaND2QsE083li4XXU=', '2023-03-17 17:25:09.054356', 0, 'roberto', '', '', 'roberto@gmail.com', 0, 1, '2023-03-17 17:25:08.844364'),
(20, 'pbkdf2_sha256$320000$rbdXKnCBaGaD09xACCqGpZ$87MsqUlQC6G0IJgFFaed5rkQSyLAWMewQ99hk6Zhz8U=', '2023-05-12 17:25:34.175509', 0, 'alvaro', '', '', 'alvaro@gmail.com', 0, 1, '2023-05-08 16:53:12.901898'),
(22, 'pbkdf2_sha256$320000$C4ghPFhZrfwSN6IXLlpuJI$V2sQxuL/oQ0MHRrmsn/LCnVgcwhkCqPB8SbWo6OTXp4=', '2023-05-12 17:15:48.412033', 0, 'meme', '', '', 'meme@gmail.com', 0, 1, '2023-05-08 19:35:39.802213'),
(23, 'pbkdf2_sha256$320000$aFqxpOS9uMMAr2gTgMpj8S$0NAtGn35nBlSDCeNMgU1MUWgHgWcMKh+sqEMSY7veBg=', '2023-05-13 15:15:51.522184', 0, 'gori', '', '', 'gori@gmail.com', 0, 1, '2023-05-13 15:15:51.309574'),
(27, '!GC9fk3KeBzmXoeXEacQF8xi7o2PkEDD71PD0GCNN', '2023-05-17 17:57:20.523142', 0, 'paco', 'Paco', 'Moreno Navarro', 'paco@gmail.com', 0, 1, '2023-05-14 15:54:40.355242'),
(29, '!fUIP97IsJDoYdfYehctn53QOUmwS5C5heUYT36x8', '2023-05-14 18:04:24.668192', 0, 'paco1', 'Paco', 'Moreno navarro', 'pacomorenonavarro10@gmail.com', 0, 1, '2023-05-14 18:04:24.620134'),
(30, '!TH7yf7K7JR1d7phgLKZHYXhvzz957pdAVcepmITU', '2023-05-17 17:57:30.933963', 0, 'user', '', '', '', 0, 1, '2023-05-14 19:00:11.023290'),
(37, '!eGaK6xPW7ybbjlJV3gIYQVwgofFYFJaaZdx0TrSp', '2023-05-17 17:57:10.769748', 0, 'ines', 'Ines', 'Navarro', '', 0, 1, '2023-05-14 20:25:40.735374');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-06 15:16:31.802951', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 1, '[{\"added\": {}}]', 9, 1),
(2, '2023-02-06 15:17:24.962615', '1', 'Nombre disparate - Fecha 2023-02-04', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-02-06 15:18:01.986075', '2', 'Nombre panda - Fecha 2023-01-07', 1, '[{\"added\": {}}]', 10, 1),
(4, '2023-02-06 15:19:00.758815', '1', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(5, '2023-02-06 15:19:20.133907', '1', 'Usuario pacommn - DNI 49785303D', 2, '[{\"changed\": {\"fields\": [\"DiscotecaId\"]}}]', 8, 1),
(6, '2023-02-06 15:19:57.545011', '1', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Fecha\"]}}]', 11, 1),
(7, '2023-02-06 15:20:36.774162', '2', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(8, '2023-02-06 15:21:35.550659', '3', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(9, '2023-02-06 15:22:29.315442', '4', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(10, '2023-02-06 15:23:27.004957', '5', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(11, '2023-02-06 15:24:07.283080', '6', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(12, '2023-02-06 15:25:05.257530', '3', 'Nombre agachate - Fecha 2023-01-14', 1, '[{\"added\": {}}]', 10, 1),
(13, '2023-02-06 15:25:58.993458', '7', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(14, '2023-02-06 15:26:37.071309', '8', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(15, '2023-02-06 15:27:11.034927', '9', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(16, '2023-02-06 15:28:10.040565', '10', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(17, '2023-02-06 15:30:26.174953', '4', 'Nombre Hasta abajo - Fecha 2023-01-27', 1, '[{\"added\": {}}]', 10, 1),
(18, '2023-02-06 15:31:00.725919', '11', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(19, '2023-02-06 15:31:30.137401', '12', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(20, '2023-02-06 15:32:45.080884', '13', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 1, '[{\"added\": {}}]', 11, 1),
(21, '2023-02-06 15:49:00.777040', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 9, 1),
(22, '2023-02-06 15:57:19.560715', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 9, 1),
(23, '2023-02-06 15:57:54.833640', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 9, 1),
(24, '2023-02-06 16:00:41.134796', '2', 'Nombre Libano Terraza - direccion P.º de las Delicias, 151, 41013 Sevilla', 1, '[{\"added\": {}}]', 9, 1),
(25, '2023-02-06 16:01:57.787764', '2', 'Nombre Libano Terraza - direccion P.º de las Delicias, 151, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(26, '2023-02-06 16:02:53.850354', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(27, '2023-02-06 16:05:12.393079', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 1, '[{\"added\": {}}]', 9, 1),
(28, '2023-02-06 16:05:37.498275', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 9, 1),
(29, '2023-02-06 16:10:04.995431', '4', 'Nombre Antique theatro - direccion C. Matemáticos Rey Pastor y Castro, s/n, 41092 Sevilla', 1, '[{\"added\": {}}]', 9, 1),
(30, '2023-02-06 16:21:44.752453', '4', 'Nombre Antique theatro - direccion C. Matemáticos Rey Pastor y Castro, s/n, 41092 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion peque\\u00f1a\", \"Descripcion grande\", \"Icono\"]}}]', 9, 1),
(31, '2023-02-06 16:22:19.763521', '4', 'Nombre Antique theatro - direccion C. Matemáticos Rey Pastor y Castro, s/n, 41092 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion peque\\u00f1a\"]}}]', 9, 1),
(32, '2023-02-06 16:22:43.239148', '4', 'Nombre Antique theatro - direccion C. Matemáticos Rey Pastor y Castro, s/n, 41092 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion peque\\u00f1a\"]}}]', 9, 1),
(33, '2023-02-06 16:25:25.704481', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion peque\\u00f1a\", \"Descripcion grande\", \"Icono\"]}}]', 9, 1),
(34, '2023-02-06 16:26:12.416701', '2', 'Nombre Libano Terraza - direccion P.º de las Delicias, 151, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion peque\\u00f1a\", \"Descripcion grande\", \"Icono\"]}}]', 9, 1),
(35, '2023-02-06 16:27:44.985479', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion peque\\u00f1a\", \"Descripcion grande\", \"Icono\"]}}]', 9, 1),
(36, '2023-02-06 16:28:12.592472', '2', 'Nombre Libano Terraza - direccion P.º de las Delicias, 151, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion peque\\u00f1a\"]}}]', 9, 1),
(37, '2023-02-06 16:37:00.796405', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(38, '2023-02-06 16:49:52.197163', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(39, '2023-02-06 16:52:02.977350', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(40, '2023-02-06 17:01:32.974409', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(41, '2023-02-06 17:08:30.406705', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(42, '2023-02-06 17:13:41.343352', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Foto de Perfil\"]}}]', 9, 1),
(43, '2023-02-06 17:18:06.482714', '2', 'Nombre Libano Terraza - direccion P.º de las Delicias, 151, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion grande\"]}}]', 9, 1),
(44, '2023-02-06 17:27:24.681847', '4', 'Nombre Antique theatro - direccion C. Matemáticos Rey Pastor y Castro, s/n, 41092 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion grande\"]}}]', 9, 1),
(45, '2023-02-06 17:55:21.165643', '1', 'Nombre Casino Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion grande\"]}}]', 9, 1),
(46, '2023-02-06 18:02:24.609114', '3', 'Nombre Alfonso Terraza - direccion P.º de las Delicias, 13, 41013 Sevilla', 2, '[{\"changed\": {\"fields\": [\"Descripcion grande\"]}}]', 9, 1),
(47, '2023-02-06 18:03:26.301176', '3', 'Nombre Agachate - Fecha 2023-01-14', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 10, 1),
(48, '2023-02-06 18:03:35.996793', '2', 'Nombre Panda - Fecha 2023-01-07', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 10, 1),
(49, '2023-02-06 18:03:43.292768', '1', 'Nombre Disparate - Fecha 2023-02-04', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 10, 1),
(50, '2023-02-06 18:34:48.035674', '5', 'Nombre francisco Javier Moreno Navarro - Fecha 2023-02-11', 1, '[{\"added\": {}}]', 10, 1),
(51, '2023-02-06 18:35:10.504120', '5', 'Nombre El semaforo - Fecha 2023-02-11', 2, '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', 10, 1),
(52, '2023-02-06 20:20:10.819288', '1', 'Discoteca 2023-02-06 - Fecha 2023-02-06', 2, '[{\"changed\": {\"fields\": [\"DiscotecaId\"]}}]', 12, 1),
(53, '2023-02-12 20:09:05.201009', '2', 'Id 2', 1, '[{\"added\": {}}]', 13, 1),
(54, '2023-02-12 22:46:57.938255', '14', 'Id 14', 3, '', 13, 1),
(55, '2023-02-12 22:46:57.941254', '13', 'Id 13', 3, '', 13, 1),
(56, '2023-02-12 22:46:57.944253', '12', 'Id 12', 3, '', 13, 1),
(57, '2023-02-12 22:46:57.946253', '11', 'Id 11', 3, '', 13, 1),
(58, '2023-02-12 22:46:57.948253', '10', 'Id 10', 3, '', 13, 1),
(59, '2023-02-12 22:46:57.951252', '9', 'Id 9', 3, '', 13, 1),
(60, '2023-02-12 22:46:57.953254', '8', 'Id 8', 3, '', 13, 1),
(61, '2023-02-12 22:46:57.960257', '7', 'Id 7', 3, '', 13, 1),
(62, '2023-02-12 22:46:57.963254', '6', 'Id 6', 3, '', 13, 1),
(63, '2023-02-12 22:46:57.967255', '5', 'Id 5', 3, '', 13, 1),
(64, '2023-02-12 22:46:57.970255', '4', 'Id 4', 3, '', 13, 1),
(65, '2023-02-12 22:46:57.973255', '3', 'Id 3', 3, '', 13, 1),
(66, '2023-02-12 22:46:57.976255', '2', 'Id 2', 3, '', 13, 1),
(67, '2023-02-12 23:06:59.964051', '29', 'Id 29', 3, '', 13, 1),
(68, '2023-02-12 23:06:59.968052', '28', 'Id 28', 3, '', 13, 1),
(69, '2023-02-12 23:06:59.978052', '27', 'Id 27', 3, '', 13, 1),
(70, '2023-02-12 23:06:59.984047', '26', 'Id 26', 3, '', 13, 1),
(71, '2023-02-12 23:06:59.986551', '25', 'Id 25', 3, '', 13, 1),
(72, '2023-02-12 23:06:59.988605', '24', 'Id 24', 3, '', 13, 1),
(73, '2023-02-12 23:06:59.990603', '23', 'Id 23', 3, '', 13, 1),
(74, '2023-02-12 23:06:59.992700', '22', 'Id 22', 3, '', 13, 1),
(75, '2023-02-12 23:06:59.994609', '21', 'Id 21', 3, '', 13, 1),
(76, '2023-02-12 23:06:59.998617', '20', 'Id 20', 3, '', 13, 1),
(77, '2023-02-12 23:07:00.001609', '19', 'Id 19', 3, '', 13, 1),
(78, '2023-02-12 23:07:00.003610', '18', 'Id 18', 3, '', 13, 1),
(79, '2023-02-12 23:07:00.005614', '17', 'Id 17', 3, '', 13, 1),
(80, '2023-02-12 23:07:00.009609', '16', 'Id 16', 3, '', 13, 1),
(81, '2023-02-12 23:07:00.012614', '15', 'Id 15', 3, '', 13, 1),
(82, '2023-02-12 23:16:45.697731', '20', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(83, '2023-02-12 23:16:53.018017', '19', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(84, '2023-02-12 23:16:57.716020', '18', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(85, '2023-02-12 23:27:03.766358', '35', 'Id 35', 1, '[{\"added\": {}}]', 13, 1),
(86, '2023-02-12 23:34:47.280644', '21', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(87, '2023-02-12 23:35:34.145473', '36', 'Id 36', 1, '[{\"added\": {}}]', 13, 1),
(88, '2023-02-12 23:35:38.908712', '36', 'Id 36', 3, '', 13, 1),
(89, '2023-02-12 23:35:42.161004', '35', 'Id 35', 2, '[]', 13, 1),
(90, '2023-02-12 23:39:48.668827', '22', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(91, '2023-02-12 23:40:18.751108', '23', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(92, '2023-02-12 23:40:45.880858', '24', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(93, '2023-02-12 23:42:25.520505', '25', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(94, '2023-02-12 23:44:33.746962', '26', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(95, '2023-02-12 23:45:42.447984', '28', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(96, '2023-02-12 23:45:45.705015', '27', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(97, '2023-02-13 00:00:58.411851', '29', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(98, '2023-02-13 00:02:54.384306', '30', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(99, '2023-02-13 00:04:39.487950', '32', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(100, '2023-02-13 00:04:42.905637', '31', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(101, '2023-02-13 00:06:20.465430', '17', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(102, '2023-02-13 00:06:27.193754', '15', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(103, '2023-02-13 00:27:16.122418', '30', 'Id 30', 3, '', 13, 1),
(104, '2023-02-13 00:29:20.079263', '38', 'Id 38', 3, '', 13, 1),
(105, '2023-02-13 00:29:25.361508', '37', 'Id 37', 3, '', 13, 1),
(106, '2023-02-13 00:30:09.984243', '34', 'Id 34', 3, '', 13, 1),
(107, '2023-02-13 00:30:09.986995', '33', 'Id 33', 3, '', 13, 1),
(108, '2023-02-13 00:30:09.989142', '32', 'Id 32', 3, '', 13, 1),
(109, '2023-02-13 00:30:09.991142', '31', 'Id 31', 3, '', 13, 1),
(110, '2023-02-13 00:31:06.653935', '35', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(111, '2023-02-13 14:38:37.386570', '36', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(112, '2023-02-13 14:38:45.735620', '40', 'Nombre Paco - Dni 49785303d', 3, '', 11, 1),
(113, '2023-02-13 14:38:50.648575', '39', 'Nombre Paco - Dni 49785303d', 3, '', 11, 1),
(114, '2023-02-13 14:38:53.900108', '38', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(115, '2023-02-13 14:38:58.152582', '37', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(116, '2023-02-13 14:39:01.303437', '34', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(117, '2023-02-13 14:39:04.908585', '33', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(118, '2023-02-13 14:39:54.997935', '41', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(119, '2023-02-13 14:50:30.262978', '1', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(120, '2023-02-13 14:50:48.875174', '2', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(121, '2023-02-13 14:50:53.696861', '3', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(122, '2023-02-13 14:50:59.967686', '4', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(123, '2023-02-13 14:51:06.639015', '5', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(124, '2023-02-13 14:51:14.505137', '6', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(125, '2023-02-13 14:51:29.466718', '7', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(126, '2023-02-13 14:51:41.130258', '8', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(127, '2023-02-13 14:51:47.863781', '9', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(128, '2023-02-13 14:51:53.862270', '10', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(129, '2023-02-13 14:52:01.244062', '11', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(130, '2023-02-13 14:52:07.457128', '12', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(131, '2023-02-13 14:52:13.803262', '13', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Pagado\"]}}]', 11, 1),
(132, '2023-02-13 14:52:34.993044', '14', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Tipo\", \"Personas\", \"Pagado\"]}}]', 11, 1),
(133, '2023-02-13 14:54:32.382098', '16', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Tipo\", \"Personas\", \"UsuarioId\", \"Pagado\"]}}]', 11, 1),
(134, '2023-02-15 11:55:20.931099', '46', 'Nombre Paco - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Cantidad\", \"Personas\"]}}]', 11, 1),
(135, '2023-02-15 12:28:17.542003', '47', 'Nombre Paco - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Personas\", \"Total\"]}}]', 11, 1),
(136, '2023-02-15 12:28:43.663190', '46', 'Nombre Paco - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Total\"]}}]', 11, 1),
(137, '2023-02-15 12:29:47.444709', '45', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Coste\", \"Personas\", \"Total\"]}}]', 11, 1),
(138, '2023-02-15 12:30:02.515488', '44', 'Nombre francisco Javier Moreno Navarro - Dni 49785503D', 2, '[{\"changed\": {\"fields\": [\"Personas\", \"Total\"]}}]', 11, 1),
(139, '2023-02-15 12:30:07.170879', '47', 'Nombre Paco - Dni 49785303D', 2, '[]', 11, 1),
(140, '2023-02-15 12:30:11.385640', '44', 'Nombre francisco Javier Moreno Navarro - Dni 49785503D', 2, '[]', 11, 1),
(141, '2023-02-15 12:30:26.419588', '43', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Personas\", \"Total\"]}}]', 11, 1),
(142, '2023-02-15 12:31:27.709291', '42', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[{\"changed\": {\"fields\": [\"Personas\", \"Total\"]}}]', 11, 1),
(143, '2023-02-15 12:31:30.679274', '47', 'Nombre Paco - Dni 49785303D', 2, '[]', 11, 1),
(144, '2023-02-15 12:31:35.079238', '46', 'Nombre Paco - Dni 49785303D', 2, '[]', 11, 1),
(145, '2023-02-15 12:31:37.887713', '45', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[]', 11, 1),
(146, '2023-02-15 12:31:41.035200', '44', 'Nombre francisco Javier Moreno Navarro - Dni 49785503D', 2, '[]', 11, 1),
(147, '2023-02-15 12:31:43.905998', '43', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[]', 11, 1),
(148, '2023-02-15 12:31:47.947982', '42', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 2, '[]', 11, 1),
(149, '2023-02-15 13:31:58.010417', '6', 'Nombre Night Party - Fecha 2023-02-25', 1, '[{\"added\": {}}]', 10, 1),
(150, '2023-02-15 21:08:12.355922', '41', 'Id 41', 1, '[{\"added\": {}}]', 13, 1),
(151, '2023-02-24 10:34:17.210362', '7', 'Nombre Clossing Party - Fecha 2023-03-11', 1, '[{\"added\": {}}]', 10, 1),
(152, '2023-02-24 17:42:55.830035', '7', 'Nombre Clossing Party - Fecha 2023-03-11', 3, '', 10, 1),
(153, '2023-02-24 17:58:21.729879', '11', 'Nombre Clossing Party - Fecha 2023-04-09', 1, '[{\"added\": {}}]', 10, 1),
(154, '2023-02-24 17:59:32.283340', '11', 'Nombre Clossing Party - Fecha 2023-04-09', 3, '', 10, 1),
(155, '2023-02-24 18:00:13.286623', '12', 'Nombre Clossing Party - Fecha 2023-03-05', 1, '[{\"added\": {}}]', 10, 1),
(156, '2023-02-24 18:01:29.325691', '12', 'Nombre Clossing Party - Fecha 2023-03-05', 3, '', 10, 1),
(157, '2023-02-24 18:01:58.138095', '13', 'Nombre Clossing Party - Fecha 2023-01-05', 1, '[{\"added\": {}}]', 10, 1),
(158, '2023-02-24 18:22:25.830691', '14', 'Nombre Perreito - Fecha 2023-04-22', 1, '[{\"added\": {}}]', 10, 1),
(159, '2023-02-24 18:48:38.458915', '22', 'Nombre Tututupa - Fecha 2023-04-23', 1, '[{\"added\": {}}]', 10, 1),
(160, '2023-02-24 18:52:17.255677', '23', 'Nombre Puesta de largo - Fecha 2023-02-25', 1, '[{\"added\": {}}]', 10, 1),
(161, '2023-02-27 12:40:39.240682', '23', 'Nombre Puesta de largo - Fecha 2023-02-25', 3, '', 10, 1),
(162, '2023-02-27 12:49:33.737632', '24', 'Nombre dfhbdf - Fecha 2023-05-14', 1, '[{\"added\": {}}]', 10, 1),
(163, '2023-02-27 12:56:50.587689', '24', 'Nombre dfhbdf - Fecha 2023-05-14', 3, '', 10, 1),
(164, '2023-02-27 12:57:18.885316', '25', 'Nombre Tututupa - Fecha 2023-03-04', 1, '[{\"added\": {}}]', 10, 1),
(165, '2023-02-27 12:58:24.434938', '25', 'Nombre Tututupa - Fecha 2023-03-04', 3, '', 10, 1),
(166, '2023-02-27 12:58:53.739448', '26', 'Nombre erggerbger - Fecha 2023-03-19', 1, '[{\"added\": {}}]', 10, 1),
(167, '2023-02-27 13:00:31.512903', '26', 'Nombre erggerbger - Fecha 2023-03-19', 3, '', 10, 1),
(168, '2023-02-27 13:09:51.747436', '28', 'Nombre dfbd - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(169, '2023-02-27 13:13:52.241066', '28', 'Nombre dfbd - Fecha 2023-02-27', 3, '', 10, 1),
(170, '2023-02-27 13:15:04.456876', '30', 'Nombre wevwsv - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(171, '2023-02-27 13:24:48.541821', '30', 'Nombre wevwsv - Fecha 2023-02-27', 3, '', 10, 1),
(172, '2023-02-27 13:25:05.790821', '31', 'Nombre erber - Fecha 2023-04-23', 1, '[{\"added\": {}}]', 10, 1),
(173, '2023-02-27 13:26:54.589021', '31', 'Nombre erber - Fecha 2023-04-23', 3, '', 10, 1),
(174, '2023-02-27 13:27:20.181579', '32', 'Nombre vewrv - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(175, '2023-02-27 13:35:15.986968', '32', 'Nombre vewrv - Fecha 2023-02-27', 3, '', 10, 1),
(176, '2023-02-27 13:35:34.317860', '33', 'Nombre bebd - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(177, '2023-02-27 13:37:51.193759', '33', 'Nombre bebd - Fecha 2023-02-27', 3, '', 10, 1),
(178, '2023-02-27 13:38:07.241765', '34', 'Nombre versdv - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(179, '2023-02-27 13:48:29.864776', '34', 'Nombre versdv - Fecha 2023-02-27', 3, '', 10, 1),
(180, '2023-02-27 13:48:50.281365', '35', 'Nombre vwsv - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(181, '2023-02-27 13:49:44.402662', '35', 'Nombre vwsv - Fecha 2023-02-27', 3, '', 10, 1),
(182, '2023-02-27 13:50:06.285613', '36', 'Nombre vsdv - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(183, '2023-02-27 13:51:12.283561', '36', 'Nombre vsdv - Fecha 2023-02-27', 3, '', 10, 1),
(184, '2023-02-27 13:51:31.612468', '37', 'Nombre bdsbvsd - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(185, '2023-02-27 13:59:15.301811', '37', 'Nombre bdsbvsd - Fecha 2023-02-27', 3, '', 10, 1),
(186, '2023-02-27 16:13:04.604193', '38', 'Nombre efbvd - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(187, '2023-02-27 16:14:11.159309', '38', 'Nombre efbvd - Fecha 2023-02-27', 3, '', 10, 1),
(188, '2023-02-27 16:14:38.160116', '39', 'Nombre klk - Fecha 2023-02-27', 1, '[{\"added\": {}}]', 10, 1),
(189, '2023-02-27 16:15:36.226732', '39', 'Nombre klk - Fecha 2023-02-27', 3, '', 10, 1),
(190, '2023-02-27 16:16:15.894333', '40', 'Nombre ohiuhjkb - Fecha 2023-02-28', 1, '[{\"added\": {}}]', 10, 1),
(191, '2023-02-27 16:23:24.489807', '40', 'Nombre ohiuhjkb - Fecha 2023-02-28', 3, '', 10, 1),
(192, '2023-02-28 18:26:25.204643', '41', 'Nombre Reggaeton Party - Fecha 2023-03-12', 1, '[{\"added\": {}}]', 10, 1),
(193, '2023-02-28 18:28:23.906823', '41', 'Nombre Reggaeton Party - Fecha 2023-03-12', 3, '', 10, 1),
(194, '2023-02-28 18:28:51.070316', '42', 'Nombre Reggaeton Party - Fecha 2023-03-12', 1, '[{\"added\": {}}]', 10, 1),
(195, '2023-02-28 19:11:09.468834', '48', 'Nombre Jueves universitario - Fecha 2023-04-09', 1, '[{\"added\": {}}]', 10, 1),
(196, '2023-02-28 19:12:43.647414', '49', 'Nombre DELOCURA - Fecha 2023-05-14', 1, '[{\"added\": {}}]', 10, 1),
(197, '2023-02-28 19:13:43.650345', '49', 'Nombre DELOCURA - Fecha 2023-05-14', 3, '', 10, 1),
(198, '2023-02-28 19:14:14.381228', '50', 'Nombre DELOCURA - Fecha 2023-04-16', 1, '[{\"added\": {}}]', 10, 1),
(199, '2023-03-03 19:26:38.074103', '126', 'Nombre francisco Javier Moreno Navarro - Dni 49785303D', 3, '', 11, 1),
(200, '2023-04-12 16:13:41.050468', '51', 'Nombre Derelío - Fecha 2023-06-11', 1, '[{\"added\": {}}]', 10, 1),
(201, '2023-05-04 14:17:14.657212', '52', 'Nombre Rematito - Fecha 2023-05-05', 1, '[{\"added\": {}}]', 10, 1),
(202, '2023-05-13 16:42:51.031237', '53', 'Nombre Remember - Fecha 2023-06-24', 1, '[{\"added\": {}}]', 10, 1),
(203, '2023-05-14 14:17:18.489178', '1', 'Google Api', 1, '[{\"added\": {}}]', 18, 1),
(204, '2023-05-14 14:17:23.020353', '1', 'Google Api', 2, '[]', 18, 1),
(205, '2023-05-14 14:40:23.415752', '1', 'Google Api', 1, '[{\"added\": {}}]', 18, 1),
(206, '2023-05-14 14:40:44.650238', '1', 'example.com', 2, '[]', 20, 1),
(207, '2023-05-14 14:41:03.467347', '2', 'localhost:8000', 1, '[{\"added\": {}}]', 20, 1),
(208, '2023-05-14 14:41:13.409633', '1', 'Google Api', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 18, 1),
(209, '2023-05-14 14:58:40.444016', '2', 'http://localhost:8000', 2, '[{\"changed\": {\"fields\": [\"Domain name\"]}}]', 20, 1),
(210, '2023-05-14 14:58:51.753016', '2', 'localhost:8000', 2, '[{\"changed\": {\"fields\": [\"Domain name\"]}}]', 20, 1),
(211, '2023-05-14 17:02:31.869090', '2', 'Facebook Api', 1, '[{\"added\": {}}]', 18, 1),
(212, '2023-05-14 18:20:30.015318', '2', 'Facebook Api', 2, '[{\"changed\": {\"fields\": [\"Client id\", \"Secret key\"]}}]', 18, 1),
(213, '2023-05-14 18:38:18.631872', '2', 'Facebook Api', 2, '[{\"changed\": {\"fields\": [\"Client id\", \"Secret key\", \"Sites\"]}}]', 18, 1),
(214, '2023-05-14 18:39:50.107881', '2', 'Facebook Api', 2, '[]', 18, 1),
(215, '2023-05-14 18:42:11.519203', '2', 'Facebook Api', 2, '[]', 18, 1),
(216, '2023-05-14 18:42:17.092396', '1', 'Google Api', 2, '[]', 18, 1),
(217, '2023-05-14 18:42:23.216131', '2', 'Facebook Api', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 18, 1),
(218, '2023-05-14 18:57:30.112844', '3', 'Api Github', 1, '[{\"added\": {}}]', 18, 1),
(219, '2023-05-14 18:59:20.467908', '3', 'Api Github', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 18, 1),
(220, '2023-05-14 20:08:06.249278', '2', 'https://127.0.0.1:8000', 2, '[{\"changed\": {\"fields\": [\"Domain name\"]}}]', 20, 1),
(221, '2023-05-17 17:47:25.258955', '2', 'https://127.0.0.1:8080', 2, '[{\"changed\": {\"fields\": [\"Domain name\", \"Display name\"]}}]', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(15, 'account', 'emailaddress'),
(16, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'fiestas', 'carrito'),
(7, 'fiestas', 'discotecas'),
(9, 'fiestas', 'discotecass'),
(11, 'fiestas', 'entradas'),
(10, 'fiestas', 'fiestas'),
(12, 'fiestas', 'fotos'),
(14, 'fiestas', 'subscripciones'),
(8, 'fiestas', 'usuarios'),
(6, 'sessions', 'session'),
(20, 'sites', 'site'),
(17, 'socialaccount', 'socialaccount'),
(18, 'socialaccount', 'socialapp'),
(19, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-06 15:11:06.501321'),
(2, 'auth', '0001_initial', '2023-02-06 15:11:07.060077'),
(3, 'admin', '0001_initial', '2023-02-06 15:11:07.192209'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-06 15:11:07.207202'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-06 15:11:07.226021'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-06 15:11:07.306026'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-06 15:11:07.371768'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-06 15:11:07.400770'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-06 15:11:07.413769'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-06 15:11:07.472774'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-06 15:11:07.477774'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-06 15:11:07.491775'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-06 15:11:07.515784'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-06 15:11:07.540778'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-06 15:11:07.567782'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-06 15:11:07.578782'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-06 15:11:07.606785'),
(18, 'fiestas', '0001_initial', '2023-02-06 15:11:07.627789'),
(19, 'fiestas', '0002_rename_id_discotecas_discotecaid', '2023-02-06 15:11:07.646787'),
(20, 'fiestas', '0003_usuarios', '2023-02-06 15:11:07.667791'),
(21, 'fiestas', '0004_usuarios_contrasena', '2023-02-06 15:11:07.701792'),
(22, 'fiestas', '0005_alter_usuarios_admin_alter_usuarios_apellidos_and_more', '2023-02-06 15:11:07.738437'),
(23, 'fiestas', '0006_remove_usuarios_apellidos_remove_usuarios_nombre_and_more', '2023-02-06 15:11:07.833450'),
(24, 'fiestas', '0007_discotecass_fiestas_entradas', '2023-02-06 15:11:08.035145'),
(25, 'fiestas', '0008_usuarios_discotecaid', '2023-02-06 15:11:08.099102'),
(26, 'fiestas', '0009_entradas_fecha', '2023-02-06 15:11:08.125104'),
(27, 'fiestas', '0010_entradas_discotecaid', '2023-02-06 15:11:08.192414'),
(28, 'sessions', '0001_initial', '2023-02-06 15:11:08.231416'),
(29, 'fiestas', '0011_delete_discotecas', '2023-02-06 15:40:12.053742'),
(30, 'fiestas', '0012_remove_discotecass_descripcion_and_more', '2023-02-06 16:16:10.646175'),
(31, 'fiestas', '0013_alter_discotecass_foto', '2023-02-06 17:05:49.060222'),
(32, 'fiestas', '0014_alter_discotecass_descripciong', '2023-02-06 17:17:41.715568'),
(33, 'fiestas', '0015_fotos', '2023-02-06 19:51:25.070463'),
(34, 'fiestas', '0016_alter_entradas_fecha', '2023-02-10 08:42:38.370710'),
(35, 'fiestas', '0017_fiestas_pagado', '2023-02-10 08:45:39.832856'),
(36, 'fiestas', '0018_remove_fiestas_pagado_entradas_pagado', '2023-02-10 21:58:20.371136'),
(37, 'fiestas', '0019_carrito', '2023-02-12 16:40:17.649813'),
(38, 'fiestas', '0020_alter_entradas_personas', '2023-02-12 19:14:08.834390'),
(39, 'fiestas', '0021_remove_carrito_entradaid_entradas_carritoid', '2023-02-12 20:06:43.614508'),
(40, 'fiestas', '0022_alter_entradas_carritoid', '2023-02-13 14:50:00.691763'),
(41, 'fiestas', '0023_entradas_total', '2023-02-15 12:27:39.665569'),
(42, 'fiestas', '0024_alter_entradas_usuarioid', '2023-02-15 12:29:32.512717'),
(43, 'fiestas', '0025_subscripciones', '2023-02-22 16:36:28.986158'),
(44, 'fiestas', '0026_entradas_correo_entrega', '2023-03-03 19:00:06.039513'),
(45, 'fiestas', '0027_alter_entradas_correo_entrega', '2023-03-03 19:13:50.206472'),
(46, 'fiestas', '0028_rename_correo_entrega_entradas_correo_de_entrega', '2023-03-03 19:33:54.865987'),
(47, 'fiestas', '0029_alter_usuarios_usuario', '2023-03-06 15:04:16.782665'),
(48, 'fiestas', '0030_alter_usuarios_edad', '2023-03-17 17:12:57.917243'),
(49, 'fiestas', '0031_alter_usuarios_dni', '2023-03-17 17:17:12.195274'),
(50, 'fiestas', '0032_alter_usuarios_edad', '2023-05-08 16:18:26.245085'),
(51, 'fiestas', '0033_alter_usuarios_edad', '2023-05-08 16:20:22.228476'),
(52, 'fiestas', '0034_alter_usuarios_edad', '2023-05-08 16:22:09.891087'),
(53, 'fiestas', '0035_alter_usuarios_edad', '2023-05-08 16:23:37.580862'),
(54, 'fiestas', '0036_alter_usuarios_dni', '2023-05-08 16:26:31.569203'),
(55, 'fiestas', '0037_alter_usuarios_correo', '2023-05-08 16:30:42.247546'),
(56, 'fiestas', '0038_alter_usuarios_dni_alter_usuarios_edad', '2023-05-08 16:35:55.040408'),
(57, 'fiestas', '0039_alter_usuarios_dni_alter_usuarios_edad', '2023-05-08 16:40:03.129348'),
(58, 'fiestas', '0040_alter_usuarios_correo_alter_usuarios_dni_and_more', '2023-05-08 16:44:29.533406'),
(59, 'fiestas', '0041_alter_usuarios_dni_alter_usuarios_edad', '2023-05-08 16:50:32.948076'),
(60, 'fiestas', '0042_alter_usuarios_foto', '2023-05-08 19:34:53.321042'),
(61, 'account', '0001_initial', '2023-05-14 14:13:42.337960'),
(62, 'account', '0002_email_max_length', '2023-05-14 14:13:42.371964'),
(63, 'fiestas', '0043_alter_usuarios_foto', '2023-05-14 14:13:42.383964'),
(67, 'sites', '0001_initial', '2023-05-14 14:30:56.009743'),
(68, 'sites', '0002_alter_domain_unique', '2023-05-14 14:30:56.043746'),
(69, 'socialaccount', '0001_initial', '2023-05-14 14:34:58.809826'),
(70, 'socialaccount', '0002_token_max_lengths', '2023-05-14 14:34:58.887842'),
(71, 'socialaccount', '0003_extra_data_default_dict', '2023-05-14 14:34:58.904840');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1qowweni4rf7xzls89mzf6a9ssc0uq3s', '.eJxVjDsOwjAQBe_iGln2kng3lPScwdr1BwdQLMVJhbg7spQC2jcz760871vxe0urn6O6KKtOv5tweKalg_jg5V51qMu2zqK7og_a9K3G9Loe7t9B4VZ6DZAgAllisEjWDTmhcTg4pnOORhwbO41ZRChnC8FAwgnJGCJAHNXnC8hKNuk:1pzQ95:lcOaNfQBZo8dNvaeMFJQ--PKndAgy6cUl8U_mQsFKqE', '2023-05-31 23:01:23.303008'),
('6ysdu8lbbryzsj5sip9fmtac6x8t0te3', '.eJxVjL0OgzAQg9_lZhQlKSRHx24d-gzo8lfSIiIlZEK8e0tFBzbbn-0VLOUclwTX9S_vDq6tbqCWSjn-7FynaWtgoLqMQy0-D_GbgoBTZsi-_bwD96L5mZhN85KjYXuFHbSwR3J-uh3d08FIZdzXUnrpJAokKTQK1QavudKtIrwEx40iLvouGGMwBCEtl173GjlHlFp3sH0AULFGIw:1ppBW6:Jgf_snwzx5CGiq5zl006wuF6fib05hCGs4-mUGPp9NY', '2023-05-03 17:22:50.956218'),
('dh0fg81bstxx06sm7p3baqwmxgh95otq', '.eJyrVkpOLCrKLMlXsqqGMT1TlKyMjXWUSotLE4sywdy80pyc2loAa6YQAg:1pRLX2:vAYo6UwWqEizHalZm7vccFBTmo_oESgqDlzbGPHFd0k', '2023-02-26 23:13:16.471890'),
('e1k36hm40k3kkyqp7d65qjy5e5lu4x6k', '.eJyrVkpOLCrKLMlXsqqGMT1TlKxMDHSUSotLE4sywdy80pyc2loAa38QAA:1pRN1N:djxlIoBAg3_BkfkZQcZJW-cYH1JJ7UxHLBKptxjTOlM', '2023-02-27 00:48:41.920151'),
('i1xa7ye8fz1u8hwf6ee2itrk1fks6424', '.eJxVjM0OwiAQhN-FsyEFlz9v9kUI7C5pY0MToSfju9uaHvQ438x8LxHT1qe4NX7GmcRN6CAuvzAnfHA9mrQsB5YJcd1ql9_NWTd53xPXPmPq81rH8_WnmlKbdg8iuaytz-CyK4ywA61CMTmoK_LApIplDYP3HgwRgrGkM1kL4AKCeH8AEF49IQ:1pyG52:3mCd-4N9nogbSyjGh1id2Sq-nzztNMpqlugEPjkcN-g', '2023-05-28 18:04:24.679206'),
('j7b4btfrjv24h93ed0p3icz3hwwgpiki', 'eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiJvIn0:1pyDEQ:HS4_UqEGpLeCQ_0m4Q30jmE78qqXm-7WTqT-S1dO3SY', '2023-05-28 15:01:54.069245'),
('m3hjulfu3i1qew28h6sp06ljub5oqke9', '.eJxVjMEOwiAQRP-FsyFtl4p40x8hy7IbiA1NBE7Gf7c1Pehx5s2bl_LYW_K98tPnqK5qsur0WwakB5ed4LLstUaitZemv5sDV33bEpeWCVtey_2w_q4S1rT9AEW3aQJEUdAZErEQnWE8A4zWEYNMPMyzBGeRB7kYgxZlBAizwaDeHyxBPgA:1pyI2K:zb-IA_nqfjs4TUsRn1eDZ2ojAlfhMHJUzdZ78EDl8N8', '2023-05-28 20:09:44.120582'),
('npyqvtgi4ypftcd91n8103cde8u4b5ix', '.eJxVjDsOwjAQBe_iGln2kng3lPScwdr1BwdQLMVJhbg7spQC2jcz760871vxe0urn6O6KKtOv5tweKalg_jg5V51qMu2zqK7og_a9K3G9Loe7t9B4VZ6DZAgAllisEjWDTmhcTg4pnOORhwbO41ZRChnC8FAwgnJGCJAHNXnC8hKNuk:1pZccr:242aqTaJ9hGT4VXOiQeYdVMSqJvF5zpF_O6ICCp9-ZM', '2023-03-21 19:05:29.102546'),
('ovlq71vy0zhrop87cgcmnqt9tu819peg', 'eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiJwIn0:1pyDOn:GA455xvKokQ2Qk3Ktrm8h7EytnfseaoCmdmHpTxIDkk', '2023-05-28 15:12:37.132790'),
('ulhve89novia7mpivvgklqfb99jbnnne', '.eJyrVkpOLCrKLMlXsqqGMT1TlKxMzHSUSotLE4sywdy80pyc2loAa_cQBg:1ppA4X:cG2ukwyUXpGhMEuRShbi3Rxrh31CJbRdL2AYtzxjukE', '2023-05-03 15:50:17.970728'),
('z8h2rhc9erk9c39ula7bgkemzkmcxn1x', '.eJxVjL0OgzAQg9_lZhQlKSRHx24d-gzo8lfSIiIlZEK8e0tFBzbbn-0VLOUclwTX9S_vDq6qb6CWSjn-7FynaWtgoLqMQy0-D_GbgoBTZsi-_bwD96L5mZhN85KjYXuFHbSwR3J-uh3d08FIZdzXUnrpJAokKTQK1QavudKtIrwEx40iLvouGGMwBCEtl173GjlHlFp3sH0AU6tGJw:1q2Bte:trqqAxZjsOV5lQeDtkEEvgLheXeeMxHAr2-7g7J-KRM', '2023-06-08 14:24:54.081867');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com'),
(2, 'https://127.0.0.1:8080', 'localhost:8080');

-- --------------------------------------------------------

--
-- Table structure for table `fiestas_carrito`
--

CREATE TABLE `fiestas_carrito` (
  `carritoId` int(11) NOT NULL,
  `usuarioId_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiestas_carrito`
--

INSERT INTO `fiestas_carrito` (`carritoId`, `usuarioId_id`) VALUES
(39, NULL),
(40, NULL),
(42, NULL),
(43, NULL),
(44, NULL),
(46, NULL),
(47, NULL),
(61, NULL),
(63, NULL),
(69, NULL),
(35, 1),
(41, 2),
(45, 11),
(57, 21),
(59, 23),
(60, 24),
(64, 27),
(65, 29),
(66, 34),
(68, 36);

-- --------------------------------------------------------

--
-- Table structure for table `fiestas_discotecass`
--

CREATE TABLE `fiestas_discotecass` (
  `discotecaId` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `direccion` varchar(500) NOT NULL,
  `descripciong` longtext DEFAULT NULL,
  `descripcionp` varchar(1500) DEFAULT NULL,
  `icono` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiestas_discotecass`
--

INSERT INTO `fiestas_discotecass` (`discotecaId`, `nombre`, `foto`, `direccion`, `descripciong`, `descripcionp`, `icono`) VALUES
(1, 'Casino Terraza', 'imagenes/285261031_7997541713619732_1334039007651508156_n.jpg', 'P.º de las Delicias, 13, 41013 Sevilla', '<p style=\"text-align: center;\">Se ha dado <strong>muchas veces el caso de clientes </strong> que no han podido entrar a disfrutar de las \r\nnoches de verano por su corta edad pese a tener más de 18 años. <strong>Por ello, y ante gran la demanda de nuestros jóvenes,</strong> decidimos crear algo para ellos que llevara el sello Casino Terraza. Así nació Lé Club by Casino. Los miércoles son los nuevos viernes y en Casino Terraza lo sabemos. \r\nA mitad de semana sacamos nuestro lado más juvenil a pasear.   <strong>La mejor música actual y un ambiente renovado se unen en una fiesta muy divertida dedicada \r\na los más jóvenes. </strong>.</p>\r\n                <p style=\"text-align: center;\"><span style=\"line-height: 1.5em;\">Un ambiente inmejorable llena nuestra sala de universitarios con muchas \r\nganas de vivir noches de fiesta imparables.</span></p>\r\n                <p style=\"text-align: center;\">Esta bonita historia no es sólo un amor de \r\nverano, sino que perdura durante todo el año.</p>\r\n                <p style=\"text-align: justify;\">\r\n                </p><p style=\"text-align: center;\">En la temporada veraniega, los clientes más \r\njóvenes <strong>disfrutan de nuestra terraza</strong> cada miércoles, <strong> mientras que durante el resto del año se convierten en los protagonistas de nuestra sala cada semana.</strong> Los jueves universitarios, <strong>los viernes más divertidos y los sábados para los más fiesteros.</strong>.</p>', 'Terraza de verano. Un clásico para disfrutar de la noche sevillana al aire libre y con amigos.', 'imagenes/l_logo_casino.jpg'),
(2, 'Libano Terraza', 'imagenes/285977717_2296316940522583_3055882208744438983_n_Gzx8ruF_OxjDZcn.jpg', 'P.º de las Delicias, 151, 41013 Sevilla', '<p style=\"text-align: center;\">Nuestra <strong>terraza de verano en Sevilla</strong> está ubicada en el precioso Jardín de las Delicias. La <strong>terraza Líbano, también conocida como Kiosco Líbano,</strong> es un local con un diseño distinguido y exquisito, situado en el entorno de un paraje maravilloso y en el que podrás disfrutar del ambiente más divertido de las noches de verano sevillanas. Uno de los mejores <strong>bares de copas de Sevilla para salir de fiesta</strong>.</p>\r\n                <p style=\"text-align: center;\"><span style=\"line-height: 1.5em;\">Nuestra terraza cuenta con una amplia zona de mesas bajas donde saborear los cócteles más refrescantes y copas exclusivas, con las marcas más premium del mercado.</span></p>\r\n                <p style=\"text-align: center;\">Además, contamos con un amplio espacio 100% exterior que cada fin de semana se convierte en una de las pistas de baile más divertidas de Sevilla, con Dj Sessions cada semana.</p>\r\n                <p style=\"text-align: justify;\">\r\n                </p><p style=\"text-align: center;\">Este verano ven a <strong>Líbano</strong>, tu <strong>terraza de verano en Sevilla</strong>, la mejor opción para <strong>salir por Sevilla</strong>.</p>', 'Líbano, terraza de verano en Sevilla con un diseño refinado y una clientela selecta.', 'imagenes/18588839_890363464451278_6708886803665794281_o_E6BlLSX.jpg'),
(3, 'Alfonso Terraza', 'imagenes/2.png', 'P.º de las Delicias, 13, 41013 Sevilla', '<p style=\"text-align: center;\">Esta terraza <strong>destaca por su buena música y ambiente,</strong> además tiene una decoración característica y <strong>el trato del personal es amable, lo que hacen de ella el sitio perfecto</strong> para ir con los amigos a pasar un buen rato en vuestra despedida de soltero o soltera.</p>\r\n                <p style=\"text-align: center;\"><span style=\"line-height: 1.5em;\">Está considerada una de las grandes terrazas de Sevilla, lleva bastantes años en la palestra y ahí sigue en el top 5 de las mejores valoradas de la ciudad.</span></p>\r\n                <p style=\"text-align: center;\">Si buscáis uno de \r\nesos lugares perfectos a lor que ir a bailar en temporada primavera-verano la \r\nterraza Alfonso posee características para que la noche sea satisfactoria al máximo.</p>\r\n                <p style=\"text-align: justify;\">\r\n                </p><p style=\"text-align: center;\">Es una discoteca recomendable <strong>para grupos y no es la típica discoteca</strong>en la que al \r\nllegar los porteros te escanean de arriba abajo con sus rayos láser <strong>para ver si eres \r\ndigno de entrar en sus instalaciones,</strong>de hecho, en temporada de verano suelen ser más \r\nflexibles a la hora del acceso a la terraza. </p>', 'La Terraza Alfonso es una de las más famosas de Sevilla en su temporada de verano.', 'imagenes/326796575_697005412090234_4226785265431695928_n.jpg'),
(4, 'Antique theatro', 'imagenes/antique-theatro_130905_0_orig_nifPcqw.jpg', 'C. Matemáticos Rey Pastor y Castro, s/n, 41092 Sevilla', '<p style=\"text-align: center;\">Desde<strong> sus inicios y tras estos más de veinte años</strong> os valores de exclusividad y calidad han \r\nsido muy importantes como muestra del compromiso con la ciudad de Sevilla.<strong>Bajo la dirección, \r\nen los últimos años, de Manuel Vega con sus hermanos Juanjo y Óscar junto a Jóse Luis Martín Berrocal,</strong>Antique Theatro ofrece un espacio multifuncional donde se han celebrado los after party de los más \r\nimportantes eventos nacionales e internacionales,<strong>cada año más asiduos dado el factor clave turístico \r\ny cultural de Sevilla.</strong>.</p>\r\n                <p style=\"text-align: center;\"><span style=\"line-height: 1.5em;\">Las fiestas de los eventos como la final de la copa de la Uefa, la final de la \r\ncopa Davis, los premios MTV o los premios Goya, entre otros, han tenido lugar en el Antiguo Pabellón \r\nOlímpico, sede de Antique Theatro.</span></p>\r\n                <p style=\"text-align: center;\">La Sala siempre ha sido referente por su variada \r\nprogramación de shows y espectáculos musicales, performances, técnicas artísticas \r\nacuáticas y acrobáticas.</p>', 'Antique Theatro celebra ya más de 20 años siendo un referente en la noche sevillana.', 'imagenes/antique_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `fiestas_entradas`
--

CREATE TABLE `fiestas_entradas` (
  `entradaId` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `coste` int(11) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `personas` int(11) DEFAULT NULL,
  `fiestaId_id` int(11) DEFAULT NULL,
  `usuarioId_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `discotecaId_id` int(11) DEFAULT NULL,
  `pagado` int(11) DEFAULT NULL,
  `carritoId_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `correo_de_entrega` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiestas_entradas`
--

INSERT INTO `fiestas_entradas` (`entradaId`, `tipo`, `coste`, `dni`, `nombre`, `cantidad`, `personas`, `fiestaId_id`, `usuarioId_id`, `fecha`, `discotecaId_id`, `pagado`, `carritoId_id`, `total`, `correo_de_entrega`) VALUES
(1, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 500, 1, 2, 1, '2023-01-06', 1, 1, NULL, NULL, NULL),
(2, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 200, 1, 2, 1, '2023-01-04', 1, 1, NULL, NULL, NULL),
(3, 'R', 100, '49785303D', 'francisco Javier Moreno Navarro', 5, 5, 2, 1, '2023-01-05', 1, 1, NULL, NULL, NULL),
(4, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 300, 1, 2, 1, '2023-01-05', 1, 1, NULL, NULL, NULL),
(5, 'R', 100, '49785303D', 'francisco Javier Moreno Navarro', 20, 5, 2, 1, '2023-01-01', 1, 1, NULL, NULL, NULL),
(6, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 500, 1, 2, 1, '2023-01-01', 1, 1, NULL, NULL, NULL),
(7, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 600, 1, 3, 1, '2023-01-08', 1, 1, NULL, NULL, NULL),
(8, 'R', 100, '49785303D', 'francisco Javier Moreno Navarro', 15, 5, 3, 1, '2023-01-10', 1, 1, NULL, NULL, NULL),
(9, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 300, 1, 3, 1, '2023-01-13', 1, 1, NULL, NULL, NULL),
(10, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 500, 1, 3, 1, '2023-01-14', 1, 1, NULL, NULL, NULL),
(11, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1000, 1, 4, 1, '2023-01-20', 1, 1, NULL, NULL, NULL),
(12, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 200, 1, 4, 1, '2023-01-25', 1, 1, NULL, NULL, NULL),
(13, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 400, 1, 4, 1, '2023-01-22', 1, 1, NULL, NULL, NULL),
(14, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 5, 1, 2, 1, '2023-02-12', 1, 1, NULL, NULL, NULL),
(16, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 50, 1, 2, 1, '2023-02-12', 1, 1, NULL, NULL, NULL),
(42, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 26, 1, 1, 1, '2023-02-13', 1, 1, NULL, 390, NULL),
(46, 'N', 15, '49785303D', 'Paco', 80, 1, 1, 1, '2023-02-13', 1, 1, NULL, 1200, NULL),
(47, 'R', 15, '49785303D', 'Paco', 11, 5, 1, 1, '2023-02-13', 1, 1, NULL, 165, NULL),
(48, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 10, NULL, 6, 1, '2023-02-15', 1, 1, NULL, 150, NULL),
(49, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 47, NULL, 6, 1, '2023-02-15', 1, 1, NULL, 705, NULL),
(50, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 6, NULL, 6, 1, '2023-02-15', 1, 1, NULL, 90, NULL),
(51, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 3, NULL, 6, 1, '2023-02-15', 1, 1, NULL, 45, NULL),
(52, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 20, NULL, 6, 1, '2023-02-16', 1, 1, NULL, 300, NULL),
(55, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 20, NULL, 6, NULL, '2023-02-20', 1, 1, NULL, 300, NULL),
(57, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 6, 1, '2023-02-22', 1, 1, NULL, 30, NULL),
(58, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 14, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(59, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 3, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 45, NULL),
(60, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 3, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 45, NULL),
(61, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(62, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 3, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 45, NULL),
(63, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 15, NULL),
(64, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(65, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(66, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(67, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 5, 1, '2023-02-27', 2, 1, NULL, 40, NULL),
(68, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 3, NULL, 4, 1, '2023-02-27', 1, 1, NULL, 45, NULL),
(69, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 13, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(70, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 3, NULL, 14, 1, '2023-02-27', 1, 1, NULL, 45, NULL),
(71, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 13, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(72, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 15, NULL),
(73, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-27', 1, 1, NULL, 15, NULL),
(74, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 15, NULL),
(75, 'N', 15, '49785303d', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-27', 1, 1, NULL, 15, NULL),
(76, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-27', 1, 1, NULL, 30, NULL),
(77, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(78, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(79, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(80, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(81, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(82, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(83, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(84, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(85, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(86, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(87, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(88, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(89, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(90, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(91, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(92, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(93, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(94, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(95, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(96, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(97, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(98, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(99, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(100, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(101, 'N', 15, '49785303d', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(102, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(103, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(104, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(105, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(106, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(107, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(108, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(109, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(110, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(111, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(112, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(113, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(114, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(115, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(116, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(117, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(118, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(119, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(120, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 13, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(121, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 5, 1, '2023-02-28', 2, 1, NULL, 20, NULL),
(122, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(123, 'N', 15, '49785303d', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(124, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-02-28', 1, 1, NULL, 15, NULL),
(125, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 42, 1, '2023-02-28', 1, 1, NULL, 30, NULL),
(127, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(128, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, NULL, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(129, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(130, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 4, 1, '2023-03-03', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(131, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 2, 1, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(132, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(133, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(134, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(135, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(136, 'N', 15, '49785303D', 'Pedro', 1, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(137, 'N', 15, '49785303D', 'Francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(138, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(139, 'N', 15, '49785303D', 'Pepe', 1, NULL, 42, NULL, '2023-03-03', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(140, 'N', 15, '49785303D', 'David', 1, NULL, 42, NULL, '2023-03-03', 1, 1, NULL, 15, 'guzmangallardod3@gmail.com'),
(141, 'N', 15, '49785303D', 'Paula', 1, NULL, 42, NULL, '2023-03-03', 1, 1, NULL, 15, 'guzmangallardod3@gmail.com'),
(142, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 5, 1, '2023-03-06', 2, 1, NULL, 40, 'pacomorenonavarr@gmail.com'),
(143, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(144, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(145, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(146, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 4, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(147, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(148, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 14, 1, '2023-03-06', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(149, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(150, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(151, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 1, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(152, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 5, 1, '2023-03-06', 2, 1, NULL, 20, 'pacomorenonavarr@gmail.com'),
(153, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 2, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(154, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(155, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 22, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(156, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(157, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(158, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 2, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(159, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(160, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(161, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 13, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(162, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(163, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(164, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 50, 1, '2023-03-06', 3, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(165, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(166, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(167, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(168, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-03-06', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(169, 'N', 15, '98563213f', 'Cristian', 1, NULL, 42, NULL, '2023-03-07', 1, 1, NULL, 15, 'cbrioso98@gmail.com'),
(170, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 6, NULL, '2023-03-07', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(171, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 1, 1, '2023-03-07', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(172, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 48, 1, '2023-03-08', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(173, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 48, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(174, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(175, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 4, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(176, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 50, 1, '2023-03-08', 3, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(177, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(178, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 13, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(179, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 13, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(180, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(181, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 5, 1, '2023-03-08', 2, 1, NULL, 20, 'pacomorenonavarr@gmail.com'),
(182, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 5, 1, '2023-03-08', 2, 1, NULL, 20, 'pacomorenonavarr@gmail.com'),
(183, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 13, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(184, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 4, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(185, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(186, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 3, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(187, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 3, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(188, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(189, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(190, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(191, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 5, 1, '2023-03-08', 2, 1, NULL, 20, 'pacomorenonavarr@gmail.com'),
(192, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 3, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(193, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 2, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(194, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(195, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 5, 1, '2023-03-08', 2, 1, NULL, 20, 'pacomorenonavarr@gmail.com'),
(196, 'N', 15, '49785303D', 'Tututupa', 1, NULL, 2, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(197, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(198, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(199, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 42, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(200, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(201, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 5, 1, '2023-03-08', 2, 1, NULL, 40, 'pacomorenonavarr@gmail.com'),
(202, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 3, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(203, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(204, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 14, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(205, 'N', 20, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 5, 1, '2023-03-08', 2, 1, NULL, 20, 'pacomorenonavarr@gmail.com'),
(206, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-08', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(207, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(208, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(209, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(210, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(211, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(212, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(213, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(214, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(215, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(216, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(217, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(218, 'N', 15, '49785303D', 'Tututupa', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(219, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(220, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(221, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(222, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(223, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(224, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(225, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(226, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(227, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(228, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(229, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(230, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(231, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(232, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(233, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(234, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(235, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(236, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(237, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(238, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(239, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(240, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(241, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(242, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(243, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(244, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(245, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, 1, '2023-03-11', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(246, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 1, NULL, '2023-03-14', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(247, 'N', 15, '49785303D', 'Alvarito', 1, NULL, 6, NULL, '2023-03-15', 1, 1, NULL, 15, 'alvarosanchez127@gmail.com'),
(248, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 6, NULL, '2023-04-10', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(250, 'N', 15, '49785303D', 'Guillermo Callado Alcedo', 1, NULL, 42, NULL, '2023-04-19', 1, 1, NULL, 15, 'gcacallado03@gmail.com'),
(251, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 48, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(252, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 7, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 105, 'pacomorenonavarr@gmail.com'),
(253, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(254, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(255, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(256, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(257, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(258, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(259, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(260, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(261, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(262, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(263, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(264, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(265, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(266, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 52, 1, '2023-05-04', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(269, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 51, 1, '2023-05-08', 3, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(270, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 51, 1, '2023-05-08', 3, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(271, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 51, 1, '2023-05-09', 3, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(272, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 51, 1, '2023-05-09', 3, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(274, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 2, NULL, 53, 1, '2023-05-13', 1, 1, NULL, 30, 'pacomorenonavarr@gmail.com'),
(276, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 53, 1, '2023-05-14', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(277, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 53, 1, '2023-05-14', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(279, 'N', 15, '49785303D', 'paco', 1, NULL, 53, 27, '2023-05-14', 1, 1, NULL, 15, NULL),
(280, 'N', 15, '49785303D', 'paco', 1, NULL, 53, 27, '2023-05-14', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(282, 'N', 15, '49785303D', 'Alvaro', 1, NULL, 51, 27, '2023-05-14', 3, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(283, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 53, 1, '2023-05-15', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(284, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 53, 1, '2023-05-15', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(285, 'N', 15, '49785303D', 'francisco Javier Moreno Navarro', 1, NULL, 53, 34, '2023-05-18', 1, 1, NULL, 15, 'pacomorenonavarr@gmail.com'),
(286, 'N', 15, '49785303D', 'Isabel', 1, NULL, 53, NULL, '2023-05-25', 1, 1, NULL, 15, 'isabel.ugiadelgado2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fiestas_fiestas`
--

CREATE TABLE `fiestas_fiestas` (
  `fiestaId` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `descripcion` varchar(1500) NOT NULL,
  `precio` int(11) NOT NULL,
  `personas_reservado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero_entradas` int(11) NOT NULL,
  `discotecaId_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiestas_fiestas`
--

INSERT INTO `fiestas_fiestas` (`fiestaId`, `foto`, `descripcion`, `precio`, `personas_reservado`, `fecha`, `nombre`, `numero_entradas`, `discotecaId_id`) VALUES
(1, 'imagenes/16625646198791_ZuisrEW.gif', 'qfcwaef qw qw', 15, 5, '2023-02-04', 'Disparate', 3000, 1),
(2, 'imagenes/pacha-ibiza_0LXQuuD.jpeg', 'weafwqd', 15, 5, '2023-01-07', 'Panda', 3000, 1),
(3, 'imagenes/fiesta-fin-de-ano-anden-web-696x1024-696x1024.jpg', 'qwef wqq3 wrf32wqr f', 15, 5, '2023-01-14', 'Agachate', 2500, 1),
(4, 'imagenes/silhouette-66692_1280_t52xtAz.jpg', 'wegerger erge erg ergqw fgw', 15, 5, '2023-01-27', 'Hasta abajo', 2000, 1),
(5, 'imagenes/istockphoto-486420378-612x612_GahzHLL.jpg', '34g3er g eq', 20, 5, '2023-02-11', 'El semaforo', 2000, 2),
(6, 'imagenes/305066852_5403865186359618_518977352979824902_n.jpg', 'ecwe', 15, 5, '2023-02-25', 'Night Party', 500, 1),
(13, 'imagenes/309066492_5482817935131009_1095169070889763682_n_Su0Sd47.jpg', '3jgn', 15, 5, '2023-01-05', 'Clossing Party', 500, 1),
(14, 'imagenes/306628816_5442233589189444_6383024878608532717_n.jpg', 'lewflewv', 15, 5, '2023-04-22', 'Perreito', 500, 1),
(22, 'imagenes/306628816_5442233589189444_6383024878608532717_n_LyK2e6y.jpg', 'wlfnn', 15, 5, '2023-04-23', 'Tututupa', 500, 1),
(42, 'imagenes/306515066_5423097391103064_576034292047215093_n_XA17LeT.jpg', 'wgvewrv', 15, 5, '2023-03-12', 'Reggaeton Party', 1000, 1),
(48, 'imagenes/306348953_5436554489757354_6305147740194157275_n_Hw183I3.jpg', 'fgn', 15, 5, '2023-04-09', 'Jueves universitario', 1000, 1),
(50, 'imagenes/301125429_5384007608345376_1610886532640198783_n_rRNu3Cc.jpg', 'bv vb', 15, 5, '2023-04-16', 'DELOCURA', 1000, 3),
(51, 'imagenes/299516228_5361833150562822_5276306180322776986_n.jpg', 'tjrtfjmnfgmnfgnm', 15, 5, '2023-06-11', 'Derelío', 500, 3),
(52, 'imagenes/fiesta.jpg', 'cvdsvwsad sd dsa a wda', 15, 5, '2023-05-05', 'Rematito', 500, 1),
(53, 'imagenes/72886222_3390252351015381_2726475480365531136_n.jpg', 'yityo', 15, 5, '2023-06-24', 'Remember', 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fiestas_fotos`
--

CREATE TABLE `fiestas_fotos` (
  `fotoId` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `fecha` date NOT NULL,
  `discotecaId_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiestas_fotos`
--

INSERT INTO `fiestas_fotos` (`fotoId`, `foto`, `fecha`, `discotecaId_id`) VALUES
(1, 'imagenes/297637955_2344328035721473_8282342951310267697_n_vMOCl7O.jpg', '2023-02-06', 1),
(2, 'imagenes/306757862_2381330318687911_3496131819311166305_n_deOuoOz.jpg', '2023-02-06', 1),
(3, 'imagenes/306762321_2381329728687970_2544617417243764624_n_xAc1piF.jpg', '2023-02-06', 1),
(4, 'imagenes/original_Kh2TKeu.jpg', '2023-02-06', 1),
(5, 'imagenes/306764120_2381329585354651_8836723574601410162_n_XghFUBB.jpg', '2023-02-06', 1),
(6, 'imagenes/285005033_7997510823622821_8117530806281092424_n.jpg', '2023-05-04', 1),
(7, 'imagenes/284988239_7997512426955994_6392228851733973695_n.jpg', '2023-05-12', 1),
(8, 'imagenes/284991347_7997511120289458_3525489590890214499_n.jpg', '2023-05-12', 1),
(9, 'imagenes/285012918_7997512110289359_7238479569778403262_n.jpg', '2023-05-12', 1),
(10, 'imagenes/285029954_7997510896956147_1202695622613680401_n.jpg', '2023-05-12', 1),
(11, 'imagenes/285047246_7997511980289372_737113881472188258_n.jpg', '2023-05-12', 1),
(12, 'imagenes/285061369_7997511636956073_3464625336897339033_n.jpg', '2023-05-12', 1),
(13, 'imagenes/285202472_7997511473622756_8925164442586244083_n.jpg', '2023-05-12', 1),
(14, 'imagenes/284945121_7997512760289294_1633829543036532232_n.jpg', '2023-05-13', 1),
(15, 'imagenes/285002215_7997512750289295_8017280404635987911_n.jpg', '2023-05-13', 1),
(16, 'imagenes/285122360_7997517256955511_3616730658956265483_n.jpg', '2023-05-13', 1),
(17, 'imagenes/285127964_7997513513622552_3839365103880250825_n.jpg', '2023-05-13', 1),
(18, 'imagenes/285286760_7997512263622677_6573313796475047170_n.jpg', '2023-05-13', 1),
(19, 'imagenes/284768829_7997518010288769_108320326030907893_n.jpg', '2023-05-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fiestas_subscripciones`
--

CREATE TABLE `fiestas_subscripciones` (
  `subscripcionId` int(11) NOT NULL,
  `discotecaId_id` int(11) DEFAULT NULL,
  `usuarioId_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiestas_subscripciones`
--

INSERT INTO `fiestas_subscripciones` (`subscripcionId`, `discotecaId_id`, `usuarioId_id`) VALUES
(56, 3, 11),
(59, 1, 21),
(61, 2, 21),
(68, 1, 1),
(78, 2, 23),
(80, 3, 23),
(84, 1, 23),
(85, 1, 24),
(86, 2, 24),
(87, 2, 27),
(88, 3, 27),
(90, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fiestas_usuarios`
--

CREATE TABLE `fiestas_usuarios` (
  `usuarioId` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `edad` varchar(3) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `contrasena` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `discotecaId_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiestas_usuarios`
--

INSERT INTO `fiestas_usuarios` (`usuarioId`, `foto`, `edad`, `dni`, `correo`, `admin`, `contrasena`, `usuario`, `discotecaId_id`) VALUES
(1, '/media/imagenes/silhouette-66692_1280_t52xtAz.jpg', '21', '49785303D', 'pacomorenonavarr@gmail.com', 1, '', 'pacommn', 1),
(2, '', '21', '49785307D', 'pacomorenonavarr@gmail.com', NULL, '', 'pepe', NULL),
(11, '', '0', '', 'roberto@gmail.com', NULL, '', 'roberto', NULL),
(21, '/media/imagenes/2411b885-0967-4016-b5e7-bd8be0db750d_21-9-aspect-ratio_default_0.jpg', '', '', 'alvaro@gmail.com', 1, '', 'alvaro', 3),
(23, '/media/imagenes/31001-discoteca.jpg', '', '', 'meme@gmail.com', NULL, '', 'meme', NULL),
(24, '/media/imagenes/30995.jpg', '', '', 'gori@gmail.com', NULL, '', 'gori', NULL),
(27, '/media/imagenes/30995.jpg', '', '', 'paco@gmail.com', NULL, '', 'paco', NULL),
(29, '/media/imagenes/30995.jpg', '', '', 'pacomorenonavarro10@gmail.com', NULL, '', 'paco1', NULL),
(34, '/media/imagenes/30995.jpg', '', '', '', NULL, '', 'user', NULL),
(36, '/media/imagenes/30995.jpg', '', '', '', NULL, '', 'ines', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(4, 'google', '101287622569911405761', '2023-05-17 17:57:20.509240', '2023-05-14 15:54:40.366226', '{\"iss\": \"https://accounts.google.com\", \"azp\": \"832598094670-atu4q79pnqqrtev29brhak9il60mq8or.apps.googleusercontent.com\", \"aud\": \"832598094670-atu4q79pnqqrtev29brhak9il60mq8or.apps.googleusercontent.com\", \"sub\": \"101287622569911405761\", \"email\": \"pacomorenonavarr@gmail.com\", \"email_verified\": true, \"at_hash\": \"m8wvZQDXxXXGl-dJu1dfug\", \"name\": \"Paco Moreno Navarro\", \"picture\": \"https://lh3.googleusercontent.com/a/AGNmyxbEgV64UudW3LaFmrRhScuWXoAb8F719NZQxA6J=s96-c\", \"given_name\": \"Paco\", \"family_name\": \"Moreno Navarro\", \"locale\": \"es\", \"iat\": 1684346244, \"exp\": 1684349844}', 27),
(6, 'google', '108589922023114082831', '2023-05-14 18:04:24.640098', '2023-05-14 18:04:24.640098', '{\"iss\": \"https://accounts.google.com\", \"azp\": \"832598094670-atu4q79pnqqrtev29brhak9il60mq8or.apps.googleusercontent.com\", \"aud\": \"832598094670-atu4q79pnqqrtev29brhak9il60mq8or.apps.googleusercontent.com\", \"sub\": \"108589922023114082831\", \"email\": \"pacomorenonavarro10@gmail.com\", \"email_verified\": true, \"at_hash\": \"rNd32BkWkQ9mXyjWWNdkdw\", \"name\": \"Paco Moreno navarro\", \"picture\": \"https://lh3.googleusercontent.com/a/AGNmyxYC4H0qpCLravT-yx1ZhuLOI_93TVkAprb1VNRu=s96-c\", \"given_name\": \"Paco\", \"family_name\": \"Moreno navarro\", \"locale\": \"es\", \"iat\": 1684087467, \"exp\": 1684091067}', 29),
(7, 'github', '114660367', '2023-05-17 17:57:30.918969', '2023-05-14 19:00:11.042322', '{\"login\": \"pacommn\", \"id\": 114660367, \"node_id\": \"U_kgDOBtWUDw\", \"avatar_url\": \"https://avatars.githubusercontent.com/u/114660367?v=4\", \"gravatar_id\": \"\", \"url\": \"https://api.github.com/users/pacommn\", \"html_url\": \"https://github.com/pacommn\", \"followers_url\": \"https://api.github.com/users/pacommn/followers\", \"following_url\": \"https://api.github.com/users/pacommn/following{/other_user}\", \"gists_url\": \"https://api.github.com/users/pacommn/gists{/gist_id}\", \"starred_url\": \"https://api.github.com/users/pacommn/starred{/owner}{/repo}\", \"subscriptions_url\": \"https://api.github.com/users/pacommn/subscriptions\", \"organizations_url\": \"https://api.github.com/users/pacommn/orgs\", \"repos_url\": \"https://api.github.com/users/pacommn/repos\", \"events_url\": \"https://api.github.com/users/pacommn/events{/privacy}\", \"received_events_url\": \"https://api.github.com/users/pacommn/received_events\", \"type\": \"User\", \"site_admin\": false, \"name\": null, \"company\": null, \"blog\": \"\", \"location\": null, \"email\": null, \"hireable\": null, \"bio\": null, \"twitter_username\": null, \"public_repos\": 1, \"public_gists\": 0, \"followers\": 0, \"following\": 0, \"created_at\": \"2022-09-29T10:25:31Z\", \"updated_at\": \"2022-11-27T16:31:49Z\", \"private_gists\": 0, \"total_private_repos\": 0, \"owned_private_repos\": 0, \"disk_usage\": 35359, \"collaborators\": 0, \"two_factor_authentication\": false, \"plan\": {\"name\": \"free\", \"space\": 976562499, \"collaborators\": 0, \"private_repos\": 10000}}', 30),
(9, 'facebook', '1962426670757273', '2023-05-17 17:57:10.747900', '2023-05-14 20:25:40.755898', '{\"id\": \"1962426670757273\", \"first_name\": \"Ines\", \"last_name\": \"Navarro\", \"name\": \"Ines Navarro\", \"name_format\": \"{first} {last}\", \"picture\": {\"data\": {\"height\": 50, \"is_silhouette\": false, \"url\": \"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1962426670757273&height=50&width=50&ext=1686938234&hash=AeTepJm4lUUZlszDHnE\", \"width\": 50}}, \"short_name\": \"Ines\"}', 37);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'google', 'Google Api', '832598094670-atu4q79pnqqrtev29brhak9il60mq8or.apps.googleusercontent.com', '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', ''),
(2, 'facebook', 'Facebook Api', '643287970465285', 'e8e500742d2e1561484c792597be93b8', ''),
(3, 'github', 'Api Github', 'e0b34f5a2b52a567f7d5', '6005c883cdd0097c525a25bdacaa28ff56234f41', '');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint(20) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(5, 2, 1),
(6, 2, 2),
(8, 3, 1),
(7, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `fiestas_carrito`
--
ALTER TABLE `fiestas_carrito`
  ADD PRIMARY KEY (`carritoId`),
  ADD KEY `fiestas_carrito_usuarioId_id_a70fa565_fk_fiestas_u` (`usuarioId_id`);

--
-- Indexes for table `fiestas_discotecass`
--
ALTER TABLE `fiestas_discotecass`
  ADD PRIMARY KEY (`discotecaId`);

--
-- Indexes for table `fiestas_entradas`
--
ALTER TABLE `fiestas_entradas`
  ADD PRIMARY KEY (`entradaId`),
  ADD KEY `fiestas_entradas_fiestaId_id_2fbe57b1_fk_fiestas_f` (`fiestaId_id`),
  ADD KEY `fiestas_entradas_usuarioId_id_5046e5b9_fk_fiestas_u` (`usuarioId_id`),
  ADD KEY `fiestas_entradas_discotecaId_id_89ce6b0d_fk_fiestas_d` (`discotecaId_id`),
  ADD KEY `fiestas_entradas_carritoId_id_93ad7e14_fk_fiestas_c` (`carritoId_id`);

--
-- Indexes for table `fiestas_fiestas`
--
ALTER TABLE `fiestas_fiestas`
  ADD PRIMARY KEY (`fiestaId`),
  ADD KEY `fiestas_fiestas_discotecaId_id_baffaf41_fk_fiestas_d` (`discotecaId_id`);

--
-- Indexes for table `fiestas_fotos`
--
ALTER TABLE `fiestas_fotos`
  ADD PRIMARY KEY (`fotoId`),
  ADD KEY `fiestas_fotos_discotecaId_id_54da4ffe_fk_fiestas_d` (`discotecaId_id`);

--
-- Indexes for table `fiestas_subscripciones`
--
ALTER TABLE `fiestas_subscripciones`
  ADD PRIMARY KEY (`subscripcionId`),
  ADD KEY `fiestas_subscripcion_discotecaId_id_090d13bf_fk_fiestas_d` (`discotecaId_id`),
  ADD KEY `fiestas_subscripcion_usuarioId_id_718261c9_fk_fiestas_u` (`usuarioId_id`);

--
-- Indexes for table `fiestas_usuarios`
--
ALTER TABLE `fiestas_usuarios`
  ADD PRIMARY KEY (`usuarioId`),
  ADD UNIQUE KEY `fiestas_usuarios_usuario_5723b42e_uniq` (`usuario`),
  ADD KEY `fiestas_usuarios_discotecaId_id_0beafb7c_fk_fiestas_d` (`discotecaId_id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fiestas_carrito`
--
ALTER TABLE `fiestas_carrito`
  MODIFY `carritoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `fiestas_discotecass`
--
ALTER TABLE `fiestas_discotecass`
  MODIFY `discotecaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fiestas_entradas`
--
ALTER TABLE `fiestas_entradas`
  MODIFY `entradaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `fiestas_fiestas`
--
ALTER TABLE `fiestas_fiestas`
  MODIFY `fiestaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `fiestas_fotos`
--
ALTER TABLE `fiestas_fotos`
  MODIFY `fotoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fiestas_subscripciones`
--
ALTER TABLE `fiestas_subscripciones`
  MODIFY `subscripcionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `fiestas_usuarios`
--
ALTER TABLE `fiestas_usuarios`
  MODIFY `usuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `fiestas_carrito`
--
ALTER TABLE `fiestas_carrito`
  ADD CONSTRAINT `fiestas_carrito_usuarioId_id_a70fa565_fk_fiestas_u` FOREIGN KEY (`usuarioId_id`) REFERENCES `fiestas_usuarios` (`usuarioId`);

--
-- Constraints for table `fiestas_entradas`
--
ALTER TABLE `fiestas_entradas`
  ADD CONSTRAINT `fiestas_entradas_carritoId_id_93ad7e14_fk_fiestas_c` FOREIGN KEY (`carritoId_id`) REFERENCES `fiestas_carrito` (`carritoId`),
  ADD CONSTRAINT `fiestas_entradas_discotecaId_id_89ce6b0d_fk_fiestas_d` FOREIGN KEY (`discotecaId_id`) REFERENCES `fiestas_discotecass` (`discotecaId`),
  ADD CONSTRAINT `fiestas_entradas_fiestaId_id_2fbe57b1_fk_fiestas_f` FOREIGN KEY (`fiestaId_id`) REFERENCES `fiestas_fiestas` (`fiestaId`),
  ADD CONSTRAINT `fiestas_entradas_usuarioId_id_5046e5b9_fk_fiestas_u` FOREIGN KEY (`usuarioId_id`) REFERENCES `fiestas_usuarios` (`usuarioId`);

--
-- Constraints for table `fiestas_fiestas`
--
ALTER TABLE `fiestas_fiestas`
  ADD CONSTRAINT `fiestas_fiestas_discotecaId_id_baffaf41_fk_fiestas_d` FOREIGN KEY (`discotecaId_id`) REFERENCES `fiestas_discotecass` (`discotecaId`);

--
-- Constraints for table `fiestas_fotos`
--
ALTER TABLE `fiestas_fotos`
  ADD CONSTRAINT `fiestas_fotos_discotecaId_id_54da4ffe_fk_fiestas_d` FOREIGN KEY (`discotecaId_id`) REFERENCES `fiestas_discotecass` (`discotecaId`);

--
-- Constraints for table `fiestas_subscripciones`
--
ALTER TABLE `fiestas_subscripciones`
  ADD CONSTRAINT `fiestas_subscripcion_discotecaId_id_090d13bf_fk_fiestas_d` FOREIGN KEY (`discotecaId_id`) REFERENCES `fiestas_discotecass` (`discotecaId`),
  ADD CONSTRAINT `fiestas_subscripcion_usuarioId_id_718261c9_fk_fiestas_u` FOREIGN KEY (`usuarioId_id`) REFERENCES `fiestas_usuarios` (`usuarioId`);

--
-- Constraints for table `fiestas_usuarios`
--
ALTER TABLE `fiestas_usuarios`
  ADD CONSTRAINT `fiestas_usuarios_discotecaId_id_0beafb7c_fk_fiestas_d` FOREIGN KEY (`discotecaId_id`) REFERENCES `fiestas_discotecass` (`discotecaId`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
