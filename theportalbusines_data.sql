-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2023 at 02:29 PM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theportalbusines_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'Admin', '148fb40543a89effd2b57874439155787d1a2ef9301fb36a5c0f197a44207ff9c7f8202d1552f3f56b3f26f0a522488be26c8f64b56ce33b16cc8f80119c7eaag8ONldMRzNlkqLepmgjZpmNI/NNDH2dXI/IhewqQzVs=', 'admin@gmail.com'),
(7, 'Booking', 'c7efb67fc397e2e5280428f7b412ba8a9d59f2e3be844e9caf269a729d7540014c8dd5cf1d46fa43356550f6c561ec46d7fce3fd15ac508ae64dd3ab9d8ce88aeybNOw126cIs5QX4JijdndQ+IuPLWZ8jgHOJqQ5ZPyQ=', 'booking@gmail.com'),
(8, 'CC_1', 'f58d6a378d61295bcb4fa84e9454a1b0cf9ade17d44d8ebcd45bfb8ad1cd23a76bc6e6430d228a282e8fc37bbe20f38a67259bff2873c0690f6c78fb7032f95fM+jyxjEdM4NNKV8Jw2RV+kL2ikPVV3J1elzh2v8CR9o=', 'cc1@gmail.com'),
(9, 'cc2', '78ee92fc7295ad24b5c08fb00d5a810f3bb6e19a371f80addcfa82e5d5f8e9447080d5b4330e51aa4fa15aaba8e73b3791ab070c0123a2560e1218cc5151ec64zW6B5ZbT1czh3yngnvnfHeL/avYWy43dQ7uIXvAT6ZM=', 'cc2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`) VALUES
(1, 'Dashboard', 'Dashboard'),
(2, 'New Resume', 'New Resume'),
(3, 'Register', 'Register'),
(7, 'Franchise', 'Franchise'),
(8, 'Caller', 'Caller'),
(9, 'caller  Report', 'caller  Report'),
(10, 'Plan', 'Plan'),
(11, 'Sign Agreement', 'Sign Agreement'),
(12, 'Activate', 'Activate'),
(13, 'Activate list', 'Activate list'),
(14, 'Help Reuqest', 'Help Reuqest'),
(15, 'Date Extend', 'Date Extend'),
(16, 'Qc', 'Qc'),
(17, 'Reminder mail', 'Reminder mail'),
(18, 'Noc', 'Noc'),
(19, 'Not submitted list', 'Not submitted list'),
(20, 'Submission Fail list', 'Submission Fail list'),
(21, 'Submission pass', 'Submission pass'),
(22, ' Customer action ', ' Customer action '),
(23, 'Work space', 'Work space'),
(24, 'Master setting', 'Master setting'),
(25, 'Change Password', 'Change Password'),
(26, 'search', 'search'),
(27, 'Role Manage', 'Role Manage');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `add_per` tinyint(4) NOT NULL,
  `edit_per` tinyint(4) NOT NULL,
  `remove_per` tinyint(4) NOT NULL,
  `view_per` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `add_per`, `edit_per`, `remove_per`, `view_per`) VALUES
