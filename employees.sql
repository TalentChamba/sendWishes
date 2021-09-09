-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 02:15 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realmdigital`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employeeId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `employmentStartDate` date NOT NULL,
  `employmentEndDate` date DEFAULT NULL,
  `lastNotification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employeeId`, `name`, `lastname`, `dateOfBirth`, `employmentStartDate`, `employmentEndDate`, `lastNotification`) VALUES
(261, '100', 'Bill', 'Gates', '1955-09-08', '2001-01-01', NULL, ''),
(262, '101', 'Anders2', 'Hejlsberg', '1960-12-02', '2001-03-01', NULL, '2021-06-03'),
(263, '101', 'Steve', 'Wozniak', '1950-09-08', '2001-01-01', NULL, ''),
(264, '101', 'Linus', 'Torvalds', '1969-12-28', '2001-03-01', NULL, ''),
(265, '101', 'Anders', 'Hejlsberg', '1960-12-02', '2001-03-01', NULL, ''),
(266, '229', 'Cynthia', 'Segraves', '1962-09-18', '2004-05-01', NULL, ''),
(267, '301', 'Assunta', 'Younkin', '1966-09-27', '2004-06-01', NULL, ''),
(268, '228', 'Karey', 'Boros', '1970-07-02', '2004-07-01', NULL, ''),
(269, '233', 'Rana', 'Dorman', '1966-06-03', '2004-07-01', NULL, '2021-06-03'),
(270, '263', 'Maryann', 'Darrigo', '1977-06-03', '2004-09-01', NULL, '2021-06-03'),
(271, '274', 'Lorette', 'Jahn', '1960-10-04', '2004-10-01', NULL, ''),
(272, '262', 'Ciara', 'Andreotti', '1993-09-22', '2005-01-01', NULL, ''),
(273, '282', 'Cassondra', 'Cosenza', '1989-07-19', '2005-02-01', NULL, ''),
(274, '316', 'Carson', 'Marmol', '1993-01-06', '2005-04-01', NULL, ''),
(275, '259', 'Joane', 'Reichman', '1975-12-11', '2005-05-01', NULL, ''),
(276, '286', 'Delisa', 'Pospisil', '1992-02-04', '2005-06-01', NULL, ''),
(277, '202', 'Ezekiel', 'Meyers', '1963-04-07', '2005-07-01', NULL, ''),
(278, '208', 'Samatha', 'Whiting', '1962-02-24', '2005-07-01', NULL, ''),
(279, '244', 'Gerry', 'Felter', '1972-04-20', '2005-08-01', NULL, ''),
(280, '315', 'Beth', 'Paxton', '1993-05-12', '2005-09-01', NULL, ''),
(281, '302', 'Ahmad', 'Buchler', '1988-09-05', '2005-11-01', NULL, ''),
(282, '318', 'Angele', 'Appleberry', '1964-02-03', '2005-11-01', NULL, ''),
(283, '248', 'Lizbeth', 'Mckelvy', '1981-02-15', '2005-12-01', NULL, ''),
(284, '297', 'Lissa', 'Califano', '1967-12-17', '2006-01-01', NULL, ''),
(285, '265', 'Paola', 'Gambrel', '1967-07-17', '2006-04-01', NULL, ''),
(286, '227', 'Na', 'Molnar', '1962-05-29', '2006-06-01', NULL, ''),
(287, '215', 'Karlene', 'Courchesne', '1982-09-26', '2006-08-01', NULL, ''),
(288, '247', 'Kurtis', 'Diem', '1969-11-18', '2006-08-01', NULL, ''),
(289, '287', 'Coral', 'Hannibal', '1960-09-07', '2006-10-01', NULL, ''),
(290, '292', 'Ronna', 'Durling', '1962-10-13', '2006-10-01', NULL, ''),
(291, '221', 'Andres', 'Sunday', '1963-09-21', '2006-12-01', NULL, ''),
(292, '290', 'Nathalie', 'Tse', '1980-01-05', '2007-02-01', NULL, ''),
(293, '270', 'Albina', 'Kiser', '1978-08-08', '2007-03-01', NULL, ''),
(294, '298', 'Ming', 'Everest', '1993-06-21', '2007-06-01', NULL, ''),
(295, '276', 'Jaimie', 'Farnan', '1962-05-16', '2007-08-01', NULL, ''),
(296, '272', 'Miriam', 'Gugino', '1962-03-03', '2007-09-01', NULL, ''),
(297, '273', 'Shari', 'Lent', '1961-06-14', '2007-10-01', NULL, ''),
(298, '308', 'Cortney', 'Bogard', '1969-11-30', '2007-10-01', NULL, ''),
(299, '295', 'Heide', 'Castle', '1964-08-09', '2007-11-01', NULL, ''),
(300, '284', 'Ressie', 'Neese', '1964-09-22', '2008-01-01', NULL, ''),
(301, '234', 'Cheryle', 'Hyndman', '1962-12-08', '2008-02-01', NULL, ''),
(302, '240', 'Zada', 'Gourd', '1977-07-22', '2008-03-01', NULL, ''),
(303, '285', 'Elvis', 'Plouffe', '1976-09-27', '2008-03-01', NULL, ''),
(304, '255', 'Hiram', 'Eno', '1963-04-27', '2008-04-01', NULL, ''),
(305, '213', 'Rashad', 'Guillotte', '1981-08-12', '2008-06-01', NULL, ''),
(306, '300', 'Anibal', 'Lail', '1993-03-13', '2008-07-01', NULL, ''),
(307, '214', 'Audrie', 'Paille', '1979-04-05', '2008-09-01', NULL, ''),
(308, '321', 'Dot', 'Janson', '1960-04-30', '2008-09-01', NULL, ''),
(309, '222', 'Gustavo', 'Triplett', '1980-12-21', '2008-10-01', NULL, ''),
(310, '293', 'Efrain', 'Schott', '1960-01-15', '2008-10-01', NULL, ''),
(311, '226', 'Genaro', 'Poulter', '1989-03-18', '2008-11-01', NULL, ''),
(312, '288', 'Isa', 'Meigs', '1961-05-13', '2009-01-01', NULL, ''),
(313, '254', 'Raeann', 'Braxton', '1988-03-19', '2009-05-01', NULL, ''),
(314, '271', 'Cathryn', 'Montiel', '1988-04-19', '2009-07-01', NULL, ''),
(315, '241', 'Kori', 'Shea', '1990-01-28', '2009-09-01', NULL, ''),
(316, '242', 'Eura', 'Freeberg', '1993-02-15', '2009-09-01', NULL, ''),
(317, '257', 'Josiah', 'Nocera', '1993-02-02', '2009-09-01', NULL, ''),
(318, '236', 'Audrey', 'Swindler', '1963-07-05', '2009-11-01', NULL, ''),
(319, '230', 'Mercedes', 'Cazarez', '1991-05-18', '2009-12-01', NULL, ''),
(320, '256', 'Madison', 'Linch', '1991-11-17', '2009-12-01', NULL, ''),
(321, '299', 'Lupe', 'Crays', '1990-09-19', '2010-04-01', NULL, ''),
(322, '250', 'Shalonda', 'Leffew', '1977-03-12', '2010-08-01', NULL, ''),
(323, '307', 'Summer', 'Obermiller', '1981-06-11', '2010-11-01', NULL, ''),
(324, '200', 'Anjanette', 'Villagomez', '1976-02-29', '2010-12-01', NULL, '2021-06-03'),
(325, '306', 'Margurite', 'Knotts', '1990-11-16', '2011-01-01', NULL, ''),
(326, '224', 'Ciera', 'Bodine', '1978-02-08', '2011-04-01', NULL, ''),
(327, '251', 'Louann', 'Soderstrom', '1963-11-28', '2011-04-01', NULL, ''),
(328, '201', 'Berniece', 'Soler', '1986-06-14', '2011-05-01', NULL, ''),
(329, '304', 'Shantay', 'Agostini', '1972-06-05', '2011-06-01', NULL, ''),
(330, '246', 'Jacqueline', 'Earnhardt', '1986-10-11', '2011-07-01', NULL, ''),
(331, '231', 'Bobbie', 'Collard', '1969-12-05', '2011-08-01', NULL, ''),
(332, '204', 'Eldon', 'Mattison', '1986-11-27', '2011-09-01', NULL, ''),
(333, '253', 'Portia', 'Alanis', '1974-05-07', '2011-10-01', NULL, ''),
(334, '320', 'Erika', 'Somerville', '1975-12-26', '2011-11-01', NULL, ''),
(335, '220', 'Cesar', 'Ayer', '1989-05-19', '2011-12-01', NULL, ''),
(336, '249', 'Criselda', 'Vereen', '1988-11-17', '2011-12-01', NULL, ''),
(337, '260', 'Elodia', 'Lucus', '1972-11-01', '2011-12-01', NULL, ''),
(338, '266', 'Fritz', 'Dresser', '1985-08-28', '2012-01-01', NULL, ''),
(339, '312', 'Tracey', 'Hindman', '1960-01-15', '2012-02-01', NULL, ''),
(340, '243', 'Mike', 'Upchurch', '1993-01-03', '2012-04-01', NULL, ''),
(341, '277', 'Loris', 'Edelson', '1976-02-10', '2012-06-01', NULL, ''),
(342, '225', 'Ellis', 'Gillette', '1970-04-01', '2012-07-01', NULL, ''),
(343, '324', 'Vasiliki', 'Munsey', '1983-03-10', '2012-08-01', NULL, ''),
(344, '310', 'Nisha', 'Pleiman', '1975-07-02', '2012-09-01', NULL, ''),
(345, '309', 'Lucile', 'Carlin', '1974-06-11', '2012-10-01', NULL, ''),
(346, '223', 'Earlene', 'Hedstrom', '1967-12-21', '2012-11-01', NULL, ''),
(347, '275', 'Anderson', 'Borgman', '1973-06-20', '2012-12-01', NULL, ''),
(348, '267', 'Esmeralda', 'Guffey', '1994-05-14', '2013-02-01', NULL, ''),
(349, '206', 'Earnestine', 'Voorhies', '1975-12-12', '2013-05-01', NULL, ''),
(350, '207', 'Elda', 'Goldston', '1978-03-22', '2013-06-01', NULL, ''),
(351, '305', 'Shaniqua', 'Levert', '1963-04-09', '2013-07-01', NULL, ''),
(352, '319', 'Iraida', 'Basquez', '1963-06-16', '2013-07-01', NULL, ''),
(353, '323', 'Sunday', 'Ashby', '1984-06-27', '2013-08-01', NULL, ''),
(354, '261', 'Jessica', 'Keitt', '1992-03-24', '2013-09-01', NULL, ''),
(355, '235', 'Stacee', 'Kyger', '1981-06-30', '2013-12-01', NULL, ''),
(356, '296', 'Maggie', 'Willoughby', '1984-10-29', '2013-12-01', NULL, ''),
(357, '239', 'Iesha', 'Swiderski', '1979-05-20', '2014-05-01', NULL, ''),
(358, '279', 'Evita', 'Hardge', '1973-08-10', '2014-06-01', NULL, ''),
(359, '280', 'Keena', 'Wehner', '1980-12-03', '2014-06-01', NULL, ''),
(360, '268', 'Esteban', 'Twilley', '1994-11-17', '2014-07-01', NULL, ''),
(361, '217', 'Delmer', 'Lachowicz', '1990-06-29', '2014-08-01', NULL, '2021-06-29'),
(362, '218', 'Kasie', 'Cardella', '1970-04-21', '2014-08-01', NULL, ''),
(363, '205', 'Colby', 'Harmon', '1973-06-02', '2014-09-01', NULL, ''),
(364, '219', 'Janyce', 'Easter', '1977-12-15', '2014-09-01', NULL, ''),
(365, '294', 'Bari', 'Somma', '1973-04-15', '2014-10-01', NULL, ''),
(366, '258', 'Milford', 'Agosto', '1970-09-26', '2014-11-01', NULL, ''),
(367, '278', 'Francesca', 'Jamal', '1992-10-08', '2015-01-01', NULL, ''),
(368, '289', 'Timothy', 'Wilmeth', '1994-04-05', '2015-01-01', NULL, ''),
(369, '283', 'Josef', 'Lacey', '1970-11-16', '2015-02-01', NULL, ''),
(370, '311', 'Felicita', 'Demark', '1966-01-13', '2015-02-01', NULL, ''),
(371, '232', 'Wynona', 'Rigg', '1988-08-06', '2015-04-01', NULL, ''),
(372, '203', 'Karine', 'Hoang', '1995-01-25', '2015-05-01', NULL, ''),
(373, '317', 'Belva', 'Carrales', '1993-09-30', '2015-05-01', NULL, ''),
(374, '209', 'Evalyn', 'Macdonald', '1984-12-06', '2015-07-01', NULL, ''),
(375, '210', 'Alesha', 'Mullenax', '1981-03-01', '2015-07-01', NULL, ''),
(376, '303', 'Sharon', 'Walston', '1972-03-16', '2015-07-01', NULL, ''),
(377, '322', 'Genna', 'Dye', '1993-11-19', '2015-07-01', NULL, ''),
(378, '216', 'Yung', 'Wegman', '1974-03-12', '2015-09-01', NULL, ''),
(379, '252', 'Jonna', 'Goodsell', '1968-05-19', '2015-12-01', NULL, ''),
(380, '314', 'Julee', 'Bobadilla', '1980-02-24', '2015-12-01', NULL, ''),
(381, '264', 'Ayanna', 'Robin', '1983-11-30', '2016-01-01', NULL, ''),
(382, '212', 'Julietta', 'Lowrance', '1971-02-26', '2016-03-01', NULL, ''),
(383, '237', 'Randy', 'Omalley', '1986-06-16', '2016-04-01', NULL, ''),
(384, '245', 'Glenda', 'Ortega', '1987-07-21', '2016-04-01', NULL, ''),
(385, '281', 'Stella', 'Vieyra', '1987-01-04', '2016-04-01', NULL, ''),
(386, '291', 'Christine', 'Elam', '1988-10-31', '2016-04-01', NULL, ''),
(387, '269', 'Tarah', 'Maben', '1983-05-23', '2016-06-01', NULL, ''),
(388, '211', 'Marisol', 'Rojas', '1994-04-25', '2016-07-01', NULL, ''),
(389, '238', 'Gabriella', 'Copas', '1963-04-21', '2016-08-01', NULL, ''),
(390, '313', 'Lenora', 'Chavarin', '1977-04-28', '2016-10-01', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
