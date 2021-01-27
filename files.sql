-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 27 jan 2021 kl 18:46
-- Serverversion: 10.4.17-MariaDB
-- PHP-version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `bunnydb`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `files`
--

CREATE TABLE `files` (
  `FileID` int(11) NOT NULL,
  `FileTitle` varchar(255) DEFAULT NULL,
  `File_Desc` text DEFAULT NULL,
  `release_date` year(4) DEFAULT NULL,
  `cover_img` varchar(255) DEFAULT NULL,
  `Cat_ID` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `files`
--

INSERT INTO `files` (`FileID`, `FileTitle`, `File_Desc`, `release_date`, `cover_img`, `Cat_ID`, `upload_date`) VALUES
(1, 'Lupin III: The First', 'Lupin III goes on a grand adventure to uncover the secrets of the Bresson Diary, which is tied to the legacy of his famous grandfather.', 2019, 'image', 4, '2020-06-29 22:00:00'),
(2, 'Son of Batman', 'Batman learns he has a violent, unruly pre-teen son, secretly raised by the terrorist group the League of Assassins.', 2014, './files/ImgResize.zip', 2, '2020-06-29 22:00:00'),
(3, 'Visual Studio Code', 'Visual Studio Code is a code editor redefined and optimized for building and debugging modern web and cloud applications. ', 2015, './files/ImgResize.zip', 1, '2020-06-29 22:00:00'),
(4, 'Windows 10', 'Windows 10 is a series of operating systems produced by the American multinational technology company Microsoft and released as part of its Windows NT family of operating systems.', 2015, './files/ImgResize.zip', 1, '2020-06-29 22:00:00'),
(6, 'Duck Tales', 'DuckTales is an American animated television series, produced by Walt Disney Television Animation', 1987, 'https://www.youtube.com/watch?v=xH_auYc7b4k', 3, '2020-06-29 22:00:00'),
(7, 'Half Life 2', 'Half-Life 2 is a 2004 first-person shooter game developed and published by Valve. Like the original Half-Life, it combines shooting, puzzles, and storytelling, and adds features such as vehicles and physics-based gameplay.', 2004, './files/ImgResize.zip', 5, '2020-06-29 22:00:00'),
(8, 'Half Life', 'Half-Life is a first-person shooter game developed by Valve and published by Sierra Studios for Windows in 1998. It was Valve\'s debut product and the first game in the Half-Life series.', 1998, 'image', 5, '2020-06-29 22:00:00'),
(9, 'Jurassic Park', 'A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park\'s cloned dinosaurs to run loose.', 1993, '', 2, '2020-06-29 22:00:00'),
(10, 'Star Wars: Knights of the Old Republic', 'A republic soldier, training to become a Jedi Knight, is given the task of halting the conquest of Darth Malak by discovering the location of a weapon known as the Star Forge.', 2003, '', 5, '2020-07-02 22:00:00'),
(11, 'Star Wars: Knights of the Old Republic II - The Sith Lords', 'You play an exiled and depowered Jedi Knight who has returned to the Republic and must restore both your powers and the devastated Jedi Order to challenge the Sith.', 2004, '', 5, '2020-07-02 22:00:00'),
(12, 'Call of Duty: Black Ops II', NULL, 2012, '', 5, '2020-07-04 22:00:00'),
(13, 'Grand Theft Auto V', NULL, 2013, '', 5, '2020-07-04 22:00:00'),
(14, 'Tangled', 'The magically long-haired Rapunzel has spent her entire life in a tower, but now that a runaway thief has stumbled upon her, she is about to discover the world for the first time, and who she really is.', 2010, '', 2, '2020-07-04 22:00:00'),
(15, 'Aseprite', NULL, 2014, '', 1, '2020-07-06 22:00:00'),
(16, 'Counter-Strike: Global Offensive', NULL, NULL, '', 5, '2020-07-06 22:00:00'),
(17, 'Left 4 Dead 2', NULL, 2005, '', 5, '2020-07-06 22:00:00'),
(18, 'Killing Floor 2', NULL, NULL, '', 5, '2020-07-06 22:00:00'),
(19, 'The Elder Scrolls Online', NULL, NULL, '', 5, '2020-07-06 22:00:00'),
(21, 'Tomb Raider', 'idk what else', 2018, NULL, 2, '2020-07-11 23:15:36'),
(22, 'Test', 'Test', 2020, NULL, 1, '2020-07-26 10:27:09');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`FileID`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `files`
--
ALTER TABLE `files`
  MODIFY `FileID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