(1, 0, 1, 0, 0, 1),
(1, 1, 1, 1, 1, 1),
(1, 4, 1, 1, 1, 1),
(1, 5, 1, 1, 1, 1),
(1, 6, 1, 1, 1, 1),
(1, 7, 1, 1, 0, 1),
(1, 8, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0),
(2, 1, 1, 1, 1, 1),
(2, 4, 1, 1, 1, 1),
(2, 5, 0, 0, 0, 0),
(2, 6, 0, 0, 0, 0),
(2, 7, 0, 0, 0, 0),
(2, 8, 0, 0, 0, 0),
(3, 0, 1, 1, 1, 1),
(3, 1, 1, 1, 1, 1),
(3, 4, 1, 1, 1, 1),
(3, 5, 1, 1, 1, 1),
(3, 6, 1, 1, 0, 1),
(3, 7, 1, 1, 1, 1),
(3, 8, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0),
(4, 1, 1, 1, 1, 1),
(4, 4, 1, 1, 1, 1),
(4, 5, 0, 0, 0, 0),
(4, 6, 0, 0, 0, 0),
(4, 7, 0, 0, 0, 0),
(4, 8, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0),
(5, 1, 1, 1, 1, 1),
(5, 4, 1, 1, 1, 1),
(5, 5, 0, 0, 0, 0),
(5, 6, 0, 0, 0, 0),
(5, 7, 0, 0, 0, 0),
(5, 8, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0),
(6, 1, 1, 1, 1, 1),
(6, 4, 1, 1, 1, 1),
(6, 5, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0),
(6, 7, 0, 0, 0, 0),
(6, 8, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0),
(7, 1, 1, 1, 1, 1),
(7, 4, 1, 1, 1, 1),
(7, 5, 0, 0, 0, 0),
(7, 6, 0, 0, 0, 0),
(7, 7, 0, 0, 0, 0),
(7, 8, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0),
(8, 1, 1, 1, 1, 1),
(8, 4, 1, 1, 1, 1),
(8, 5, 0, 0, 0, 0),
(8, 6, 0, 0, 0, 0),
(8, 7, 0, 0, 0, 0),
(8, 8, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0),
(9, 1, 1, 1, 1, 1),
(9, 4, 1, 1, 1, 1),
(9, 5, 0, 0, 0, 0),
(9, 6, 0, 0, 0, 0),
(9, 7, 0, 0, 0, 0),
(9, 8, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0),
(10, 1, 1, 1, 1, 1),
(10, 4, 1, 1, 1, 1),
(10, 5, 0, 0, 0, 0),
(10, 6, 0, 0, 0, 0),
(10, 7, 0, 0, 0, 0),
(10, 8, 0, 0, 0, 0),
(11, 0, 1, 1, 0, 1),
(11, 1, 1, 1, 1, 1),
(11, 4, 1, 1, 1, 1),
(11, 5, 0, 0, 0, 1),
(11, 6, 1, 1, 1, 1),
(11, 7, 1, 1, 0, 1),
(11, 8, 0, 0, 0, 0),
(12, 0, 1, 1, 1, 1),
(12, 1, 1, 1, 1, 1),
(12, 4, 1, 1, 1, 1),
(12, 5, 0, 0, 0, 0),
(12, 6, 1, 1, 1, 1),
(12, 7, 1, 1, 0, 1),
(12, 8, 0, 0, 0, 0),
(13, 0, 1, 1, 0, 1),
(13, 1, 1, 1, 1, 1),
(13, 5, 0, 0, 0, 0),
(13, 6, 1, 1, 1, 1),
(13, 7, 1, 1, 0, 1),
(13, 8, 1, 1, 0, 1),
(14, 0, 0, 0, 0, 0),
(14, 1, 1, 1, 1, 1),
(14, 5, 0, 0, 0, 0),
(14, 6, 0, 0, 0, 0),
(14, 7, 1, 1, 0, 1),
(14, 8, 0, 0, 0, 0),
(15, 0, 1, 1, 1, 1),
(15, 1, 1, 1, 1, 1),
(15, 5, 0, 0, 0, 0),
(15, 6, 0, 0, 0, 0),
(15, 7, 0, 0, 0, 0),
(15, 8, 0, 0, 0, 0),
(16, 0, 0, 0, 0, 0),
(16, 1, 1, 1, 1, 1),
(16, 5, 0, 0, 0, 0),
(16, 6, 1, 1, 1, 1),
(16, 7, 0, 0, 0, 0),
(16, 8, 0, 0, 0, 0),
(17, 0, 0, 0, 0, 0),
(17, 1, 1, 1, 1, 1),
(17, 5, 0, 0, 0, 0),
(17, 6, 0, 0, 0, 0),
(17, 7, 0, 0, 0, 0),
(17, 8, 0, 0, 0, 0),
(18, 0, 0, 0, 0, 0),
(18, 1, 1, 1, 1, 1),
(18, 5, 0, 0, 0, 0),
(18, 6, 0, 0, 0, 0),
(18, 7, 0, 0, 0, 0),
(18, 8, 0, 0, 0, 0),
(19, 0, 0, 0, 0, 0),
(19, 1, 1, 1, 1, 1),
(19, 5, 0, 0, 0, 0),
(19, 6, 0, 0, 0, 0),
(19, 7, 0, 0, 0, 0),
(19, 8, 0, 0, 0, 0),
(20, 0, 0, 0, 0, 0),
(20, 1, 1, 1, 1, 1),
(20, 5, 0, 0, 0, 0),
(20, 6, 0, 0, 0, 0),
(20, 7, 0, 0, 0, 0),
(20, 8, 0, 0, 0, 0),
(21, 0, 0, 0, 0, 0),
(21, 1, 1, 1, 1, 1),
(21, 5, 0, 0, 0, 0),
(21, 6, 0, 0, 0, 0),
(21, 7, 0, 0, 0, 0),
(21, 8, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 0),
(22, 1, 1, 1, 1, 1),
(22, 5, 0, 0, 0, 1),
(22, 6, 0, 0, 0, 0),
(22, 7, 1, 1, 1, 1),
(22, 8, 0, 0, 0, 0),
(23, 0, 1, 1, 0, 1),
(23, 1, 1, 1, 1, 1),
(23, 5, 0, 0, 0, 1),
(23, 6, 0, 0, 0, 0),
(23, 7, 1, 0, 0, 1),
(23, 8, 1, 1, 0, 1),
(24, 0, 0, 0, 0, 0),
(24, 1, 1, 1, 1, 1),
(24, 5, 0, 0, 0, 0),
(24, 6, 0, 0, 0, 0),
(24, 7, 0, 0, 0, 0),
(24, 8, 0, 0, 0, 0),
(25, 0, 0, 0, 0, 0),
(25, 1, 1, 1, 1, 1),
(25, 5, 0, 0, 0, 0),
(25, 6, 0, 0, 0, 0),
(25, 7, 0, 1, 0, 1),
(25, 8, 0, 0, 0, 0),
(26, 0, 1, 1, 0, 1),
(26, 1, 1, 1, 1, 1),
(26, 5, 0, 0, 0, 0),
(26, 6, 0, 0, 0, 0),
(26, 7, 0, 0, 0, 0),
(26, 8, 0, 0, 0, 0),
(27, 0, 0, 0, 0, 0),
(27, 1, 1, 1, 1, 1),
(27, 5, 0, 0, 0, 0),
(27, 6, 0, 0, 0, 0),
(27, 7, 0, 0, 0, 0),
(27, 8, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agreement`
--

CREATE TABLE `tbl_agreement` (
  `id` int(11) NOT NULL,
  `agreement` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agreement`
--

INSERT INTO `tbl_agreement` (`id`, `agreement`, `img`, `create_at`) VALUES
(1, 'agreement1', 'agreement1', '2022-01-18 19:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approve`
--

CREATE TABLE `tbl_approve` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(500) NOT NULL,
  `form_id` int(11) NOT NULL,
  `fid_status` enum('0','1') NOT NULL COMMENT 'approve=>1,dis=>0',
  `fid` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approve_result`
--

CREATE TABLE `tbl_approve_result` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(500) NOT NULL,
  `form_id` int(11) NOT NULL,
  `status` set('0','1') NOT NULL COMMENT '1=>all_approve,0=>disapprove'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_caller`
--

CREATE TABLE `tbl_caller` (
  `id` int(11) NOT NULL,
  `caller_name` varchar(100) NOT NULL,
  `franchise_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_caller`
--

INSERT INTO `tbl_caller` (`id`, `caller_name`, `franchise_id`, `create_at`) VALUES
(1, 'caller24-02-2022', 1, '2022-02-25 05:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_log`
--

CREATE TABLE `tbl_customer_log` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(500) NOT NULL,
  `module_type` varchar(200) NOT NULL,
  `activity_time` datetime NOT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_field`
--

CREATE TABLE `tbl_field` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_field`
--

INSERT INTO `tbl_field` (`id`, `name`) VALUES
(1, 'First name'),
(2, 'Middle Name'),
(3, 'Last Name'),
(4, 'DOB'),
(5, 'Gender'),
(6, 'Nationality'),
(7, 'Marital status'),
(8, 'passport'),
(9, 'Hobbies'),
(10, 'Language known'),
(11, 'Address'),
(12, 'Land Mark'),
(13, 'State'),
(14, 'City'),
(15, 'Pincode'),
(16, 'Mobile'),
(17, 'Email'),
(18, 'SSC Result'),
(19, 'SSC Passing year'),
(20, 'SSC Board/University'),
(21, 'HSC Result'),
(22, 'HSC Passing Year'),
(23, 'HSC Board/University'),
(24, 'Diploma Degree'),
(25, 'Diploma Result'),
(26, 'Diploma University'),
(27, 'Diploma Year'),
(28, 'Diploma Year'),
(29, 'Graduation Result'),
(30, 'Graduation University'),
(31, 'Graduation Year'),
(32, 'Post Graduation Degree'),
(33, 'Post Graduation Result'),
(34, 'Post Graduation University'),
(35, 'Post Graduation Year'),
(36, 'Highest Level Education'),
(37, 'Total Work Experience/Year'),
(38, 'Month'),
(39, 'Total Companies Worked For'),
(40, 'Last/Current Employer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form`
--

CREATE TABLE `tbl_form` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `customer_id` varchar(500) NOT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `mname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `notionality` varchar(100) DEFAULT NULL,
  `mari_status` varchar(100) DEFAULT NULL,
  `passport` varchar(50) DEFAULT NULL,
  `hobbies` varchar(100) DEFAULT NULL,
  `address` text,
  `land_mark` text,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` text,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ssc_result` varchar(50) DEFAULT NULL,
  `ssc_board_uni` varchar(100) DEFAULT NULL,
  `ssc_pass_year` varchar(50) DEFAULT NULL,
  `hsc_result` varchar(50) DEFAULT NULL,
  `hsc_pass_year` varchar(100) DEFAULT NULL,
  `hsc_uni` varchar(100) DEFAULT NULL,
  `dip_deg` varchar(100) DEFAULT NULL,
  `dip_res` varchar(100) DEFAULT NULL,
  `dip_uni` varchar(100) DEFAULT NULL,
  `dip_year` varchar(50) DEFAULT NULL,
  `gradu_deg` varchar(100) DEFAULT NULL,
  `gradu_res` varchar(100) DEFAULT NULL,
  `gradu_year` varchar(100) DEFAULT NULL,
  `gradu_uni` varchar(100) DEFAULT NULL,
  `post_grad_deg` varchar(100) DEFAULT NULL,
  `post_grad_res` varchar(100) DEFAULT NULL,
  `post_grad_uni` varchar(100) DEFAULT NULL,
  `post_grad_year` varchar(100) DEFAULT NULL,
  `high_lev_edu` varchar(100) DEFAULT NULL,
  `ttl_exp_year` varchar(100) DEFAULT NULL,
  `ttl_exp_mon` varchar(100) DEFAULT NULL,
  `company_work_for` varchar(100) DEFAULT NULL,
  `lang_known` varchar(100) NOT NULL,
  `last_curr_emp` varchar(100) NOT NULL,
  `status` enum('0','1','2') NOT NULL COMMENT '0=>not submit\r\n1=>submit\r\n2=>submit as query \r\n3=>update form',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `submit_at` timestamp NULL DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `is_qry` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchise`
--

CREATE TABLE `tbl_franchise` (
  `id` int(11) NOT NULL,
  `franchise_name` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_franchise`
--

INSERT INTO `tbl_franchise` (`id`, `franchise_name`, `create_at`) VALUES
(1, 'TEAM 1', '2022-02-25 10:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master`
--

CREATE TABLE `tbl_master` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `seal` varchar(200) NOT NULL,
  `care_no` varchar(200) NOT NULL,
  `care_no2` varchar(200) NOT NULL,
  `care_eml` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `company_sign` text NOT NULL,
  `agreement_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master`
--

INSERT INTO `tbl_master` (`id`, `name`, `address`, `state`, `seal`, `care_no`, `care_no2`, `care_eml`, `logo`, `company_sign`, `agreement_img`) VALUES
(1, 'The Portal Busines', 'Unit 76/9, Plot 68/69, Kattor Road, Pappanaicken Palayam, Coimbatore, Tamil Nadu, 641032', 'Tamil Nadu', 'uploads/pictures/67d0d29fe9e80cf9714f5ba628cf71ce.jpg', '9076074207', '9820697149', 'support@theportalbusines.com', 'uploads/pictures/7aa5b1c7cdce6277e2bc3ea784ca4ee0.jpg', 'uploads/pictures/b654e7b9d728b4f47f1d896b7b81a560.jpg', 'uploads/pictures/f1a62e40562feb1be4646776de0d4336.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_noc`
--

CREATE TABLE `tbl_noc` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `noc` varchar(200) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan`
--

CREATE TABLE `tbl_plan` (
  `id` int(11) NOT NULL,
  `plan_no` varchar(50) NOT NULL,
  `plan_name` varchar(10) NOT NULL,
  `days` varchar(50) NOT NULL,
  `forms` varchar(100) NOT NULL,
  `per_form` varchar(100) NOT NULL,
  `cutoff` varchar(100) NOT NULL,
  `fees` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cancel_charge` varchar(200) NOT NULL,
  `cancel_charge1` varchar(200) NOT NULL,
  `first_part` varchar(100) NOT NULL,
  `mul_login_chrg` varchar(100) NOT NULL,
  `not_submit_chrg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_plan`
--

INSERT INTO `tbl_plan` (`id`, `plan_no`, `plan_name`, `days`, `forms`, `per_form`, `cutoff`, `fees`, `create_at`, `cancel_charge`, `cancel_charge1`, `first_part`, `mul_login_chrg`, `not_submit_chrg`) VALUES
(4, '3838', 'RES500', '6', '500', '40', '90', '20000', '2023-02-13 05:24:40', '8750', '9920', '1000', '2520', '3999');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qry_field`
--

CREATE TABLE `tbl_qry_field` (
  `id` int(11) NOT NULL,
  `qry_id` int(11) NOT NULL,
  `customer_id` varchar(500) NOT NULL,
  `qry_field` int(11) NOT NULL,
  `value` varchar(300) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0=>pending 1=>approve',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_query`
--

CREATE TABLE `tbl_query` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(500) NOT NULL,
  `form_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0=>pending \r\n1=all req solved',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(100) NOT NULL DEFAULT 'NA',
  `decpassword` varchar(100) NOT NULL,
  `submission_status` enum('0','1','2','3','4') NOT NULL DEFAULT '0' COMMENT '0=>default,1=>faild,2=>notsubmit\r\n3=>pass,4=>user_submittask',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activate_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `cron_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `plan_id` int(11) NOT NULL,
  `franchise_id` int(11) NOT NULL,
  `caller_id` int(11) NOT NULL,
  `agreement_id` int(11) NOT NULL,
  `is_agreement` enum('0','1','2') NOT NULL COMMENT 'default=>0 user-submit=>1 activate-admin=>2',
  `signature` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `agreement_url` varchar(500) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `wallet` varchar(100) NOT NULL DEFAULT '0',
  `holder_name` varchar(200) DEFAULT NULL,
  `ac_no` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(200) DEFAULT NULL,
  `sign_agreement` varchar(100) NOT NULL DEFAULT '0',
  `reg_date` date NOT NULL,
  `sign_date` date DEFAULT NULL,
  `aadharcard` varchar(200) NOT NULL,
  `pancard` varchar(200) NOT NULL,
  `sign_ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resumedata`
--

CREATE TABLE `tbl_resumedata` (
  `id` int(11) NOT NULL,
  `mis` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `alternate_no` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `website_url` varchar(50) DEFAULT NULL,
  `address` text NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `sic_desc` varchar(50) DEFAULT NULL,
  `sic_code` varchar(50) DEFAULT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `company_sale` varchar(50) DEFAULT NULL,
  `revenue` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `medical_ins` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_resumedata`
--

INSERT INTO `tbl_resumedata` (`id`, `mis`, `first_name`, `last_name`, `contact_no`, `alternate_no`, `email`, `company_name`, `website_url`, `address`, `city`, `state`, `zip`, `sic_desc`, `sic_code`, `entity_type`, `company_sale`, `revenue`, `country`, `medical_ins`) VALUES
(1, 'Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(2, 'Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(3, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(4, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(5, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(6, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(7, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(8, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(9, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(10, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(11, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(12, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(13, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(14, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(15, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(16, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(17, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(18, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(19, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(20, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(21, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(22, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(23, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(24, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(25, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(26, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(27, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(28, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(29, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(30, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(31, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(32, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(33, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(34, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(35, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(36, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(37, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(38, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(39, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(40, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(41, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(42, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(43, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(44, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(45, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(46, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(47, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(48, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(49, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(50, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(51, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(52, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(53, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(54, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(55, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(56, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(57, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(58, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(59, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(60, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(61, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(62, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(63, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(64, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(65, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(66, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(67, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(68, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(69, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(70, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(71, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(72, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(73, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(74, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(75, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(76, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(77, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(78, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(79, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(80, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(81, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(82, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(83, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(84, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(85, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(86, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(87, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(88, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(89, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(90, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(91, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(92, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(93, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(94, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(95, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(96, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(97, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(98, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(99, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(100, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(101, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(102, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(103, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(104, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(105, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(106, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(107, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(108, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(109, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(110, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(111, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(112, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(113, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(114, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(115, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(116, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(117, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(118, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(119, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(120, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(121, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(122, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(123, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(124, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(125, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(126, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(127, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(128, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(129, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(130, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(131, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(132, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(133, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(134, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(135, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(136, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(137, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(138, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(139, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(140, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(141, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(142, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(143, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(144, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(145, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(146, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(147, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(148, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(149, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(150, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(151, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(152, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(153, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(154, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(155, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(156, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(157, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(158, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(159, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(160, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(161, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(162, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(163, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(164, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(165, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(166, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES ');
INSERT INTO `tbl_resumedata` (`id`, `mis`, `first_name`, `last_name`, `contact_no`, `alternate_no`, `email`, `company_name`, `website_url`, `address`, `city`, `state`, `zip`, `sic_desc`, `sic_code`, `entity_type`, `company_sale`, `revenue`, `country`, `medical_ins`) VALUES
(167, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(168, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(169, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(170, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(171, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(172, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(173, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(174, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(175, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(176, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(177, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(178, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(179, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(180, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(181, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(182, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(183, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(184, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(185, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(186, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(187, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(188, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(189, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(190, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(191, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(192, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(193, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(194, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(195, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(196, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(197, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(198, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(199, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(200, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(201, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(202, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(203, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(204, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(205, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(206, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(207, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(208, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(209, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(210, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(211, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(212, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(213, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(214, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(215, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(216, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(217, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(218, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(219, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(220, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(221, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(222, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(223, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(224, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(225, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(226, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(227, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(228, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(229, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(230, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(231, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(232, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(233, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(234, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(235, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(236, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(237, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(238, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(239, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(240, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(241, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(242, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(243, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(244, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(245, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(246, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(247, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(248, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(249, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(250, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(251, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(252, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(253, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(254, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(255, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(256, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(257, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(258, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(259, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(260, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(261, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(262, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(263, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(264, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(265, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(266, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(267, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(268, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(269, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(270, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(271, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(272, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(273, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(274, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(275, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(276, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(277, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(278, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(279, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(280, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(281, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(282, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(283, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(284, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(285, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(286, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(287, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(288, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(289, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(290, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(291, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(292, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(293, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(294, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(295, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(296, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(297, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(298, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(299, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(300, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(301, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(302, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(303, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(304, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(305, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(306, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(307, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(308, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(309, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(310, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(311, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(312, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(313, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(314, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(315, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(316, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(317, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(318, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(319, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(320, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(321, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(322, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(323, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(324, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(325, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(326, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(327, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(328, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(329, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(330, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(331, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(332, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES ');
INSERT INTO `tbl_resumedata` (`id`, `mis`, `first_name`, `last_name`, `contact_no`, `alternate_no`, `email`, `company_name`, `website_url`, `address`, `city`, `state`, `zip`, `sic_desc`, `sic_code`, `entity_type`, `company_sale`, `revenue`, `country`, `medical_ins`) VALUES
(333, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(334, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(335, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(336, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(337, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(338, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(339, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(340, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(341, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(342, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(343, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(344, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(345, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(346, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(347, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(348, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(349, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(350, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(351, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(352, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(353, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(354, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(355, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(356, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(357, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(358, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(359, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(360, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(361, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(362, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(363, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(364, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(365, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(366, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(367, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(368, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(369, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(370, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(371, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(372, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(373, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(374, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(375, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(376, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(377, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(378, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(379, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(380, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(381, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(382, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(383, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(384, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(385, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(386, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(387, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(388, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(389, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(390, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(391, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(392, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES '),
(393, 'Mr/Mrs/Miss', 'James', 'Butt', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Stanley Linda CPA', 'athertoncpas.com', '1140 Scenic Drive # 100 ', 'Modesto', 'CA', '95350', 'Accounting, Auditing, and Bookkeeping Services', '8721', 'Independent', '$25,000,000 to $74,999,999', '842,899.98', 'Stanislaus', 'YES '),
(394, 'Mr/Mrs/Miss', 'Josephine', 'Darakjy', '810-292-9388', '810-374-9840', 'josephine_darakjy@da', 'Interstate Mini Storage', 'elcentrointerstate.com', '1845 South 4th St', 'El Centro', 'CA', '92243', 'General Warehousing and Storage', '4225', 'Independent', 'Under $500,000', '89,300.00', 'Imperial', 'YES '),
(395, 'Mr/Mrs/Miss', 'Art', 'Venere', '856-636-8749', '856-264-4130', 'art@venere.org', 'Robert Grant Law Offices', 'robertgrantlaw.com', '688 North Arrowhead Avenue', 'San Bernardino', 'CA', '92401', 'Legal Services', '8111', 'Independent', 'Under $500,000', '88,600.00', 'San Bernardino', 'YES '),
(396, 'Mr/Mrs/Miss', 'Lenna', 'Paprocki', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.co', 'Mold Inspection in San Leandro', 'ghaspwaterdamagerestoration.com/mold-testing/ca/mo', '1401 E. Juana', 'San Leandro', 'CA', '94577', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '165,500', 'Alameda', 'YES '),
(397, 'Mr/Mrs/Miss', 'Donette', 'Foller', '513-570-1893', '513-549-4561', 'donette.foller@cox.n', 'Paul Brisson Attorney', 'paulbrisson.com', '427 Yale Avenue', 'Claremont', 'CA', '91711', 'Legal Services', 'NA', 'Parent', 'Under $500,000', '379,200.01', 'Los Angeles', 'YES '),
(398, 'Mr/Mrs/Miss', 'Simona', 'Morasca', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'American Environmental Testing', 'aetlab.com', '2834 North Naomi St', 'Burbank', 'CA', '91504', 'Testing Laboratories', '8734', 'Independent', '$1,000,000 to $4,999,999', '87,200.00', 'Los Angeles', 'YES '),
(399, 'Mr/Mrs/Miss', 'Mitsue', 'Tollner', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo', 'Bulltek Registration Service L', 'brsltd.org', '31977 Hilltop Boulevard # D', 'Running Springs', 'CA', '92382', 'Testing Laboratories', '8734', 'Independent', 'Under $500,000', '485,800', 'San Bernardino', 'YES '),
(400, 'Mr/Mrs/Miss', 'Leota', 'Dilliard', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Cox Rasmussen & CO Marketing', 'coxrasmussen.com', '2830 F St', 'Eureka', 'CA', '95501', 'Advertising Agencies', '7311', 'Branch', 'Under $500,000', '557,600.02', 'Humboldt', 'YES '),
(401, 'Mr/Mrs/Miss', 'Sage', 'Wieser', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Promo Line', 'promo-line.com', '5303 Betsy Ross Drive', 'Santa Clara', 'CA', '95054', 'Public Relations Services', '8743', 'Subsidiary', 'Unknown', '824,114.98', 'Santa Clara', 'YES '),
(402, 'Mr/Mrs/Miss', 'Kris', 'Marrier', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Perry Insurance & Financial', 'perryfn.com', '655 University Avenue', 'Sacramento', 'CA', '95825', 'Insurance Agents, Brokers, and Service', '6411', 'Independent', 'Under $500,000', '212,500.01', 'Sacramento', 'YES '),
(403, 'Mr/Mrs/Miss', 'Minna', 'Amigon', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.c', 'Irvine CO', 'irvinecompany.com', '14000 Jamboree Road', 'Irvine', 'CA', '92606', 'Employment Agencies', '7361', 'Independent', 'Unknown', '660,799.98', 'Orange', 'YES '),
(404, 'Mr/Mrs/Miss', 'Abel', 'Maclead', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Rain Chains World', 'rainchainsworld.com', '4570 Eucalyptus Avenue', 'Chino', 'CA', '91710', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '714,900.02', 'San Bernardino', 'YES '),
(405, 'Mr/Mrs/Miss', 'Kiley', 'Caldarera', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.', 'J Moore Partners LLC', 'jmoorepartners.com', '311 California St # 400', 'San Francisco', 'CA', '94104', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '561,100.01', 'San Francisco', 'YES '),
(406, 'Mr/Mrs/Miss', 'Graciela', 'Ruta', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Nextgen Advisors', 'resourcetrends.com', '3652 Viaduct Lujosa', 'Escondido', 'CA', '92025', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '177,000', 'San Diego', 'YES '),
(407, 'Mr/Mrs/Miss', 'Cammy', 'Albares', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Torvick Realty', 'torvickrealestate.com', '330 Pythian Road', 'Santa Rosa', 'CA', '95409', 'Real Estate Agents and Managers', '6531', 'Independent', 'Under $500,000', '102,800', 'Sonoma', 'YES '),
(408, 'Mr/Mrs/Miss', 'Mattie', 'Poquette', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Kotab Dominic M', 'zilkakotab.com', '100 West San Fernando St # 300', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Unknown', '237,100.01', 'Santa Clara', 'YES '),
(409, 'Mr/Mrs/Miss', 'Meaghan', 'Garufi', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Receivers Inc', 'receiversinc.com', '15700 Winchester Boulevard', 'Los Gatos', 'CA', '95030', 'Legal Services', '8111', 'Independent', 'Under $500,000', '317,900', 'Santa Clara', 'YES '),
(410, 'Mr/Mrs/Miss', 'Gladys', 'Rim', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'The Ziegel Group', 'ziegelgroup.com', '4500 Woodman Ave. Suite A', 'Sherman Oaks', 'CA', '91423', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '154,700', 'Los Angeles', 'YES '),
(411, 'Mr/Mrs/Miss', 'Yuki', 'Whobrey', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Clark Pest Control Of Stockton', 'clarkpest.com', '248 Rickenbacker Circle', 'Livermore', 'CA', '94551', 'Disinfecting and Pest Control Services', '7342', 'Independent', 'Under $500,000', '68,200', 'Alameda', 'YES '),
(412, 'Mr/Mrs/Miss', 'Fletcher', 'Flosi', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo', 'Shimokaji & Assoc Pc', 'shimokaji.com', '8911 Research Drive', 'Irvine', 'CA', '92618', 'Legal Services', '8111', 'Independent', 'Under $500,000', '1,011,400.00', 'Orange', 'YES '),
(413, 'Mr/Mrs/Miss', 'Bette', 'Nicka', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Community Housing Council', 'chcfresno.org', '4270 North Blackstone Avenue # 110', 'Fresno', 'CA', '93726', 'Business Consulting Services, NEC', '8748', 'Independent', 'Under $500,000', '68,000.00', 'Fresno', 'YES '),
(414, 'Mr/Mrs/Miss', 'Veronika', 'Inouye', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Kozak Richard MD', 'mission4health.com', '27700 Medical Center Road', 'Mission Viejo', 'CA', '92691', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '248,500', 'Orange', 'YES '),
(415, 'Mr/Mrs/Miss', 'Willard', 'Kolmetz', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Larry Levine & Assoc', 'levineandassociates.com', '13701 Riverside Drive # 604', 'Sherman Oaks', 'CA', '91423', 'Public Relations Services', '8743', 'Independent', 'Under $500,000', '191,300', 'Los Angeles', 'YES '),
(416, 'Mr/Mrs/Miss', 'Maryann', 'Royster', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Amn Healthcare Service Inc', 'amnhealthcare.com', '12400 High Bluff Drive # 100', 'San Diego', 'CA', '92130', 'Help Supply Services', '7363', 'Subsidiary', 'Under $500,000', '491,800.01', 'San Diego', 'YES '),
(417, 'Mr/Mrs/Miss', 'Alisha', 'Slusarski', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Tahajian Gerald Lee', 'gltlaw.com', '3419 West Shaw Avenue', 'Fresno', 'CA', '93711', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '930,000.01', 'Fresno', 'YES '),
(418, 'Mr/Mrs/Miss', 'Allene', 'Iturbide', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.', 'ADT Orange', 'adt.com', '1030 15th Street, Suite 100', 'Sacramento', 'CA', '95814', 'Business Consulting Services, NEC', 'NA', 'Independent', 'Under $500,000', '535,000.03', 'Sacramento', 'YES '),
(419, 'Mr/Mrs/Miss', 'Chanel', 'Caudy', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.o', 'Just My Weight', 'justmyweight.com', '701 First Ave.', 'Sunnyvale', 'CA', '94089', 'Business Services, NEC', 'NA', 'Independent', '$1,000,000 to $4,999,999', '67,200.00', 'Santa Clara', 'YES '),
(420, 'Mr/Mrs/Miss', 'Ezekiel', 'Chui', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Ethan Allen Interiors Inc', 'ethanallen.com', '925 Blcaom Hill Road # 1525', 'San Jose', 'CA', '95123', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '688,700.02', 'Santa Clara', 'YES '),
(421, 'Mr/Mrs/Miss', 'Willow', 'Kusko', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Vulcan Industries', 'vulcan.com', '2558 Merced Avenue', 'South El Monte', 'CA', '91733', 'Carburetors, Pistons, Piston Rings, and Valves', '3592', 'Independent', '$500,000 to $999,999', '594,200.02', 'Los Angeles', 'YES '),
(422, 'Mr/Mrs/Miss', 'Bernardo', 'Figeroa', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Loanapp.com', 'loanapp.com', '909 North Sepulveda Boulevard', 'El Segundo', 'CA', '90245', 'Business Services, NEC', '7389', 'Independent', '$500,000 to $999,999', '59,600.00', 'Los Angeles', 'YES '),
(423, 'Mr/Mrs/Miss', 'Ammie', 'Corrio', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Durham Gina Marie', 'omm.com', '400 South Hope St # 1060', 'Los Angeles', 'CA', '90071', 'Legal Services', '8111', 'Independent', 'Under $500,000', '29,000.00', 'Los Angeles', 'YES '),
(424, 'Mr/Mrs/Miss', 'Francine', 'Vocelka', '505-977-3911', '505-335-5293', 'francine_vocelka@voc', 'Safari Printing & Promo Soluti', 'safariprinting.com', '9840 Sixth St.', 'Rancho Cucamonga', 'CA', '91730', 'Printing and Writing Paper', 'NA', 'Independent', '$25,000,000 to $74,999,999', '1,196,800', 'San Bernardino', 'YES '),
(425, 'Mr/Mrs/Miss', 'Ernie', 'Stenseth', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.c', 'Wayne Johnson Law Office', 'waynejohnsonlaw.com', 'Po Box 1900', 'Redlands', 'CA', '92373', 'Legal Services', '8111', 'Independent', 'Under $500,000', '950,800', 'San Bernardino', 'YES '),
(426, 'Mr/Mrs/Miss', 'Albina', 'Glick', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Hollman Stephen N', 'businessandtechnologylawgroup.com', '160 West Santa Clara St # 1050', 'San Jose', 'CA', '95113', 'Legal Services', '8111', 'Independent', 'Under $500,000', '138,600.01', 'Santa Clara', 'YES '),
(427, 'Mr/Mrs/Miss', 'Alishia', 'Sergi', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Laxlegacylimo', 'laxlegacylimo.com/', '1041 n ogden dr #1, West Holly', 'Lee Vining', 'CA', '93541', 'Business Services, NEC', 'NA', 'Subsidiary', 'Under $500,000', '684,300.01', 'Mono', 'YES '),
(428, 'Mr/Mrs/Miss', 'Solange', 'Shinko', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Data Recovery in San Jose, CA', 'quantumleapdatarecovery.com/california/data-recove', '411 Lewis Rd. #190', 'San Jose', 'CA', '95111', 'Business Services, NEC', 'NA', 'Independent', '$500,000 to $999,999', '135,800', 'Santa Clara', 'YES '),
(429, 'Mr/Mrs/Miss', 'Jose', 'Stockham', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Wcct Global LLC', 'wcct.com', '5630 Cerritos Avenue', 'Cypress', 'CA', '90630', 'Commercial Physical and Biological Research', '8731', 'Independent', '$1,000,000 to $4,999,999', '400,000.01', 'Orange', 'YES '),
(430, 'Mr/Mrs/Miss', 'Rozella', 'Ostrosky', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ost', 'Home Report Card', 'homereportcardinspections.com', '3416 Lancashire Lane', 'Modesto', 'CA', '95350', 'Business Services, NEC', '7389', 'Independent', 'Under $500,000', '245,100.01', 'Stanislaus', 'YES '),
(431, 'Mr/Mrs/Miss', 'Valentine', 'Gillian', '210-812-9597', '210-300-6244', 'valentine_gillian@gm', 'Russian River Utility', 'rruwater.com', '7131 Mirabel Road', 'Forestville', 'CA', '95436', 'Truck and Bus Bodies', '3713', 'Independent', 'Under $500,000', '217,700', 'Sonoma', 'YES '),
(432, 'Mr/Mrs/Miss', 'Kati', 'Rulapaugh', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotma', 'A Piece of Peace', 'apieceofpeace.com', '3819 23rd St', 'San Francisco', 'CA', '94114', 'Business Services, NEC', '7389', 'Independent', '$1,000,000 to $4,999,999', '100,000', 'San Francisco', 'YES '),
(433, 'Mr/Mrs/Miss', 'Youlanda', 'Schemmer', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Lewis Marenstein Wicke Sherwin', 'lmwslaw.com', '20750 Ventura Boulevard # 400', 'Woodland Hills', 'CA', '91364', 'Legal Services', '8111', 'Independent', '$500,000 to $999,999', '99,600.00', 'Los Angeles', 'YES '),
(434, 'Mr/Mrs/Miss', 'Dyan', 'Oldroyd', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Gary Bernat - State Farm Insur', 'insuremegary.com', '14451 Chambers Road Ste 130', 'Tustin', 'CA', '92780', 'Insurance Agents, Brokers, and Service', 'NA', 'Independent', '$10,000,000 to $24,999,999', '38,200.00', 'Orange', 'YES '),
(435, 'Mr/Mrs/Miss', 'Roxane', 'Campain', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Bovee CO', 'theboveecompany.com', '1127 11th St # 310', 'Sacramento', 'CA', '95814', 'Management Consulting Services', '8742', 'Independent', '$500,000 to $999,999', '702,400.03', 'Sacramento', 'YES '),
(436, 'Mr/Mrs/Miss', 'Lavera', 'Perin', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Torgerson Noel', 'lawfriend.com', '535 Anton Boulevard # 810', 'Costa Mesa', 'CA', '92626', 'Legal Services', '8111', 'Independent', 'Under $500,000', '881,399.99', 'Orange', 'YES '),
(437, 'Mr/Mrs/Miss', 'Erick', 'Ferencz', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.co', 'Hadas Stein Cpa Inc', 'hadassteincpa.com', '13261 Moorpark Street Suite 201', 'Sherman Oaks', 'CA', '91423', 'Accounting, Auditing, and Bookkeeping Services', 'NA', 'Independent', 'Under $500,000', '36,800.00', 'Los Angeles', 'YES '),
(438, 'Mr/Mrs/Miss', 'Fatima', 'Saylors', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Haley Miranda Group Inc', 'haleymiranda.com', '8654 Washington Boulevard', 'Culver City', 'CA', '90232', 'Advertising Agencies', '7311', 'Independent', 'Under $500,000', '116,900', 'Los Angeles', 'YES '),
(439, 'Mr/Mrs/Miss', 'Jina', 'Briddick', '617-399-5124', '617-997-5771', 'jina_briddick@briddi', 'Wilson Timothy A', 'wilsonarchitecture.com', '12667 Road 24', 'San Diego', 'CA', '92121', 'Architectural Services', '8712', 'Independent', '$500,000 to $999,999', '188,100', 'San Diego', 'YES '),
(440, 'Mr/Mrs/Miss', 'Kanisha', 'Waycott', '323-453-2780', '323-315-7314', 'kanisha_waycott@yaho', 'California Center For the Book', 'calbook.org', '330 Mesa Rd', 'Los Angeles', 'CA', '90005', 'Books, Periodicals, and Newspapers', '5192', 'Independent', 'Under $500,000', '1,125,200', 'Los Angeles', 'YES '),
(441, 'Mr/Mrs/Miss', 'Emerson', 'Bowley', '608-336-7444', '608-658-7940', 'emerson.bowley@bowle', 'Everest C S', 'yeseverestcs.com', '820 2Nd St', 'Aliso Viejo', 'CA', '92656', 'Management Consulting Services', '8742', 'Independent', 'Under $500,000', '202,300', 'Orange', 'YES ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resumelist`
--

CREATE TABLE `tbl_resumelist` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_resumelist`
--

INSERT INTO `tbl_resumelist` (`id`, `name`, `create_at`) VALUES
(3, 'Sat-Aug-222044.pdf', '2022-08-20 17:32:06'),
(4, 'Sun-Aug-223086.pdf', '2022-08-20 19:04:08'),
(5, 'Sun-Aug-227365.pdf', '2022-08-21 13:07:24'),
(6, 'Sun-Aug-224241.pdf', '2022-08-21 13:09:03'),
(7, 'Sun-Aug-224901.pdf', '2022-08-21 13:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resumes`
--

CREATE TABLE `tbl_resumes` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `doc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_resumes`
--

INSERT INTO `tbl_resumes` (`id`, `resume_id`, `doc`) VALUES
(1, 1, '1.pdf'),
(2, 2, '2.pdf'),
(3, 3, '3.pdf'),
(4, 4, '4.pdf'),
(5, 5, '5.pdf'),
(6, 6, '6.pdf'),
(7, 7, '7.pdf'),
(8, 8, '8.pdf'),
(9, 9, '9.pdf'),
(10, 10, '10.pdf'),
(11, 11, '11.pdf'),
(12, 12, '12.pdf'),
(13, 13, '13.pdf'),
(14, 14, '14.pdf'),
(15, 15, '15.pdf'),
(16, 16, '16.pdf'),
(17, 17, '17.pdf'),
(18, 18, '18.pdf'),
(19, 19, '19.pdf'),
(20, 20, '20.pdf'),
(21, 21, '21.pdf'),
(22, 22, '22.pdf'),
(23, 23, '23.pdf'),
(24, 24, '24.pdf'),
(25, 25, '25.pdf'),
(26, 26, '26.pdf'),
(27, 27, '27.pdf'),
(28, 28, '28.pdf'),
(29, 29, '29.pdf'),
(30, 30, '30.pdf'),
(31, 31, '31.pdf'),
(32, 32, '32.pdf'),
(33, 33, '33.pdf'),
(34, 34, '34.pdf'),
(35, 35, '35.pdf'),
(36, 36, '36.pdf'),
(37, 37, '37.pdf'),
(38, 38, '38.pdf'),
(39, 39, '39.pdf'),
(40, 40, '40.pdf'),
(41, 41, '41.pdf'),
(42, 42, '42.pdf'),
(43, 43, '43.pdf'),
(44, 44, '44.pdf'),
(45, 45, '45.pdf'),
(46, 46, '46.pdf'),
(47, 47, '47.pdf'),
(48, 48, '48.pdf'),
(49, 49, '49.pdf'),
(50, 50, '50.pdf'),
(51, 51, '51.pdf'),
(52, 52, '52.pdf'),
(53, 53, '53.pdf'),
(54, 54, '54.pdf'),
(55, 55, '55.pdf'),
(56, 56, '56.pdf'),
(57, 57, '57.pdf'),
(58, 58, '58.pdf'),
(59, 59, '59.pdf'),
(60, 60, '60.pdf'),
(61, 61, '61.pdf'),
(62, 62, '62.pdf'),
(63, 63, '63.pdf'),
(64, 64, '64.pdf'),
(65, 65, '65.pdf'),
(66, 66, '66.pdf'),
(67, 67, '67.pdf'),
(68, 68, '68.pdf'),
(69, 69, '69.pdf'),
(70, 70, '70.pdf'),
(71, 71, '71.pdf'),
(72, 72, '72.pdf'),
(73, 73, '73.pdf'),
(74, 74, '74.pdf'),
(75, 75, '75.pdf'),
(76, 76, '76.pdf'),
(77, 77, '77.pdf'),
(78, 78, '78.pdf'),
(79, 79, '79.pdf'),
(80, 80, '80.pdf'),
(81, 81, '81.pdf'),
(82, 82, '82.pdf'),
(83, 83, '83.pdf'),
(84, 84, '84.pdf'),
(85, 85, '85.pdf'),
(86, 86, '86.pdf'),
(87, 87, '87.pdf'),
(88, 88, '88.pdf'),
(89, 89, '89.pdf'),
(90, 90, '90.pdf'),
(91, 91, '91.pdf'),
(92, 92, '92.pdf'),
(93, 93, '93.pdf'),
(94, 94, '94.pdf'),
(95, 95, '95.pdf'),
(96, 96, '96.pdf'),
(97, 97, '97.pdf'),
(98, 98, '98.pdf'),
(99, 99, '99.pdf'),
(100, 100, '100.pdf'),
(101, 101, '101.pdf'),
(102, 102, '102.pdf'),
(103, 103, '103.pdf'),
(104, 104, '104.pdf'),
(105, 105, '105.pdf'),
(106, 106, '106.pdf'),
(107, 107, '107.pdf'),
(108, 108, '108.pdf'),
(109, 109, '109.pdf'),
(110, 110, '110.pdf'),
(111, 111, '111.pdf'),
(112, 112, '112.pdf'),
(113, 113, '113.pdf'),
(114, 114, '114.pdf'),
(115, 115, '115.pdf'),
(116, 116, '116.pdf'),
(117, 117, '117.pdf'),
(118, 118, '118.pdf'),
(119, 119, '119.pdf'),
(120, 120, '120.pdf'),
(121, 121, '121.pdf'),
(122, 122, '122.pdf'),
(123, 123, '123.pdf'),
(124, 124, '124.pdf'),
(125, 125, '125.pdf'),
(126, 126, '126.pdf'),
(127, 127, '127.pdf'),
(128, 128, '128.pdf'),
(129, 129, '129.pdf'),
(130, 130, '130.pdf'),
(131, 131, '131.pdf'),
(132, 132, '132.pdf'),
(133, 133, '133.pdf'),
(134, 134, '134.pdf'),
(135, 135, '135.pdf'),
(136, 136, '136.pdf'),
(137, 137, '137.pdf'),
(138, 138, '138.pdf'),
(139, 139, '139.pdf'),
(140, 140, '140.pdf'),
(141, 141, '141.pdf'),
(142, 142, '142.pdf'),
(143, 143, '143.pdf'),
(144, 144, '144.pdf'),
(145, 145, '145.pdf'),
(146, 146, '146.pdf'),
(147, 147, '147.pdf'),
(148, 148, '148.pdf'),
(149, 149, '149.pdf'),
(150, 150, '150.pdf'),
(151, 151, '151.pdf'),
(152, 152, '152.pdf'),
(153, 153, '153.pdf'),
(154, 154, '154.pdf'),
(155, 155, '155.pdf'),
(156, 156, '156.pdf'),
(157, 157, '157.pdf'),
(158, 158, '158.pdf'),
(159, 159, '159.pdf'),
(160, 160, '160.pdf'),
(161, 161, '161.pdf'),
(162, 162, '162.pdf'),
(163, 163, '163.pdf'),
(164, 164, '164.pdf'),
(165, 165, '165.pdf'),
(166, 166, '166.pdf'),
(167, 167, '167.pdf'),
(168, 168, '168.pdf'),
(169, 169, '169.pdf'),
(170, 170, '170.pdf'),
(171, 171, '171.pdf'),
(172, 172, '172.pdf'),
(173, 173, '173.pdf'),
(174, 174, '174.pdf'),
(175, 175, '175.pdf'),
(176, 176, '176.pdf'),
(177, 177, '177.pdf'),
(178, 178, '178.pdf'),
(179, 179, '179.pdf'),
(180, 180, '180.pdf'),
(181, 181, '181.pdf'),
(182, 182, '182.pdf'),
(183, 183, '183.pdf'),
(184, 184, '184.pdf'),
(185, 185, '185.pdf'),
(186, 186, '186.pdf'),
(187, 187, '187.pdf'),
(188, 188, '188.pdf'),
(189, 189, '189.pdf'),
(190, 190, '190.pdf'),
(191, 191, '191.pdf'),
(192, 192, '192.pdf'),
(193, 193, '193.pdf'),
(194, 194, '194.pdf'),
(195, 195, '195.pdf'),
(196, 196, '196.pdf'),
(197, 197, '197.pdf'),
(198, 198, '198.pdf'),
(199, 199, '199.pdf'),
(200, 200, '200.pdf'),
(201, 201, '201.pdf'),
(202, 202, '202.pdf'),
(203, 203, '203.pdf'),
(204, 204, '204.pdf'),
(205, 205, '205.pdf'),
(206, 206, '206.pdf'),
(207, 207, '207.pdf'),
(208, 208, '208.pdf'),
(209, 209, '209.pdf'),
(210, 210, '210.pdf'),
(211, 211, '211.pdf'),
(212, 212, '212.pdf'),
(213, 213, '213.pdf'),
(214, 214, '214.pdf'),
(215, 215, '215.pdf'),
(216, 216, '216.pdf'),
(217, 217, '217.pdf'),
(218, 218, '218.pdf'),
(219, 219, '219.pdf'),
(220, 220, '220.pdf'),
(221, 221, '221.pdf'),
(222, 222, '222.pdf'),
(223, 223, '223.pdf'),
(224, 224, '224.pdf'),
(225, 225, '225.pdf'),
(226, 226, '226.pdf'),
(227, 227, '227.pdf'),
(228, 228, '228.pdf'),
(229, 229, '229.pdf'),
(230, 230, '230.pdf'),
(231, 231, '231.pdf'),
(232, 232, '232.pdf'),
(233, 233, '233.pdf'),
(234, 234, '234.pdf'),
(235, 235, '235.pdf'),
(236, 236, '236.pdf'),
(237, 237, '237.pdf'),
(238, 238, '238.pdf'),
(239, 239, '239.pdf'),
(240, 240, '240.pdf'),
(241, 241, '241.pdf'),
(242, 242, '242.pdf'),
(243, 243, '243.pdf'),
(244, 244, '244.pdf'),
(245, 245, '245.pdf'),
(246, 246, '246.pdf'),
(247, 247, '247.pdf'),
(248, 248, '248.pdf'),
(249, 249, '249.pdf'),
(250, 250, '250.pdf'),
(251, 251, '251.pdf'),
(252, 252, '252.pdf'),
(253, 253, '253.pdf'),
(254, 254, '254.pdf'),
(255, 255, '255.pdf'),
(256, 256, '256.pdf'),
(257, 257, '257.pdf'),
(258, 258, '258.pdf'),
(259, 259, '259.pdf'),
(260, 260, '260.pdf'),
(261, 261, '261.pdf'),
(262, 262, '262.pdf'),
(263, 263, '263.pdf'),
(264, 264, '264.pdf'),
(265, 265, '265.pdf'),
(266, 266, '266.pdf'),
(267, 267, '267.pdf'),
(268, 268, '268.pdf'),
(269, 269, '269.pdf'),
(270, 270, '270.pdf'),
(271, 271, '271.pdf'),
(272, 272, '272.pdf'),
(273, 273, '273.pdf'),
(274, 274, '274.pdf'),
(275, 275, '275.pdf'),
(276, 276, '276.pdf'),
(277, 277, '277.pdf'),
(278, 278, '278.pdf'),
(279, 279, '279.pdf'),
(280, 280, '280.pdf'),
(281, 281, '281.pdf'),
(282, 282, '282.pdf'),
(283, 283, '283.pdf'),
(284, 284, '284.pdf'),
(285, 285, '285.pdf'),
(286, 286, '286.pdf'),
(287, 287, '287.pdf'),
(288, 288, '288.pdf'),
(289, 289, '289.pdf'),
(290, 290, '290.pdf'),
(291, 291, '291.pdf'),
(292, 292, '292.pdf'),
(293, 293, '293.pdf'),
(294, 294, '294.pdf'),
(295, 295, '295.pdf'),
(296, 296, '296.pdf'),
(297, 297, '297.pdf'),
(298, 298, '298.pdf'),
(299, 299, '299.pdf'),
(300, 300, '300.pdf'),
(301, 301, '301.pdf'),
(302, 302, '302.pdf'),
(303, 303, '303.pdf'),
(304, 304, '304.pdf'),
(305, 305, '305.pdf'),
(306, 306, '306.pdf'),
(307, 307, '307.pdf'),
(308, 308, '308.pdf'),
(309, 309, '309.pdf'),
(310, 310, '310.pdf'),
(311, 311, '311.pdf'),
(312, 312, '312.pdf'),
(313, 313, '313.pdf'),
(314, 314, '314.pdf'),
(315, 315, '315.pdf'),
(316, 316, '316.pdf'),
(317, 317, '317.pdf'),
(318, 318, '318.pdf'),
(319, 319, '319.pdf'),
(320, 320, '320.pdf'),
(321, 321, '321.pdf'),
(322, 322, '322.pdf'),
(323, 323, '323.pdf'),
(324, 324, '324.pdf'),
(325, 325, '325.pdf'),
(326, 326, '326.pdf'),
(327, 327, '327.pdf'),
(328, 328, '328.pdf'),
(329, 329, '329.pdf'),
(330, 330, '330.pdf'),
(331, 331, '331.pdf'),
(332, 332, '332.pdf'),
(333, 333, '333.pdf'),
(334, 334, '334.pdf'),
(335, 335, '335.pdf'),
(336, 336, '336.pdf'),
(337, 337, '337.pdf'),
(338, 338, '338.pdf'),
(339, 339, '339.pdf'),
(340, 340, '340.pdf'),
(341, 341, '341.pdf'),
(342, 342, '342.pdf'),
(343, 343, '343.pdf'),
(344, 344, '344.pdf'),
(345, 345, '345.pdf'),
(346, 346, '346.pdf'),
(347, 347, '347.pdf'),
(348, 348, '348.pdf'),
(349, 349, '349.pdf'),
(350, 350, '350.pdf'),
(351, 351, '351.pdf'),
(352, 352, '352.pdf'),
(353, 353, '353.pdf'),
(354, 354, '354.pdf'),
(355, 355, '355.pdf'),
(356, 356, '356.pdf'),
(357, 357, '357.pdf'),
(358, 358, '358.pdf'),
(359, 359, '359.pdf'),
(360, 360, '360.pdf'),
(361, 361, '361.pdf'),
(362, 362, '362.pdf'),
(363, 363, '363.pdf'),
(364, 364, '364.pdf'),
(365, 365, '365.pdf'),
(366, 366, '366.pdf'),
(367, 367, '367.pdf'),
(368, 368, '368.pdf'),
(369, 369, '369.pdf'),
(370, 370, '370.pdf'),
(371, 371, '371.pdf'),
(372, 372, '372.pdf'),
(373, 373, '373.pdf'),
(374, 374, '374.pdf'),
(375, 375, '375.pdf'),
(376, 376, '376.pdf'),
(377, 377, '377.pdf'),
(378, 378, '378.pdf'),
(379, 379, '379.pdf'),
(380, 380, '380.pdf'),
(381, 381, '381.pdf'),
(382, 382, '382.pdf'),
(383, 383, '383.pdf'),
(384, 384, '384.pdf'),
(385, 385, '385.pdf'),
(386, 386, '386.pdf'),
(387, 387, '387.pdf'),
(388, 388, '388.pdf'),
(389, 389, '389.pdf'),
(390, 390, '390.pdf'),
(391, 391, '391.pdf'),
(392, 392, '392.pdf'),
(393, 393, '393.pdf'),
(394, 394, '394.pdf'),
(395, 395, '395.pdf'),
(396, 396, '396.pdf'),
(397, 397, '397.pdf'),
(398, 398, '398.pdf'),
(399, 399, '399.pdf'),
(400, 400, '400.pdf'),
(401, 401, '401.pdf'),
(402, 402, '402.pdf'),
(403, 403, '403.pdf'),
(404, 404, '404.pdf'),
(405, 405, '405.pdf'),
(406, 406, '406.pdf'),
(407, 407, '407.pdf'),
(408, 408, '408.pdf'),
(409, 409, '409.pdf'),
(410, 410, '410.pdf'),
(411, 411, '411.pdf'),
(412, 412, '412.pdf'),
(413, 413, '413.pdf'),
(414, 414, '414.pdf'),
(415, 415, '415.pdf'),
(416, 416, '416.pdf'),
(417, 417, '417.pdf'),
(418, 418, '418.pdf'),
(419, 419, '419.pdf'),
(420, 420, '420.pdf'),
(421, 421, '421.pdf'),
(422, 422, '422.pdf'),
(423, 423, '423.pdf'),
(424, 424, '424.pdf'),
(425, 425, '425.pdf'),
(426, 426, '426.pdf'),
(427, 427, '427.pdf'),
(428, 428, '428.pdf'),
(429, 429, '429.pdf'),
(430, 430, '430.pdf'),
(431, 431, '431.pdf'),
(432, 432, '432.pdf'),
(433, 433, '433.pdf'),
(434, 434, '434.pdf'),
(435, 435, '435.pdf'),
(436, 436, '436.pdf'),
(437, 437, '437.pdf'),
(438, 438, '438.pdf'),
(439, 439, '439.pdf'),
(440, 440, '440.pdf'),
(441, 441, '441.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `tbl_agreement`
--
ALTER TABLE `tbl_agreement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_approve`
--
ALTER TABLE `tbl_approve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_approve_result`
--
ALTER TABLE `tbl_approve_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_caller`
--
ALTER TABLE `tbl_caller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `franchise_id` (`franchise_id`);

--
-- Indexes for table `tbl_customer_log`
--
ALTER TABLE `tbl_customer_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_field`
--
ALTER TABLE `tbl_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form`
--
ALTER TABLE `tbl_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_franchise`
--
ALTER TABLE `tbl_franchise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_master`
--
ALTER TABLE `tbl_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_noc`
--
ALTER TABLE `tbl_noc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_qry_field`
--
ALTER TABLE `tbl_qry_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_query`
--
ALTER TABLE `tbl_query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `caller_id` (`caller_id`),
  ADD KEY `franchise_id` (`franchise_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `tbl_resumedata`
--
ALTER TABLE `tbl_resumedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_resumelist`
--
ALTER TABLE `tbl_resumelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_resumes`
--
ALTER TABLE `tbl_resumes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_agreement`
--
ALTER TABLE `tbl_agreement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_approve`
--
ALTER TABLE `tbl_approve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_approve_result`
--
ALTER TABLE `tbl_approve_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_caller`
--
ALTER TABLE `tbl_caller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer_log`
--
ALTER TABLE `tbl_customer_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_field`
--
ALTER TABLE `tbl_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_form`
--
ALTER TABLE `tbl_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_franchise`
--
ALTER TABLE `tbl_franchise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_master`
--
ALTER TABLE `tbl_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_noc`
--
ALTER TABLE `tbl_noc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_qry_field`
--
ALTER TABLE `tbl_qry_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_query`
--
ALTER TABLE `tbl_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_resumedata`
--
ALTER TABLE `tbl_resumedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `tbl_resumelist`
--
ALTER TABLE `tbl_resumelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_resumes`
--
ALTER TABLE `tbl_resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
