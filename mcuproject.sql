-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 10:15 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcuproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_center_allotment_info`
--

CREATE TABLE `exam_center_allotment_info` (
  `center_no` int(6) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `subject_num_code` int(6) NOT NULL,
  `total_student_alloted` int(4) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_shift` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_center_info`
--

CREATE TABLE `exam_center_info` (
  `center_no` int(6) NOT NULL,
  `center_name` varchar(100) NOT NULL,
  `suptretendent_name` varchar(100) NOT NULL,
  `center_address` varchar(100) NOT NULL,
  `center_city` varchar(50) NOT NULL,
  `center_state` varchar(50) NOT NULL,
  `center_pincode` varchar(6) NOT NULL,
  `center_contact` varchar(12) NOT NULL,
  `center_alternative_contact` varchar(12) NOT NULL,
  `center_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `institute_info`
--

CREATE TABLE `institute_info` (
  `institute_code` varchar(10) NOT NULL,
  `institute_name` varchar(255) NOT NULL,
  `institute_address` varchar(100) NOT NULL,
  `institute_city` varchar(50) NOT NULL,
  `institute_state` varchar(50) NOT NULL,
  `institute_pincode` varchar(6) NOT NULL,
  `institute_contact` varchar(12) NOT NULL,
  `institute_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute_info`
--

INSERT INTO `institute_info` (`institute_code`, `institute_name`, `institute_address`, `institute_city`, `institute_state`, `institute_pincode`, `institute_contact`, `institute_mail`) VALUES
('mcrpv', 'makhanlal chaturvedi national university of journalism and mass communication', 'mp nagar zone1', 'bhopal', 'madhya pradesh', '462021', '1234556775', 'mcu1123@gmmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` varchar(45) NOT NULL,
  `subject_num_code` int(11) DEFAULT NULL,
  `subject_name` varchar(45) NOT NULL,
  `semester` int(2) NOT NULL,
  `session_academic` year(4) DEFAULT NULL,
  `preference_id1` int(6) NOT NULL,
  `preference_id2` int(6) NOT NULL,
  `preference_id3` int(6) NOT NULL,
  `session_exam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panel_info`
--

INSERT INTO `panel_info` (`panel_id`, `subject_num_code`, `subject_name`, `semester`, `session_academic`, `preference_id1`, `preference_id2`, `preference_id3`, `session_exam`) VALUES
('mca1stsem', 100011, 'rust', 1, 2020, 5, 1, 16, 'july');

-- --------------------------------------------------------

--
-- Table structure for table `papersetter_appointment_info`
--

CREATE TABLE `papersetter_appointment_info` (
  `ps_id` int(6) NOT NULL,
  `subject_num_code` int(11) NOT NULL,
  `subject_code` varchar(10) DEFAULT NULL,
  `session_academic` year(4) NOT NULL,
  `session_exam` varchar(8) NOT NULL,
  `letter_no` varchar(50) NOT NULL,
  `letter_issue_date` date NOT NULL,
  `letter_last_date` date NOT NULL,
  `letter_response` tinyint(1) NOT NULL,
  `letter_response_date` date NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `program_level` varchar(8) NOT NULL,
  `mode` varchar(8) NOT NULL,
  `paper_set_alloted` int(1) NOT NULL,
  `paper_set_used` int(1) NOT NULL,
  `paper_set_unused` int(1) NOT NULL,
  `translation_done` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `papersetter_appointment_info`
--

INSERT INTO `papersetter_appointment_info` (`ps_id`, `subject_num_code`, `subject_code`, `session_academic`, `session_exam`, `letter_no`, `letter_issue_date`, `letter_last_date`, `letter_response`, `letter_response_date`, `program_code`, `program_level`, `mode`, `paper_set_alloted`, `paper_set_used`, `paper_set_unused`, `translation_done`) VALUES
(5, 100011, '2mca1', 2020, 'july', '12344fkkdfgkdkhdkfgkdfgkdfkg', '2020-09-02', '2020-09-30', 0, '0000-00-00', 'bca', 'ug', 'regular', 3, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `papersetter_bank_info`
--

CREATE TABLE `papersetter_bank_info` (
  `ps_id` int(6) NOT NULL,
  `bank_id` int(6) NOT NULL,
  `account_id` varchar(16) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ifsc_code` varchar(15) NOT NULL,
  `bank_contact` varchar(11) NOT NULL,
  `bank_address` varchar(255) NOT NULL,
  `bank_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `papersetter_bank_info`
--

INSERT INTO `papersetter_bank_info` (`ps_id`, `bank_id`, `account_id`, `bank_name`, `ifsc_code`, `bank_contact`, `bank_address`, `bank_mail`) VALUES
(5, 1210102, '21110123432', 'fgdfgdf', 'hfghgfh', 'sdffg', 'sdgdfgfd', 'dfggfggfhgfhg');

-- --------------------------------------------------------

--
-- Table structure for table `papersetter_info`
--

CREATE TABLE `papersetter_info` (
  `ps_id` int(11) NOT NULL,
  `ps_name` varchar(50) NOT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `affiliated_institute_code` varchar(10) NOT NULL,
  `subject_expertise` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `residential_address` varchar(255) NOT NULL,
  `residential_contact` varchar(12) NOT NULL,
  `ps_email` varchar(50) NOT NULL,
  `ps_contact` varchar(10) NOT NULL,
  `pan_no` varchar(10) NOT NULL,
  `ps_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `papersetter_info`
--

INSERT INTO `papersetter_info` (`ps_id`, `ps_name`, `designation`, `affiliated_institute_code`, `subject_expertise`, `department`, `residential_address`, `residential_contact`, `ps_email`, `ps_contact`, `pan_no`, `ps_status`) VALUES
(1, 'kavita sharma', 'guest lecturer', '3rgpv', 'java', 'computer', 'b12 abc nagar bhopal mp', '07556745455', 'abcd@gmail.com', '9090909067', 'bqxpv08989', 1),
(5, 'rajat', 'm', 'fdf', 'dsfks', 'dfkgkf', 'fkgdfkgdfkg', 'dfkgfkg', 'fffdfd', 'fkhdkgdkfg', 'kgkdfgkdff', 1),
(16, 'rajat sharma', 'reporter', 'aisec', 'media', 'memordian', 'fgkfdk dkfkdfk', '123456785', 'a@gmail.com', '7917917910', 'bqx0p0984r', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paper_print_order_info`
--

CREATE TABLE `paper_print_order_info` (
  `center_no` int(6) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `subject_num_code` int(6) NOT NULL,
  `paper_pack_50` int(2) NOT NULL,
  `paper_pack_25` int(2) NOT NULL,
  `paper_pack_10` int(2) NOT NULL,
  `total_envelop` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `ps_id` int(6) NOT NULL,
  `subject_num_code` int(6) NOT NULL,
  `subject_code` varchar(10) DEFAULT NULL,
  `session_exam` varchar(8) NOT NULL,
  `program_level` varchar(8) NOT NULL,
  `honorarium_rate` int(5) NOT NULL,
  `paper_set_prepared` int(1) NOT NULL,
  `translation_amount` int(5) NOT NULL,
  `postal_charges` int(5) NOT NULL,
  `total_amount` int(5) NOT NULL,
  `deduction_amount` int(5) NOT NULL,
  `net_amount` int(5) NOT NULL,
  `date_of_payment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`ps_id`, `subject_num_code`, `subject_code`, `session_exam`, `program_level`, `honorarium_rate`, `paper_set_prepared`, `translation_amount`, `postal_charges`, `total_amount`, `deduction_amount`, `net_amount`, `date_of_payment`) VALUES
(5, 100011, '2mca1', 'july', 'PG', 1200, 1, 1000, 300, 120120, 1200, 2302, '2020-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `program_info`
--

CREATE TABLE `program_info` (
  `program_code` varchar(10) NOT NULL,
  `program_name` varchar(45) NOT NULL,
  `semester` int(2) NOT NULL,
  `session_academic` year(4) NOT NULL,
  `program_level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_info`
--

INSERT INTO `program_info` (`program_code`, `program_name`, `semester`, `session_academic`, `program_level`) VALUES
('bca', 'bachelor of computer application', 1, 2020, 'UG'),
('bca', 'bachelor of computer application', 2, 2020, 'UG'),
('mca', 'master of computer application', 1, 2019, 'PG'),
('mca', 'master of computer application', 1, 2020, 'pg'),
('mca', 'master of computer application', 2, 2020, 'pg'),
('mca', 'master of computer application', 3, 2020, 'pg'),
('mca', 'master of computer application', 4, 2020, 'pg'),
('mca', 'master of computer application', 5, 2020, 'pg'),
('mca', 'master of computer application', 6, 2020, 'pg'),
('msc', 'master of science computer', 1, 2020, 'pg');

-- --------------------------------------------------------

--
-- Table structure for table `subject_info`
--

CREATE TABLE `subject_info` (
  `subject_code` varchar(10) NOT NULL,
  `subject_numeric_code` int(6) NOT NULL,
  `subject_name` varchar(45) NOT NULL,
  `program_code` varchar(10) DEFAULT NULL,
  `semester` int(2) NOT NULL,
  `session_academic` year(4) NOT NULL,
  `scheme_l` int(2) NOT NULL,
  `scheme_t` int(2) NOT NULL,
  `scheme_p` int(2) NOT NULL,
  `scheme_c` int(2) NOT NULL,
  `marking_scheme_l` int(2) NOT NULL,
  `marking_scheme_p` int(2) NOT NULL,
  `marking_scheme_i` int(2) NOT NULL,
  `min_marks` int(2) NOT NULL,
  `total_marks` int(3) NOT NULL,
  `mode` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_info`
--

INSERT INTO `subject_info` (`subject_code`, `subject_numeric_code`, `subject_name`, `program_code`, `semester`, `session_academic`, `scheme_l`, `scheme_t`, `scheme_p`, `scheme_c`, `marking_scheme_l`, `marking_scheme_p`, `marking_scheme_i`, `min_marks`, `total_marks`, `mode`) VALUES
('1bca1', 100011, 'c programming', 'bca', 1, 2020, 10, 10, 10, 30, 70, 20, 10, 33, 100, 'regular'),
('2bca2', 212343, 'digital electronics', 'bca', 2, 2020, 10, 8, 7, 25, 70, 20, 10, 33, 100, 'regular'),
('2mca2', 232322, 'python', 'mca', 2, 2020, 4, 5, 8, 34, 20, 10, 70, 33, 100, 'regullar'),
('2mca1', 232323, 'java', 'mca', 2, 2020, 4, 5, 8, 34, 20, 10, 70, 33, 100, 'regullar'),
('1msc1', 300001, 'r programming', 'msc', 1, 2020, 10, 10, 10, 30, 70, 20, 10, 33, 100, 'regular'),
('1msc2', 301100, 'machine learning', 'msc', 1, 2020, 12, 12, 3, 25, 70, 15, 15, 33, 100, 'regular');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_info`
--

CREATE TABLE `time_table_info` (
  `program_code` varchar(10) NOT NULL,
  `program_name` varchar(45) NOT NULL,
  `semester` int(2) NOT NULL,
  `session_academic` year(4) NOT NULL,
  `session_exam` varchar(8) NOT NULL,
  `subject_num_code` int(6) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `program_level` varchar(8) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_shift` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `userID` int(6) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `level` int(1) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`userID`, `username`, `level`, `password`) VALUES
(305551, 'raj', 3, '12345'),
(305552, 'saad', 0, '12345'),
(305553, 'pratek', 1, '12345'),
(305556, 'ankur', 2, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_center_allotment_info`
--
ALTER TABLE `exam_center_allotment_info`
  ADD KEY `fk_data_from_time_table` (`program_code`),
  ADD KEY `fk_data_from_exam_center` (`center_no`);

--
-- Indexes for table `exam_center_info`
--
ALTER TABLE `exam_center_info`
  ADD PRIMARY KEY (`center_no`);

--
-- Indexes for table `institute_info`
--
ALTER TABLE `institute_info`
  ADD PRIMARY KEY (`institute_code`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`),
  ADD KEY `fk_subject_num_code` (`subject_num_code`),
  ADD KEY `fk_preference_id1` (`preference_id1`),
  ADD KEY `fk_preference_id2` (`preference_id2`),
  ADD KEY `fk_preference_id3` (`preference_id3`);

--
-- Indexes for table `papersetter_appointment_info`
--
ALTER TABLE `papersetter_appointment_info`
  ADD PRIMARY KEY (`ps_id`,`subject_num_code`),
  ADD KEY `fk_programtable` (`program_code`);

--
-- Indexes for table `papersetter_bank_info`
--
ALTER TABLE `papersetter_bank_info`
  ADD KEY `fk_psid` (`ps_id`);

--
-- Indexes for table `papersetter_info`
--
ALTER TABLE `papersetter_info`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `paper_print_order_info`
--
ALTER TABLE `paper_print_order_info`
  ADD KEY `fk_data_from_center_allotment` (`center_no`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD KEY `fk_paymentOfpsid` (`ps_id`);

--
-- Indexes for table `program_info`
--
ALTER TABLE `program_info`
  ADD PRIMARY KEY (`program_code`,`semester`,`session_academic`);

--
-- Indexes for table `subject_info`
--
ALTER TABLE `subject_info`
  ADD PRIMARY KEY (`subject_numeric_code`,`subject_code`),
  ADD KEY `subject_fk` (`program_code`);

--
-- Indexes for table `time_table_info`
--
ALTER TABLE `time_table_info`
  ADD PRIMARY KEY (`program_code`,`semester`,`subject_code`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `papersetter_info`
--
ALTER TABLE `papersetter_info`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `userID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305569;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam_center_allotment_info`
--
ALTER TABLE `exam_center_allotment_info`
  ADD CONSTRAINT `fk_data_from_exam_center` FOREIGN KEY (`center_no`) REFERENCES `exam_center_info` (`center_no`),
  ADD CONSTRAINT `fk_data_from_time_table` FOREIGN KEY (`program_code`) REFERENCES `time_table_info` (`program_code`);

--
-- Constraints for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD CONSTRAINT `fk_preference_id1` FOREIGN KEY (`preference_id1`) REFERENCES `papersetter_info` (`ps_id`),
  ADD CONSTRAINT `fk_preference_id2` FOREIGN KEY (`preference_id2`) REFERENCES `papersetter_info` (`ps_id`),
  ADD CONSTRAINT `fk_preference_id3` FOREIGN KEY (`preference_id3`) REFERENCES `papersetter_info` (`ps_id`),
  ADD CONSTRAINT `fk_subject_num_code` FOREIGN KEY (`subject_num_code`) REFERENCES `subject_info` (`subject_numeric_code`);

--
-- Constraints for table `papersetter_appointment_info`
--
ALTER TABLE `papersetter_appointment_info`
  ADD CONSTRAINT `fk_programtable` FOREIGN KEY (`program_code`) REFERENCES `program_info` (`program_code`);

--
-- Constraints for table `papersetter_bank_info`
--
ALTER TABLE `papersetter_bank_info`
  ADD CONSTRAINT `fk_psid` FOREIGN KEY (`ps_id`) REFERENCES `papersetter_info` (`ps_id`);

--
-- Constraints for table `paper_print_order_info`
--
ALTER TABLE `paper_print_order_info`
  ADD CONSTRAINT `fk_data_from_center_allotment` FOREIGN KEY (`center_no`) REFERENCES `exam_center_allotment_info` (`center_no`);

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `fk_paymentOfpsid` FOREIGN KEY (`ps_id`) REFERENCES `papersetter_appointment_info` (`ps_id`);

--
-- Constraints for table `subject_info`
--
ALTER TABLE `subject_info`
  ADD CONSTRAINT `subject_fk` FOREIGN KEY (`program_code`) REFERENCES `program_info` (`program_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
