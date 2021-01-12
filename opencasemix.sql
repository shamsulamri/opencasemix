-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 12, 2021 at 03:32 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opencasemix`
--

-- --------------------------------------------------------

--
-- Table structure for table `drg`
--

CREATE TABLE `drg` (
  `drg_code` varchar(10) NOT NULL,
  `drg_base` varchar(10) NOT NULL,
  `drg_severity` varchar(1) NOT NULL DEFAULT 'Z',
  `mdc_code` varchar(10) NOT NULL,
  `drg_type` varchar(10) NOT NULL,
  `drg_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drg`
--

INSERT INTO `drg` (`drg_code`, `drg_base`, `drg_severity`, `mdc_code`, `drg_type`, `drg_name`) VALUES
('02063', '0206', '3', '02', 'MED', 'OTHER DISORDERS OF THE EYE (W MCC)'),
('02053', '0205', '3', '02', 'MED', 'NEUROLOGICAL EYE DISORDERS (W MCC)'),
('02043', '0204', '3', '02', 'MED', 'ACUTE MAJOR EYE INFECTIONS (W MCC)'),
('02033', '0203', '3', '02', 'SURG', 'INTRAOCULAR PROCEDURES (W MCC)'),
('02023', '0202', '3', '02', 'SURG', 'EXTRAOCULAR PROCEDURES EXCEPT ORBIT (W MCC)'),
('02013', '0201', '3', '02', 'SURG', 'ORBITAL PROCEDURES (W MCC)'),
('02042', '0204', '2', '02', 'MED', 'ACUTE MAJOR EYE INFECTIONS (W CC)'),
('02052', '0205', '2', '02', 'MED', 'NEUROLOGICAL EYE DISORDERS (W CC)'),
('02062', '0206', '2', '02', 'MED', 'OTHER DISORDERS OF THE EYE (W CC)'),
('02032', '0203', '2', '02', 'SURG', 'INTRAOCULAR PROCEDURES (W CC)'),
('02022', '0202', '2', '02', 'SURG', 'EXTRAOCULAR PROCEDURES EXCEPT ORBIT (W CC)'),
('02012', '0201', '2', '02', 'SURG', 'ORBITAL PROCEDURES (W CC)'),
('02011', '0201', '1', '02', 'SURG', 'ORBITAL PROCEDURES (W/O CC)'),
('02021', '0202', '1', '02', 'SURG', 'EXTRAOCULAR PROCEDURES EXCEPT ORBIT (W/O CC)'),
('02031', '0203', '1', '02', 'SURG', 'INTRAOCULAR PROCEDURES (W/O CC)'),
('02041', '0204', '1', '02', 'MED', 'ACUTE MAJOR EYE INFECTIONS (W/O CC)'),
('02051', '0205', '1', '02', 'MED', 'NEUROLOGICAL EYE DISORDERS (W/O CC)'),
('02061', '0206', '1', '02', 'MED', 'OTHER DISORDERS OF THE EYE (W/O CC)');

-- --------------------------------------------------------

--
-- Table structure for table `drg_bases`
--

CREATE TABLE `drg_bases` (
  `base_code` varchar(10) NOT NULL,
  `mdc_code` varchar(5) NOT NULL,
  `base_name` varchar(200) NOT NULL,
  `base_type` varchar(10) NOT NULL,
  `gender_code` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drg_bases`
--

