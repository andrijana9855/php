-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 10:18 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteli`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoteli`
--

CREATE TABLE `hoteli` (
  `idHotel` int(20) NOT NULL,
  `naziv` varchar(30) NOT NULL,
  `brojZvezdica` varchar(10) NOT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoteli`
--

INSERT INTO `hoteli` (`idHotel`, `naziv`, `brojZvezdica`, `id`) VALUES
(1, 'Coco Palm Dhuni Kohlu', '****', 16),
(2, 'Kudafushi', '****', 16),
(3, 'Veligandu ', '****', 16),
(4, 'Centara Grand Island', '*****', 16),
(5, 'LUX South Ari Atoll', '*****', 16),
(6, 'The Marmara Antalya', '*****', 8),
(7, 'Melas Lara Hotel', '*****', 8),
(8, 'Orange County Resort Hotel Ala', '*****', 8),
(9, 'Hotel Saul', '*****', 9),
(10, 'Isrotel Tower Hotel', '****', 9),
(11, 'Indigo', '*****', 9),
(12, 'Hotel Al Nabila Grand Bay Maka', '****', 7),
(13, 'Hawaii Riviera Aqua Park', '****', 7),
(14, 'Royal Lagoons Aqua Park', '*****', 7),
(17, 'Carribean World', '*****', 7),
(18, 'Dar Esalem', '****', 6),
(19, 'El Mouradi', '*****', 6),
(20, 'Palais Bayram', '*****', 6),
(21, 'Golden Tulip El Mechtel', '****', 6),
(22, 'Mercure The Moorhouse Ikoyi', '****', 15),
(23, 'The Lilygate Lagos', '****', 15),
(24, 'Presken Hotel', '***', 15),
(25, 'Proof Hotel', '***', 15),
(26, 'The Landmark Hotel', '***', 15),
(27, 'Quba Palace', '*****', 10),
(28, 'Cennet Bagi', '****', 10),
(29, 'Chateau Qusar', '****', 10),
(30, 'New Shane Quba Hotel', '***', 10),
(31, 'Adelas', '**', 11),
(32, 'Gringo Bill\'s Boutique Hotel', '***', 11),
(33, 'Inti Punku Machupicchu', '***', 11),
(34, 'Tierra Viva Machu Picchu', '****', 11),
(35, 'Hotel Taypikala Machupicchu ', '****', 11),
(36, 'Belmond Sanctuary Lodge', '*****', 11),
(37, 'Hôtel Concorde Montparnasse', '****', 3),
(38, 'Le Méridien Etoile ', '****', 3),
(39, 'Hôtel Eiffel Kensington', '**', 3),
(40, 'Hôtel Du Brésil', '**', 3),
(41, 'ibis Paris Alesia Montparnasse', '***', 3),
(42, 'Kyriad Hotel Paris Bercy Villa', '***', 3),
(43, 'Paris Marriott Champs Elysees ', '*****', 3),
(47, 'The Riverie By Katathani', '*****', 13),
(48, 'Grande Centre Point Ratchadamr', '*****', 13),
(49, 'Renaissance Phuket Resort & Sp', '*****', 13),
(50, 'Eastin Grand Hotel Sathorn', '****', 13),
(51, 'Ananta Burin Resort', '****', 13),
(52, 'Hilton Sukhumvit Bangkok', '****', 13),
(53, 'Hangzhou Bokai Westlake Hote', '****', 14),
(54, 'The Stone Bridge', '***', 14),
(55, 'Hangzhou Bokai Westlake Hote', '****', 14),
(56, 'The Stone Bridge', '***', 14),
(57, 'Radisson Paulista', '*****', 12),
(58, 'Tivoli Ecoresort Praia do Fort', '*****', 12),
(59, 'Iberostar Bahia', '*****', 12),
(60, 'Hotel Kea by Keahotels', '****', 5),
(61, 'Hotel Kjarnalundur', '***', 5),
(62, 'Generator Dublin', '*', 4),
(63, 'Radisson Blu St. Helen\'s Hotel', '*****', 4),
(64, 'The Merrion Hotel', '*****', 4),
(65, 'Apartment The Forum', '***', 4),
(66, 'Hotel Lombardia', '****', 1),
(67, 'Hotel Crivi\'s', '****', 1),
(68, 'Hotel Ritter', '***', 1),
(69, 'Hotel Mythos', '***', 1),
(70, 'Eurostars Grand Marina', '*****', 2),
(71, 'Hotel Bagués', '*****', 2),
(72, 'Ayre Hotel Gran Vía', '****', 2),
(73, 'Ayre Hotel Rosellón', '****', 2),
(74, 'Sallés Hotel Pere IV ', '****', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zemlja`
--

CREATE TABLE `zemlja` (
  `id` int(20) NOT NULL,
  `zemlja` varchar(20) NOT NULL,
  `glgrad` varchar(30) NOT NULL,
  `kontinent` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zemlja`
--

INSERT INTO `zemlja` (`id`, `zemlja`, `glgrad`, `kontinent`) VALUES
(1, 'Italija', 'Rim', 'Evropa'),
(2, 'Spanija', 'Madrid', 'Evropa'),
(3, 'Francuska', 'Pariz', 'Evropa'),
(4, 'Irska', 'Dablin', 'Evropa'),
(5, 'Island', 'Rejkjavik', 'Evropa'),
(6, 'Tunis', 'Tunis', 'Afrika'),
(7, 'Egipat', 'Kairo', 'Afrika'),
(8, 'Turska', 'Ankara', 'Azija'),
(9, 'Izrael', 'Jerusalim', 'Azija'),
(10, 'Kuba', 'Havana', 'Severna Amerika'),
(11, 'Peru', 'Lima', 'Juzna Amerika'),
(12, 'Brazil', 'Brazilija', 'Juzna Amerika'),
(13, 'Tajland', 'Bangkok', 'Azija'),
(14, 'Kina', 'Peking', 'Azija'),
(15, 'Maroko', 'Kazablanka', 'Afrika'),
(16, 'Maldivi', 'Male', 'Azija');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoteli`
--
ALTER TABLE `hoteli`
  ADD PRIMARY KEY (`idHotel`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `zemlja`
--
ALTER TABLE `zemlja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoteli`
--
ALTER TABLE `hoteli`
  MODIFY `idHotel` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `zemlja`
--
ALTER TABLE `zemlja`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoteli`
--
ALTER TABLE `hoteli`
  ADD CONSTRAINT `hoteli_ibfk_1` FOREIGN KEY (`id`) REFERENCES `zemlja` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
