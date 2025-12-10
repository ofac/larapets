-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-11-2025 a las 21:33:36
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
-- Base de datos: `larapets3063934`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adoptions`
--

CREATE TABLE `adoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `adoptions`
--

INSERT INTO `adoptions` (`id`, `user_id`, `pet_id`, `created_at`, `updated_at`) VALUES
(1, 2, 4, '2025-10-29 23:41:40', '2025-10-29 23:41:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-asdadsd@adsadad.com|127.0.0.1', 'i:1;', 1762975470),
('laravel-cache-asdadsd@adsadad.com|127.0.0.1:timer', 'i:1762975470;', 1762975470),
('laravel-cache-asdasd@asdsadsd.com|127.0.0.1', 'i:1;', 1762975349),
('laravel-cache-asdasd@asdsadsd.com|127.0.0.1:timer', 'i:1762975349;', 1762975349),
('laravel-cache-asdassads@adsd.com|127.0.0.1', 'i:1;', 1762975281),
('laravel-cache-asdassads@adsd.com|127.0.0.1:timer', 'i:1762975281;', 1762975281),
('laravel-cache-chepirito@mail.com|127.0.0.1', 'i:1;', 1762985614),
('laravel-cache-chepirito@mail.com|127.0.0.1:timer', 'i:1762985614;', 1762985614),
('laravel-cache-fasdfdfds@adasds.com|127.0.0.1', 'i:1;', 1763504280),
('laravel-cache-fasdfdfds@adasds.com|127.0.0.1:timer', 'i:1763504280;', 1763504280);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_22_214801_create_pets_table', 1),
(5, '2025_10_22_214917_create_adoptions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('johnw@mail.com', '$2y$12$hG5fqpvs2LtaoUPX7lzKaeYg8Kva8JlECPcgOr96yyhQyzW13Seaa', '2025-11-13 18:04:01'),
('ofaczero@gmail.com', '$2y$12$vzMeqsmfx/Enlo0qRaiAXuDFHAhUXuy6kMAp.//LooTniyInRJB9y', '2025-11-13 18:13:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'no-image.png',
  `kind` varchar(255) NOT NULL,
  `weight` double NOT NULL,
  `age` int(11) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `name`, `image`, `kind`, `weight`, `age`, `breed`, `location`, `description`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Firulais', 'firulais.png', 'Dog', 7.6, 2, 'French Bulldog', 'Paris', 'Black dog, so charming, lovely', 1, 0, '2025-10-29 23:41:40', '2025-10-29 23:41:40'),
(2, 'Killer', 'killer.png', 'Dog', 18, 6, 'Cane Corso', 'Milan', 'Explosive & Hungry, be carefully with it, Danger', 1, 0, '2025-10-29 23:41:40', '2025-10-29 23:41:40'),
(3, 'Michi', 'michi.png', 'Cat', 1.8, 3, 'Persa', 'Abu Dhabi', 'Its a good girl, only chicken food', 1, 0, '2025-10-29 23:41:40', '2025-10-29 23:41:40'),
(4, 'Chanchi', 'chanchi.png', 'Pig', 30, 5, 'Mini', 'Los Angeles', 'Hungry boy, All kind of food', 1, 1, '2025-10-29 23:41:40', '2025-10-29 23:41:40'),
(5, 'Gus', 'no-image.png', 'Bird', 6.4, 4, 'Saffron Finch', 'Port Mariellefurt', 'Illo perspiciatis eius adipisci et quidem sapiente eum quod.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(6, 'Mora', 'no-image.png', 'Dog', 0.3, 6, 'French Bulldog', 'Lake Dominique', 'Quo corrupti occaecati sit sint modi quisquam odio a sed.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(7, 'Ayacucho', 'no-image.png', 'Cat', 0, 2, 'Persian', 'Carolmouth', 'Recusandae similique sit et reprehenderit tempore vitae et fuga minima ipsum.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(8, 'Kira', 'no-image.png', 'Cat', 7.1, 6, 'Siberian', 'North Javonte', 'Ut necessitatibus rerum nesciunt labore accusamus at et id similique molestias.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(9, 'Pelusa', 'no-image.png', 'Dog', 5.2, 8, 'Chihuahua', 'Lake Adrienne', 'Voluptatem ut quod aut quod magni sint et.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(10, 'Tito', 'no-image.png', 'Dog', 8.8, 2, 'Pinscher', 'Boganburgh', 'Animi aliquid repellat error et hic modi.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(11, 'Leo', 'no-image.png', 'Cat', 2.1, 1, 'Maine Coon', 'North Larueborough', 'Consequatur voluptatem fuga porro amet sit nulla dolorum enim autem.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(12, 'Cuchito', 'no-image.png', 'Cat', 8, 0, 'Russian Blue', 'Lake Rusty', 'Quasi sit officiis voluptatem mollitia odio dolor sed similique.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(13, 'Pluto', 'no-image.png', 'Dog', 2, 7, 'Yorkshire Terrier', 'Bethport', 'Voluptatem non magnam accusamus itaque in temporibus.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(14, 'Leo', 'no-image.png', 'Dog', 5.6, 2, 'Golden Retriever', 'Theresiastad', 'Ducimus modi adipisci ad commodi dolorem blanditiis omnis est.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(15, 'Chocoramo', 'no-image.png', 'Bird', 1.4, 0, 'Andean Condor', 'Heathcoteland', 'Et in velit dolore laboriosam eos.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(16, 'Tinto', 'no-image.png', 'Dog', 2.7, 0, 'Siberian Husky', 'Landenstad', 'Harum quia perspiciatis modi earum beatae consequuntur.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(17, 'Pepa', 'no-image.png', 'Dog', 7.6, 4, 'French Bulldog', 'Port Khalidton', 'Suscipit aut sit et et aperiam nobis a officiis.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(18, 'Bruno', 'no-image.png', 'Dog', 2.2, 5, 'German Shepherd', 'Isaiahside', 'Ducimus adipisci asperiores sequi cumque nesciunt et nesciunt deleniti explicabo.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(19, 'Mimi', 'no-image.png', 'Dog', 8, 3, 'Beagle', 'Daytonstad', 'Omnis omnis dicta debitis quod et nihil minus repudiandae officiis fugiat.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(20, 'Negro', 'no-image.png', 'Dog', 6, 3, 'Pinscher', 'Lake Brisafort', 'Qui nam minus eos quo sit.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(21, 'Coco', 'no-image.png', 'Bird', 0.9, 8, 'Andean Condor', 'North Maymieborough', 'Et praesentium facilis consectetur nihil molestiae eligendi tempore ipsum veritatis at rerum.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(22, 'Sombra', 'no-image.png', 'Bird', 6.3, 0, 'Andean Motmot', 'North Brandihaven', 'Et necessitatibus provident minima rerum ducimus.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(23, 'Muñeco', 'no-image.png', 'Pig', 6.4, 8, 'Landrace', 'Lake Ivahberg', 'Dolorum et alias sint minus.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(24, 'Pepa', 'no-image.png', 'Dog', 7.4, 5, 'Chihuahua', 'Cassinberg', 'A magnam aliquid est hic.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(25, 'Rocky', 'no-image.png', 'Pig', 8.7, 7, 'Duroc', 'West Tomasview', 'Quia cum veritatis omnis rerum suscipit.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(26, 'Puchi', 'no-image.png', 'Dog', 7.5, 0, 'Chihuahua', 'Kleinville', 'Vel fugiat nemo beatae eaque et quae possimus et.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(27, 'Nala', 'no-image.png', 'Cat', 2.1, 1, 'Sphynx', 'Kassulkeville', 'Natus nam sint animi voluptas blanditiis quia.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(28, 'Bombón', 'no-image.png', 'Pig', 1.4, 1, 'Yorkshire', 'South Rebekah', 'Ut praesentium assumenda eveniet labore officiis ullam mollitia.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(29, 'Nube', 'no-image.png', 'Cat', 0.6, 1, 'Persian', 'New Noe', 'Labore doloribus placeat omnis unde et temporibus vero quis ducimus sed.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(30, 'Leo', 'no-image.png', 'Bird', 9.5, 8, 'Parakeet', 'West Hoseamouth', 'Expedita voluptatibus voluptatem placeat iste ut tempore.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(31, 'Sam', 'no-image.png', 'Bird', 6.3, 9, 'Hummingbird', 'New Martine', 'Officia deserunt consequatur cupiditate quam quos esse.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(32, 'Chispa', 'no-image.png', 'Cat', 4.1, 1, 'Siamese', 'Janview', 'Esse excepturi excepturi eveniet voluptate optio.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(33, 'Koda', 'no-image.png', 'Cat', 1.9, 9, 'Persian', 'Strackeborough', 'Voluptas architecto quo et quia rerum ab magnam in.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(34, 'Fluffy', 'no-image.png', 'Pig', 8.5, 2, 'Casco de Mula', 'Emeraldbury', 'Aliquid et voluptas nihil officiis eaque error.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(35, 'Tigre', 'no-image.png', 'Pig', 5.6, 8, 'Hampshire', 'Stromanmouth', 'Id ab quos dolores hic qui eos similique soluta.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(36, 'Buddy', 'no-image.png', 'Bird', 7.3, 8, 'Cockatiel', 'North Barneymouth', 'Aut eum nemo laboriosam delectus et quia.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(37, 'Rocco', 'no-image.png', 'Cat', 0.6, 3, 'Ragdoll', 'East Amelia', 'Esse recusandae voluptatum dolores tempore iusto earum possimus expedita quo est ea.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(38, 'Pluto', 'no-image.png', 'Pig', 2.5, 5, 'Spotted', 'Houstonfort', 'Est est odio voluptatem nemo quibusdam.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(39, 'Nala', 'no-image.png', 'Dog', 9.3, 3, 'German Shepherd', 'Corwinborough', 'Et repellat ex sed deserunt placeat veniam enim.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(40, 'Mirabel', 'no-image.png', 'Cat', 3.7, 6, 'Siberian', 'Ameliabury', 'Consequuntur quae accusantium ut dolor laboriosam ipsum ducimus et nobis.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(41, 'Brisa', 'no-image.png', 'Dog', 2.8, 6, 'Poodle', 'North Aiyana', 'Placeat vero dolore perspiciatis nam et sed similique architecto.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(42, 'Max', 'no-image.png', 'Bird', 3.4, 5, 'Yellow-eared Parrot', 'New Kacie', 'Delectus sequi qui ratione corrupti nesciunt blanditiis corporis quis a maxime adipisci.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(43, 'Negra', 'no-image.png', 'Dog', 0.4, 4, 'Poodle', 'Kulasbury', 'Veniam consectetur perspiciatis veritatis sunt mollitia incidunt voluptatem.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(44, 'Cocoa', 'no-image.png', 'Pig', 8.3, 0, 'Casco de Mula', 'Letachester', 'Ducimus sint vel veniam ut asperiores quaerat.', 1, 0, '2025-10-29 23:42:21', '2025-10-29 23:42:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2nAHoGdXPJB6oCfY9BCcGpLXkL539x64pZpj8F4Z', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXRKSXNRODdRZDZPWVZ4RjFrU1dzVWFaYlR2N1c1QjhIWWsxQVppeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764353739),
('y57CV7b24fenL3YhtyowwXK6JD5esbsIkhzejyIJ', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaDlRMXk1UjM4N0dRV05LU0ZqVU4yVXFoUHM4UkFCUlozd2dKbHZhWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1764361120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'no-photo.png',
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `role` varchar(255) NOT NULL DEFAULT 'Customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `document`, `fullname`, `gender`, `birthdate`, `photo`, `phone`, `email`, `email_verified_at`, `password`, `active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 75000001, 'John Wick', 'Male', '1964-09-12', 'johnw.png', '3100000001', 'johnw@mail.com', NULL, '$2y$12$/0NskxCh/qRvRvZh9lncG.LrP0gPnWer1kxBaCFJKDzMw/yD.45R6', 1, 'Administrator', NULL, '2025-10-22 23:41:40', '2025-10-22 23:41:40'),
(2, 75000002, 'Lara Croft', 'Female', '1992-02-14', 'no-photo.png', '3100000002', 'larac@mail.com', NULL, '$2y$12$UT0YfaGCVuTLrHp67kz.5OeA5bJffCikIwYkXOXNa91L/RfnK6jqa', 1, 'Customer', NULL, '2025-10-22 23:41:40', NULL),
(3, 75673070, 'Alycia Wyman', 'Female', '2005-10-05', '75673070.png', '3109256354', 'alycia458@mail.com', '2025-10-29 23:41:40', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 0, 'Customer', 'kJ2gALyM6Y', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(4, 75057813, 'Brandi Paucek', 'Female', '2003-01-30', '75057813.png', '3109039863', 'brandi500@mail.com', '2025-10-29 23:41:41', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'O9wyqWtTil', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(5, 75220377, 'Brigitte Friesen', 'Female', '1980-05-08', '75220377.png', '3103100145', 'brigitte317@mail.com', '2025-10-29 23:41:41', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '3tqlqiOvXm', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(6, 75767904, 'Kacie Barrows', 'Female', '1989-12-26', '75767904.png', '3108188737', 'kacie947@mail.com', '2025-10-29 23:41:41', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'x42MkJdzDZ', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(7, 75370025, 'Delphine Block', 'Female', '1985-12-27', '75370025.png', '3104630865', 'delphine448@mail.com', '2025-10-29 23:41:42', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'm3hAIJR9kq', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(8, 75285343, 'Willis Schowalter', 'Male', '2001-10-19', '75285343.png', '3102869465', 'willis415@mail.com', '2025-10-29 23:41:42', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'goHoK0ArVP', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(9, 75690129, 'Darlene Konopelski', 'Female', '1983-09-20', '75690129.png', '3107350656', 'darlene437@mail.com', '2025-10-29 23:41:42', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'm7sVOPB6ep', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(10, 75242022, 'Reese Bauch', 'Male', '1996-01-01', '75242022.png', '3102182436', 'reese359@mail.com', '2025-10-29 23:41:43', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'SZEA9qBcmB', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(11, 75796139, 'Osvaldo Hoppe', 'Male', '1997-06-22', '75796139.png', '3108959513', 'osvaldo205@mail.com', '2025-10-29 23:41:43', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'xN04fpf5VI', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(12, 75566629, 'Marlee Moen', 'Female', '1989-08-08', '75566629.png', '3108566921', 'marlee468@mail.com', '2025-10-29 23:41:43', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'zKVyjbXAJs', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(13, 75927509, 'Giovanny Cummerata', 'Male', '1985-07-13', '75927509.png', '3103900940', 'giovanny692@mail.com', '2025-10-29 23:41:44', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'ymT2S6iLD6', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(14, 75258433, 'Winnifred Runolfsson', 'Female', '1995-10-29', '75258433.png', '3102850467', 'winnifred392@mail.com', '2025-10-29 23:41:44', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '7MieQalUgG', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(15, 75899437, 'Sylvia Little', 'Female', '1977-07-29', '75899437.png', '3100871888', 'sylvia649@mail.com', '2025-10-29 23:41:45', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '2SMvuzf59X', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(16, 75001531, 'Earline Anderson', 'Female', '1978-12-27', '75001531.png', '3100094038', 'earline892@mail.com', '2025-10-29 23:41:45', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '2iD6CWxcQB', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(17, 75511642, 'Coby Bryan', 'Male', '1984-10-02', '75511642.png', '3102738446', 'coby472@mail.com', '2025-10-29 23:41:45', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'kmx6QMpSqw', '2025-10-29 23:42:21', '2025-10-30 02:44:02'),
(18, 75258868, 'Kacie Rippin', 'Female', '1981-08-23', '75258868.png', '3100843263', 'kacie883@mail.com', '2025-10-29 23:41:46', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'prdIOY3iuL', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(19, 75529619, 'Alison Reynolds', 'Female', '1978-09-25', '75529619.png', '3107189201', 'alison737@mail.com', '2025-10-29 23:41:46', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'aMUyZSlf6B', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(20, 75022113, 'Reyes Towne', 'Male', '1996-12-06', '75022113.png', '3108584782', 'reyes521@mail.com', '2025-10-29 23:41:47', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 0, 'Customer', 'rc24K4TWhu', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(21, 75539297, 'Mozelle Sauer', 'Female', '1985-09-06', '75539297.png', '3108100107', 'mozelle714@mail.com', '2025-10-29 23:41:47', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 't7LJAvprqF', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(22, 75337529, 'Ellis Durgan', 'Male', '1990-02-14', '75337529.png', '3104678600', 'ellis393@mail.com', '2025-10-29 23:41:48', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'QgLF5JTFiY', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(23, 75626477, 'Muhammad Gusikowski', 'Male', '2006-09-24', '75626477.png', '3106425468', 'muhammad497@mail.com', '2025-10-29 23:41:49', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 0, 'Customer', 'G3KpSepv5D', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(24, 75508245, 'Joshua Grady', 'Male', '2005-06-23', '75508245.png', '3107430958', 'joshua287@mail.com', '2025-10-29 23:41:49', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 0, 'Customer', 'VQHIK91tLM', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(25, 75503929, 'Jeromy Grant', 'Male', '1981-12-22', '75503929.png', '3101313730', 'jeromy797@mail.com', '2025-10-29 23:41:50', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 0, 'Customer', 'qIMt5Jwyc6', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(26, 75659764, 'Carmen Graham', 'Female', '1982-05-17', '75659764.png', '3103047135', 'carmen930@mail.com', '2025-10-29 23:41:50', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'Pk5ozWyJ1a', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(27, 75906138, 'Raoul Schaden', 'Male', '1990-06-13', '75906138.png', '3106166659', 'raoul600@mail.com', '2025-10-29 23:41:50', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'GjnSk3KQRD', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(28, 75453786, 'Wilton Romaguera', 'Male', '2003-03-21', '75453786.png', '3103841403', 'wilton855@mail.com', '2025-10-29 23:41:51', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '4BRc8wnf1G', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(29, 75641258, 'Shannon Torphy', 'Female', '2007-08-22', '75641258.png', '3102290084', 'shannon910@mail.com', '2025-10-29 23:41:51', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '43uShZTF1Y', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(30, 75210532, 'Raquel Koelpin', 'Female', '1993-07-24', '75210532.png', '3104332547', 'raquel839@mail.com', '2025-10-29 23:41:51', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '5kNXpD772K', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(31, 75918871, 'Leopoldo Lakin', 'Male', '2007-03-16', '75918871.png', '3103909474', 'leopoldo077@mail.com', '2025-10-29 23:41:52', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'BWGjvZKogT', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(32, 75744143, 'Janet Paucek', 'Female', '1988-01-18', '75744143.png', '3100043896', 'janet370@mail.com', '2025-10-29 23:41:52', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'eXstt50IhR', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(33, 75213498, 'Kaycee Donnelly', 'Female', '1999-06-03', '75213498.png', '3109591698', 'kaycee570@mail.com', '2025-10-29 23:41:53', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '6dmZhhq4F5', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(34, 75553363, 'Graham Veum', 'Male', '1978-01-03', '75553363.png', '3107562357', 'graham152@mail.com', '2025-10-29 23:41:53', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'NOhcFPKLDz', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(35, 75153495, 'Leanna Murray', 'Female', '2003-01-11', '75153495.png', '3106634956', 'leanna050@mail.com', '2025-10-29 23:41:53', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'yCeoMSVxTN', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(36, 75439081, 'Jessyca O\'Hara', 'Female', '1986-01-31', '75439081.png', '3108415614', 'jessyca713@mail.com', '2025-10-29 23:41:54', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'jcyvEmuE47', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(37, 75216158, 'Kiarra Walker', 'Female', '1997-06-07', '75216158.png', '3105277174', 'kiarra661@mail.com', '2025-10-29 23:41:54', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '37nWQy56m8', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(38, 75801848, 'Twila Funk', 'Female', '1979-09-16', '75801848.png', '3108542609', 'twila079@mail.com', '2025-10-29 23:41:55', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'IWQEhBHuWT', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(39, 75914493, 'Euna Paucek', 'Female', '1981-12-12', '75914493.png', '3109373133', 'euna731@mail.com', '2025-10-29 23:41:55', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'k0Tewdsxqd', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(40, 75759585, 'Ruth Gorczany', 'Female', '1993-07-22', '75759585.png', '3107139677', 'ruth636@mail.com', '2025-10-29 23:41:55', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'sDWBFSYhxZ', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(41, 75736538, 'Reina Ratke', 'Female', '1993-09-26', '75736538.png', '3101539395', 'reina166@mail.com', '2025-10-29 23:41:56', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'xWGjMe5ici', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(42, 75726527, 'Denis Osinski', 'Male', '1989-06-20', '75726527.png', '3108473480', 'denis704@mail.com', '2025-10-29 23:41:56', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'k1UG58SRiK', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(43, 75369092, 'Kaden Kulas', 'Male', '1996-02-17', '75369092.png', '3103893019', 'kaden175@mail.com', '2025-10-29 23:41:56', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'NUTXjP5bLE', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(44, 75848072, 'Rey Harber', 'Male', '2005-03-13', '75848072.png', '3101051968', 'rey653@mail.com', '2025-10-29 23:41:57', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'nrS4u8J2d0', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(45, 75484685, 'Abby McKenzie', 'Female', '2005-08-04', '75484685.png', '3109032715', 'abby824@mail.com', '2025-10-29 23:41:57', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'Fk6LqT0UW9', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(46, 75252235, 'Karlee Goyette', 'Female', '1997-08-29', '75252235.png', '3109316342', 'karlee327@mail.com', '2025-10-29 23:41:57', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'QcR975kDWX', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(47, 75419660, 'Armando Cormier', 'Male', '1998-07-08', '75419660.png', '3106414306', 'armando758@mail.com', '2025-10-29 23:41:58', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'WIo6iTFabv', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(48, 75047707, 'Stone Mills', 'Male', '1998-01-07', '75047707.png', '3106008976', 'stone273@mail.com', '2025-10-29 23:41:58', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'lhXKhIb7hc', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(49, 75957643, 'Tiana Gorczany', 'Female', '2004-12-05', '75957643.png', '3106531604', 'tiana039@mail.com', '2025-10-29 23:41:58', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '6OM7zMinDA', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(50, 75864744, 'Paula Dooley', 'Female', '2001-03-05', '75864744.png', '3107526189', 'paula428@mail.com', '2025-10-29 23:41:59', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '0094lybP0I', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(51, 75110152, 'Cristopher Connelly', 'Male', '1977-10-05', '75110152.png', '3100386493', 'cristopher877@mail.com', '2025-10-29 23:41:59', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'rqaHt8f0VY', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(52, 75346158, 'Korbin Conn', 'Male', '2003-07-29', '75346158.png', '3105033840', 'korbin682@mail.com', '2025-10-29 23:42:00', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'GkNjzVeehy', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(53, 75568721, 'Kendra Hermiston', 'Female', '1986-07-06', '75568721.png', '3108281892', 'kendra032@mail.com', '2025-10-29 23:42:00', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '5CEn7Y7p1M', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(54, 75839608, 'Geoffrey Klocko', 'Male', '1980-09-28', '75839608.png', '3102063937', 'geoffrey136@mail.com', '2025-10-29 23:42:01', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'pUT8xHxjMn', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(55, 75359592, 'Eliane Morissette', 'Female', '1999-07-04', '75359592.png', '3105673010', 'eliane364@mail.com', '2025-10-29 23:42:01', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'UIkKpE7r6v', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(56, 75469643, 'Jerrell Kuvalis', 'Male', '2006-06-07', '75469643.png', '3104040530', 'jerrell926@mail.com', '2025-10-29 23:42:01', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '1SjuaQQfAM', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(57, 75268831, 'Patrick Wunsch', 'Male', '2005-11-10', '75268831.png', '3104672749', 'patrick168@mail.com', '2025-10-29 23:42:02', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'rWQxAJI6Ql', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(58, 75335572, 'Minnie Jacobi', 'Female', '1985-02-02', '75335572.png', '3104891949', 'minnie082@mail.com', '2025-10-29 23:42:02', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'g6m5qmUFW2', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(59, 75701178, 'Quentin Kohler', 'Male', '1993-10-27', '75701178.png', '3103201664', 'quentin742@mail.com', '2025-10-29 23:42:03', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'XNFTY0IGwB', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(60, 75657054, 'Anais Dicki', 'Female', '2003-10-27', '75657054.png', '3101709113', 'anais785@mail.com', '2025-10-29 23:42:03', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'JFXf2NbInB', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(61, 75457884, 'Kara Ankunding', 'Female', '1987-01-09', '75457884.png', '3100065305', 'kara317@mail.com', '2025-10-29 23:42:04', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'i6KnTDLa0o', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(62, 75799570, 'Agustin Reilly', 'Male', '1982-09-12', '75799570.png', '3105542823', 'agustin314@mail.com', '2025-10-29 23:42:04', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'h0wEcwkIVk', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(63, 75381316, 'Tiffany Hayes', 'Female', '2001-07-08', '75381316.png', '3106450694', 'tiffany497@mail.com', '2025-10-29 23:42:05', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'v6C4oZTeUn', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(64, 75893310, 'Anjali Kris', 'Female', '1997-11-18', '75893310.png', '3101735829', 'anjali057@mail.com', '2025-10-29 23:42:05', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'AlOtHZ3MGZ', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(65, 75511673, 'Angel Bailey', 'Male', '1979-10-12', '75511673.png', '3105479491', 'angel488@mail.com', '2025-10-29 23:42:06', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'N6q4JjOoq5', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(66, 75368619, 'Shakira Hyatt', 'Female', '1989-04-24', '75368619.png', '3109849248', 'shakira775@mail.com', '2025-10-29 23:42:06', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '4MttDwfs0H', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(67, 75268978, 'Dangelo Auer', 'Male', '1981-08-21', '75268978.png', '3108748461', 'dangelo265@mail.com', '2025-10-29 23:42:06', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'FPfLClb6QR', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(68, 75073352, 'Noemie Lockman', 'Female', '1998-11-10', '75073352.png', '3108681855', 'noemie518@mail.com', '2025-10-29 23:42:07', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '1l95jZfhGc', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(69, 75202465, 'Cleta Murray', 'Female', '1982-05-28', '75202465.png', '3105285613', 'cleta378@mail.com', '2025-10-29 23:42:08', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'gtlRPEltUG', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(70, 75960310, 'Stewart Emmerich', 'Male', '2006-01-14', '75960310.png', '3106858587', 'stewart456@mail.com', '2025-10-29 23:42:08', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'cU4rTZD4Gg', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(71, 75928446, 'Ellis Nicolas', 'Male', '2005-04-25', '75928446.png', '3108077583', 'ellis324@mail.com', '2025-10-29 23:42:09', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'TY3Ckxp3W2', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(72, 75194796, 'Maggie Klocko', 'Female', '1987-09-05', '75194796.png', '3104246640', 'maggie091@mail.com', '2025-10-29 23:42:09', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'YKFdk2TIlk', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(73, 75823404, 'Fannie Wolff', 'Female', '2005-02-07', '75823404.png', '3101812747', 'fannie524@mail.com', '2025-10-29 23:42:09', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '3dwEzmob4J', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(74, 75449417, 'Clarissa Renner', 'Female', '1987-03-19', '75449417.png', '3109428740', 'clarissa301@mail.com', '2025-10-29 23:42:10', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'q4ZIBifGGF', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(75, 75773002, 'Buster Stokes', 'Male', '2003-05-12', '75773002.png', '3107143791', 'buster277@mail.com', '2025-10-29 23:42:11', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'JJsfSyabwB', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(76, 75867929, 'Kaelyn Gusikowski', 'Female', '1986-04-26', '75867929.png', '3107150211', 'kaelyn454@mail.com', '2025-10-29 23:42:11', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'dJZMrXDVAk', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(77, 75890066, 'Demario Leuschke', 'Male', '1977-06-06', '75890066.png', '3107843200', 'demario890@mail.com', '2025-10-29 23:42:11', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'FMD939tkGh', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(78, 75121239, 'Emily Tillman', 'Female', '2005-06-29', '75121239.png', '3104911715', 'emily213@mail.com', '2025-10-29 23:42:12', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'MmXbs79GTU', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(79, 75430193, 'Megane Marks', 'Female', '1995-04-18', '75430193.png', '3101038811', 'megane631@mail.com', '2025-10-29 23:42:12', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'nwUkgzUOrH', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(80, 75824536, 'Kylee Jones', 'Female', '1988-11-29', '75824536.png', '3107746962', 'kylee142@mail.com', '2025-10-29 23:42:12', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', '3DZ5S6OTLf', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(81, 75042306, 'Alicia Pacocha', 'Female', '1996-07-11', '75042306.png', '3104161845', 'alicia762@mail.com', '2025-10-29 23:42:13', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'VRqpJPwQ6h', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(82, 75165737, 'Janie Romaguera', 'Female', '1990-08-03', '75165737.png', '3100441822', 'janie219@mail.com', '2025-10-29 23:42:13', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'fnPm1N0KKq', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(83, 75648048, 'Monroe Hansen', 'Male', '2007-01-27', '75648048.png', '3106647034', 'monroe204@mail.com', '2025-10-29 23:42:13', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'QfPXBBct9U', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(84, 75233738, 'Jarrod Mueller', 'Male', '2005-07-29', '75233738.png', '3101602723', 'jarrod747@mail.com', '2025-10-29 23:42:14', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'g65kp8vQSc', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(85, 75450838, 'Jett Kuvalis', 'Male', '1977-01-23', '75450838.png', '3102580394', 'jett847@mail.com', '2025-10-29 23:42:14', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'mt1dEaS7TN', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(86, 75591909, 'Alayna Ortiz', 'Female', '1978-03-07', '75591909.png', '3105839447', 'alayna349@mail.com', '2025-10-29 23:42:15', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'Sc9fxKZrDs', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(87, 75004723, 'Asia Marks', 'Female', '1981-09-13', '75004723.png', '3104900315', 'asia427@mail.com', '2025-10-29 23:42:15', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'sFIBC91tJR', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(88, 75295359, 'Miracle Kuvalis', 'Female', '1986-10-10', '75295359.png', '3101944450', 'miracle316@mail.com', '2025-10-29 23:42:16', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'nfGW5MkIZg', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(89, 75137234, 'Gabriella O\'Conner', 'Female', '1993-06-07', '75137234.png', '3102883772', 'gabriella350@mail.com', '2025-10-29 23:42:16', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'jTjo03zkkC', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(90, 75597782, 'Thurman Robel', 'Male', '1981-11-15', '75597782.png', '3108319978', 'thurman896@mail.com', '2025-10-29 23:42:17', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'MrMVP69CJW', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(91, 75371475, 'Keyon Kertzmann', 'Male', '1983-01-28', '75371475.png', '3103746996', 'keyon028@mail.com', '2025-10-29 23:42:17', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'hxpnzaeMuN', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(92, 75473611, 'Everardo Runte', 'Male', '1998-05-08', '75473611.png', '3101859792', 'everardo329@mail.com', '2025-10-29 23:42:18', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'ZiSYMVQGSF', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(93, 75400243, 'Angel Murazik', 'Male', '1979-09-14', '75400243.png', '3100341602', 'angel932@mail.com', '2025-10-29 23:42:18', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'qA4HBJRPrR', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(94, 75893981, 'Crystal Ortiz', 'Female', '1995-03-04', '75893981.png', '3106557287', 'crystal367@mail.com', '2025-10-29 23:42:18', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'l3vxKFukkz', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(95, 75517267, 'Barry Breitenberg', 'Male', '1996-02-13', '75517267.png', '3102198391', 'barry565@mail.com', '2025-10-29 23:42:18', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'VrbIB63UYB', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(96, 75623161, 'Leonel Gutkowski', 'Male', '1985-04-18', '75623161.png', '3100694818', 'leonel174@mail.com', '2025-10-29 23:42:19', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'aq5bednhZm', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(97, 75655801, 'Eleanora Ortiz', 'Female', '1985-01-25', '75655801.png', '3105515906', 'eleanora808@mail.com', '2025-10-29 23:42:19', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'jQ0kVu6wdI', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(98, 75840767, 'Brooks Crooks', 'Male', '1987-05-18', '75840767.png', '3103793453', 'brooks691@mail.com', '2025-10-29 23:42:19', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'lG15ye0BXi', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(99, 75665419, 'Morgan Romaguera', 'Male', '2002-02-04', '75665419.png', '3100064252', 'morgan770@mail.com', '2025-10-29 23:42:20', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 0, 'Customer', 'q6QtiNHmya', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(100, 75881691, 'Ardella Weber', 'Female', '2005-11-07', '75881691.png', '3101600170', 'ardella360@mail.com', '2025-10-29 23:42:20', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'tyDjwtDXO3', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(101, 75220603, 'Lisandro Stanton', 'Male', '1985-11-25', '75220603.png', '3101317778', 'lisandro653@mail.com', '2025-10-29 23:42:20', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 1, 'Customer', 'hyLCuPMWef', '2025-10-29 23:42:21', '2025-10-29 23:42:21'),
(102, 75016586, 'Fatima Bosh', 'Female', '1990-08-28', '1763755405.png', '3108935426', 'addie567@mail.com', '2025-10-29 23:42:21', '$2y$12$m1i0Wycv7lgSl8MGWrr8a.uU5sKu2f2uc./oW/q53j6GkMYlKixNm', 0, 'Customer', 'XY8KeObK0a', '2025-10-29 23:42:21', '2025-11-22 01:03:25'),
(103, 75000009, 'Enrrique Gomez Bolaño', 'Male', '1968-05-25', 'no-photo.png', '3103453456', 'chespirito@mail.com', NULL, '$2y$12$LZRMt2zvZEhhdYbFViZhzudwAA3DzRrEg.9.j8YjG4QodosAYYVNu', 1, 'Customer', NULL, '2025-11-13 03:00:41', '2025-11-13 03:00:41'),
(104, 750000004, 'Mao Mao', 'Female', '1992-11-13', '1763648185.png', '3100000004', 'mao@mail.com', NULL, '$2y$12$ZGbkEbJGauc.Rej0Aci3eOnxXB6eSCWUKhudgzDKKlRGCZmoYj5fm', 1, 'Customer', NULL, '2025-11-20 19:16:25', '2025-11-20 19:16:25'),
(105, 75000005, 'Denji Aristizabal', 'Male', '1998-11-07', '1763652107.png', '3100000005', 'denji@mail.com', NULL, '$2y$12$1C.6gUY0WFCLEtgEwIolKOCuBYJX4tdP4xQCuM5g6DHSrPA0TMYtK', 1, 'Customer', NULL, '2025-11-20 20:21:47', '2025-11-22 00:39:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adoptions_user_id_foreign` (`user_id`),
  ADD KEY `adoptions_pet_id_foreign` (`pet_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_document_unique` (`document`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`),
  ADD CONSTRAINT `adoptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
