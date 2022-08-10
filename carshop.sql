-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 10 2022 г., 19:45
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `carshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `id` bigint UNSIGNED NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enginetype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `enginetype`, `drive`, `created_at`, `updated_at`) VALUES
(1, 'Lexus', 'ES', 'Patrol', 'All_wheel ', '2022-08-07 19:36:07', '2022-08-07 19:36:07'),
(2, 'Lexus', 'ES', 'Diesel', 'All_wheel', '2022-08-07 19:39:18', '2022-08-07 19:39:18'),
(3, 'Lexus', 'ES', 'Hybrid', 'All_wheel', '2022-08-07 19:40:40', '2022-08-07 19:40:40'),
(4, 'Lexus', 'ES', 'Patrol', 'Front_wheel', '2022-08-07 19:41:55', '2022-08-07 19:41:55'),
(5, 'Lexus', 'ES', 'Diesel', 'Front_wheel', '2022-08-07 19:42:36', '2022-08-07 19:42:36'),
(6, 'Lexus', 'ES', 'Hybrid', 'Front_wheel', '2022-08-07 19:43:06', '2022-08-07 19:43:06'),
(7, 'Lexus', 'GX', 'Patrol', 'All_wheel', '2022-08-07 19:43:50', '2022-08-07 19:43:50'),
(8, 'Lexus', 'GX', 'Diesel', 'All_wheel', '2022-08-07 19:45:18', '2022-08-07 19:45:18'),
(9, 'Lexus', 'GX', 'Hybrid', 'All_wheel', '2022-08-07 19:45:18', '2022-08-07 19:45:18'),
(10, 'Lexus', 'GX', 'Patrol', 'Front_wheel', '2022-08-07 19:46:37', '2022-08-07 19:46:37'),
(11, 'Lexus', 'GX', 'Diesel', 'Front_wheel', '2022-08-07 19:46:37', '2022-08-07 19:46:37'),
(12, 'Lexus', 'GX', 'Hybrid', 'Front_wheel', '2022-08-07 19:48:15', '2022-08-07 19:48:15'),
(13, 'Toyota', 'Camry', 'Patrol', 'All_wheel', '2022-08-07 19:48:57', '2022-08-07 19:48:57'),
(14, 'Toyota', 'Camry', 'Diesel', 'All_wheel', '2022-08-07 19:49:54', '2022-08-07 19:49:54'),
(15, 'Toyota', 'Camry', 'Hybrid', 'All_wheel', '2022-08-07 19:49:54', '2022-08-07 19:49:54'),
(16, 'Toyota', 'Camry', 'Patrol', 'Front_wheel', '2022-08-07 19:51:18', '2022-08-07 19:51:18'),
(17, 'Toyota', 'Camry', 'Diesel', 'Front_wheel', '2022-08-07 19:51:18', '2022-08-07 19:51:18'),
(18, 'Toyota', 'Camry', 'Hybrid', 'Front_wheel', '2022-08-07 19:52:42', '2022-08-07 19:52:42'),
(19, 'Toyota', 'Corolla', 'Patrol', 'All_wheel', '2022-08-07 19:53:54', '2022-08-07 19:53:54'),
(20, 'Toyota', 'Corolla', 'Diesel', 'All_wheel', '2022-08-07 19:53:54', '2022-08-07 19:53:54'),
(21, 'Toyota', 'Corolla', 'Hybrid', 'All_wheel', '2022-08-07 19:55:28', '2022-08-07 19:55:28'),
(22, 'Toyota', 'Corolla', 'Patrol', 'Front_wheel', '2022-08-07 19:55:28', '2022-08-07 19:55:28'),
(23, 'Toyota', 'Corolla', 'Diesel', 'Front_wheel', '2022-08-07 19:56:54', '2022-08-07 19:56:54'),
(24, 'Toyota', 'Corolla', 'Hybrid', 'Front_wheel', '2022-08-07 19:56:54', '2022-08-07 19:56:54');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_07_192941_create_cars_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
