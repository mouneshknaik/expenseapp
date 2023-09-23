-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql111.infinityfree.com
-- Generation Time: Sep 23, 2023 at 04:38 AM
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
(3214654, 'Home Expense'),
(3214654, 'construction'),
(3214654, 'Home Expense'),
(3214654, 'construction'),
(3214654, 'njn'),
(3214654, 'newcat'),
(3214654, 'sdfsdf'),
(199776118, 'hello'),
(199776118, 'hello'),
(199776118, 'test'),
(333262637, 'Home Construction'),
(333262637, 'Labour'),
(1258233400, 'labour'),
(415378426, 'Expense'),
(333262637, 'Jeelani'),
(333262637, 'Education loan + bike'),
(415378426, 'Labour');

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
(13, 'Mandal Panchayath Approval', 8000, 1, '2023-04-15 19:31:06', 333262637, 'Home Construction'),
(14, 'canara bank engineering cost', 4000, 1, '2023-04-15 19:31:34', 333262637, 'Home Construction'),
(15, 'plan engineering cost for bluprint', 5000, 1, '2023-04-15 19:32:10', 333262637, 'Home Construction'),
(16, 'Engineering working plan(includes at engineer final payment)', 3000, 1, '2023-04-30 01:38:52', 333262637, 'Home Construction'),
(17, 'Borwell drill and casing and lunch', 46300, 1, '2023-05-15 09:34:55', 333262637, 'Home Construction'),
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
(37, 'Second bike', 26500, 1, '2023-06-14 10:22:59', 333262637, 'Home Construction'),
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
(54, 'Education loan pending ', 157000, 1, '2023-07-04 13:46:33', 333262637, 'Home Construction'),
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
(74, 'Steel and cement', 33500, 1, '2023-08-15 05:35:50', 415378426, 'Expense'),
(75, 'Bricks ', 37600, 1, '2023-08-15 05:36:23', 415378426, 'Expense'),
(76, 'Labour for ground tank 550/p', 2750, 5, '2023-08-16 17:29:11', 333262637, 'Home Construction'),
(77, 'Advance', 10000, 1, '2023-08-17 09:19:01', 333262637, 'Jeelani'),
(78, 'Intial payment 25500 chadural', 500, 1, '2023-08-17 09:19:52', 333262637, 'Jeelani'),
(79, '6mm jelly 850Rs + auto-700', 1810, 1, '2023-08-17 09:24:27', 333262637, 'Home Construction'),
(80, 'Petrol ( 18/08/2023 )', 300, 1, '2023-08-18 08:42:43', 415378426, 'Expense'),
(81, 'Steel 8mm(84) (4.7kg) + 10mm(40) (7.5kg) + 12mm(10.5kg)', 59000, 3, '2023-08-19 08:44:17', 333262637, 'Home Construction'),
(82, 'Tadpal', 1800, 1, '2023-08-19 08:56:56', 333262637, 'Home Construction'),
(83, 'babu final settlement', 8000, 1, '2023-08-19 08:59:22', 333262637, 'Babu'),
(84, 'jelly 40mm (750rs)', 11400, 15.23, '2023-08-19 09:28:27', 333262637, 'Home Construction'),
(85, 'Jcp backfill(200)', 4700, 1, '2023-08-19 10:26:50', 333262637, 'Home Construction'),
(86, 'Surya kaka Babu mestri (13/08/2023)', 2760, 1, '2023-08-19 13:48:40', 415378426, 'Expense'),
(87, 'Water tank and bar bending', 11100, 1, '2023-08-19 14:32:17', 333262637, 'Jeelani'),
(88, 'Labour basic needs/ petrol', 6840, 1, '2023-08-19 16:14:02', 415378426, 'Expense'),
(89, 'Elevation design map 2side with measure', 8000, 2, '2023-08-19 18:53:07', 333262637, 'Home Construction'),
(90, 'Poundeshan soil water labour ', 1500, 3, '2023-08-22 14:10:41', 415378426, 'Expense'),
(91, 'Labour for backfill', 1500, 3, '2023-08-22 15:42:26', 333262637, 'Home Construction'),
(92, 'the nail + twine + petrol ', 680, 2, '2023-08-23 15:07:37', 415378426, 'Expense'),
(93, 'Filter water ðŸ’¦', 500, 1, '2023-08-23 16:00:54', 415378426, 'Expense'),
(94, 'Sump tanker sheet centring tread and khill', 500, 2, '2023-08-23 17:34:45', 333262637, 'Home Construction'),
(95, '50 super bag+ 50 ppc', 38500, 100, '2023-08-23 17:36:26', 333262637, 'Home Construction'),
(96, 'Oil+maida+ðŸ¥š', 200, 3, '2023-08-24 11:30:51', 415378426, 'Expense'),
(97, 'Jeelani mestri', 2000, 1, '2023-08-25 11:57:26', 415378426, 'Expense'),
(98, 'West oil ', 50, 1, '2023-08-25 11:59:47', 415378426, 'Expense'),
(99, 'Steel and cement ', 97500, 1, '2023-08-26 08:58:09', 415378426, 'Expense'),
(100, 'Sump + piller ', 19000, 12, '2023-08-26 11:38:10', 333262637, 'Jeelani'),
(101, 'Folding stand ', 2350, 1, '2023-08-26 12:02:31', 415378426, 'Expense'),
(102, 'Steel Stair + waste oil', 2550, 2, '2023-08-26 12:15:29', 333262637, 'Home Construction'),
(104, 'Petrol ', 400, 1, '2023-08-27 03:34:07', 415378426, 'Expense'),
(108, 'Bricks ', 75000, 75100, '2023-08-28 07:49:00', 415378426, 'Expense'),
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
(124, 'Electric contract 1850/chadra advance 1K', 1000, 1, '2023-09-02 05:15:57', 333262637, 'Home Construction'),
(125, 'Harish foundation visit ', 2000, 1, '2023-09-02 11:47:50', 333262637, 'Home Construction'),
(126, 'Labour ', 1200, 2, '2023-09-02 12:40:20', 415378426, 'Labour'),
(127, 'Taragara ', 800, 1, '2023-09-02 12:41:28', 415378426, 'Labour '),
(128, 'Upto seeling + bar bending', 20800, 23, '2023-09-02 12:44:21', 333262637, 'Jeelani'),
(129, '1Mestri', 2000, 1, '2023-09-03 02:57:11', 415378426, 'Labour'),
(130, 'Bar bending', 3000, 1, '2023-09-03 02:57:53', 415378426, 'Labour'),
(131, 'Workers ', 1000, 2, '2023-09-04 05:19:02', 415378426, 'Expense'),
(132, 'Corrency +petrol (03/09/2023)', 500, 2, '2023-09-04 05:20:21', 415378426, 'Expense'),
(133, 'Chicken ðŸ”+ðŸ”', 400, 2, '2023-09-04 12:03:44', 415378426, 'Expense'),
(134, 'Taragara ', 800, 1, '2023-09-05 14:15:17', 415378426, 'Labour '),
(135, 'Labour ', 1800, 3, '2023-09-05 14:17:44', 415378426, 'Labour '),
(136, 'Fish ðŸŸ', 150, 1, '2023-09-05 14:30:21', 415378426, 'Expense'),
(137, 'Petrol (05/09/2023)', 450, 1, '2023-09-06 09:04:48', 415378426, 'Expense'),
(138, 'Labour 3', 1800, 3, '2023-09-06 09:06:38', 415378426, 'Labour '),
(139, 'T 1', 800, 1, '2023-09-06 09:07:29', 415378426, 'Labour '),
(140, 'T 2', 1600, 2, '2023-09-07 10:34:02', 415378426, 'Labour '),
(141, 'L 3', 1800, 3, '2023-09-07 10:35:05', 415378426, 'Labour '),
(142, 'Labour 2 ', 1200, 2, '2023-09-08 09:40:12', 415378426, 'Labour '),
(143, 'Sentring (07/08/2023)', 1, 1, '2023-09-08 09:42:40', 415378426, 'Labour '),
(144, 'Labour 4', 2400, 4, '2023-09-09 14:09:42', 415378426, 'Labour '),
(145, 'T 5', 4000, 5, '2023-09-09 14:11:18', 415378426, 'Labour '),
(146, 'Bricks 12.5', 37600, 3000, '2023-09-09 14:12:56', 415378426, 'Expense'),
(147, 'Tablets ', 370, 1, '2023-09-09 14:14:14', 415378426, 'Expense'),
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
(158, 'Wall upto nittle', 24000, 1, '2023-09-14 17:29:46', 333262637, 'Jeelani'),
(159, 'Jeelani Advance 2', 10000, 1, '2023-09-14 17:30:31', 333262637, 'Jeelani'),
(160, 'Nittle shuttering ', 12000, 1, '2023-09-14 17:31:25', 333262637, 'Jeelani'),
(161, 'Maida+oil+ðŸ¥š', 256, 3, '2023-09-15 02:55:19', 415378426, 'Expense'),
(162, 'Labour 1', 600, 1, '2023-09-15 15:18:37', 415378426, 'Labour '),
(163, 'Harish Nintle Visit', 2000, 1, '2023-09-16 07:57:56', 333262637, 'Home Construction'),
(164, 'Engineering rcc plan', 5000, 1, '2023-09-16 07:58:25', 333262637, 'Home Construction'),
(165, 'Chicken ðŸ— 16/09/2023 + masala items ', 400, 2, '2023-09-16 11:04:22', 415378426, 'Expense'),
(166, 'Rcc electric pipe', 10800, 1, '2023-09-16 16:05:27', 333262637, 'Home Construction'),
(167, 'Soil filling compound', 2000, 4, '2023-09-16 16:08:28', 333262637, 'Home Construction'),
(168, 'Petrol ', 200, 1, '2023-09-17 04:33:36', 415378426, 'Expense'),
(169, 'Nintle bar bending and concret', 18800, 1, '2023-09-17 06:18:55', 333262637, 'Jeelani'),
(170, 'Soil filling 2days', 1000, 2, '2023-09-17 06:20:01', 333262637, 'Home Construction'),
(171, 'Msand nittle time', 33155, 1, '2023-09-17 06:20:47', 333262637, 'Home Construction'),
(172, 'Blead Raad Katter ', 100, 1, '2023-09-17 13:11:36', 415378426, 'Expense'),
(173, 'M sand draiver ', 50, 1, '2023-09-17 14:56:12', 415378426, 'Expense'),
(174, '1300+780+312+60+160', 2612, 5, '2023-09-18 12:45:09', 415378426, 'Expense'),
(175, 'Labour 1 (20/09/2023)', 600, 1, '2023-09-21 04:14:17', 415378426, 'Labour '),
(176, 'T 1 (20/09/2023)', 800, 1, '2023-09-21 04:15:13', 415378426, 'Labour '),
(177, 'L 2', 1200, 2, '2023-09-21 11:24:48', 415378426, 'Labour '),
(178, 'T1', 800, 1, '2023-09-21 11:25:11', 415378426, 'Labour '),
(179, 'L1', 600, 1, '2023-09-22 06:28:32', 415378426, 'Labour ');

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
('Sunil', '7760514102', '7760514102', 415378426);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
