-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2015 at 10:37 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `ISBN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stream` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBN`, `name`, `stream`, `author`, `count`, `date`, `type`) VALUES
('BK1001', 'Java Complete Reference 7th edition', 'Java', 'John williams', 1, '20/03/2015', 0),
('BK1003', 'Let us C', 'CSE', 'Yeswanth Kanetkar', 1, '21/03/2015', 0),
('BK1005', 'Database Management Systems', 'Databases', 'Krishnamurthy', 1, '22/03/2015', 0),
('BK1007', 'Theory of Machines', 'Mechanical', 'Cengel', 1, '22/03/2015', 0),
('BK1008', 'Stuctural designs', 'CIVIL', 'Bansal', 1, '23/03/2015', 0),
('BK2001', 'My Land', 'Politics', 'LK adwani', 1, '26/03/2015', 1),
('BK2003', 'General studies', 'GK', 'Narayan', 1, '28/03/2015', 1),
('BK2009', 'Two States', 'Novel', 'Chetan bagat', 1, '03/04/2015', 1),
('BK2010', 'History', 'Others', 'hari narayan', 1, '04/04/2015', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books_result`
--

CREATE TABLE IF NOT EXISTS `books_result` (
  `uid` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stream` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_user`
--

CREATE TABLE IF NOT EXISTS `books_user` (
  `uid` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stream` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `name` varchar(10) NOT NULL,
  `content` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`name`, `content`) VALUES
('1.JPG', 'D9KSDS0'),
('2.JPG', 'PSD89DF'),
('3.JPG', 'DJCKDJC'),
('4.JPG', 'JCKD8CD'),
('5.JPG', 'MCD89C9'),
('6.JPG', 'SFDJSKJ'),
('7.JPG', 'FJSKFJ8'),
('8.JPG', '5744758'),
('9.JPG', 'DJHFDFD'),
('10.JPG', 'F8D9F8J'),
('11.JPG', 'JKD890V'),
('12.JPG', 'JCKDJC8'),
('13.JPG', 'UCIDU90'),
('14.JPG', 'DSJIC90'),
('15.JPG', 'DCUD89D'),
('16.JPG', 'DKF9F8D'),
('17.JPG', 'VKDFJV9'),
('18.JPG', 'CVDVDVD'),
('19.JPG', 'C8CD898'),
('20.JPG', 'CD8D888');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `uname` varchar(15) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `max_books` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `pwd`, `type`, `max_books`) VALUES
('LA201510000', 'LA201510000', 3, 0),
('LA201510001', 'LA201510001', 3, 0),
('LA201510002', 'LA201510002', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `register_images`
--

CREATE TABLE IF NOT EXISTS `register_images` (
  `uid` varchar(12) NOT NULL,
  `images` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_result`
--

CREATE TABLE IF NOT EXISTS `status_result` (
  `uid` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE IF NOT EXISTS `updates` (
  `content` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`content`, `date`) VALUES
('Library Opening Date: 04/04/2015.', '18/03/2015'),
('New books added to the library.', '20/03/2015'),
('New books regarding general studies added to the library.', '21/03/2015'),
('You can see all news paper in library from 25/03/2015 onwards.', '22/03/2015');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `uid` varchar(20) NOT NULL,
  `title` char(3) NOT NULL,
  `sirname` char(60) NOT NULL,
  `fname` char(60) NOT NULL,
  `mname` char(60) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `add` varchar(500) NOT NULL,
  `pin` int(11) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `mid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
