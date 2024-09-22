-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 02:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ArtistId` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `release_date` datetime NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `debut_year` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EventId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `MusicId` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PlaylistId` int(11) DEFAULT NULL,
  `ArtistId` int(11) DEFAULT NULL,
  `PlatformId` int(11) DEFAULT NULL,
  `AlbumId` int(11) DEFAULT NULL,
  `GenreId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `MusicId` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ArtistId` (`ArtistId`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EventId` (`EventId`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MusicId` (`MusicId`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PlaylistId` (`PlaylistId`),
  ADD KEY `ArtistId` (`ArtistId`),
  ADD KEY `PlatformId` (`PlatformId`),
  ADD KEY `AlbumId` (`AlbumId`),
  ADD KEY `GenreId` (`GenreId`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MusicId` (`MusicId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_10` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_11` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_12` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_13` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_14` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_15` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_16` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_3` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_4` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_5` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_6` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_7` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_8` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_9` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `artist`
--
ALTER TABLE `artist`
  ADD CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_10` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_11` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_12` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_13` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_14` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_15` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_16` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_2` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_3` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_4` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_5` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_6` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_7` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_8` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_ibfk_9` FOREIGN KEY (`EventId`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_10` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_2` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_3` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_4` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_5` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_6` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_7` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_8` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `awards_ibfk_9` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_10` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_11` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_12` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_13` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_14` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_15` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_16` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_17` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_18` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_19` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_2` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_20` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_21` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_22` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_23` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_24` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_25` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_26` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_27` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_28` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_29` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_3` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_30` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_31` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_32` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_33` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_34` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_35` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_36` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_37` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_38` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_39` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_4` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_40` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_41` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_42` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_43` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_44` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_45` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_46` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_47` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_48` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_49` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_5` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_50` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_51` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_52` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_53` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_54` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_55` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_56` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_57` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_58` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_59` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_6` FOREIGN KEY (`PlaylistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_60` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_61` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_7` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_8` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_ibfk_9` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_10` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_11` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_12` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_13` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_14` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_15` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_4` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_5` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_6` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_7` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_8` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_ibfk_9` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_10` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_3` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_4` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_5` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_6` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_7` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_8` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_9` FOREIGN KEY (`MusicId`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
