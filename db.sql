-- sunjester
-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 14, 2019 at 04:20 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `urlshrt`
--
CREATE DATABASE IF NOT EXISTS `urlshrt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `urlshrt`;

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

DROP TABLE IF EXISTS `urls`;
CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `ogurl` varchar(255) NOT NULL,
  `shorturl` text NOT NULL,
  `ip` text NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `ogurl`, `shorturl`, `ip`, `views`) VALUES
(36, 'https://www.bbc.com/news/technology-46222026', 'http://127.0.0.1/urlshrt/v/JAAAAA', '127.0.0.1', 0),
(35, 'https://www.wireshark.org/#download', 'http://127.0.0.1/urlshrt/v/IgAAAA', '127.0.0.1', 0),
(34, 'https://www.textnow.com/', 'http://127.0.0.1/urlshrt/v/IQAAAA', '127.0.0.1', 0),
(33, 'https://www.textnow.com/', 'http://127.0.0.1/urlshrt/v/IAAAAA', '127.0.0.1', 0),
(32, 'https://gramhq.com/', 'http://127.0.0.1/urlshrt/v/HwAAAA', '127.0.0.1', 0),
(31, 'https://gramhq.com/', 'http://127.0.0.1/urlshrt/v/HgAAAA', '127.0.0.1', 0),
(30, 'https://gramhq.com/', 'http://127.0.0.1/urlshrt/v/HQAAAA', '127.0.0.1', 0),
(29, 'https://www.textnow.com/', 'http://127.0.0.1/urlshrt/v/HAAAAA', '127.0.0.1', 0),
(28, 'https://www.textnow.com/', 'http://127.0.0.1/urlshrt/v/AAAAAA', '127.0.0.1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;