INSERT INTO `drg_bases` (`base_code`, `mdc_code`, `base_name`, `base_type`, `gender_code`) VALUES
('0201', '02', 'ORBITAL PROCEDURES', 'SURG', 'male'),
('0202', '02', 'EXTRAOCULAR PROCEDURES EXCEPT ORBIT', 'SURG', NULL),
('0203', '02', 'INTRAOCULAR PROCEDURES', 'SURG', NULL),
('0204', '02', 'ACUTE MAJOR EYE INFECTIONS', 'MED', NULL),
('0205', '02', 'NEUROLOGICAL EYE DISORDERS', 'MED', NULL),
('0206', '02', 'OTHER DISORDERS OF THE EYE', 'MED', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drg_cast`
--

CREATE TABLE `drg_cast` (
  `cast_id` int(11) NOT NULL,
  `cast_code` varchar(10) NOT NULL,
  `base_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drg_cast`
--

INSERT INTO `drg_cast` (`cast_id`, `cast_code`, `base_code`) VALUES
(1, '16.99', '0201'),
(2, '16.98', '0201'),
(3, '16.93', '0201'),
(4, '16.92', '0201'),
(5, '16.89', '0201'),
(6, '16.82', '0201'),
(7, '16.81', '0201'),
(8, '16.72', '0201'),
(9, '16.71', '0201'),
(10, '16.69', '0201'),
(11, '16.66', '0201'),
(12, '16.65', '0201'),
(13, '16.64', '0201'),
(14, '16.63', '0201'),
(15, '16.62', '0201'),
(16, '16.61', '0201'),
(17, '16.59', '0201'),
(18, '16.52', '0201'),
(19, '16.51', '0201'),
(20, '16.49', '0201'),
(21, '16.42', '0201'),
(22, '16.41', '0201'),
(23, '16.39', '0201'),
(24, '16.01', '0201'),
(25, '16.02', '0201'),
(26, '16.09', '0201'),
(27, '16.31', '0201'),
(28, '08.73', '0202'),
(29, '08.72', '0202'),
(30, '08.71', '0202'),
(31, '08.70', '0202'),
(32, '08.69', '0202'),
(33, '08.64', '0202'),
(34, '08.63', '0202'),
(35, '08.62', '0202'),
(36, '08.61', '0202'),
(37, '08.59', '0202'),
(38, '08.52', '0202'),
(39, '08.51', '0202'),
(40, '08.49', '0202'),
(41, '08.44', '0202'),
(42, '08.43', '0202'),
(43, '08.42', '0202'),
(44, '08.41', '0202'),
(45, '08.38', '0202'),
(46, '08.37', '0202'),
(47, '08.36', '0202'),
(48, '08.35', '0202'),
(49, '08.34', '0202'),
(50, '08.33', '0202'),
(51, '08.32', '0202'),
(52, '08.31', '0202'),
(53, '09.71', '0202'),
(54, '09.6', '0202'),
(55, '09.59', '0202'),
(56, '09.53', '0202'),
(57, '09.52', '0202'),
(58, '09.51', '0202'),
(59, '09.49', '0202'),
(60, '09.44', '0202'),
(61, '09.43', '0202'),
(62, '09.42', '0202'),
(63, '09.41', '0202'),
(64, '09.3', '0202'),
(65, '09.23', '0202'),
(66, '09.22', '0202'),
(67, '09.21', '0202'),
(68, '09.20', '0202'),
(69, '09.19', '0202'),
(70, '09.12', '0202'),
(71, '09.11', '0202'),
(72, '09.0', '0202'),
(73, '08.99', '0202'),
(74, '08.93', '0202'),
(75, '08.92', '0202'),
(76, '08.91', '0202'),
(77, '08.87', '0202'),
(78, '08.86', '0202'),
(79, '08.85', '0202'),
(80, '08.84', '0202'),
(81, '08.83', '0202'),
(82, '08.82', '0202'),
(83, '08.74', '0202'),
(84, '08.25', '0202'),
(85, '08.24', '0202'),
(86, '08.23', '0202'),
(87, '08.22', '0202'),
(88, '08.21', '0202'),
(89, '08.20', '0202'),
(90, '15.11', '0202'),
(91, '15.09', '0202'),
(92, '15.01', '0202'),
(93, '14.6', '0202'),
(94, '12.89', '0202'),
(95, '12.88', '0202'),
(96, '12.87', '0202'),
(97, '12.84', '0202'),
(98, '11.91', '0202'),
(99, '11.49', '0202'),
(100, '11.43', '0202'),
(101, '11.42', '0202'),
(102, '11.41', '0202'),
(103, '11.39', '0202'),
(104, '11.32', '0202'),
(105, '11.31', '0202'),
(106, '11.29', '0202'),
(107, '11.22', '0202'),
(108, '11.21', '0202'),
(109, '11.0', '0202'),
(110, '10.99', '0202'),
(111, '10.6', '0202'),
(112, '10.5', '0202'),
(113, '10.49', '0202'),
(114, '10.44', '0202'),
(115, '10.43', '0202'),
(116, '10.42', '0202'),
(117, '10.41', '0202'),
(118, '10.33', '0202'),
(119, '10.32', '0202'),
(120, '10.31', '0202'),
(121, '10.1', '0202'),
(122, '10.0', '0202'),
(123, '09.99', '0202'),
(124, '09.91', '0202'),
(125, '09.83', '0202'),
(126, '09.82', '0202'),
(127, '09.81', '0202'),
(128, '09.73', '0202'),
(129, '09.72', '0202'),
(130, '15.9', '0202'),
(131, '15.7', '0202'),
(132, '15.6', '0202'),
(133, '15.5', '0202'),
(134, '15.4', '0202'),
(135, '15.3', '0202'),
(136, '15.29', '0202'),
(137, '15.22', '0202'),
(138, '15.12', '0202'),
(139, '15.13', '0202'),
(140, '15.19', '0202'),
(141, '15.21', '0202'),
(142, '16.29', '0203'),
(143, '16.23', '0203'),
(144, '16.1', '0203'),
(145, '14.9', '0203'),
(146, '14.79', '0203'),
(147, '14.75', '0203'),
(148, '14.74', '0203'),
(149, '14.73', '0203'),
(150, '14.72', '0203'),
(151, '14.71', '0203'),
(152, '14.59', '0203'),
(153, '14.55', '0203'),
(154, '14.54', '0203'),
(155, '14.53', '0203'),
(156, '14.52', '0203'),
(157, '14.51', '0203'),
(158, '14.49', '0203'),
(159, '14.41', '0203'),
(160, '14.39', '0203'),
(161, '14.35', '0203'),
(162, '14.34', '0203'),
(163, '14.33', '0203'),
(164, '14.32', '0203'),
(165, '14.31', '0203'),
(166, '14.29', '0203'),
(167, '14.27', '0203'),
(168, '14.26', '0203'),
(169, '14.22', '0203'),
(170, '14.21', '0203'),
(171, '14.02', '0203'),
(172, '14.01', '0203'),
(173, '14.00', '0203'),
(174, '13.9', '0203'),
(175, '13.8', '0203'),
(176, '13.72', '0203'),
(177, '13.71', '0203'),
(178, '13.70', '0203'),
(179, '13.69', '0203'),
(180, '13.66', '0203'),
(181, '13.65', '0203'),
(182, '13.64', '0203'),
(183, '13.63', '0203'),
(184, '13.62', '0203'),
(185, '13.61', '0203'),
(186, '13.59', '0203'),
(187, '13.51', '0203'),
(188, '13.43', '0203'),
(189, '13.42', '0203'),
(190, '13.41', '0203'),
(191, '13.3', '0203'),
(192, '13.2', '0203'),
(193, '13.19', '0203'),
(194, '13.11', '0203'),
(195, '13.02', '0203'),
(196, '13.01', '0203'),
(197, '13.00', '0203'),
(198, '12.99', '0203'),
(199, '12.98', '0203'),
(200, '12.97', '0203'),
(201, '12.93', '0203'),
(202, '12.92', '0203'),
(203, '12.91', '0203'),
(204, '12.86', '0203'),
(205, '12.85', '0203'),
(206, '12.83', '0203'),
(207, '12.82', '0203'),
(208, '12.81', '0203'),
(209, '12.79', '0203'),
(210, '12.74', '0203'),
(211, '12.73', '0203'),
(212, '12.72', '0203'),
(213, '12.71', '0203'),
(214, '12.69', '0203'),
(215, '12.66', '0203'),
(216, '12.64', '0203'),
(217, '12.63', '0203'),
(218, '12.62', '0203'),
(219, '12.61', '0203'),
(220, '12.59', '0203'),
(221, '12.55', '0203'),
(222, '12.54', '0203'),
(223, '12.53', '0203'),
(224, '12.52', '0203'),
(225, '12.51', '0203'),
(226, '12.44', '0203'),
(227, '12.43', '0203'),
(228, '12.42', '0203'),
(229, '12.41', '0203'),
(230, '12.40', '0203'),
(231, '12.39', '0203'),
(232, '12.35', '0203'),
(233, '12.34', '0203'),
(234, '12.33', '0203'),
(235, '12.32', '0203'),
(236, '12.31', '0203'),
(237, '12.29', '0203'),
(238, '12.22', '0203'),
(239, '12.21', '0203'),
(240, '12.14', '0203'),
(241, '12.13', '0203'),
(242, '12.12', '0203'),
(243, '12.11', '0203'),
(244, '12.02', '0203'),
(245, '12.01', '0203'),
(246, '12.00', '0203'),
(247, '11.99', '0203'),
(248, '11.92', '0203'),
(249, '11.79', '0203'),
(250, '11.76', '0203'),
(251, '11.75', '0203'),
(252, '11.74', '0203'),
(253, '11.73', '0203'),
(254, '11.72', '0203'),
(255, '11.71', '0203'),
(256, '11.69', '0203'),
(257, '11.64', '0203'),
(258, '11.63', '0203'),
(259, '11.62', '0203'),
(260, '11.61', '0203'),
(261, '11.60', '0203'),
(262, '11.59', '0203'),
(263, '11.1', '0203'),
(264, '11.51', '0203'),
(265, '11.52', '0203'),
(266, '11.53', '0203'),
(267, 'P39.1', '0204'),
(268, 'H45.8', '0204'),
(269, 'H16.0', '0204'),
(270, 'H44.0', '0204'),
(271, 'H44.1', '0204'),
(272, 'H45.1', '0204'),
(273, 'H58.0', '0205'),
(274, 'H57.9', '0205'),
(275, 'H57.0', '0205'),
(276, 'H55', '0205'),
(277, 'H53.4', '0205'),
(278, 'H53.2', '0205'),
(279, 'H51.8', '0205'),
(280, 'H50.8', '0205'),
(281, 'H49.9', '0205'),
(282, 'H49.8', '0205'),
(283, 'H49.4', '0205'),
(284, 'H49.3', '0205'),
(285, 'H49.2', '0205'),
(286, 'H49.1', '0205'),
(287, 'H49.0', '0205'),
(288, 'H48.1', '0205'),
(289, 'H48.0', '0205'),
(290, 'H47.3', '0205'),
(291, 'H47.2', '0205'),
(292, 'H47.0', '0205'),
(293, 'H46', '0205'),
(294, 'H34.9', '0205'),
(295, 'H34.8', '0205'),
(296, 'H34.2', '0205'),
(297, 'H34.1', '0205'),
(298, 'H34.0', '0205'),
(299, 'H02.5', '0205'),
(300, 'H02.4', '0205'),
(301, 'G45.3', '0205'),
(302, 'Z97.0', '0206'),
(303, 'Z96.1', '0206'),
(304, 'Z94.7', '0206'),
(305, 'T90.4', '0206'),
(306, 'T85.3', '0206'),
(307, 'T85.2', '0206'),
(308, 'T49.5', '0206'),
(309, 'T26.9', '0206'),
(310, 'T26.8', '0206'),
(311, 'T26.7', '0206'),
(312, 'T26.6', '0206'),
(313, 'T26.5', '0206'),
(314, 'T26.4', '0206'),
(315, 'T26.3', '0206'),
(316, 'T26.2', '0206'),
(317, 'T26.1', '0206'),
(318, 'T26.0', '0206'),
(319, 'T15.9', '0206'),
(320, 'T15.8', '0206'),
(321, 'T15.1', '0206'),
(322, 'T15.0', '0206'),
(323, 'S05.9', '0206'),
(324, 'S05.8', '0206'),
(325, 'S05.7', '0206'),
(326, 'S05.6', '0206'),
(327, 'S05.5', '0206'),
(328, 'S05.4', '0206'),
(329, 'S05.3', '0206'),
(330, 'S05.2', '0206'),
(331, 'S05.1', '0206'),
(332, 'S05.0', '0206'),
(333, 'S04.0', '0206'),
(334, 'S02.31', '0206'),
(335, 'S02.30', '0206'),
(336, 'S02.3', '0206'),
(337, 'S01.1', '0206'),
(338, 'S00.2', '0206'),
(339, 'S00.1', '0206'),
(340, 'Q15.9', '0206'),
(341, 'Q15.8', '0206'),
(342, 'Q15.0', '0206'),
(343, 'Q14.9', '0206'),
(344, 'Q14.8', '0206'),
(345, 'Q14.3', '0206'),
(346, 'Q14.2', '0206'),
(347, 'Q14.1', '0206'),
(348, 'Q14.0', '0206'),
(349, 'Q13.9', '0206'),
(350, 'Q13.8', '0206'),
(351, 'Q13.5', '0206'),
(352, 'Q13.4', '0206'),
(353, 'Q13.3', '0206'),
(354, 'Q13.2', '0206'),
(355, 'Q13.1', '0206'),
(356, 'Q13.0', '0206'),
(357, 'Q12.9', '0206'),
(358, 'Q12.8', '0206'),
(359, 'Q12.4', '0206'),
(360, 'Q12.3', '0206'),
(361, 'Q12.2', '0206'),
(362, 'Q12.1', '0206'),
(363, 'Q12.0', '0206'),
(364, 'Q11.3', '0206'),
(365, 'Q11.2', '0206'),
(366, 'Q11.1', '0206'),
(367, 'Q11.0', '0206'),
(368, 'Q10.7', '0206'),
(369, 'Q10.6', '0206'),
(370, 'Q10.5', '0206'),
(371, 'Q10.4', '0206'),
(372, 'Q10.3', '0206'),
(373, 'Q10.2', '0206'),
(374, 'Q10.1', '0206'),
(375, 'Q10.0', '0206'),
(376, 'P15.3', '0206'),
(377, 'H59.9', '0206'),
(378, 'H59.8', '0206'),
(379, 'H59.0', '0206'),
(380, 'H58.8', '0206'),
(381, 'H58.1', '0206'),
(382, 'H57.8', '0206'),
(383, 'H57.1', '0206'),
(384, 'H54.7', '0206'),
(385, 'H54.6', '0206'),
(386, 'H54.5', '0206'),
(387, 'H54.4', '0206'),
(388, 'H54.3', '0206'),
(389, 'H54.2', '0206'),
(390, 'H54.1', '0206'),
(391, 'H54.0', '0206'),
(392, 'H53.9', '0206'),
(393, 'H53.8', '0206'),
(394, 'H53.6', '0206'),
(395, 'H53.5', '0206'),
(396, 'H53.3', '0206'),
(397, 'H53.1', '0206'),
(398, 'H53.0', '0206'),
(399, 'H52.7', '0206'),
(400, 'H52.6', '0206'),
(401, 'H52.5', '0206'),
(402, 'H52.4', '0206'),
(403, 'H52.3', '0206'),
(404, 'H52.2', '0206'),
(405, 'H52.1', '0206'),
(406, 'H52.0', '0206'),
(407, 'H51.9', '0206'),
(408, 'H51.1', '0206'),
(409, 'H51.0', '0206'),
(410, 'H50.9', '0206'),
(411, 'H50.6', '0206'),
(412, 'H50.5', '0206'),
(413, 'H50.4', '0206'),
(414, 'H50.3', '0206'),
(415, 'H50.2', '0206'),
(416, 'H50.1', '0206'),
(417, 'H50.0', '0206'),
(418, 'H45.0', '0206'),
(419, 'H44.9', '0206'),
(420, 'H44.8', '0206'),
(421, 'H44.7', '0206'),
(422, 'H44.6', '0206'),
(423, 'H44.5', '0206'),
(424, 'H44.4', '0206'),
(425, 'H44.3', '0206'),
(426, 'H44.2', '0206'),
(427, 'H43.9', '0206'),
(428, 'H43.8', '0206'),
(429, 'H43.3', '0206'),
(430, 'H43.2', '0206'),
(431, 'H43.1', '0206'),
(432, 'H43.0', '0206'),
(433, 'H42.8', '0206'),
(434, 'H42.0', '0206'),
(435, 'H40.9', '0206'),
(436, 'H40.8', '0206'),
(437, 'H40.6', '0206'),
(438, 'H40.5', '0206'),
(439, 'H40.4', '0206'),
(440, 'H40.3', '0206'),
(441, 'H40.2', '0206'),
(442, 'H40.1', '0206'),
(443, 'H40.0', '0206'),
(444, 'H36.8', '0206'),
(445, 'H36.0', '0206'),
(446, 'H35.9', '0206'),
(447, 'H35.8', '0206'),
(448, 'H35.7', '0206'),
(449, 'H35.6', '0206'),
(450, 'H35.5', '0206'),
(451, 'H35.4', '0206'),
(452, 'H35.3', '0206'),
(453, 'H35.2', '0206'),
(454, 'H35.1', '0206'),
(455, 'H35.0', '0206'),
(456, 'H33.5', '0206'),
(457, 'H33.4', '0206'),
(458, 'H33.3', '0206'),
(459, 'H33.2', '0206'),
(460, 'H33.1', '0206'),
(461, 'H33.0', '0206'),
(462, 'H32.8', '0206'),
(463, 'H32.0', '0206'),
(464, 'H31.9', '0206'),
(465, 'H31.8', '0206'),
(466, 'H31.4', '0206'),
(467, 'H31.3', '0206'),
(468, 'H31.2', '0206'),
(469, 'H31.1', '0206'),
(470, 'H31.0', '0206'),
(471, 'H30.9', '0206'),
(472, 'H30.8', '0206'),
(473, 'H30.2', '0206'),
(474, 'H30.1', '0206'),
(475, 'H30.0', '0206'),
(476, 'H28.8', '0206'),
(477, 'H28.2', '0206'),
(478, 'H28.1', '0206'),
(479, 'H28.0', '0206'),
(480, 'H27.9', '0206'),
(481, 'H27.8', '0206'),
(482, 'H27.1', '0206'),
(483, 'H27.0', '0206'),
(484, 'H26.9', '0206'),
(485, 'H26.8', '0206'),
(486, 'H26.4', '0206'),
(487, 'H26.3', '0206'),
(488, 'H26.2', '0206'),
(489, 'H26.1', '0206'),
(490, 'H26.0', '0206'),
(491, 'H25.9', '0206'),
(492, 'H25.8', '0206'),
(493, 'H25.2', '0206'),
(494, 'H25.1', '0206'),
(495, 'H25.0', '0206'),
(496, 'H22.8', '0206'),
(497, 'H22.1', '0206'),
(498, 'H22.0', '0206'),
(499, 'H21.9', '0206'),
(500, 'H21.8', '0206'),
(501, 'H21.5', '0206'),
(502, 'H21.4', '0206'),
(503, 'H21.3', '0206'),
(504, 'H21.2', '0206'),
(505, 'H21.1', '0206'),
(506, 'H21.0', '0206'),
(507, 'H20.9', '0206'),
(508, 'H20.8', '0206'),
(509, 'H20.2', '0206'),
(510, 'H20.1', '0206'),
(511, 'H20.0', '0206'),
(512, 'H19.8', '0206'),
(513, 'H19.3', '0206'),
(514, 'H19.2', '0206'),
(515, 'H19.1', '0206'),
(516, 'H19.0', '0206'),
(517, 'H18.9', '0206'),
(518, 'H18.8', '0206'),
(519, 'H18.7', '0206'),
(520, 'H18.6', '0206'),
(521, 'H18.5', '0206'),
(522, 'H18.4', '0206'),
(523, 'H18.3', '0206'),
(524, 'H18.2', '0206'),
(525, 'H18.1', '0206'),
(526, 'H18.0', '0206'),
(527, 'H17.9', '0206'),
(528, 'H17.8', '0206'),
(529, 'H17.1', '0206'),
(530, 'H17.0', '0206'),
(531, 'H16.9', '0206'),
(532, 'H16.8', '0206'),
(533, 'H16.4', '0206'),
(534, 'H16.3', '0206'),
(535, 'H16.2', '0206'),
(536, 'H16.1', '0206'),
(537, 'H15.9', '0206'),
(538, 'H15.8', '0206'),
(539, 'H15.1', '0206'),
(540, 'H15.0', '0206'),
(541, 'H13.8', '0206'),
(542, 'H13.3', '0206'),
(543, 'H13.2', '0206'),
(544, 'H13.1', '0206'),
(545, 'H13.0', '0206'),
(546, 'H11.9', '0206'),
(547, 'H11.8', '0206'),
(548, 'H11.4', '0206'),
(549, 'H11.3', '0206'),
(550, 'H11.2', '0206'),
(551, 'H11.1', '0206'),
(552, 'H11.0', '0206'),
(553, 'H10.9', '0206'),
(554, 'H10.8', '0206'),
(555, 'H10.5', '0206'),
(556, 'H10.4', '0206'),
(557, 'H10.3', '0206'),
(558, 'H10.2', '0206'),
(559, 'H10.1', '0206'),
(560, 'H10.0', '0206'),
(561, 'H06.3', '0206'),
(562, 'H06.2', '0206'),
(563, 'H06.1', '0206'),
(564, 'H06.0', '0206'),
(565, 'H05.9', '0206'),
(566, 'H05.8', '0206'),
(567, 'H05.5', '0206'),
(568, 'H05.4', '0206'),
(569, 'H05.3', '0206'),
(570, 'H05.2', '0206'),
(571, 'H05.1', '0206'),
(572, 'H05.0', '0206'),
(573, 'H04.9', '0206'),
(574, 'H04.8', '0206'),
(575, 'H04.6', '0206'),
(576, 'H04.5', '0206'),
(577, 'H04.4', '0206'),
(578, 'H04.3', '0206'),
(579, 'H04.2', '0206'),
(580, 'H04.1', '0206'),
(581, 'H04.0', '0206'),
(582, 'H03.8', '0206'),
(583, 'H03.1', '0206'),
(584, 'H03.0', '0206'),
(585, 'H02.9', '0206'),
(586, 'H02.8', '0206'),
(587, 'H02.7', '0206'),
(588, 'H02.3', '0206'),
(589, 'H02.2', '0206'),
(590, 'H02.1', '0206'),
(591, 'H02.0', '0206'),
(592, 'H01.9', '0206'),
(593, 'H01.8', '0206'),
(594, 'H01.1', '0206'),
(595, 'H01.0', '0206'),
(596, 'H00.1', '0206'),
(597, 'H00.0', '0206'),
(598, 'G24.5', '0206'),
(599, 'E50.7', '0206'),
(600, 'E50.6', '0206'),
(601, 'E50.5', '0206'),
(602, 'E50.4', '0206'),
(603, 'E50.3', '0206'),
(604, 'E50.2', '0206'),
(605, 'E50.1', '0206'),
(606, 'E50.0', '0206'),
(607, 'E14.3', '0206'),
(608, 'E13.3', '0206'),
(609, 'E12.3', '0206'),
(610, 'E11.3', '0206'),
(611, 'E10.3', '0206'),
(612, 'D31.9', '0206'),
(613, 'D31.6', '0206'),
(614, 'D31.5', '0206'),
(615, 'D31.4', '0206'),
(616, 'D31.3', '0206'),
(617, 'D31.2', '0206'),
(618, 'D31.1', '0206'),
(619, 'D31.0', '0206'),
(620, 'D23.1', '0206'),
(621, 'D22.1', '0206'),
(622, 'D09.2', '0206'),
(623, 'D04.1', '0206'),
(624, 'D03.1', '0206'),
(625, 'C69.9', '0206'),
(626, 'C69.8', '0206'),
(627, 'C69.6', '0206'),
(628, 'C69.5', '0206'),
(629, 'C69.4', '0206'),
(630, 'C69.3', '0206'),
(631, 'C69.2', '0206'),
(632, 'C69.1', '0206'),
(633, 'C69.0', '0206'),
(634, 'C44.1', '0206'),
(635, 'C43.1', '0206'),
(636, 'B94.0', '0206'),
(637, 'B58.0', '0206'),
(638, 'B30.9', '0206'),
(639, 'B30.8', '0206'),
(640, 'B30.3', '0206'),
(641, 'B30.2', '0206'),
(642, 'B30.1', '0206'),
(643, 'B30.0', '0206'),
(644, 'B02.3', '0206'),
(645, 'B00.5', '0206'),
(646, 'A74.0', '0206'),
(647, 'A71.9', '0206'),
(648, 'A71.1', '0206'),
(649, 'A71.0', '0206'),
(650, 'A54.3', '0206'),
(651, 'A18.5', '0206'),
(652, 'H54.9', '0206'),
(653, '08.11', '0202'),
(654, '10.21', '0202'),
(655, '12.65', '0203'),
(656, '13.90', '0203'),
(657, '13.91', '0203'),
(658, '16.22', '0203'),
(659, '16.91', '0203'),
(660, '95.04', '0202');

-- --------------------------------------------------------

--
-- Table structure for table `mdc`
--

CREATE TABLE `mdc` (
  `mdc_code` varchar(10) NOT NULL,
  `mdc_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdc`
--

INSERT INTO `mdc` (`mdc_code`, `mdc_name`) VALUES
('01', 'DISEASES & DISORDERS OF THE NERVOUS SYSTEM'),
('02', 'DISEASES & DISORDERS OF THE EYE'),
('03', 'DISEASES & DISORDERS OF THE EAR, NOSE, MOUTH & THROAT'),
('04', 'DISEASES & DISORDERS OF THE RESPIRATORY SYSTEM'),
('05', 'DISEASES & DISORDERS OF THE CIRCULATORY SYSTEM'),
('06', 'DISEASES & DISORDERS OF THE DIGESTIVE SYSTEM'),
('07', 'DISEASES & DISORDERS OF THE HEPATOBILIARY SYSTEM & PANCREAS'),
('08', 'DISEASES & DISORDERS OF THE MUSCULOSKELETAL SYSTEM & CONN TISSUE'),
('09', 'DISEASES & DISORDERS OF THE SKIN, SUBCUTANEOUS TISSUE & BREAST'),
('10', 'ENDOCRINE, NUTRITIONAL & METABOLIC DISEASES & DISORDERS'),
('11', 'DISEASES & DISORDERS OF THE KIDNEY & URINARY TRACT'),
('12', 'DISEASES & DISORDERS OF THE MALE REPRODUCTIVE SYSTEM'),
('13', 'DISEASES & DISORDERS OF THE FEMALE REPRODUCTIVE SYSTEM'),
('14', 'PREGNANCY, CHILDBIRTH & THE PUERPERIUM'),
('15', 'NEWBORNS & OTHER NEONATES WITH CONDITION ORIGINATING IN PERINATAL PERIOD'),
('16', 'DISEASES & DISORDERS OF BLOOD, BLOOD FORMING ORGANS, IMMUNOLOGICAL DISORDERS'),
('17', 'MYELOPROLIFERATIVE DISEASES & DISORDERS, POORLY DIFFERENTIATED NEOPLASM'),
('18', 'INFECTIOUS & PARASITIC DISEASES, SYSTEMIC OR UNSPECIFIED SITES'),
('19', 'MENTAL DISEASES & DISORDERS'),
('20', 'ALCOHOL/DRUG USE & ALCOHOL/DRUG INDUCED ORGANIC MENTAL DISORDERS'),
('21', 'INJURIES, POISONINGS & TOXIC EFFECTS OF DRUGS'),
('22', 'BURNS'),
('23', 'FACTORS INFLUENCING HEALTH STATUS & OTHER CONTACTS WITH HEALTH SERVICES'),
('25', 'OUTPATIENT'),
('24', 'HUMAN IMMUNODEFICIENCY VIRUS INFECTIONS'),
('X', 'UNGROUPABLE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drg`
--
ALTER TABLE `drg`
  ADD PRIMARY KEY (`drg_code`);

--
-- Indexes for table `drg_bases`
--
ALTER TABLE `drg_bases`
  ADD PRIMARY KEY (`base_code`),
  ADD KEY `base_code` (`base_code`);

--
-- Indexes for table `drg_cast`
--
ALTER TABLE `drg_cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD KEY `cast_code` (`cast_code`);

--
-- Indexes for table `mdc`
--
ALTER TABLE `mdc`
  ADD PRIMARY KEY (`mdc_code`),
  ADD KEY `mdc_code` (`mdc_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drg_cast`
--
ALTER TABLE `drg_cast`
  MODIFY `cast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
