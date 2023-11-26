-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql111.epizy.com
-- Generation Time: Nov 26, 2023 at 12:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32991811_expenses`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `userId` int(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`userId`, `category`) VALUES
(333262637, 'Home Construction'),
(333262637, 'Babu'),
(1258233400, 'labour'),
(415378426, 'Expense'),
(333262637, 'Jeelani'),
(333262637, 'Education Loan'),
(415378426, 'Labour'),
(3214654, 'Monthly Expense'),
(3214654, 'Monthly Basic'),
(415378426, 'Basic Expenses '),
(333262637, 'Rcc '),
(415378426, 'Sentring '),
(415378426, 'Barber '),
(415378426, 'Electrition ðŸ’¡'),
(415378426, 'Bricks ðŸ§±'),
(333262637, 'Praveen Electrical'),
(333262637, 'Kumar plumber'),
(333262637, 'Rcc2');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `material` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `unit` float DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `userId` int(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `material`, `price`, `unit`, `time`, `userId`, `category`) VALUES
(12, 'rgfdg', 2, 1, '2023-04-15 19:14:33', 199776118, 'test'),
(13, 'Mandal Panchayath Approval', 8000, 1, '2023-03-26 19:31:06', 333262637, 'Home Construction'),
(14, 'canara bank engineering cost', 4000, 1, '2023-04-06 19:31:34', 333262637, 'Home Construction'),
(15, 'plan engineering cost for bluprint', 5000, 1, '2023-04-15 19:32:10', 333262637, 'Home Construction'),
(16, 'Engineering working plan(includes at engineer final payment)', 3000, 1, '2023-04-30 01:38:52', 333262637, 'Home Construction'),
(17, 'Borwell drill and casing and lunch', 46300, 1, '2023-05-13 09:34:55', 333262637, 'Home Construction'),
(18, 'Lawyer fees/doc from root', 4200, 1, '2023-05-24 04:36:09', 333262637, 'Home Construction'),
(20, 'Xerox doc', 600, 1, '2023-05-29 17:52:07', 333262637, 'Home Construction'),
(21, 'Loan agreement estamp/affidavit ', 260, 1, '2023-05-29 17:52:46', 333262637, 'Home Construction'),
(22, 'Martgage register/Ec update', 12500, 1, '2023-06-03 17:01:04', 333262637, 'Home Construction'),
(23, 'Tp electrical connection', 15000, 1, '2023-06-04 07:33:44', 333262637, 'Home Construction'),
(24, 'Electric TP accessories', 7000, 1, '2023-06-05 13:44:41', 333262637, 'Home Construction'),
(25, 'Electric tp recharge', 1000, 1, '2023-06-05 13:47:30', 333262637, 'Home Construction'),
(26, 'Shed install ', 16500, 1, '2023-06-06 16:46:08', 333262637, 'Home Construction'),
(27, 'Electric line installation labour', 2000, 1, '2023-06-08 04:31:22', 333262637, 'Home Construction'),
(28, 'Cement mold(rs.40)', 6100, 150, '2023-06-08 04:32:29', 333262637, 'Home Construction'),
(29, 'Gravel load 12kere ', 6600, 12, '2023-06-12 08:30:59', 333262637, 'Home Construction'),
(30, 'Borwell labour praveen', 1700, 1, '2023-06-12 08:31:37', 333262637, 'Home Construction'),
(31, 'Gudli pooja poojari', 700, 1, '2023-06-12 08:32:31', 333262637, 'Home Construction'),
(32, 'Gudli pooja metrial', 1000, 1, '2023-06-12 08:33:06', 333262637, 'Home Construction'),
(33, 'Labour soil clear near borwell', 800, 2, '2023-06-12 08:33:41', 333262637, 'Home Construction'),
(34, 'Mestri initial advance', 500, 1, '2023-06-12 08:34:30', 333262637, 'Home Construction'),
(35, 'Water pump motor wire/pipe', 29000, 1, '2023-06-13 02:06:15', 333262637, 'Home Construction'),
(36, 'Shed rent 10k-1k', 11800, 1, '2023-06-13 11:21:31', 333262637, 'Home Construction'),
(38, 'Harish engineer working plan', 6000, 1, '2023-06-18 17:19:03', 333262637, 'Home Construction'),
(39, 'JCP(6650) +(400) + tra(1700)+ food(600)', 9350, 1, '2023-06-22 13:35:19', 333262637, 'Home Construction'),
(40, 'steel(16mm-453.1) 73', 33076, 24, '2023-06-22 13:38:36', 333262637, 'Home Construction'),
(41, 'steel(12mm-630) 73', 45990, 60, '2023-06-22 13:39:07', 333262637, 'Home Construction'),
(42, 'steel(8mm-283.3) 74', 20964, 60, '2023-06-22 13:40:02', 333262637, 'Home Construction'),
(43, 'steel wire Rs.95', 2375, 25, '2023-06-22 13:40:52', 333262637, 'Home Construction'),
(44, 'cement Altratech super-395Rs', 39500, 100, '2023-06-22 13:43:39', 333262637, 'Home Construction'),
(45, 'Chalki/bandli ect', 3600, 12, '2023-06-22 17:13:17', 333262637, 'Home Construction'),
(46, '20mm-10w+40mmLoad', 31860, 2, '2023-06-23 11:32:43', 333262637, 'Home Construction'),
(47, 'Msand', 33000, 1, '2023-06-23 11:33:29', 333262637, 'Home Construction'),
(49, 'Babu/bar bending under ground', 10000, 1, '2023-06-26 03:37:50', 333262637, 'Babu'),
(50, 'Footing concrete ', 9000, 1, '2023-06-28 13:30:15', 333262637, 'Babu'),
(51, 'Intial metri advance30-31k', 500, 1, '2023-06-28 13:38:20', 333262637, 'Babu'),
(52, 'Babu/footing/bar fill at ', 8600, 1, '2023-07-02 03:44:06', 333262637, 'Babu'),
(53, 'Tea plask/plat/ accessories ', 1200, 1, '2023-07-04 01:51:26', 333262637, 'Home Construction'),
(55, 'Jcp ground fill3hr-950', 3000, 1, '2023-07-05 10:29:04', 333262637, 'Home Construction'),
(56, 'Box/concreat labour', 5000, 1, '2023-07-08 15:38:18', 333262637, 'Babu'),
(57, 'TP Recharge july10', 2300, 1, '2023-07-12 16:35:33', 333262637, 'Home Construction'),
(58, 'Bricks12.5+500 petrol', 38000, 3000, '2023-07-15 03:38:49', 333262637, 'Home Construction'),
(59, '2 Labour foundation manual ', 2000, 1, '2023-07-15 03:39:30', 333262637, 'Home Construction'),
(60, 'Steel cement700p deleivry', 1500, 2, '2023-07-16 14:01:44', 333262637, 'Home Construction'),
(61, '16mm (18.89kg) +12mm +8mm', 57248, 3, '2023-07-21 11:15:50', 333262637, 'Home Construction'),
(62, 'Cement super 395', 19750, 50, '2023-07-21 11:16:27', 333262637, 'Home Construction'),
(63, 'Concret and centring plinth beam', 34500, 1, '2023-07-21 14:34:22', 333262637, 'Babu'),
(64, 'concret1', 1230, 1, '2023-07-21 15:05:48', 1258233400, 'Babu'),
(65, 'Bricks', 37500, 3000, '2023-08-09 02:49:15', 333262637, 'Home Construction'),
(66, 'Gravel load 10 wheel', 27500, 5, '2023-08-09 15:06:15', 333262637, 'Home Construction'),
(67, 'P sand 1150', 19900, 17, '2023-08-10 08:41:32', 333262637, 'Home Construction'),
(68, 'Labour charge', 1000, 1, '2023-08-10 12:33:27', 333262637, 'Babu'),
(69, 'M sand sachin', 33500, 35, '2023-08-11 07:58:51', 333262637, 'Home Construction'),
(70, 'Steel 8mm+ 10mm', 22522, 1, '2023-08-11 17:04:58', 333262637, 'Home Construction'),
(71, 'Ultra ppc370', 11100, 30, '2023-08-11 18:57:07', 333262637, 'Home Construction'),
(72, 'Foundatio wall', 28900, 1, '2023-08-13 11:50:40', 333262637, 'Babu'),
(76, 'Labour for ground tank 550/p', 2750, 5, '2023-08-16 17:29:11', 333262637, 'Home Construction'),
(77, 'Advance', 10000, 1, '2023-08-17 09:19:01', 333262637, 'Jeelani'),
(78, 'Intial payment 25500 chadural,sheet and concret 1/2+3(kaipidi+elevation) +24(tank+include +ramp+charandi+cloth washer)+ top water tank(extra)', 500, 1, '2023-08-17 09:19:52', 333262637, 'Jeelani'),
(79, '6mm jelly 850Rs + auto-700', 1810, 1, '2023-08-17 09:24:27', 333262637, 'Home Construction'),
(80, 'Petrol ', 300, 1, '2023-08-18 08:42:43', 415378426, 'Expense'),
(81, 'Steel 8mm(84) (4.7kg) (10r-1b)+ 10mm(40) (7.5kg) (7r-1b)+ 12mm(10.5kg)5r-1b', 59000, 3, '2023-08-19 08:44:17', 333262637, 'Home Construction'),
(82, 'Tadpal', 1800, 1, '2023-08-19 08:56:56', 333262637, 'Home Construction'),
(83, 'babu final settlement', 8000, 1, '2023-08-19 08:59:22', 333262637, 'Babu'),
(84, 'jelly 40mm (750rs)', 11400, 15.23, '2023-08-19 09:28:27', 333262637, 'Home Construction'),
(85, 'Jcp backfill(200)', 4700, 1, '2023-08-19 10:26:50', 333262637, 'Home Construction'),
(86, 'Surya kaka Babu mestri ', 2760, 1, '2023-08-13 13:48:40', 415378426, 'Expense'),
(87, 'Water tank and bar bending', 11100, 1, '2023-08-19 14:32:17', 333262637, 'Jeelani'),
(88, 'Labour basic needs/ petrol', 6840, 1, '2023-08-19 16:14:02', 415378426, 'Expense'),
(89, 'Elevation design map 2side with measure', 8000, 2, '2023-08-19 18:53:07', 333262637, 'Home Construction'),
(91, 'Labour for backfill', 1500, 3, '2023-08-22 15:42:26', 333262637, 'Home Construction'),
(92, 'the nail + twine + petrol ', 680, 2, '2023-08-23 15:07:37', 415378426, 'Expense'),
(93, 'Filter water ðŸ’¦', 500, 1, '2023-08-23 16:00:54', 415378426, 'Expense'),
(94, 'Sump tanker sheet centring tread and khill', 500, 2, '2023-08-23 17:34:45', 333262637, 'Home Construction'),
(95, '50 super bag+ 50 ppc', 38500, 100, '2023-08-23 17:36:26', 333262637, 'Home Construction'),
(96, 'Oil+maida+ðŸ¥š', 200, 3, '2023-08-24 11:30:51', 415378426, 'Expense'),
(98, 'West oil ', 50, 1, '2023-08-25 11:59:47', 415378426, 'Expense'),
(100, 'Sump + piller ', 19000, 12, '2023-08-26 11:38:10', 333262637, 'Jeelani'),
(101, 'Folding stand ', 2350, 1, '2023-08-26 12:02:31', 415378426, 'Expense'),
(102, 'Steel Stair + waste oil', 2550, 2, '2023-08-26 12:15:29', 333262637, 'Home Construction'),
(104, 'Petrol ', 400, 1, '2023-08-27 03:34:07', 415378426, 'Expense'),
(109, 'Jelly + bricks ', 150, 2, '2023-08-28 07:50:40', 415378426, 'Expense'),
(110, '20mm vsi (900Rs/Ton)', 29300, 32.68, '2023-08-28 10:32:32', 333262637, 'Home Construction'),
(111, 'Petrol ', 200, 1, '2023-08-29 06:35:06', 415378426, 'Expense'),
(114, 'Labour ', 600, 1, '2023-08-29 13:37:37', 415378426, 'Labour '),
(115, 'Labour ', 1200, 2, '2023-08-30 16:06:27', 415378426, 'Labour'),
(117, 'Taragara ', 1600, 2, '2023-08-30 16:10:03', 415378426, 'Labour '),
(119, 'Taragara ', 800, 1, '2023-08-31 14:31:27', 415378426, 'Labour '),
(120, 'Labour ', 1200, 2, '2023-08-31 14:32:29', 415378426, 'Labour '),
(121, 'Electric âš¡ Items ', 100, 3, '2023-08-31 14:34:48', 415378426, 'Expense'),
(122, 'Taragara ', 4000, 5, '2023-09-01 17:28:40', 415378426, 'Labour'),
(123, 'Labour ', 3000, 5, '2023-09-01 17:29:50', 415378426, 'Labour '),
(125, 'Harish foundation visit ', 2000, 1, '2023-09-02 11:47:50', 333262637, 'Home Construction'),
(126, 'Labour ', 1200, 2, '2023-09-02 12:40:20', 415378426, 'Labour'),
(127, 'Taragara ', 800, 1, '2023-09-02 12:41:28', 415378426, 'Labour '),
(128, 'Upto seeling + bar bending', 20800, 23, '2023-09-02 12:44:21', 333262637, 'Jeelani'),
(129, '1Mestri', 2000, 1, '2023-09-03 02:57:11', 415378426, 'Labour'),
(130, 'Bar bending', 3000, 1, '2023-09-03 02:57:53', 415378426, 'Labour'),
(131, 'Workers ', 1000, 2, '2023-09-04 05:19:02', 415378426, 'Expense'),
(132, 'Corrency +petrol ', 500, 2, '2023-09-03 05:20:21', 415378426, 'Expense'),
(134, 'Taragara ', 800, 1, '2023-09-05 14:15:17', 415378426, 'Labour '),
(135, 'Labour ', 1800, 3, '2023-09-05 14:17:44', 415378426, 'Labour '),
(137, 'Petrol ', 450, 1, '2023-09-05 09:04:48', 415378426, 'Expense'),
(138, 'Labour 3', 1800, 3, '2023-09-06 09:06:38', 415378426, 'Labour '),
(139, 'T 1', 800, 1, '2023-09-06 09:07:29', 415378426, 'Labour '),
(140, 'T 2', 1600, 2, '2023-09-07 10:34:02', 415378426, 'Labour '),
(141, 'L 3', 1800, 3, '2023-09-07 10:35:05', 415378426, 'Labour '),
(142, 'Labour 2 ', 1200, 2, '2023-09-08 09:40:12', 415378426, 'Labour '),
(143, 'Sentring (07/08/2023)', 1, 1, '2023-09-08 09:42:40', 415378426, 'Labour '),
(144, 'Labour 4', 2400, 4, '2023-09-09 14:09:42', 415378426, 'Labour '),
(145, 'T 5', 4000, 5, '2023-09-09 14:11:18', 415378426, 'Labour '),
(148, 'Labour 1', 600, 1, '2023-09-10 14:11:06', 415378426, 'Labour '),
(149, 'T 1', 800, 1, '2023-09-10 14:11:39', 415378426, 'Labour '),
(150, 'Ganesha Chaturthi ', 200, 1, '2023-09-12 05:16:33', 415378426, 'Expense'),
(151, 'T1', 800, 1, '2023-09-12 13:35:57', 415378426, 'Labour '),
(152, 'L1', 600, 1, '2023-09-12 13:36:29', 415378426, 'Labour '),
(153, 'L 2', 1200, 2, '2023-09-13 15:26:58', 415378426, 'Labour '),
(154, 'T2', 1600, 2, '2023-09-13 15:27:35', 415378426, 'Labour '),
(155, 'Tea â˜• ', 130, 1, '2023-09-13 16:52:05', 415378426, 'Expense'),
(156, 'T1', 800, 1, '2023-09-14 14:12:59', 415378426, 'Labour '),
(157, 'Labour 2 (1/2+1/2)', 1200, 2, '2023-09-14 14:14:49', 415378426, 'Labour '),
(158, 'Wall upto nittle', 24000, 1, '2023-09-09 17:29:46', 333262637, 'Jeelani'),
(159, 'Jeelani Advance 2', 10000, 1, '2023-09-10 17:30:31', 333262637, 'Jeelani'),
(160, 'Nittle shuttering ', 12000, 1, '2023-09-14 17:31:25', 333262637, 'Jeelani'),
(161, 'Maida+oil+ðŸ¥š', 256, 3, '2023-09-15 02:55:19', 415378426, 'Expense'),
(162, 'Labour 1', 600, 1, '2023-09-15 15:18:37', 415378426, 'Labour '),
(163, 'Harish Nintle Visit', 2000, 1, '2023-09-16 07:57:56', 333262637, 'Home Construction'),
(164, 'Engineering rcc plan', 5000, 1, '2023-09-16 07:58:25', 333262637, 'Home Construction'),
(166, 'Rcc electric pipe', 10800, 1, '2023-09-16 16:05:27', 333262637, 'Home Construction'),
(167, 'Soil filling compound', 2000, 4, '2023-09-16 16:08:28', 333262637, 'Home Construction'),
(168, 'Petrol ', 200, 1, '2023-09-17 04:33:36', 415378426, 'Expense'),
(169, 'Nintle bar bending and concret', 18800, 1, '2023-09-17 06:18:55', 333262637, 'Jeelani'),
(170, 'Soil filling 2days', 1000, 2, '2023-09-17 06:20:01', 333262637, 'Home Construction'),
(171, 'Msand nittle time', 33155, 1, '2023-09-17 06:20:47', 333262637, 'Home Construction'),
(172, 'Blead Raad Katter ', 100, 1, '2023-09-17 13:11:36', 415378426, 'Expense'),
(173, 'M sand draiver ', 50, 1, '2023-09-17 14:56:12', 415378426, 'Expense'),
(174, '1300+780+312+60+160', 2612, 5, '2023-09-18 12:45:09', 415378426, 'Expense'),
(175, 'L1', 600, 1, '2023-09-20 04:14:17', 415378426, 'Labour '),
(176, 'T1 ', 800, 1, '2023-09-20 04:15:13', 415378426, 'Labour '),
(177, 'L2', 1200, 2, '2023-09-21 11:24:48', 415378426, 'Labour '),
(178, 'T1', 800, 1, '2023-09-21 11:25:11', 415378426, 'Labour '),
(179, 'L1', 600, 1, '2023-09-22 06:28:32', 415378426, 'Labour '),
(180, 'Advance inbetween', 20000, 1, '2023-09-22 08:44:27', 333262637, 'Jeelani'),
(181, 'L2', 1200, 2, '2023-09-23 08:50:25', 415378426, 'Labour '),
(184, 'Edication Loan Final Settlement', 157000, 1, '2023-08-23 08:55:57', 333262637, 'Education Loan'),
(185, 'Second Bike', 26500, 1, '2023-06-14 09:02:06', 333262637, 'Education Loan'),
(187, 'Nintle concrete ', 7500, 1, '2023-09-23 13:42:07', 333262637, 'Jeelani'),
(188, 'Room Rent', 4200, 1, '2023-09-24 05:41:05', 3214654, 'Monthly Basic'),
(189, 'cook salary', 11000, 1, '2023-09-24 05:41:52', 3214654, 'Monthly Basic'),
(190, 'Paytm postpaid bill', 7000, 1, '2023-09-24 07:44:03', 3214654, 'Monthly Basic'),
(193, 'Home loan interest', 10500, 1, '2023-09-24 07:46:36', 3214654, 'Monthly Expense'),
(194, 'Home insurance', 13000, 1, '2023-09-24 07:46:57', 3214654, 'Monthly Expense'),
(195, 'Car service ', 11500, 1, '2023-09-24 07:52:31', 3214654, 'Monthly Expense'),
(196, 'Ganesh chaturthi ', 2000, 1, '2023-09-24 07:52:51', 3214654, 'Monthly Expense'),
(197, 'Train travel', 5000, 2, '2023-09-24 08:21:55', 3214654, 'Monthly Expense'),
(198, 'Grocery avg ', 11000, 1, '2023-09-24 08:25:13', 3214654, 'Monthly Basic'),
(199, 'Icici credit card bill', 11000, 1, '2023-09-24 13:23:23', 3214654, 'Monthly Expense'),
(200, 'Citi bank bill', 500, 1, '2023-09-24 13:24:34', 3214654, 'Monthly Expense'),
(201, 'Electric bill', 90, 1, '2023-09-24 13:28:20', 3214654, 'Monthly Basic'),
(202, 'T5', 4000, 5, '2023-09-25 08:33:15', 415378426, 'Labour'),
(203, 'L4', 2400, 4, '2023-09-25 08:35:25', 415378426, 'Labour'),
(204, 'Petrol ', 300, 1, '2023-09-25 08:36:13', 415378426, 'Expense'),
(205, 'The Nail (à²®à³Šà²³à³†)', 50, 1, '2023-09-26 12:33:22', 415378426, 'Expense'),
(206, 'T2', 1600, 2, '2023-09-26 12:33:56', 415378426, 'Labour'),
(208, 'L2', 1200, 2, '2023-09-26 12:36:20', 415378426, 'Labour'),
(211, 'T1', 800, 1, '2023-09-27 12:24:25', 415378426, 'Labour'),
(212, 'L2', 1200, 2, '2023-09-27 12:24:52', 415378426, 'Labour'),
(213, 'Rcc Steel delivery', 1500, 1, '2023-09-29 21:29:34', 333262637, 'Home Construction'),
(214, 'Cement + Steel ', 100, 2, '2023-09-29 14:26:39', 415378426, 'Expense'),
(215, 'Bricks ', 75100, 6000, '2023-08-28 18:42:46', 333262637, 'Home Construction'),
(216, 'Bricks', 37500, 3000, '2023-09-11 18:44:40', 333262637, 'Home Construction'),
(217, 'Gas ', 950, 1, '2023-09-09 18:52:44', 415378426, 'Basic Expenses '),
(218, 'Chicken ', 400, 1, '2023-09-16 18:54:20', 415378426, 'Basic Expenses '),
(219, 'Rcc plan and elevation print', 300, 1, '2023-09-29 19:00:03', 333262637, 'Home Construction'),
(220, 'Tue(Sep 5, 10:30 AM)	Fish ðŸŸ', 150, 1, '2023-09-30 05:23:41', 415378426, 'Basic Expenses '),
(221, 'Sat(Sep 9, 10:14 AM)	Tablets	1', 370, 1, '2023-09-30 05:26:46', 415378426, 'Basic Expenses '),
(222, 'Mon(Sep 4, 8:03 AM)	Chicken ðŸ”+ðŸ”	2', 400, 2, '2023-09-30 05:28:12', 415378426, 'Basic Expenses '),
(223, 'River sand+ 300bata', 53300, 28, '2023-09-30 07:52:55', 333262637, 'Home Construction'),
(224, 'Steel 16mm(16b)+ 12mm(8b) +10mm(10b) +8mm(2)', 148950, 4, '2023-09-30 07:55:59', 333262637, 'Home Construction'),
(225, 'Ultratech super', 51350, 130, '2023-09-30 07:56:43', 333262637, 'Home Construction'),
(226, 'Wall up rcc', 13200, 13, '2023-09-30 11:23:33', 333262637, 'Jeelani'),
(228, 'Advance Pending deduction', 3000, 1, '2023-10-01 10:22:19', 333262637, 'Jeelani'),
(229, 'Pencil (balapa) + etc ', 50, 1, '2023-10-05 12:08:11', 415378426, 'Expense'),
(230, 'Chikken+masala ', 390, 2, '2023-10-06 09:23:18', 415378426, 'Basic Expenses '),
(231, 'Petrol ', 300, 1, '2023-10-06 09:24:11', 415378426, 'Expense'),
(232, 'Super madhu sentring ', 30, 1, '2023-10-07 13:46:30', 415378426, 'Expense'),
(233, 'Suttering advance jeelani', 30000, 1, '2023-10-01 20:13:46', 333262637, 'Rcc '),
(234, 'Suttering polls', 10000, 1, '2023-10-05 20:15:14', 333262637, 'Rcc '),
(235, 'Madu super barber ', 100, 1, '2023-10-08 13:03:50', 415378426, 'Expense'),
(236, 'Shuttering night food and expenses', 200, 3, '2023-10-08 14:51:59', 415378426, 'Expense'),
(237, 'Bar bending labour night food ', 400, 1, '2023-10-08 14:52:39', 415378426, 'Expense'),
(238, 'Harish visit rcc', 2000, 1, '2023-10-08 14:56:00', 333262637, 'Home Construction'),
(239, 'Petrol 210+ Gas 520+electric 100+ Eat 150+ bend 40 +50 ', 1070, 6, '2023-10-09 08:59:33', 415378426, 'Expense'),
(240, 'L 1', 600, 1, '2023-10-09 09:16:38', 415378426, 'Labour'),
(241, 'Steel delivery 8mm', 450, 1, '2023-10-09 09:41:24', 333262637, 'Home Construction'),
(242, 'Have lunch', 210, 1, '2023-10-09 14:51:38', 415378426, 'Expense'),
(243, 'Sentring 03/10/2023 -2', 2, 2, '2023-10-10 02:58:00', 415378426, 'Sentring '),
(244, ' Sentring 04/10/2023', 2, 2, '2023-10-10 02:59:41', 415378426, 'Sentring '),
(245, 'Sentring 05/10/2023', 4, 4, '2023-10-10 03:00:43', 415378426, 'Sentring '),
(246, 'Sentring 06/10/2023', 3, 3, '2023-10-10 03:01:49', 415378426, 'Sentring '),
(247, 'Sentring 07/10/2023', 6, 6, '2023-10-10 03:05:29', 415378426, 'Sentring '),
(248, 'Sentring ', 2, 2, '2023-10-10 03:08:04', 415378426, 'Sentring '),
(249, 'Barbers 07/10/2023', 3, 3, '2023-10-10 03:11:30', 415378426, 'Barber '),
(250, 'Barber 08/10/2023', 12, 12, '2023-10-10 03:13:29', 415378426, 'Barber '),
(251, 'Barber 09/10/2023', 5, 5, '2023-10-10 03:14:44', 415378426, 'Barber '),
(252, 'Electrition 09/10/2023', 5, 5, '2023-10-10 03:16:43', 415378426, 'Electrition ðŸ’¡'),
(253, 'Small ðŸª¢ Rope + madhu ', 350, 2, '2023-10-10 08:07:23', 415378426, 'Expense'),
(254, 'Cover block 1inch dr fixit', 1350, 1, '2023-10-10 16:11:33', 333262637, 'Home Construction'),
(255, 'Rcc Bar bending + electric donate', 1400, 2, '2023-10-10 16:12:47', 333262637, 'Home Construction'),
(256, 'Shuttering advance  again', 5000, 1, '2023-10-10 17:57:30', 333262637, 'Rcc '),
(257, 'Concret ', 18000, 1, '2023-10-11 08:49:15', 333262637, 'Rcc'),
(258, 'Shuttering 75900/18c-70*21step-14700(34rs/sft)', 30900, 1, '2023-10-11 08:52:52', 333262637, 'Rcc'),
(262, 'Bar bending rcc and chain stair', 30000, 1, '2023-10-11 09:09:57', 333262637, 'Jeelani'),
(263, 'Harish rcc visit concret', 2000, 1, '2023-10-11 09:13:44', 333262637, 'Home Construction'),
(264, 'Catering 1st rcc', 9000, 1, '2023-10-11 15:56:20', 333262637, 'Home Construction'),
(265, 'L1 ', 600, 1, '2023-10-10 04:55:41', 415378426, 'Labour'),
(266, 'T1', 800, 1, '2023-10-10 04:56:35', 415378426, 'Labour'),
(267, 'L2 ', 1200, 2, '2023-10-11 04:59:29', 415378426, 'Labour'),
(268, 'T2 ', 1600, 2, '2023-10-11 05:00:30', 415378426, 'Labour'),
(269, 'L1 ', 600, 1, '2023-10-12 05:01:31', 415378426, 'Labour'),
(270, 'Sentring (11/10/23)', 1, 1, '2023-10-13 05:04:12', 415378426, 'Sentring '),
(271, 'Chicken 620+item 236 ', 856, 2, '2023-10-12 05:08:42', 415378426, 'Basic Expenses '),
(272, 'Petrol  Davangere petrol pump â›½ Night Movie ðŸŽ¥', 310, 1, '2023-10-11 05:10:41', 415378426, 'Expense'),
(273, 'Tobacco ', 80, 1, '2023-10-11 05:14:03', 415378426, 'Expense'),
(274, 'Bakeries Items ', 270, 1, '2023-10-10 05:15:55', 415378426, 'Expense'),
(275, 'Electric recharge ', 2200, 1, '2023-10-12 07:30:17', 333262637, 'Home Construction'),
(276, 'L1', 600, 1, '2023-10-13 12:57:06', 415378426, 'Labour'),
(277, 'T1', 800, 1, '2023-10-12 15:50:53', 415378426, 'Labour'),
(278, 'Electric recharge', 2200, 1, '2023-09-02 16:16:20', 333262637, 'Home Construction'),
(279, 'L2', 1200, 2, '2023-10-14 11:42:24', 415378426, 'Labour'),
(280, 'T1', 800, 1, '2023-10-14 11:42:42', 415378426, 'Labour'),
(281, 'Rcc and stairs', 14200, 18, '2023-10-14 11:50:40', 333262637, 'Jeelani'),
(282, 'Ration shop ', 2039, 1, '2023-10-15 13:16:24', 415378426, 'Basic Expenses '),
(283, 'Petrol ', 300, 1, '2023-10-15 13:17:48', 415378426, 'Expense'),
(284, 'Bricks 1nd floor', 37500, 3000, '2023-10-16 04:06:31', 333262637, 'Home Construction'),
(286, 'Bricks ðŸ§±', 37570, 1, '2023-10-16 07:09:16', 415378426, 'Bricks ðŸ§±'),
(287, 'Bricks ðŸ§±', 37600, 1, '2023-08-15 05:36:23', 415378426, 'Bricks ðŸ§±'),
(288, 'Bricks ðŸ§±', 75100, 2, '2023-08-28 07:49:00', 415378426, 'Bricks ðŸ§±'),
(289, 'Bricks ðŸ§±', 37600, 1, '2023-09-09 14:12:56', 415378426, 'Bricks ðŸ§±'),
(290, 'Tithi (Murthi phupha)', 2000, 1, '2023-10-16 11:03:30', 415378426, 'Basic Expenses '),
(291, 'T1', 800, 1, '2023-10-17 10:31:54', 415378426, 'Labour'),
(292, 'L1', 600, 1, '2023-10-17 10:32:18', 415378426, 'Labour'),
(294, 'T1', 800, 1, '2023-10-18 10:06:01', 415378426, 'Labour'),
(295, 'L2', 1200, 2, '2023-10-18 10:06:29', 415378426, 'Labour'),
(296, 'Supreetha ', 1000, 1, '2023-10-18 10:07:06', 415378426, 'Basic Expenses '),
(298, 'Electric contract 1850/chadra advance 1K', 1000, 1, '2023-09-02 17:34:16', 333262637, 'Praveen Electrical'),
(299, 'Rcc piping ', 5000, 1, '2023-10-19 17:36:27', 333262637, 'Praveen Electrical'),
(300, 'Icici bill', 6300, 1, '2023-10-19 18:27:36', 3214654, 'Monthly Expense'),
(301, 'Citi bill', 1800, 1, '2023-10-19 18:28:32', 3214654, 'Monthly Expense'),
(302, 'One card bill', 3200, 1, '2023-10-19 18:32:58', 3214654, 'Monthly Expense'),
(303, 'Paytm postpaid bill', 8000, 1, '2023-10-19 18:34:09', 3214654, 'Monthly Expense'),
(304, 'Bike service ', 20000, 1, '2023-10-19 18:35:33', 3214654, 'Monthly Expense'),
(305, 'Chicken ðŸ”', 345, 1, '2023-10-20 11:05:45', 415378426, 'Basic Expenses '),
(306, 'Piller after rcc box', 9400, 1, '2023-10-20 13:32:20', 333262637, 'Jeelani'),
(307, 'Adavance dasara', 10000, 1, '2023-10-20 13:33:14', 333262637, 'Jeelani'),
(308, 'Dasara chicken ', 315, 1, '2023-10-23 11:54:34', 415378426, 'Basic Expenses '),
(309, 'Gobhi + items ', 150, 2, '2023-10-16 10:08:22', 415378426, 'Basic Expenses '),
(310, 'Targar donation', 600, 1, '2023-10-11 16:19:07', 333262637, 'Home Construction'),
(311, 'Shuttering donation', 500, 1, '2023-10-11 16:20:18', 333262637, 'Home Construction'),
(312, 'Concret batch donat ', 1300, 1, '2023-10-11 16:22:21', 333262637, 'Home Construction'),
(313, 'Petrol+kannan devan T', 428, 2, '2023-10-30 13:09:00', 415378426, 'Expense'),
(314, 'L 2', 1200, 2, '2023-10-30 13:21:56', 415378426, 'Labour'),
(315, 'L2', 1200, 2, '2023-10-31 14:07:57', 415378426, 'Labour'),
(316, 'T1', 800, 1, '2023-10-31 14:09:29', 415378426, 'Labour'),
(318, 'T1', 800, 1, '2023-11-02 07:52:50', 415378426, 'Labour '),
(319, 'L1', 600, 1, '2023-11-02 07:53:25', 415378426, 'Labour'),
(320, 'Petrol ', 250, 1, '2023-11-04 02:28:46', 415378426, 'Expense'),
(321, 'L1', 600, 1, '2023-11-04 12:56:18', 415378426, 'Labour'),
(322, 'After dasara first floor wall', 8000, 8, '2023-11-04 13:33:11', 333262637, 'Jeelani'),
(323, 'T2', 1600, 2, '2023-11-07 08:08:25', 415378426, 'Labour'),
(324, 'L3', 1800, 3, '2023-11-07 08:09:09', 415378426, 'Labour'),
(325, 'Advance week 1st floor', 6000, 1, '2023-11-07 13:05:31', 333262637, 'Jeelani'),
(326, 'L1', 600, 1, '2023-11-09 08:49:32', 415378426, 'Labour'),
(327, 'T1', 800, 1, '2023-11-09 08:50:10', 415378426, 'Labour'),
(328, 'Advance payment', 6000, 1, '2023-11-10 08:36:20', 333262637, 'Praveen Electrical'),
(329, 'L1', 600, 1, '2023-11-10 11:14:50', 415378426, 'Labour'),
(330, 'T1', 800, 1, '2023-11-10 11:15:08', 415378426, 'Labour'),
(331, 'Bricks 1st floor after 3feet', 37500, 3000, '2023-11-10 14:17:28', 333262637, 'Home Construction'),
(332, 'Petrol ', 300, 1, '2023-11-08 16:43:18', 415378426, 'Expense'),
(333, 'Sonamasuri 10kg', 617, 1, '2023-11-08 16:51:14', 415378426, 'Basic Expenses '),
(334, 'Tablet', 210, 1, '2023-11-10 16:52:40', 415378426, 'Basic Expenses '),
(335, 'Ration ', 2500, 1, '2023-11-08 16:55:29', 415378426, 'Basic Expenses '),
(336, 'Hott Drinks ðŸ»', 125, 3, '2023-11-10 17:07:27', 415378426, 'Basic Expenses '),
(337, '1st floor seal ', 8200, 7, '2023-11-11 07:37:02', 333262637, 'Jeelani'),
(338, 'Petrol ', 310, 1, '2023-11-13 08:12:16', 415378426, 'Expense'),
(339, 'Bricks ðŸ§±', 37600, 1, '2023-11-12 08:13:18', 415378426, 'Bricks ðŸ§±'),
(340, 'shirt dewali 1', 599, 1, '2023-11-13 08:15:47', 415378426, 'Basic Expenses '),
(341, 'T1', 800, 1, '2023-11-15 10:33:19', 415378426, 'Labour'),
(342, 'L2', 1200, 2, '2023-11-15 10:33:41', 415378426, 'Labour'),
(343, 'Chicken+ Drinks ', 680, 2, '2023-11-15 14:51:10', 415378426, 'Basic Expenses '),
(344, 'Gutka+ele ', 15, 2, '2023-11-15 14:53:00', 415378426, 'Expense'),
(345, 'Petrol ', 210, 1, '2023-11-15 14:53:32', 415378426, 'Expense'),
(346, 'Advance after deewali', 5000, 1, '2023-11-15 15:04:56', 333262637, 'Jeelani'),
(347, 'Harish visit seal 2nd after rcc', 2000, 1, '2023-11-15 16:12:08', 333262637, 'Home Construction'),
(348, 'Electric pipes ', 11715, 1, '2023-11-16 09:38:39', 333262637, 'Home Construction'),
(349, 'L1', 600, 1, '2023-11-16 15:21:35', 415378426, 'Labour'),
(350, 'Diwali gift 9shirt/choclet box', 5000, 10, '2023-11-13 02:30:45', 333262637, 'Home Construction'),
(351, 'Cement 10bag', 3900, 10, '2023-11-17 02:32:07', 333262637, 'Home Construction'),
(352, 'River sand 10 wheel', 54000, 1, '2023-11-18 06:56:32', 333262637, 'Home Construction'),
(353, 'After seal ', 5000, 1, '2023-11-18 15:37:26', 333262637, 'Jeelani'),
(354, 'Petrol ', 210, 1, '2023-11-19 11:09:37', 415378426, 'Expense'),
(355, 'Malalu ', 100, 1, '2023-11-18 11:12:10', 415378426, 'Expense'),
(356, 'L4', 2400, 4, '2023-11-20 10:48:19', 415378426, 'Labour'),
(357, 'T2', 1600, 2, '2023-11-20 10:49:39', 415378426, 'Labour'),
(358, 'Tambaku,etc ', 50, 1, '2023-11-20 10:51:52', 415378426, 'Expense'),
(359, 'Baik cover ', 220, 1, '2023-11-21 07:53:06', 415378426, 'Basic Expenses '),
(360, 'Spect ', 1500, 1, '2023-11-21 07:53:46', 415378426, 'Basic Expenses '),
(361, 'L4', 2400, 4, '2023-11-21 11:20:00', 415378426, 'Labour'),
(362, 'T3', 2400, 3, '2023-11-21 11:20:49', 415378426, 'Labour'),
(363, 'Token advance ', 1000, 1, '2023-11-22 05:47:40', 333262637, 'Kumar plumber'),
(364, 'T3', 2400, 3, '2023-11-22 11:24:14', 415378426, 'Labour'),
(365, 'L4', 2400, 3, '2023-11-22 11:25:01', 415378426, 'Labour'),
(366, 'Sugar ', 50, 1, '2023-11-22 11:26:40', 415378426, 'Expense'),
(367, 'Barber ', 1, 1, '2023-11-22 11:30:57', 415378426, 'Barber '),
(368, 'B1', 0, 1, '2023-11-22 14:55:25', 415378426, 'Labour'),
(369, 'Mole+ Cattingplayer+Handblouse ', 280, 3, '2023-11-23 05:59:13', 415378426, 'Expense'),
(370, 'T2', 1600, 2, '2023-11-23 11:28:09', 415378426, 'Labour'),
(371, 'L2', 1200, 2, '2023-11-23 11:28:33', 415378426, 'Labour'),
(373, 'Electric recharge ', 2800, 1, '2023-11-23 14:38:40', 333262637, 'Home Construction'),
(374, 'Nittle Shuttering 1st floor', 11000, 1, '2023-11-23 14:41:40', 333262637, 'Jeelani'),
(375, 'L2', 1200, 2, '2023-11-24 07:48:52', 415378426, 'Labour'),
(376, 'T1', 800, 1, '2023-11-24 07:49:13', 415378426, 'Labour'),
(377, 'Nitle2 steel delivery ', 1400, 1, '2023-11-25 05:25:33', 333262637, 'Home Construction'),
(378, 'Steel 8mm-2b,10mm-5b 12mm-2b', 50273, 3, '2023-11-25 06:49:35', 333262637, 'Home Construction'),
(379, 'Cement ppc 50bag ultratech', 19250, 50, '2023-11-25 06:50:27', 333262637, 'Home Construction'),
(380, 'L2', 1200, 2, '2023-11-25 11:48:13', 415378426, 'Labour'),
(381, 'Petrol ', 305, 1, '2023-11-25 11:52:14', 415378426, 'Expense'),
(382, 'Barber ', 0, 6, '2023-11-25 11:54:08', 415378426, 'Barber '),
(383, 'B6', 0, 6, '2023-11-25 12:22:20', 415378426, 'Labour'),
(384, 'Nintle2 bar bending+ labour upto neentle', 33600, 30, '2023-11-25 13:09:58', 333262637, 'Jeelani');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userId` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `phone`, `password`, `userId`) VALUES
('Mounesh', '9538616596', 'moni@123', 3214654),
('Mounesh', '9538616596', 'moni@123', 3214654),
('moni', '8132', 'moni@123', 199776118),
('Mounesh', '919538616596', 'moni@1234', 333262637),
('Gani', '7892024199', 'KA@17HE5594', 1826887277),
('Mouni', '8123143508', 'moni@123', 1258233400),
('Sunil', '7760514102', '7760514102', 415378426),
('Mounesh', '9538616596', 'moni@123', 1564259000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
