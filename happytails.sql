-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2023 a las 21:57:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `happytails`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(4, 'Admin'),
(2, 'Cliente'),
(1, 'Suscriptor'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(22, 2, 40),
(21, 2, 44),
(23, 2, 52),
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(32, 3, 25),
(33, 3, 26),
(34, 3, 27),
(35, 3, 28),
(5, 3, 29),
(6, 3, 30),
(7, 3, 31),
(8, 3, 32),
(24, 3, 33),
(25, 3, 34),
(26, 3, 35),
(27, 3, 36),
(9, 3, 37),
(10, 3, 38),
(11, 3, 39),
(12, 3, 40),
(13, 3, 41),
(14, 3, 42),
(15, 3, 43),
(16, 3, 44),
(28, 3, 45),
(29, 3, 46),
(30, 3, 47),
(31, 3, 48),
(17, 3, 49),
(18, 3, 50),
(19, 3, 51),
(20, 3, 52),
(89, 3, 53),
(90, 3, 54),
(91, 3, 55),
(88, 3, 56),
(36, 4, 1),
(37, 4, 2),
(38, 4, 3),
(39, 4, 4),
(40, 4, 5),
(41, 4, 6),
(42, 4, 7),
(43, 4, 8),
(44, 4, 9),
(45, 4, 10),
(46, 4, 11),
(47, 4, 12),
(48, 4, 13),
(49, 4, 14),
(50, 4, 15),
(51, 4, 16),
(52, 4, 17),
(53, 4, 18),
(54, 4, 19),
(55, 4, 20),
(56, 4, 21),
(57, 4, 22),
(58, 4, 23),
(59, 4, 24),
(60, 4, 25),
(61, 4, 26),
(62, 4, 27),
(63, 4, 28),
(64, 4, 29),
(65, 4, 30),
(66, 4, 31),
(67, 4, 32),
(68, 4, 33),
(69, 4, 34),
(70, 4, 35),
(71, 4, 36),
(72, 4, 37),
(73, 4, 38),
(74, 4, 39),
(75, 4, 40),
(76, 4, 41),
(77, 4, 42),
(78, 4, 43),
(79, 4, 44),
(80, 4, 45),
(81, 4, 46),
(82, 4, 47),
(83, 4, 48),
(84, 4, 49),
(85, 4, 50),
(86, 4, 51),
(87, 4, 52),
(93, 4, 53),
(94, 4, 54),
(95, 4, 55),
(92, 4, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add tipo atencion', 7, 'add_tipoatencion'),
(26, 'Can change tipo atencion', 7, 'change_tipoatencion'),
(27, 'Can delete tipo atencion', 7, 'delete_tipoatencion'),
(28, 'Can view tipo atencion', 7, 'view_tipoatencion'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add tipo solicitud', 9, 'add_tiposolicitud'),
(34, 'Can change tipo solicitud', 9, 'change_tiposolicitud'),
(35, 'Can delete tipo solicitud', 9, 'delete_tiposolicitud'),
(36, 'Can view tipo solicitud', 9, 'view_tiposolicitud'),
(37, 'Can add solicitud', 10, 'add_solicitud'),
(38, 'Can change solicitud', 10, 'change_solicitud'),
(39, 'Can delete solicitud', 10, 'delete_solicitud'),
(40, 'Can view solicitud', 10, 'view_solicitud'),
(41, 'Can add producto', 11, 'add_producto'),
(42, 'Can change producto', 11, 'change_producto'),
(43, 'Can delete producto', 11, 'delete_producto'),
(44, 'Can view producto', 11, 'view_producto'),
(45, 'Can add Linea pedido', 12, 'add_lineapedido'),
(46, 'Can change Linea pedido', 12, 'change_lineapedido'),
(47, 'Can delete Linea pedido', 12, 'delete_lineapedido'),
(48, 'Can view Linea pedido', 12, 'view_lineapedido'),
(49, 'Can add pedido', 13, 'add_pedido'),
(50, 'Can change pedido', 13, 'change_pedido'),
(51, 'Can delete pedido', 13, 'delete_pedido'),
(52, 'Can view pedido', 13, 'view_pedido'),
(53, 'Can add tipo seguimiento', 14, 'add_tiposeguimiento'),
(54, 'Can change tipo seguimiento', 14, 'change_tiposeguimiento'),
(55, 'Can delete tipo seguimiento', 14, 'delete_tiposeguimiento'),
(56, 'Can view tipo seguimiento', 14, 'view_tiposeguimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$BIWzNAzL4T69$tAYwF/vXVYYcUn8xAvFklVnAOdyzTjncLToxO0amhy0=', '2023-06-24 23:13:41.338720', 1, 'alan', '', '', 'alanmoreno332@gmail.com', 1, 1, '2023-06-09 23:15:24.000000'),
(8, 'pbkdf2_sha256$216000$9b26iDUuV88Y$rJkDNa7pjS9L4pglwB/AWgJZ1wxerAJ365iXWT1+MLw=', '2023-06-21 20:22:40.618068', 0, 'almendra', '', '', '', 0, 1, '2023-06-14 03:17:12.000000'),
(9, 'pbkdf2_sha256$216000$MznxT0CpXCO4$6DrC53EVoovCA+qyRS2Rh1ekJ7/BMM5t8QOQjBVxerI=', '2023-06-24 23:11:57.949707', 0, 'alanmoreno', '', '', 'ala.moreno@duocuc.cl', 0, 1, '2023-06-21 20:28:03.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(40, 1, 1),
(27, 1, 3),
(26, 8, 3),
(42, 9, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `tipo_id`) VALUES
(1, 'Nutri Dog', 'Alimento completo para perros adultos de todos los tamaños y razas. Es fabricado bajo la supervisión de profesionales calificados', 25000, 0, 'produ1.jpg', 8),
(3, 'Nutrique cachorro', 'Alimento para perros cachorros de menor a 15kg.', 20000, 19, 'produ3.png', 8),
(4, 'Nutrique adulto', 'indicado para perros adultos con sobrepeso o tendencia al mismo.', 60000, 13, 'produ4.jpg', 8),
(5, 'Royal canin', 'Alimento indicado para perros de raza grande', 65000, 31, 'produ5.jpg', 8),
(6, 'Dingo dental', 'snacks para perros en forma de palitos que ayudan a eliminar de forma sencilla el sarro de los dientes', 10000, 18, 'produ6.jpg', 8),
(7, 'doguitos', 'tira de asado son unos deliciosos bocaditos para perros adultos de todos los tamaños', 8000, 45, 'produ7.jpg', 8),
(8, 'Belcan Adulto', 'alimento para perros adultos de todas las razas y tamaños.', 31500, 35, 'produ8.jpg', 8),
(9, 'Fit Formula Adulto', 'alimento premium completo y balanceado para perros adultos en mantención y hembras en lactancia.', 43000, 6, 'produ9.jpg', 8),
(10, 'Fit Formula lata adulto', 'alimento húmedo para perros adultos 100% balanceado', 5000, 17, 'produ10.jpg', 8),
(12, 'kitten Cría', 'limento elaborado con pollo de primera', 19500, 14, 'produ11.jpg', 8),
(13, 'kitten cría v2', 'comida para gatitos de hasta doce meses de edad.', 48550, 41, 'produ12.jpg', 8),
(14, 'Ciao Churu', 'Pollo con camarón es un novedoso y delicioso snack* para gatos de textura cremosa', 6990, 51, 'produ13.jpg', 8),
(15, 'emerid pets', 'chapa identificadora para mascotas. Este sistema de identificación para mascotas proporciona a un smartphone', 9990, 15, 'produ14.jpg', 6),
(16, 'CHAPA ALUMINUM BONE', 'chapa identificadora para tu perro con diseño de hueso fabricada en aluminio anodizado y material anti-alérgico.', 6900, 18, 'produ15.jpg', 5),
(17, 'CHAPA ALUMINUM HEART', 'chapa identificadora para tu perro con diseño de corazón fabricada en aluminio anodizado y material anti-alérgico.', 6900, 60, 'produ16.jpg', 6),
(18, 'MASCAT COLLAR REFLECTANTE', 'Collar para gatos reflectante de la marca Mas Cat. Fabricado en material resistente, duradero y suave con la piel de su gato.', 3500, 4, 'produ17.jpg', 5),
(19, 'MASCAT COLLAR DOBLE SEGURIDAD', 'Collar para gatos con doble seguridad de la marca MasCat. Fabricado en material resistente, duradero y suave con la piel de su gato.', 7000, 8, 'produ18.jpg', 5),
(20, 'COASTAL PET - GLOW', 'collar ajustable para gatos que brilla en la oscuridad.', 10500, 70, 'produ19.jpg', 5),
(21, 'MASCAN ARNÉS NORUEGO', 'arnés para perros de Mascan es un arnés acolchado indicado para los perros de gran tamaño y razas grandes.', 15990, 12, 'produ20.jpg', 5),
(22, 'MASCAN ARNÉS DEPORTIVO DE CONTROL', 'El arnés deportivo de control para perros de MasCan es un arnés reflectante, con control de paseo, cómodo y resistente.', 25990, 41, 'produ21.jpg', 5),
(23, 'MASCAN ARNÉS CRUZADO ACOLCHADO', 'El arnés cruzado acolchado para perros de MasCan es un arnés muy cómodo para su perro.', 10000, 4, 'produ22.jpg', 5),
(24, 'FERRET DIET', 'alimento para hurones que provee de los nutrientes necesarios para todas las edades y estados de hurones.', 27900, 15, 'produ23.jpg', 8),
(25, 'CHINCHILLA DIET', 'alimento para chinchillas específicamente para todas las etapas de su vida.', 12900, 33, 'produ24.jpg', 8),
(54, 'RABBIT TIMOTHY DIET', 'alimento completo para conejos de Timothy Hay. Formulada para todas sus etapas, puede ser usada como única fuente de nutrientes y no requiere suplemento alimenticio.', 12900, 61, 'produ25.jpg', 8),
(55, 'ANIMALS RABBIT ADULT', 'limento completo super premium para conejos adultos (20 semanas - 4 años de edad).', 6500, 13, 'produ26.jpg', 8),
(56, 'AQUA PLUS ANTICLORO', 'para acuarios de agua dulce y marina. Elimina el cloro y la cloramina de forma inmediata.', 5900, 14, 'produ27.jpg', 9),
(57, 'BLOQUE NEUTRALIZADOR', 'Este bloque neutralizador de Nutrafin es un bloque de calcio que ayuda a mantener el agua limpia de su acuario o terrario', 3000, 25, 'produ28.jpg', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_solicitud`
--

CREATE TABLE `core_solicitud` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `tipoatencion_id` int(11) NOT NULL,
  `tiposoli_id` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `aceptado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoatencion`
--

CREATE TABLE `core_tipoatencion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoatencion`
--

INSERT INTO `core_tipoatencion` (`id`, `descripcion`) VALUES
(3, 'sucursal'),
(4, 'Online'),
(5, 'Llamada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(5, 'Correa'),
(6, 'Identificador'),
(7, 'Bandana'),
(8, 'Alimento'),
(9, 'Cuidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tiposolicitud`
--

CREATE TABLE `core_tiposolicitud` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tiposolicitud`
--

INSERT INTO `core_tiposolicitud` (`id`, `descripcion`) VALUES
(3, 'Entrenador'),
(4, 'Animal en abandono'),
(5, 'Problema con compra'),
(6, 'Producto en especifico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
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
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-12 03:27:50.291968', '2', 'Ryzen 5 5600G', 1, '[{\"added\": {}}]', 11, 1),
(2, '2023-06-12 03:28:12.126380', '3', 'RTX 4090 24GB GDDR6X', 1, '[{\"added\": {}}]', 11, 1),
(3, '2023-06-12 03:31:28.410323', '4', 'RTX 3060 Eagle OC 12gb', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-06-12 03:32:12.486897', '5', 'INTEL CORE I9 12900K', 1, '[{\"added\": {}}]', 11, 1),
(5, '2023-06-12 03:34:01.583946', '6', 'RX 7600 MECH 2X CLASSIC 8G OC', 1, '[{\"added\": {}}]', 11, 1),
(6, '2023-06-12 03:34:14.310542', '7', 'Intel Core™ i5-10400', 1, '[{\"added\": {}}]', 11, 1),
(7, '2023-06-12 03:35:31.882816', '8', 'RTX 4060 Ti 8GB', 1, '[{\"added\": {}}]', 11, 1),
(8, '2023-06-12 03:36:05.950606', '9', 'AMD Ryzen 7 5800X', 1, '[{\"added\": {}}]', 11, 1),
(9, '2023-06-12 03:37:38.755699', '10', 'AMD RYZEN 3 3200G', 1, '[{\"added\": {}}]', 11, 1),
(10, '2023-06-12 03:41:53.382198', '11', 'Intel Core i7-10700F', 1, '[{\"added\": {}}]', 11, 1),
(11, '2023-06-12 03:43:07.146767', '12', 'GTX 1070 BLACK EDITION', 1, '[{\"added\": {}}]', 11, 1),
(12, '2023-06-12 03:43:20.567466', '13', 'Intel Core i9-13900KF', 1, '[{\"added\": {}}]', 11, 1),
(13, '2023-06-12 03:44:51.687382', '14', 'Asus Prime H610M D4', 1, '[{\"added\": {}}]', 11, 1),
(14, '2023-06-12 03:44:53.800543', '15', 'Ryzen 9 7900', 1, '[{\"added\": {}}]', 11, 1),
(15, '2023-06-12 03:49:21.860331', '16', 'Placa Madre ASUS Prime H510M-E', 1, '[{\"added\": {}}]', 11, 1),
(16, '2023-06-12 03:51:28.758780', '17', 'ASUS ROG Strix X570-E Gaming', 1, '[{\"added\": {}}]', 11, 1),
(17, '2023-06-12 03:54:22.729478', '18', 'GIGABYTE Placa Madre Aorus Z690 Pro Gaming', 1, '[{\"added\": {}}]', 11, 1),
(18, '2023-06-12 03:57:47.991591', '19', 'MSI MPG B550 GAMING PLUS Gaming', 1, '[{\"added\": {}}]', 11, 1),
(19, '2023-06-12 03:58:35.444771', '20', 'Ram DDR4 16GB (2x8GB) 3200Mhz Corsair', 1, '[{\"added\": {}}]', 11, 1),
(20, '2023-06-12 03:59:59.513363', '21', 'ASUS ROG Strix B450-F GAMING', 1, '[{\"added\": {}}]', 11, 1),
(21, '2023-06-12 04:00:59.052045', '22', 'Memoria RAM Vengeance RGB Pro gamer color black 16', 1, '[{\"added\": {}}]', 11, 1),
(22, '2023-06-12 04:01:18.875257', '23', 'Asus ROG-STRIX-Z390-H-GAMING', 1, '[{\"added\": {}}]', 11, 1),
(23, '2023-06-12 04:04:20.246446', '24', 'MSI MPG Z590 GAMING FORCE', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-06-12 04:06:22.210154', '25', 'Pack Memoria RAM GSkill Trident Z Royal 2x 8x3200M', 1, '[{\"added\": {}}]', 11, 1),
(25, '2023-06-12 04:07:33.107930', '26', 'Memoria Ram Xpg Spectrix D60g Ddr4 3200mhz 16gb', 1, '[{\"added\": {}}]', 11, 1),
(26, '2023-06-13 14:02:10.712755', '1', 'Suscriptor', 1, '[{\"added\": {}}]', 3, 1),
(27, '2023-06-13 14:02:14.300211', '2', 'Cliente', 1, '[{\"added\": {}}]', 3, 1),
(28, '2023-06-13 14:02:48.233903', '3', 'Vendedor', 1, '[{\"added\": {}}]', 3, 1),
(29, '2023-06-13 14:04:38.603397', '3', 'Vendedor', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(30, '2023-06-13 14:05:02.845306', '2', 'Cliente', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(31, '2023-06-13 14:05:13.510670', '1', 'Suscriptor', 2, '[]', 3, 1),
(32, '2023-06-13 14:08:22.080473', '3', 'olo', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(33, '2023-06-13 14:08:29.631503', '2', 'nicki', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(34, '2023-06-14 02:58:27.460331', '2', 'Cliente', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(35, '2023-06-14 02:59:14.428791', '3', 'Vendedor', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(36, '2023-06-14 02:59:34.648051', '4', 'Admin', 1, '[{\"added\": {}}]', 3, 1),
(37, '2023-06-14 03:32:13.379556', '8', 'almendra', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(38, '2023-06-14 04:13:03.051202', '1', 'alan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(39, '2023-06-14 04:13:51.130909', '1', 'alan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(40, '2023-06-14 04:13:55.754769', '1', 'alan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(41, '2023-06-14 04:14:43.660440', '8', 'almendra', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(42, '2023-06-14 04:16:15.531415', '3', 'Vendedor', 2, '[]', 3, 1),
(43, '2023-06-14 04:21:34.534683', '1', 'alan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(44, '2023-06-14 04:24:05.046164', '1', 'alan', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"Last login\"]}}]', 4, 1),
(45, '2023-06-14 16:27:50.994033', '5', 'Correa', 1, '[{\"added\": {}}]', 8, 1),
(46, '2023-06-14 16:27:56.243995', '6', 'Identificador', 1, '[{\"added\": {}}]', 8, 1),
(47, '2023-06-14 16:28:00.784899', '7', 'Bandana', 1, '[{\"added\": {}}]', 8, 1),
(48, '2023-06-20 01:45:47.287342', '8', 'Alimento', 1, '[{\"added\": {}}]', 8, 1),
(49, '2023-06-20 01:48:15.151312', '29', 'Nutri Dog', 1, '[{\"added\": {}}]', 11, 1),
(50, '2023-06-20 01:51:41.351557', '30', 'Nutrique', 1, '[{\"added\": {}}]', 11, 1),
(51, '2023-06-20 01:54:05.713649', '31', 'Nutrique cachorro', 1, '[{\"added\": {}}]', 11, 1),
(52, '2023-06-20 01:56:40.050042', '32', 'Nutrique adulto', 1, '[{\"added\": {}}]', 11, 1),
(53, '2023-06-20 01:57:47.884063', '33', 'Royal canin', 1, '[{\"added\": {}}]', 11, 1),
(54, '2023-06-20 01:58:53.725704', '34', 'Dingo dental', 1, '[{\"added\": {}}]', 11, 1),
(55, '2023-06-20 01:59:50.661603', '35', 'doguitos', 1, '[{\"added\": {}}]', 11, 1),
(56, '2023-06-20 02:00:42.686698', '36', 'Belcan Adulto', 1, '[{\"added\": {}}]', 11, 1),
(57, '2023-06-20 02:01:36.540487', '37', 'Fit Formula Adulto', 1, '[{\"added\": {}}]', 11, 1),
(58, '2023-06-20 02:02:24.572804', '38', 'Fit Formula lata adulto', 1, '[{\"added\": {}}]', 11, 1),
(59, '2023-06-20 02:02:25.078807', '39', 'Fit Formula lata adulto', 1, '[{\"added\": {}}]', 11, 1),
(60, '2023-06-20 02:04:22.130045', '40', 'kitten Cría', 1, '[{\"added\": {}}]', 11, 1),
(61, '2023-06-20 02:05:37.807509', '41', 'kitten cría v2', 1, '[{\"added\": {}}]', 11, 1),
(62, '2023-06-20 02:06:35.885664', '42', 'Ciao Churu', 1, '[{\"added\": {}}]', 11, 1),
(63, '2023-06-20 02:07:58.687688', '43', 'emerid pets', 1, '[{\"added\": {}}]', 11, 1),
(64, '2023-06-20 02:08:46.116797', '44', 'CHAPA ALUMINUM BONE', 1, '[{\"added\": {}}]', 11, 1),
(65, '2023-06-20 02:09:34.639335', '45', 'CHAPA ALUMINUM HEART', 1, '[{\"added\": {}}]', 11, 1),
(66, '2023-06-20 02:10:38.908388', '46', 'MASCAT COLLAR REFLECTANTE', 1, '[{\"added\": {}}]', 11, 1),
(67, '2023-06-20 02:11:16.760084', '47', 'MASCAT COLLAR DOBLE SEGURIDAD', 1, '[{\"added\": {}}]', 11, 1),
(68, '2023-06-20 02:12:04.516030', '48', 'COASTAL PET - GLOW', 1, '[{\"added\": {}}]', 11, 1),
(69, '2023-06-20 02:13:07.151914', '49', 'MASCAN ARNÉS NORUEGO', 1, '[{\"added\": {}}]', 11, 1),
(70, '2023-06-20 02:13:48.449916', '50', 'MASCAN ARNÉS DEPORTIVO DE CONTROL', 1, '[{\"added\": {}}]', 11, 1),
(71, '2023-06-20 02:14:36.305216', '51', 'MASCAN ARNÉS CRUZADO ACOLCHADO', 1, '[{\"added\": {}}]', 11, 1),
(72, '2023-06-20 02:15:40.863672', '52', 'FERRET DIET', 1, '[{\"added\": {}}]', 11, 1),
(73, '2023-06-20 02:16:26.934231', '53', 'CHINCHILLA DIET', 1, '[{\"added\": {}}]', 11, 1),
(74, '2023-06-20 02:17:17.598089', '54', 'RABBIT TIMOTHY DIET', 1, '[{\"added\": {}}]', 11, 1),
(75, '2023-06-20 02:18:02.261601', '55', 'ANIMALS RABBIT ADULT', 1, '[{\"added\": {}}]', 11, 1),
(76, '2023-06-20 02:32:01.862420', '9', 'Cuidado', 1, '[{\"added\": {}}]', 8, 1),
(77, '2023-06-20 02:32:14.915806', '56', 'AQUA PLUS ANTICLORO', 1, '[{\"added\": {}}]', 11, 1),
(78, '2023-06-20 02:33:26.087886', '57', 'BLOQUE NEUTRALIZADOR', 1, '[{\"added\": {}}]', 11, 1),
(79, '2023-06-20 02:37:39.104864', '3', 'Entrenador', 1, '[{\"added\": {}}]', 9, 1),
(80, '2023-06-20 02:38:03.333218', '4', 'Animal en abandono', 1, '[{\"added\": {}}]', 9, 1),
(81, '2023-06-20 02:38:18.195561', '5', 'Problema con compra', 1, '[{\"added\": {}}]', 9, 1),
(82, '2023-06-20 02:38:37.963070', '6', 'Producto en especifico', 1, '[{\"added\": {}}]', 9, 1),
(83, '2023-06-20 02:57:25.529007', '3', 'sucursal', 1, '[{\"added\": {}}]', 7, 1),
(84, '2023-06-20 02:57:31.740617', '4', 'Online', 1, '[{\"added\": {}}]', 7, 1),
(85, '2023-06-20 02:57:40.695504', '5', 'Llamada', 1, '[{\"added\": {}}]', 7, 1),
(86, '2023-06-24 23:08:51.198992', '9', 'alanmoreno', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(87, '2023-06-24 23:11:31.067448', '9', 'alanmoreno', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(88, '2023-06-24 23:11:31.653563', '9', 'alanmoreno', 2, '[]', 4, 1),
(89, '2023-06-24 23:14:40.960948', '3', 'Vendedor', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(90, '2023-06-24 23:14:51.792481', '4', 'Admin', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'core', 'producto'),
(10, 'core', 'solicitud'),
(7, 'core', 'tipoatencion'),
(8, 'core', 'tipoproducto'),
(9, 'core', 'tiposolicitud'),
(12, 'pedidos', 'lineapedido'),
(13, 'pedidos', 'pedido'),
(14, 'pedidos', 'tiposeguimiento'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-09 23:13:48.349253'),
(2, 'auth', '0001_initial', '2023-06-09 23:13:49.646316'),
(3, 'admin', '0001_initial', '2023-06-09 23:13:57.412267'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-09 23:13:59.973094'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-09 23:14:00.016068'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-09 23:14:00.750172'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-09 23:14:01.655282'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-09 23:14:01.824226'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-09 23:14:01.864164'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-09 23:14:02.463370'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-09 23:14:02.499315'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-09 23:14:02.537291'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-09 23:14:02.677311'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-09 23:14:02.820686'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-09 23:14:02.964558'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-09 23:14:03.002479'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-09 23:14:03.130410'),
(18, 'core', '0001_initial', '2023-06-09 23:14:04.673174'),
(19, 'sessions', '0001_initial', '2023-06-09 23:14:07.439179'),
(20, 'pedidos', '0001_initial', '2023-06-10 02:11:38.681216'),
(21, 'core', '0002_solicitud_fecha', '2023-06-11 18:19:49.157140'),
(22, 'core', '0003_auto_20230611_1525', '2023-06-11 19:25:42.619259'),
(23, 'pedidos', '0002_auto_20230611_1830', '2023-06-11 22:30:45.403373'),
(24, 'pedidos', '0003_auto_20230611_1934', '2023-06-11 23:34:15.595937'),
(25, 'pedidos', '0004_auto_20230611_1938', '2023-06-11 23:38:42.085873'),
(26, 'pedidos', '0005_auto_20230619_1351', '2023-06-19 17:51:45.826211'),
(27, 'pedidos', '0006_lineapedido_seguimiento', '2023-06-19 17:56:06.090841'),
(28, 'pedidos', '0007_auto_20230619_1420', '2023-06-19 18:20:08.967325');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1wufbdqw5dvbtis52ni65vzuq8izfoax', '.eJw9jbEOwyAQQ3-l8oyaNmx8RH6honBKb4BLTjBF_HsvGeLBg_VsH0hRVRAO-NM2ldxTkw9nBO9QpXyVELD0prx3eqSYfnJWnMGU2LqYX6Y7mBGuwNl2bZyjTb0duMSVqtFTocxxuq78c6srxhh_7HosDQ:1qC5IA:98B-LRyXvfAQCNKHL4L7RoMUeT2oEbuXpofrBwRDBZc', '2023-07-05 21:23:06.028567'),
('2zw2ukh9r7z4j08vxm332i8bdk5zeqd0', 'eyJjYXJybyI6e319:1q94ru:98VE-I4HBl1oC56TFiZFUiQa1YNgIb406OaM2D8jUf4', '2023-06-27 14:19:34.079041'),
('533cxub5ypuzus86nhqxzl7qni2f8cre', '.eJxVjDEOgzAMRe_iuYpwwEAYu3MG5MROoa2IFGBC3L1FYmH9772_Q-CcE3T78YCBt3UctkXzMAl0gHDbPIePzieQN8-vZEKa1zx5cyrmoovpk-j3ebm3g5GX8V8TOifRhwY1RvHibUlYBFGKWlRsrSVbCVFdoysxEMfo0WFTtq2zSgzHD5GdO7k:1qBRgQ:98IMDLIVQ2I-RAHPfnx7Wx26GDfZgdDCZouhjHDLPRE', '2023-07-04 03:05:30.935438'),
('88wccc9c5p6snjduc7etfr2vxwjo3dje', '.eJxVjktvgzAQhP9KtGdC_MABc0wq9dKkD_XQm2V7DZgWHBk4Rfz3QhNVyh72MPPNaK5gdYwByivQ9V1iwMmOQXmEkibQh85EByV8fG1ETjbF8wGShXLWLyFgZL1_hUF5U5Klth896luL73Tt-oXfdQ693j2p87s6vynJuJR0e3o5ZpTwQsi8yAtFOCOMbF8VRoz0s03bSw3znIDS09ioaXDxb96y-EEz2n67fjWw1X0dUhv6MXqTrkh6d4f0FND9HO7sQ0Gjh2ZJCyolVsbm1FUVGjSMC0osOlE5kmnGmGAZCrHfU8mpFbqqDJU050UhmRMa5l9vJ2jk:1q8U7C:mcGAAqVLy3bBn6qDi3G9ik5-KbAA_e6A913L0-wYr8Y', '2023-06-25 23:04:54.370827'),
('8ig5vk4d7y9e5fbu050wd539x84wo9sl', '.eJxVjDEOgzAMRe_iuYpwwEAYu3MG5MROoa2IFGBC3L1FYmH9772_Q-CcE3T78YCBt3UctkXzMAl0gHDbPIePzieQN8-vZEKa1zx5cyrmoovpk-j3ebm3g5GX8V8TOifRhwY1RvHibUlYBFGKWlRsrSVbCVFdoysxEMfo0WFTtq2zSgzHD5GdO7k:1q9HH3:JWktDJcJiNpkV0tElchp5AefQzG5u50idPJro37aIYU', '2023-06-28 03:34:21.669971'),
('9gt057gmjnupataolzuf5zo7cwjikpn0', '.eJxVTr1ugzAQfhV0MyLYYBIzRpEydYk6ZENn-wxOix0ZmCLevaailXLDDd__CzTGGKB9QbW9Zwxm0XPonIG2ysGHUUWCFm6f96wuZZnx-nrOrpfLrblDnvSkXbIDk7JM9w9xaHcoTxV-dgZTIsvBjdiTT47DSMbh4a-RFY9nD-uaQ4fLPHTLRPF3BTB4wxTqL_IbYR7o-1Do4OfoVLFJip2dio9g6Pu8a98CBpyG5BZpn7FKHxlZa5RRvBKs1IaEpbJGzrngtRGiaZismBZorWKSHavTSXISCOsPTRpjXQ:1q8YYn:x1zY4OCO_5OjRj-w1YDEXCKX8lzZeiRKgoYuypn1GZ0', '2023-06-26 03:49:41.206710'),
('djdgp52l75yozkapojt7asjs74b5o4cm', 'eyJjYXJybyI6e319:1q9Gye:fxV4qtBQoN5EuzjgimHlnyMzsBmNwoOZ9MnrOHtJGgY', '2023-06-28 03:15:20.349445'),
('fzke1d44qgdqeo2i3u0ux47my6s7ygh4', '.eJxVjDEOgzAMRe_iuYpwwEAYu3MG5MROoa2IFGBC3L1FYmH9772_Q-CcE3T78YCBt3UctkXzMAl0gHDbPIePzieQN8-vZEKa1zx5cyrmoovpk-j3ebm3g5GX8V8TOifRhwY1RvHibUlYBFGKWlRsrSVbCVFdoysxEMfo0WFTtq2zSgzHD5GdO7k:1qB2Fb:dnPx04fBHG_8bGBOTsSSXdldIXg1pOZrZqSomXwwZNY', '2023-07-02 23:56:07.235107'),
('ljxcrtpm5g0hw70pf3jrtyo3it6vkk4a', 'eyJjYXJybyI6e319:1q9Gzb:Pe7qY_9KY5LlbWv7cpDZ4XRa-5EvrOf-3_zVcFcK6u0', '2023-06-28 03:16:19.607024'),
('pscbk3a2mhouhj03zsrmrmajlyx7zm8y', '.eJxVjrFuwzAMRH-l4Gw4lmQlkcfu7S8YlEjZamspla0p8L9XDoIC4cDh-O6Od3CYc4LhDupYt5youC2NgWBQDcS02MwwwGfZcvgt_ObQzemwNBVmF6oXZFfnX5Aw9IfQ1Oy4BcIaJRsIC04cK31amAKeHlWqvcUJ9r2BEcs2j2Xl_OgGAS-aRffN8TjQF8YptS7F-pFtD6R9Xtf2IxH_vD_Zl4AZ17m6tTCGvHUXwd6TJSuVFp0j1p67HqWUWvak9fksjBJOo_dWGHFR16uRrBH2P6WGY0M:1qDVip:1RHfcp4fUR_-7mfgzO2k6IiFTs6XIDEbNySDOK4pShA', '2023-07-09 19:48:31.983921'),
('stfp65738kriv3ff73yfxv4u3fh3bhky', 'eyJjYXJybyI6e319:1q8Z1l:D6Nt48FmkR2gPPtkx00vMd6MzHgaoG79_qLl3et2AJU', '2023-06-26 04:19:37.224628'),
('vebkn67hcfz62pg31r17fa5isjw2dzc5', 'eyJjYXJybyI6e319:1q8Z1i:LKTXAmz8pRPTAXOWFiYf93UZR2vWmKPnOVb7QFUTxAg', '2023-06-26 04:19:34.840079'),
('zfvi0jrww4pwx2nud73j4z7hv5npqazt', 'eyJjYXJybyI6e319:1q9GvB:YsWMT-211w4nDpLmXRsbgf5x20iFtKRuNR7XGFPVsSI', '2023-06-28 03:11:45.528708');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineapedidos`
--

CREATE TABLE `lineapedidos` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seguimiento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_tiposeguimiento`
--

CREATE TABLE `pedidos_tiposeguimiento` (
  `id` int(11) NOT NULL,
  `seguimiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos_tiposeguimiento`
--

INSERT INTO `pedidos_tiposeguimiento` (`id`, `seguimiento`) VALUES
(1, 'Validación'),
(2, 'Preparación'),
(3, 'Reparto'),
(4, 'Entregado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_solicitud`
--
ALTER TABLE `core_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_solicitud_tipoatencion_id_639587cc_fk_core_tipoatencion_id` (`tipoatencion_id`),
  ADD KEY `core_solicitud_tiposoli_id_3c2c3184_fk_core_tiposolicitud_id` (`tiposoli_id`);

--
-- Indices de la tabla `core_tipoatencion`
--
ALTER TABLE `core_tipoatencion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_tiposolicitud`
--
ALTER TABLE `core_tiposolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `lineapedidos`
--
ALTER TABLE `lineapedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Lineapedidos_pedido_id_48afae9a_fk_pedidos_id` (`pedido_id`),
  ADD KEY `Lineapedidos_producto_id_1c1574cd_fk_core_producto_id` (`producto_id`),
  ADD KEY `Lineapedidos_user_id_73370a75_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_user_id_c7db7ff2_fk_auth_user_id` (`user_id`),
  ADD KEY `pedidos_seguimiento_id_4a97ceea_fk_pedidos_tiposeguimiento_id` (`seguimiento_id`);

--
-- Indices de la tabla `pedidos_tiposeguimiento`
--
ALTER TABLE `pedidos_tiposeguimiento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `core_solicitud`
--
ALTER TABLE `core_solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `core_tipoatencion`
--
ALTER TABLE `core_tipoatencion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `core_tiposolicitud`
--
ALTER TABLE `core_tiposolicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `lineapedidos`
--
ALTER TABLE `lineapedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `pedidos_tiposeguimiento`
--
ALTER TABLE `pedidos_tiposeguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `core_solicitud`
--
ALTER TABLE `core_solicitud`
  ADD CONSTRAINT `core_solicitud_tipoatencion_id_639587cc_fk_core_tipoatencion_id` FOREIGN KEY (`tipoatencion_id`) REFERENCES `core_tipoatencion` (`id`),
  ADD CONSTRAINT `core_solicitud_tiposoli_id_3c2c3184_fk_core_tiposolicitud_id` FOREIGN KEY (`tiposoli_id`) REFERENCES `core_tiposolicitud` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `lineapedidos`
--
ALTER TABLE `lineapedidos`
  ADD CONSTRAINT `Lineapedidos_pedido_id_48afae9a_fk_pedidos_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `Lineapedidos_producto_id_1c1574cd_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `Lineapedidos_user_id_73370a75_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_seguimiento_id_4a97ceea_fk_pedidos_tiposeguimiento_id` FOREIGN KEY (`seguimiento_id`) REFERENCES `pedidos_tiposeguimiento` (`id`),
  ADD CONSTRAINT `pedidos_user_id_c7db7ff2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
