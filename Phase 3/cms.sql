-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2017 at 09:22 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `order` int(11) NOT NULL,
  `body` text NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT '0',
  `template` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `order`, `body`, `parent_id`, `template`) VALUES
(1, 'Homepage', 'homepage', 0, 'This is the homepage.', 0, 'homepage'),
(2, 'News archive', 'news-archive', 0, '<p>This is news archive.</p>', 0, 'news_archive'),
(3, 'About', 'about', 0, '<p>This is the about page.</p>', 0, 'page'),
(4, 'Contact', 'contact', 0, '<p>This is the contact page.</p>', 0, 'page');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`) VALUES
(1, 'mk080698@gmail.com', '0ac4ef56db0dd6d3f87fa6a4c876bf483ddea32b08472fa5cae7403a3e22761b87c5decd7756889370ae2f5b295f8389a1f979257c142fd6044ac503fe0ecba7', 'Manukumar Rudresh'),
(2, 'abc@gmail.com', 'd4826af47ed9e96e4fb355530f7c3d1011c62cfea36e801c110453009cdaa1e1d21fe9228ace99a598e2b593eb490a5c50b19b976aebf568b95a070e106fc973', 'ABC'),
(3, 'cde@gmail.com', '644dbff38986ecd7bedef799bb535ebb3acaf0236d1c4ee1d6109c518d0adec2d2ec200c042bf8e67dffc8a4fef20d653c36e5a99e7a53fc9606e5fbab2c8f93', 'CDE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
