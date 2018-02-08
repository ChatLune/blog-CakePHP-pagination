-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8765
-- Generation Time: 2018 年 2 月 08 日 08:27
-- サーバのバージョン： 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` text,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `delete_flg` int(11) NOT NULL DEFAULT '0' COMMENT '0:未削除,1:削除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created`, `modified`, `delete_flg`) VALUES
(1, 'ブログその１', 'テストブログだよ', '2018-01-01 00:00:00', '2018-02-08 15:00:00', 0),
(2, 'ブログその２', 'テストブログだよ', '2018-01-02 00:00:00', '2018-02-08 15:00:00', 0),
(3, 'ブログその３', 'テストブログだよ', '2018-01-03 00:00:00', '2018-02-08 15:00:00', 0),
(4, 'ブログその４', 'テストブログだよ', '2018-01-04 00:00:00', '2018-02-08 15:00:00', 0),
(5, 'ブログその５', 'テストブログだよ', '2018-01-05 00:00:00', '2018-02-08 15:00:00', 0),
(6, 'ブログその６', 'テストブログだよ', '2018-01-06 00:00:00', '2018-02-08 15:00:00', 0),
(7, 'ブログその７', 'テストブログだよ', '2018-01-07 00:00:00', '2018-02-08 15:00:00', 0),
(8, 'ブログその８', 'テストブログだよ', '2018-01-08 00:00:00', '2018-02-08 15:00:00', 0),
(9, 'ブログその９', 'テストブログだよ', '2018-01-09 00:00:00', '2018-02-08 15:00:00', 0),
(10, 'ブログその１０', 'テストブログだよ', '2018-01-10 00:00:00', '2018-02-08 15:00:00', 0),
(11, 'ブログその１１', 'テストブログだよ', '2018-01-11 00:00:00', '2018-02-08 15:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;