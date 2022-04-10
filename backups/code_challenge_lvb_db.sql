-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 06:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code_challenge_lvb_db`
--

--
-- Dumping data for table `city_temperatures`
--

INSERT INTO `city_temperatures` (`id`, `user_id`, `city_slug`, `temp_c`, `temp_f`, `created_at`, `updated_at`) VALUES
(1, 1, 'colombo', 28.99, 84.18, '2022-04-09 03:10:58', '2022-04-09 03:10:58'),
(2, 1, 'melbourne', 21.35, 70.43, '2022-04-09 03:10:58', '2022-04-09 03:10:58'),
(3, 1, 'colombo', 28.99, 84.18, '2022-04-09 05:30:23', '2022-04-09 05:30:23'),
(4, 1, 'melbourne', 18.71, 65.68, '2022-04-09 05:30:23', '2022-04-09 05:30:23'),
(5, 1, 'colombo', 23.99, 75.18, '2022-04-09 14:29:21', '2022-04-09 14:29:21'),
(6, 1, 'melbourne', 17.28, 63.10, '2022-04-09 14:29:21', '2022-04-09 14:29:21'),
(7, 1, 'colombo', 25.95, 78.71, '2022-04-09 15:41:35', '2022-04-09 15:41:35'),
(8, 1, 'melbourne', 17.31, 63.16, '2022-04-09 15:41:35', '2022-04-09 15:41:35'),
(9, 1, 'colombo', 23.99, 75.18, '2022-04-09 21:13:48', '2022-04-09 21:13:48'),
(10, 1, 'melbourne', 25.42, 77.76, '2022-04-09 21:13:48', '2022-04-09 21:13:48'),
(11, 1, 'colombo', 22.99, 73.38, '2022-04-10 00:23:24', '2022-04-10 00:23:24'),
(12, 1, 'melbourne', 27.29, 81.12, '2022-04-10 00:23:24', '2022-04-10 00:23:24'),
(13, 1, 'colombo', 23.99, 75.18, '2022-04-10 04:38:53', '2022-04-10 04:38:53'),
(14, 1, 'melbourne', 23.20, 73.76, '2022-04-10 04:38:53', '2022-04-10 04:38:53'),
(15, 1, 'colombo', 24.99, 76.98, '2022-04-10 10:29:39', '2022-04-10 10:29:39'),
(16, 1, 'melbourne', 18.56, 65.41, '2022-04-10 10:29:39', '2022-04-10 10:29:39'),
(17, 1, 'colombo', 23.99, 75.18, '2022-04-10 11:18:28', '2022-04-10 11:18:28'),
(18, 1, 'melbourne', 18.20, 64.76, '2022-04-10 11:18:28', '2022-04-10 11:18:28');

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_09_042948_create_city_temperatures_table', 2);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sandharuwan Abeykoon', 'sandharu1@gmail.com', NULL, '$2y$10$7VgBX0Z17Ti6r6VVo7g1nO3u49n/pamy4bPbmfY2c8yx/RlcOiY9K', NULL, '2022-04-08 15:13:42', '2022-04-08 15:13:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
