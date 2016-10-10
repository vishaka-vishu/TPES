-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2016 at 04:28 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpes`
--

-- --------------------------------------------------------

--
-- Table structure for table `acupdate`
--

CREATE TABLE `acupdate` (
  `id` varchar(10) NOT NULL,
  `acyear` varchar(10) NOT NULL DEFAULT '0',
  `sem` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acupdate`
--

INSERT INTO `acupdate` (`id`, `acyear`, `sem`) VALUES
('1', '2016', 'odd');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `type` varchar(30) NOT NULL,
  `password` int(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`type`, `password`) VALUES
('1', 123);

-- --------------------------------------------------------

--
-- Table structure for table `classteacher`
--

CREATE TABLE `classteacher` (
  `acyear` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `classpassword` varchar(30) NOT NULL DEFAULT '0',
  `theory` int(30) NOT NULL DEFAULT '0',
  `lab` int(30) NOT NULL DEFAULT '0',
  `evaluation` varchar(30) NOT NULL,
  `stdpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classteacher`
--

INSERT INTO `classteacher` (`acyear`, `sem`, `department`, `class`, `classpassword`, `theory`, `lab`, `evaluation`, `stdpassword`) VALUES
('2016', 'odd', 'CSE', 'sevenA', '123', 1, 1, 'enable', '123'),
('2016', 'odd', 'CSE', 'sevenB', 'sevenb', 2, 2, 'enable', 'sevenb'),
('2016', 'odd', 'ISE', 'sevenA', 'sevena', 2, 2, 'disable', ''),
('2016', 'odd', 'ISE', 'sevenB', 'sevenb', 2, 2, 'disable', '');

-- --------------------------------------------------------

--
-- Table structure for table `facultycourse`
--

CREATE TABLE `facultycourse` (
  `acyear` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `coursetype` varchar(20) NOT NULL,
  `coursename` varchar(20) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `evalcount` varchar(20) NOT NULL DEFAULT '0',
  `mark1` varchar(20) NOT NULL DEFAULT '0',
  `avg1` varchar(20) NOT NULL DEFAULT '0',
  `mark2` varchar(20) NOT NULL DEFAULT '0',
  `avg2` varchar(20) NOT NULL DEFAULT '0',
  `mark3` varchar(20) NOT NULL DEFAULT '0',
  `avg3` varchar(20) NOT NULL DEFAULT '0',
  `mark4` varchar(20) NOT NULL DEFAULT '0',
  `avg4` varchar(20) NOT NULL DEFAULT '0',
  `mark5` varchar(20) NOT NULL DEFAULT '0',
  `avg5` varchar(20) NOT NULL DEFAULT '0',
  `mark6` varchar(20) NOT NULL DEFAULT '0',
  `avg6` varchar(20) NOT NULL DEFAULT '0',
  `mark7` varchar(20) NOT NULL DEFAULT '0',
  `avg7` varchar(20) NOT NULL DEFAULT '0',
  `mark8` varchar(20) NOT NULL DEFAULT '0',
  `avg8` varchar(20) NOT NULL DEFAULT '0',
  `mark9` varchar(20) NOT NULL DEFAULT '0',
  `avg9` varchar(20) NOT NULL DEFAULT '0',
  `mark10` varchar(20) NOT NULL DEFAULT '0',
  `avg10` varchar(20) NOT NULL DEFAULT '0',
  `sumavg` varchar(20) NOT NULL DEFAULT '0',
  `checkb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultycourse`
--

INSERT INTO `facultycourse` (`acyear`, `sem`, `department`, `class`, `coursetype`, `coursename`, `faculty`, `evalcount`, `mark1`, `avg1`, `mark2`, `avg2`, `mark3`, `avg3`, `mark4`, `avg4`, `mark5`, `avg5`, `mark6`, `avg6`, `mark7`, `avg7`, `mark8`, `avg8`, `mark9`, `avg9`, `mark10`, `avg10`, `sumavg`, `checkb`) VALUES
('2016', 'odd', 'CSE', 'sevenA', 'lab', 'os ', 'vinay ', '10', '19', '1.9', '13', '1.3', '13', '1.3', '13', '1.3', '9', '0.9', '13', '1.3', '13', '1.3', '9', '0.9', '13', '1.3', '12', '1.2', '1.27', 'disbale'),
('2016', 'odd', 'CSE', 'sevenA', 'theory', 'ada ', 'monika ', '18', '19', '1.0555555555555556', '9', '0.5', '8', '0.4444444444444444', '8', '0.4444444444444444', '8', '0.4444444444444444', '8', '0.4444444444444444', '8', '0.4444444444444444', '8', '0.4444444444444444', '8', '0.4444444444444444', '9', '0.5', '0.5166666666666668', 'disbale');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `department` varchar(30) NOT NULL DEFAULT '0',
  `hodpassword` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`department`, `hodpassword`) VALUES
('CSE', '123'),
('ISE', 'ise');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `coursetype` varchar(500) NOT NULL,
  `item1` varchar(500) NOT NULL,
  `item2` varchar(500) NOT NULL,
  `item3` varchar(500) NOT NULL,
  `item4` varchar(500) NOT NULL,
  `item5` varchar(500) NOT NULL,
  `item6` varchar(500) NOT NULL,
  `item7` varchar(500) NOT NULL,
  `item8` varchar(500) NOT NULL,
  `item9` varchar(500) NOT NULL,
  `item10` varchar(500) NOT NULL,
  `sumavg` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`coursetype`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`, `item9`, `item10`, `sumavg`) VALUES
('lab', 'Puncuality', 'Preparedness for the experiment', 'Instruction clarity and audsibility', 'Encouragement for doubts and clarifications', 'Seriousness in conducting viva-voce', 'Standard of viva-voce questions', 'Fluency in English', 'Additional information over and above the practical content', 'promptness in correcting observation and record note books', 'Assistent extended during practical session', 'Sum of Average'),
('theory', 'Punctuality', 'Prepareness  for the lectuare', 'Clarity and audibility', 'Eye contact with the students', 'Pace of coverage and completion of the sylabus as per lesson plan', 'Encouragement for questions', 'Fluency in English', 'Seriousness in solving exercises', 'Additional information over and above the sylabus', 'Promptness in valuing answer sheets and providing feedback on performance', 'Sum of Average');

-- --------------------------------------------------------

--
-- Table structure for table `principal`
--

CREATE TABLE `principal` (
  `type` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `principal`
--

INSERT INTO `principal` (`type`, `password`) VALUES
('1', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acupdate`
--
ALTER TABLE `acupdate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classteacher`
--
ALTER TABLE `classteacher`
  ADD PRIMARY KEY (`acyear`,`sem`,`department`,`class`);

--
-- Indexes for table `facultycourse`
--
ALTER TABLE `facultycourse`
  ADD PRIMARY KEY (`acyear`,`sem`,`department`,`class`,`coursetype`,`coursename`,`faculty`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`department`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`coursetype`),
  ADD UNIQUE KEY `coursetype` (`coursetype`);

--
-- Indexes for table `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
