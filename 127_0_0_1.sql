-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 10, 2023 at 02:27 PM
-- Server version: 5.5.24
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activity`
--
CREATE DATABASE IF NOT EXISTS `activity` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `activity`;

-- --------------------------------------------------------

--
-- Table structure for table `lives`
--

DROP TABLE IF EXISTS `lives`;
CREATE TABLE IF NOT EXISTS `lives` (
  `person_name` varchar(24) DEFAULT NULL,
  `street` varchar(56) DEFAULT NULL,
  `city` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `located_in`
--

DROP TABLE IF EXISTS `located_in`;
CREATE TABLE IF NOT EXISTS `located_in` (
  `company_name` varchar(24) DEFAULT NULL,
  `city` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

DROP TABLE IF EXISTS `manages`;
CREATE TABLE IF NOT EXISTS `manages` (
  `person_name` varchar(24) DEFAULT NULL,
  `manager_name` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
CREATE TABLE IF NOT EXISTS `works` (
  `person_name` varchar(24) DEFAULT NULL,
  `company` varchar(56) DEFAULT NULL,
  `salary` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `aut_name` varchar(100) DEFAULT NULL,
  `aut_country` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `aut_name`, `aut_country`) VALUES
(1, 'Martin Wickramasinghe', 'LK'),
(2, 'Kumaratunga Munidasa', 'LK'),
(3, 'Ediriweera Sarachchandra', 'LK'),
(4, 'Gunadasa Amarasekara', 'LK'),
(5, 'J.K. Rowling', 'UK'),
(6, 'Arthur Conan Doyle', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `availability` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`),
  KEY `publisher_id` (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `title`, `genre`, `author_id`, `publisher_id`, `availability`) VALUES
(1, 'Golu Hadawatha', 'Romance', 1, 1, 'available'),
(2, 'Madol Doova', 'Adventure', 2, 2, 'reserved'),
(3, 'Gamperaliya ', 'Drama ', 3, 3, 'checked out'),
(4, 'Yuganthaya ', 'Drama ', 4, 4, 'reserved'),
(5, 'Harry Potter and the Philosopher’s Stone', 'Fantasy', 5, 5, 'available'),
(6, 'Harry Potter and the Chamber of Secrets', 'Fantasy', 5, 5, 'available'),
(7, 'Harry Potter and the Prisoner of Azkaban', 'Fantasy', 5, 5, 'available'),
(8, 'Harry Potter and the Goblet of Fire', 'Fantasy', 5, 5, 'available'),
(9, 'Harry Potter and the Order of Phoenix', 'Fantasy', 5, 5, 'available'),
(10, 'Harry Potter and the Half-Blood Prince', 'Fantasy', 5, 5, 'available'),
(11, 'Harry Potter and the Deathly Hallows', 'Fantasy', 5, 5, 'available'),
(12, 'A Study in Scarlet', 'Mystery', 6, 6, 'available'),
(13, 'The Sign of Four', 'Mystery', 6, 6, 'available'),
(14, 'The Adventures of Sherlock Holmes', 'Mystery', 6, 6, 'available'),
(15, 'The Memoirs of Sherlock Holmes', 'Mystery', 6, 6, 'available'),
(16, 'The Hound of the Baskervilles', 'Mystery', 6, 6, 'available'),
(17, 'The Return of Sherlock Holmes', 'Mystery', 6, 6, 'available'),
(18, 'The Valley of Fear', 'Mystery', 6, 6, 'available'),
(19, 'His Last Bow', 'Mystery', 6, 6, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(100) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `emp_name`, `user_name`, `password`) VALUES
(1, 'Ishi Zohanya ', 'ishizohanya', ' aB1#cD2e'),
(2, 'Anura Gamage', 'anurag423', ' fG3^hI4j'),
(3, 'Sanalee Kaushalya', 'sanaleeka', ' kL5&mN6o'),
(4, 'Amila Silva', 'amilasi7', ' pQ7*rS8t');

-- --------------------------------------------------------

--
-- Table structure for table `issuance`
--

DROP TABLE IF EXISTS `issuance`;
CREATE TABLE IF NOT EXISTS `issuance` (
  `issuance_id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`issuance_id`),
  KEY `reservation_id` (`reservation_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuance`
--

INSERT INTO `issuance` (`issuance_id`, `reservation_id`, `employee_id`, `issue_date`, `due_date`) VALUES
(1, 3, 3, '2023-07-14', '2023-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(13) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `first_name`, `last_name`, `DOB`, `email`, `phone_no`, `user_name`, `password`) VALUES
(1, 'Kamal', 'Perera', '1990-06-07', 'kamalperera@gmail.com', '071-2345678', 'kamalperera7', 'Jk8#mD3f'),
(2, 'Nimal', 'Rathnayake', '1991-03-19', 'nimalrathnayake@outlook.com', '076-2345679', 'nimalrath', 'tG6^pL1z'),
(3, 'Harshana', 'Bandara', '2001-01-14', 'harshanabandara@gmail.com', '074-2345680', 'harshana11', 'hN7&cE0x'),
(4, 'Anura', 'Kumara', '1997-08-27', 'anurakumara@gmail.com', '076-2345681', 'anura827', 'sF5*rI2w');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int(11) NOT NULL AUTO_INCREMENT,
  `pub_name` varchar(100) DEFAULT NULL,
  `pub_country` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `pub_name`, `pub_country`) VALUES
(1, 'Sarasavi Publishers', 'LK'),
(2, 'Vijitha Yapa Publications', 'LK'),
(3, 'Gunadasa Kapuge Publications', 'LK'),
(4, 'M.D. Gunasena & Co. Ltd.', 'LK'),
(5, 'Bloomsbury Publishing Plc.', 'UK'),
(6, 'George Newnes Ltd.', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `member_id` (`member_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `member_id`, `book_id`, `reservation_date`, `status`) VALUES
(1, 1, 2, '2023-07-11', 'active'),
(2, 2, 1, '2023-07-11', 'canceled'),
(3, 3, 3, '2023-07-13', 'completed'),
(4, 4, 4, '2023-07-16', 'active');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`);

--
-- Constraints for table `issuance`
--
ALTER TABLE `issuance`
  ADD CONSTRAINT `issuance_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  ADD CONSTRAINT `issuance_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);
--
-- Database: `project_no_1`
--
CREATE DATABASE IF NOT EXISTS `project_no_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project_no_1`;
--
-- Database: `sahan`
--
CREATE DATABASE IF NOT EXISTS `sahan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sahan`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `class_name` varchar(56) DEFAULT NULL,
  `greade` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `greade`) VALUES
(1, 'olu', 'A'),
(2, 'nelum', 'B'),
(3, 'manel', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `s_id` int(11) NOT NULL DEFAULT '0',
  `s_name` varchar(56) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `t_name` varchar(56) DEFAULT NULL,
  `t_id` int(11) NOT NULL DEFAULT '0',
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`s_id`) REFERENCES `teacher` (`t_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `class` (`class_id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `yashodi`
--
CREATE DATABASE IF NOT EXISTS `yashodi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `yashodi`;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE IF NOT EXISTS `seller` (
  `name` varchar(24) DEFAULT NULL,
  `adde` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`name`, `adde`) VALUES
('yas', 'mathugama'),
('sahan', 'mathugama');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
