-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 12:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `globalsignin`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `logs` text NOT NULL,
  `result` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `user_id`, `logs`, `result`, `created_at`) VALUES
(2, 1, 'a:2:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:1;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 8\";}}', 'You win', '2020-09-07 23:44:50'),
(3, 1, 'a:10:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:1;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 2\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:3;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:4;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 8\";}i:5;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 7\";}i:6;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:7;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 8\";}i:8;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:9;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 8\";}}', 'Monster Wins', '2020-09-07 23:48:09'),
(4, 1, 'a:9:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:1;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 6\";}i:2;a:1:{i:0;s:47:\"Monster attacked Alaksandar Jesus with value 10\";}i:3;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:4;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 9\";}i:5;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:6;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}i:7;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 3\";}i:8;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 3\";}}', 'Game Tied', '2020-09-07 23:55:38'),
(5, 1, 'a:6:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:1;a:1:{i:0;s:47:\"Alaksandar Jesus attacked Monster with value 10\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:3;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 5\";}i:4;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 7\";}i:5;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}}', 'You win', '2020-09-08 00:00:43'),
(6, 1, 'a:6:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:1;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:3;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 8\";}i:4;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:5;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}}', 'You win', '2020-09-08 00:01:31'),
(7, 1, 'a:7:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:1;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:2;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 9\";}i:3;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:4;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 8\";}i:5;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:6;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 4\";}}', 'You win', '2020-09-08 00:16:50'),
(8, 1, 'a:8:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:1;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 6\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:3;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 2\";}i:4;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 2\";}i:5;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 1\";}i:6;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:7;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 2\";}}', 'Monster Wins', '2020-09-08 00:17:47'),
(9, 1, 'a:8:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:1;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 6\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 9\";}i:3;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}i:4;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 3\";}i:5;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 2\";}i:6;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 7\";}i:7;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 9\";}}', 'You win', '2020-09-08 00:19:43'),
(10, 1, 'a:4:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:1;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 4\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:3;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 1\";}}', 'Monster Wins', '2020-09-08 01:27:25'),
(11, 1, 'a:26:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:1;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 3\";}i:2;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 6\";}i:3;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:4;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 6\";}i:5;a:1:{i:0;s:47:\"Monster attacked Alaksandar Jesus with value 10\";}i:6;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 6\";}i:7;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 2\";}i:8;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 3\";}i:9;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 6\";}i:10;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 7\";}i:11;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 1\";}i:12;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:13;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 1\";}i:14;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 2\";}i:15;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 2\";}i:16;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 2\";}i:17;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 5\";}i:18;a:1:{i:0;s:53:\"Alaksandar Jesus power attacked Monster with value 10\";}i:19;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:20;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 6\";}i:21;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:22;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:23;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 8\";}i:24;a:1:{i:0;s:47:\"Monster attacked Alaksandar Jesus with value 10\";}i:25;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}}', 'You win', '2020-09-08 01:32:36'),
(12, 1, 'a:8:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:1;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 9\";}i:3;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}i:4;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 9\";}i:5;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 1\";}i:6;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 3\";}i:7;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 1\";}}', 'Monster Wins', '2020-09-08 02:01:17'),
(13, 1, 'a:52:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 7\";}i:1;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 9\";}i:2;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:3;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 2\";}i:4;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 5\";}i:5;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 2\";}i:6;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}i:7;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 2\";}i:8;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 8\";}i:9;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:10;a:1:{i:0;s:37:\"Alaksandar Jesus healed with value 10\";}i:11;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:12;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:13;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 9\";}i:14;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 3\";}i:15;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 7\";}i:16;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:17;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 3\";}i:18;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 7\";}i:19;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 2\";}i:20;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 3\";}i:21;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 6\";}i:22;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:23;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 2\";}i:24;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 9\";}i:25;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 4\";}i:26;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:27;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 6\";}i:28;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 7\";}i:29;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 2\";}i:30;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 9\";}i:31;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 5\";}i:32;a:1:{i:0;s:47:\"Monster attacked Alaksandar Jesus with value 10\";}i:33;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 3\";}i:34;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 7\";}i:35;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:36;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:37;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 9\";}i:38;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:39;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 0\";}i:40;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 1\";}i:41;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:42;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 5\";}i:43;a:1:{i:0;s:53:\"Alaksandar Jesus power attacked Monster with value 10\";}i:44;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:45;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 2\";}i:46;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:47;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 4\";}i:48;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 6\";}i:49;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 4\";}i:50;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:51;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 7\";}}', 'Game Tied', '2020-09-08 02:11:21'),
(14, 1, 'a:19:{i:0;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:1;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 5\";}i:2;a:1:{i:0;s:53:\"Alaksandar Jesus power attacked Monster with value 10\";}i:3;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 5\";}i:4;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 1\";}i:5;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 2\";}i:6;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:7;a:1:{i:0;s:42:\"Alaksandar Jesus got infected with value 4\";}i:8;a:1:{i:0;s:52:\"Alaksandar Jesus power attacked Monster with value 9\";}i:9;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 8\";}i:10;a:1:{i:0;s:36:\"Alaksandar Jesus healed with value 4\";}i:11;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 3\";}i:12;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 2\";}i:13;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:14;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 1\";}i:15;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 1\";}i:16;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 8\";}i:17;a:1:{i:0;s:46:\"Monster attacked Alaksandar Jesus with value 4\";}i:18;a:1:{i:0;s:46:\"Alaksandar Jesus attacked Monster with value 5\";}}', 'You win', '2020-09-08 02:24:11'),
(15, 2, 'a:13:{i:0;a:1:{i:0;s:33:\"Monster attacked fvg with value 8\";}i:1;a:1:{i:0;s:23:\"fvg healed with value 1\";}i:2;a:1:{i:0;s:33:\"Monster attacked fvg with value 5\";}i:3;a:1:{i:0;s:33:\"fvg attacked Monster with value 6\";}i:4;a:1:{i:0;s:33:\"Monster attacked fvg with value 2\";}i:5;a:1:{i:0;s:23:\"fvg healed with value 7\";}i:6;a:1:{i:0;s:33:\"Monster attacked fvg with value 1\";}i:7;a:1:{i:0;s:33:\"fvg attacked Monster with value 6\";}i:8;a:1:{i:0;s:33:\"Monster attacked fvg with value 2\";}i:9;a:1:{i:0;s:29:\"fvg got infected with value 0\";}i:10;a:1:{i:0;s:39:\"fvg power attacked Monster with value 1\";}i:11;a:1:{i:0;s:33:\"Monster attacked fvg with value 6\";}i:12;a:1:{i:0;s:34:\"fvg attacked Monster with value 10\";}}', 'You win', '2020-09-08 06:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Alaksandar Jesus', 'alaksandarjesus@yahoo.co.in', '251f5e22f0b49e018b7a5846282a25953a3eade1'),
(2, 'fvg', 'fgv07949@cuoly.com', '251f5e22f0b49e018b7a5846282a25953a3eade1'),
(3, 'Alaksandar Jesus', 'khk69532@eoopy.com', '251f5e22f0b49e018b7a5846282a25953a3eade1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
