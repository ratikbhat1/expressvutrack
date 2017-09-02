
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2017 at 03:39 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u237883438_track`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE IF NOT EXISTS `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` text NOT NULL,
  `title` text NOT NULL,
  `date` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `action`, `title`, `date`, `description`) VALUES
(48, 'Developed', 'Bilty Form frontend (operation)', '09/20/2016', 'done by manju'),
(49, 'Developed', 'Order Details-> new order form(operation) Frontend', '09/21/2016', 'done by manju'),
(50, 'Developed', 'Bill Entry form (operation) Frontend', '09/21/2016', 'done by manju'),
(51, 'Developed', 'Broker Form(master) Frontend', '09/22/2016', 'done by manju'),
(52, 'Developed', 'Money Receipt Entry(operation) Frontend', '09/22/2016', 'done by manju'),
(54, 'Developed', 'Vehicle Form (Master) Frontend', '09/23/2016', 'done by manju'),
(55, 'Developed', 'Vehicle Model Form(Master) Frontend', '09/24/2016', 'done by manju'),
(56, 'Developed', 'Contract Form (Party <-Master) FrontEnd', '09/25/2016', 'done by manju'),
(58, 'Developed', 'Truck Owner Form (Master) ; Fixed Master Form ; RateList Form (Party<-MASTER) ; Party Branch Wise Details Form (Master) (Frontend of all)', '09/26/2016', 'by manju'),
(59, 'Developed', 'Transit Time Form (Master) ; Stationary Issue Form (Master) (Frontend of all)', '09/27/2016', 'by manju'),
(60, 'Disscussion', 'understand xcrud ', '09/14/2016', 'by zuber'),
(61, 'Developing', 'working started on codeigniter', '09/15/2016', 'by zuber'),
(62, 'Developed', 'form template (Party Master form)', '09/16/2016', 'by zuber'),
(63, 'Developed', 'CRUD template', '09/17/2016', 'by zuber'),
(64, 'Developed', 'Live Search ', '09/18/2016', 'by zuber'),
(65, 'Developed', 'Secured login', '09/19/2016', 'by zuber'),
(68, 'Developed', 'Dashboard template completed', '09/21/2016', 'by zuber'),
(67, 'Developing', 'Started dashboard creation & attended meeting', '09/20/2016', 'by zuber'),
(69, 'Disscussion', 'working on ajax crud', '09/14/2016', 'by ratik'),
(70, 'Developing', 'working on xcrud', '09/15/2016', 'by ratik'),
(71, 'Developing', 'working on codeignitor', '09/17/2016', 'by ratik'),
(72, 'Developed', 'station master frontend', '09/17/2016', 'by ratik'),
(73, 'Developed', 'staff master frontend', '09/18/2016', 'by ratik'),
(74, 'Developed', 'vehicle master frontend', '09/19/2016', 'by ratik'),
(75, 'Developed', 'Transit time front end', '09/26/2016', 'by ratik'),
(76, 'Developing', 'started expressVu tracker', '09/27/2016', 'by ratik'),
(77, 'Developed', 'Made expressvutrack.esy.es', '09/28/2016', 'by ratik'),
(79, 'Developing', 'Contract Form', '10/03/2016', 'Contract Form version1 is being developed'),
(80, 'Developed', 'chat application', '10/13/2016', 'main chat for employee with image/file sharing'),
(81, 'Developing', 'Back End', '10/17/2016', 'Back End and Data Flow for respective forms'),
(82, 'Developing', 'Rate List', '10/19/2016', 'New Method is devised to develop the rate list in Contract Forms'),
(83, 'Developed', 'Rate list -- ratik', '10/26/2016', 'Rate list Complete '),
(84, 'Developed', 'master forms backend integration', '11/02/2016', 'BACKEND ALONG WITH ENTRIES VIEW'),
(85, 'Meet', 'Database Integration', '11/09/2016', 'Meet to discuss the backend data integration'),
(86, 'Meet', 'Urgent meeting regarding some issues', '11/15/2016', 'Alok ji, Please arrange a meeting to discuss some developments regarding our project.'),
(87, 'Developed', 'Freight Operations Module ', '11/30/2016', 'Developed the complete module.'),
(88, 'Developed', 'IBM Softlayer Catalyst Program', '12/17/2016', 'We are now the part of IBM program where $120,000 worth of cloud and related services are offered for an year.'),
(89, 'Developed', 'IBM Cloud Server Setup', '12/20/2016', 'New domain name for ExpressVu bought from IBM. Check here at expresservu.com. Total cost we saved, $93. Invoice mailed to Nishant ji.'),
(90, 'Meet', 'Final Amendments ', '12/29/2016', 'Discussion on upgraded forms for the testing'),
(91, 'Developed', 'Challan Entry', '01/16/2017', 'Fetching Bilty info, show moment of the bilties '),
(92, 'Disscussion', 'Charges table', '01/16/2017', 'Disscussion on charges table columns'),
(93, 'Developing', 'Arrival Entry', '01/17/2017', 'changes in arrival entry form after discussion with Lalit Ji'),
(94, 'Developing', 'supporting forms for Arrival Entry', '01/18/2017', 'new fixed form: Late Delivery  '),
(95, 'Disscussion', 'Bill Entry and supporting form Bill Submission Entry', '01/20/2017', 'discussion on bill entry and bill submission entry with Ashok Ji'),
(96, 'Developed', 'Late Delivery fixed form', '01/21/2017', 'developed late delivery fixed form which supports arrival entry. Fetching late delivery rate from Late Delivery according to reporting date and scheduled delivery date; and display in Arrival entry '),
(97, 'Developing', 'Bill Entry', '01/21/2017', 'Bill Entry'),
(98, 'Disscussion', 'Arrival Entry', '01/17/2017', 'Discussion with Lalti ji and Nishant ji'),
(99, 'Disscussion', 'Contract, Ratelist', '01/03/2017', 'change in nomenclature in contract, discussion on ratelist and expense type'),
(100, 'Disscussion', 'Charges, Expense type', '01/05/2017', 'discussion for changes in expense type , new separate form for expense type  '),
(101, 'Disscussion', 'Discussion via Skype: Expense types in Charges  table', '01/05/2017', 'discussed all expense types '),
(102, 'Developing', 'Charges & Expense type form', '01/06/2017', 'Dynamic tables for all expenses in charges form  '),
(103, 'Disscussion', 'Bilty', '01/07/2017', 'discussion on data fetching for some fields of Bilty Entry Form'),
(104, 'Developed', 'Bilty', '01/09/2017', 'changes were made for fetching data for some input fields of Bilty Form'),
(105, 'Disscussion', 'Challan Entry', '01/09/2017', 'discussion on data fetching for fields of Challan entry, show Bilty information, edit some bilty info'),
(106, 'Disscussion', 'Challan Entry', '01/12/2017', 'Discussion on Challan Entry after making changes'),
(107, 'Developed', 'Charges Form', '01/18/2017', 'Developed Charges Form and Expense Type Form'),
(108, 'Developing', 'Bill Submission Entry', '01/22/2017', 'fetching bill entry info and show in bill submission entry'),
(109, 'Developing', 'Arrival Entry and its supporting Forms', '01/24/2017', 'Changes in Arrival Entry, Mamul, Late Ack. Form'),
(110, 'Developed', 'Bill Entry and supporting Forms', '01/25/2017', 'Developed Bill Entry and Bill Submission Entry'),
(111, 'Disscussion', 'Accounting- Voucher Entry', '01/25/2017', 'Discussion on Voucher Entry with Nishant ji'),
(112, 'Developing', 'Acccount Master & Account Group', '01/23/2017', 'Started developing account forms'),
(113, 'Disscussion', 'Bill Entry ', '01/27/2017', 'Discussed bill types in Bill entry '),
(114, 'Disscussion', 'Money Receipt Entry', '01/28/2017', 'Discussion on Money Receipt Entry with Rawat Ji'),
(115, 'Disscussion', 'Bill Entry', '01/31/2017', 'Discussion on differents cases of Bilty Info Table (according to bill type selected) in Bill Entry with Ashok Ji');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'alok', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(2, 'zuber', '9f79d99fd2ac951d6a6835dcd0be55d261c64b1d'),
(3, 'ratik', '5a4d99d46b9e2fac53d74809814d0c65b35cd404'),
(4, 'manju', 'c3994a78c038aedd0d9bf62695d869b24eca00a1'),
(5, 'snigdha', '3d3b88feb13e12d11fd09d5c67b8a4be8e3a3d4e');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
