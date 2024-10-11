-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2024 at 09:19 AM
-- Server version: 8.0.37
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skillgew_skill`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `names` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  `profile_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `subjects` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `about_lesson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `lessons__taugth` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `about_tutor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lesson_held` varchar(255) NOT NULL,
  `rate_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `phoneNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `profile_img_ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `levels` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `languages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `recommendations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `tutor_id`, `subjects`, `ad_title`, `about_lesson`, `lessons__taugth`, `about_tutor`, `location`, `lesson_held`, `rate_details`, `phoneNo`, `profile_img_ad`, `levels`, `languages`, `video_url`, `recommendations`, `created_at`, `title`) VALUES
(11, 22, 'Computer', 'key to your ad! Take care of it! It must be unique, eye-catching and contain at least 12 words:\r\n\r\nThe subject you teach\r\nThe level you teach\r\nLocation of the lessons\r\nQualifications, experience etc.\r\nWHAT WORKS\r\n• Engineering Graduate teaches maths and p', 'key to your ad! Take care of it! It must be unique, eye-catching and contain at least 12 words:\r\n\r\nThe subject you teach\r\nThe level you teach\r\nLocation of the lessons\r\nQualifications, experience etc.\r\nWHAT WORKS\r\n• Engineering Graduate teaches maths and physics for GCSE and A level in London\r\nor\r\n• Concert pianist with 15 years ', NULL, 'key to your ad! Take care of it! It must be unique, eye-catching and contain at least 12 words:\r\n\r\nThe subject you teach\r\nThe level you teach\r\nLocation of the lessons\r\nQualifications, experience etc.\r\nWHAT WORKS\r\n• Engineering Graduate teaches maths and physics for GCSE and A level in London\r\nor\r\n• Concert pianist with 15 years ', 'Qwerty', 'Your home', '578888', '09975340', '../uploads/eee.jpg', NULL, NULL, NULL, NULL, '2024-10-10 08:08:57', 'online'),
(12, 22, 'English', 'Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share you', 'Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.', NULL, 'Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.Skillgewin gives you the opportunity to teach and share your knowledge in more than 1000 subjects.', 'Jos Plateau  State', 'Online', '23478', '450987612345', '../uploads/img1.jpeg', NULL, NULL, NULL, NULL, '2024-10-10 08:21:20', 'online');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tutor`
--

CREATE TABLE `contact_tutor` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `contact_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `accepted` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_tutor`
--

INSERT INTO `contact_tutor` (`id`, `user_id`, `tutor_id`, `contact_time`, `accepted`) VALUES
(31, 5, 21, '2024-09-29 06:27:46', '0'),
(32, 6, 23, '2024-09-29 10:57:42', '0'),
(33, 7, 21, '2024-09-30 12:18:49', '0'),
(34, 5, 22, '2024-09-30 21:05:32', '0'),
(35, 5, 30, '2024-09-30 21:07:02', '0'),
(36, 5, 32, '2024-09-30 22:34:08', '0'),
(37, 11, 32, '2024-10-01 08:04:10', '0'),
(38, 13, 21, '2024-10-05 22:37:59', NULL),
(39, 5, 34, '2024-10-07 07:08:22', NULL),
(40, 5, 23, '2024-10-09 02:56:27', NULL),
(41, 14, 36, '2024-10-09 08:44:06', NULL),
(42, 15, 23, '2024-10-10 14:27:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iban_accounts`
--

CREATE TABLE `iban_accounts` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_details`
--

CREATE TABLE `kyc_details` (
  `id` int NOT NULL,
  `issuing_country` varchar(100) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `document_number` varchar(50) NOT NULL,
  `front_image` varchar(255) DEFAULT NULL,
  `back_image` varchar(255) DEFAULT NULL,
  `passport_photo` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` text NOT NULL,
  `kycEmail` varchar(255) NOT NULL,
  `accepted_terms` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `timestamp`) VALUES
(1, 5, 21, 'Good', '2024-10-01 14:01:42'),
(2, 5, 21, 'Good Morning Sir', '2024-10-01 14:02:04'),
(3, 5, 21, 'Assalamu Alaikum', '2024-10-01 14:45:43'),
(4, 5, 21, 'Bar Da safiya', '2024-10-01 14:52:24'),
(5, 5, 22, 'Assalamu Alaikum\nGodiya Ta Mussam', '2024-10-01 15:05:57'),
(6, 5, 32, 'Sample message', '2024-10-01 15:06:33'),
(7, 5, 30, 'Muhammad Rabiu', '2024-10-01 15:08:01'),
(8, 5, 22, 'Qwryi', '2024-10-01 16:13:39'),
(9, 6, 23, 'Hello', '2024-10-01 20:24:34'),
(43, 5, 22, 'ffff', '2024-10-03 06:25:27'),
(58, 5, 22, 'Qwer', '2024-10-07 07:05:58'),
(59, 5, 34, 'Sabiu', '2024-10-07 07:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `online_meetings`
--

CREATE TABLE `online_meetings` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `meeting_option` varchar(255) NOT NULL,
  `google_meet_url` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `online_meetings`
--

INSERT INTO `online_meetings` (`id`, `tutor_id`, `meeting_option`, `google_meet_url`, `created_at`) VALUES
(4, 22, 'zoom', 'http://go.microsoft.com/fwlink/?LinkId=69157', '2024-10-01 16:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `shipping_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expiry`) VALUES
(3, 'Sopheaadam@gmail.com', '1b1273202b12295e535d045c5c8f1ebc0a9cc7eea518cd210d04942bae58c59e410045d36a1fedbd04eb76d40395fb92f640', '2024-10-02 12:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `payout_accounts`
--

CREATE TABLE `payout_accounts` (
  `id` int NOT NULL,
  `names` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `payout_email` varchar(255) NOT NULL,
  `phoneN` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_requests`
--

CREATE TABLE `payout_requests` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `method` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paystack_accounts`
--

CREATE TABLE `paystack_accounts` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `payout_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `created_at`) VALUES
(3, 'Beautiful Shoes', 5000.00, 'A Quality Shoes', 'uploads/2348032444073_status_560e3487a6604ce38731bffa540059f9.jpg', '2024-10-02 15:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `review` text,
  `review_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `tutor_id`, `rating`, `review`, `review_time`) VALUES
(13, 5, 21, 4, 'Good Person', '2024-09-30 20:23:11'),
(15, 5, 22, 1, 'Good Person keep inproving', '2024-09-30 21:00:35'),
(17, 5, 30, 2, 'We are Happy to see you', '2024-09-30 21:41:11'),
(19, 6, 23, 5, 'Ok', '2024-09-30 21:10:51'),
(20, 5, 32, 4, 'Your experience is good and better', '2024-09-30 21:40:40'),
(24, 13, 21, 1, 'Test', '2024-10-05 21:38:34'),
(25, 5, 34, 1, 'ffffffffffffffffffffffffffffff', '2024-10-09 01:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `session_name` varchar(255) NOT NULL,
  `duration` int NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` text NOT NULL,
  `session_type` varchar(100) NOT NULL,
  `session_topic` varchar(100) NOT NULL,
  `intro_url` text,
  `status` enum('Show','Hide') NOT NULL DEFAULT 'Show',
  `enable_group_booking` tinyint(1) NOT NULL DEFAULT '0',
  `persons_per_slot` int DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtb`
--

CREATE TABLE `subtb` (
  `id` int NOT NULL,
  `ssubjects` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `swift_accounts`
--

CREATE TABLE `swift_accounts` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `branch_country` varchar(100) NOT NULL,
  `branch_city` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `swift_code` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_reference` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int NOT NULL,
  `names` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `passwords` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `locations` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `skills` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `academic` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `about_lesson` varchar(255) NOT NULL,
  `about_you` varchar(255) NOT NULL,
  `hourly_rate` varchar(255) NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `reviews` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `webcam_face` varchar(255) NOT NULL,
  `accept` varchar(255) NOT NULL,
  `declines` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `names`, `email`, `phone`, `passwords`, `country`, `locations`, `experience`, `subjects`, `skills`, `academic`, `title`, `about_lesson`, `about_you`, `hourly_rate`, `profile_img`, `reviews`, `rating`, `webcam_face`, `accept`, `declines`) VALUES
(21, 'Sidikatu ', 'yakubusidikatu@gmail.com', '08187323525', '0987654321', '', 'Abuja ', '', 'Crypto currency ', '', '', '', '', '', '5000', 'Screenshot_2024-09-28-08-20-39-59_f9ee0578fe1cc94de7482bd41accb329.jpg', '', '', '', '', ''),
(22, 'Muhammad Tangible', 'muhammadtangible@gmail.com', '09033664948', '12345', 'Nigeria', 'Jos', '10 Years', 'Skill', 'Coding', '', '', '', 'Skill and Experienced sat math tutor and bc certified ielts tutor with over 10 years experience... ', '3000', '../uploads/img1.jpg', '', '', '', '', ''),
(23, 'Muhammad tahir', 'arabgmc@gmail.com', '09033519103', 'kalahari', 'Nigeria', 'Abuja', '5 ', 'Data Analyst ', '', '', '', '', 'Experience data analyst for over 5 years', '800', 'Screenshot_20240916_000348_TikTok.jpg', '', '', '', '', ''),
(30, 'Muhammad Rabiu', 'muhammadmuhammadrabiu2017@gmail.com', '0901111222', 'qwerty', 'australia', 'Plateau State', 'Obtain Degree', 'Skill', 'Drawing', '', 'Degree', 'A', 'a', '4568', 'img1.jpeg', '', '', '', '', ''),
(32, 'Kabir', 'starlightsalees@gmail.com', '9030152411', '787899', 'nigeria', 'Kaduna', 'Paint ', 'Skill', '', '', 'Luxury ', 'Day to day job', '', '1000', 'Snapchat-1789685735.jpg', '', '', '', '', ''),
(34, 'Sabiu Danbaba', 'sabiudahiru301@gmail.com', '07047615977', 'Danbaba4761', 'nigeria', 'Bauchi', 'About Your Skill', 'Skill', 'Coding', '', 'Title', '', '', '50000', '1702486109669.jpg', '', '', '', '', ''),
(36, 'Hanifa Rasheed', 'hannyrasheed@gmail.com', '+2347073848727', 's1mplyOYI', 'nigeria', 'Abuja', 'About Your Skill', 'Skill', 'Self Improvement ', '', 'Title', '**Hanifa Rasheed - Self-Development Coach**\r\n\r\nHanifa Rasheed is a passionate self-development coach dedicated to empowering individuals to unlock their full potential. With over two years of experience in personal growth and coaching, she specializes in ', '**Hanifa Rasheed - Self-Development Coach**\r\n\r\nHanifa Rasheed is a passionate self-development coach dedicated to empowering individuals to unlock their full potential. With over two years of experience in personal growth and coaching, she specializes in ', '5000', '5734A545-EED7-447E-878C-C482DADCD82A.jpeg', '', '', '', '', ''),
(37, 'Muazu ', 'mbabakellu@gmail.com', '0813456789', 'kalahari', 'nigeria', 'Abuja', 'About Your Skill', 'Skill', 'Math', '', 'Title', 'Sinple and straight forward ', 'I have passion to inspire the younger generation ', '200', 'Snapchat-511276518.jpg', '', '', '', '', ''),
(39, 'Salimat yakubu', 'Yakubusakimatu@gmail.com', '07032209602', '123456789', 'nigeria', 'Abuja', 'About Your Skill', 'Academic', '', 'crypto currency', 'Title', 'i work with my student convenient time and location using the best too to impact in them while making learning crypto currency easy and accessible.', 'I\'m a crypto currency analyst and consultant with  over 8 years of practice ', '5000', 'IMG-20241009-WA0139.jpg', '', '', '', '', ''),
(41, 'Bala Sani', 'muhammadtangiblee@gmail.com', '344', '12345', 'afghanistan', '2333', 'About Your Skill', 'Skill', 'Programming', '', 'Title', 'about Lession', 'Textxxxnnf ffgg', '23344', 'images (53).jpeg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `names` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  `profile_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `names`, `email`, `passwords`, `profile_img`) VALUES
(5, 'Muhammad Muhammad Rabiu', 'muhammadmuhammadrabiu2017@gmail.com', '12345', 'uploads/img1.jpg'),
(6, 'Kalahari', 'Sopheaadam@gmail.com', 'kalahari', 'uploads/Screenshot_20240925_175046_TikTok.jpg'),
(7, 'Abubakar khalid  bichi', 'abubakarkhalidbichi22@gmail.com', 'bichi2024$&', 'uploads/612AEA21-3FE0-4C7C-A193-4229EB254021.jpeg'),
(8, 'Mohammed mansur ', 'mansurdanfulani3260@gmail.com', '361362', 'uploads/IMG_20240904_151921_730.jpg'),
(9, 'Abubakar', 'abubakars.ahmad@yahoo.com', 'Abuzarah@2024', 'uploads/1727702043000..jpg'),
(10, 'Shamwilu Muhammed', 'shamwilumuhammed@gmail.com', '@56415945Jd', 'IMG_20240930_144945.jpg'),
(11, 'Didi', 'ometere1995@gmail.com', '1234567890', 'uploads/Screenshot_2024-09-20-21-01-16-29_6012fa4d4ddec268fc5c7112cbb265e7.jpg'),
(12, 'Ruth ', 'ugwudavidejeh@gmail.com', '212121', 'uploads/IMG-20241001-WA0029.jpg'),
(13, 'Sahlearn ', 'aliyuajajah@gmail.com', 'aliyuajajah', 'uploads/Screenshot_20241005-164545_One UI Home.jpg'),
(14, 'Layla Asif', 'abdulhanifa115@gmail.com', 's1mplyOYI', 'uploads/C4EFCC0A-FE97-4AFD-9B58-543E85822B7F.jpeg'),
(15, 'Jana Moody', 'kofit@mailinator.com', 'Pa$$w0rd!', 'uploads/_1b0ffe8e-ce57-4e23-8768-9142852f4117.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_tutor`
--
ALTER TABLE `contact_tutor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_tutor_ibfk_1` (`user_id`),
  ADD KEY `contact_tutor_ibfk_2` (`tutor_id`);

--
-- Indexes for table `iban_accounts`
--
ALTER TABLE `iban_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iban_accounts_ibfk_1` (`tutor_id`);

--
-- Indexes for table `kyc_details`
--
ALTER TABLE `kyc_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kycEmail` (`kycEmail`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `online_meetings`
--
ALTER TABLE `online_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_accounts`
--
ALTER TABLE `payout_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_requests`
--
ALTER TABLE `payout_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_accounts`
--
ALTER TABLE `paystack_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paystack_accounts_ibfk_1` (`tutor_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_tutor` (`user_id`,`tutor_id`),
  ADD KEY `reviews_ibfk_2` (`tutor_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_ibfk_1` (`tutor_id`);

--
-- Indexes for table `subtb`
--
ALTER TABLE `subtb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swift_accounts`
--
ALTER TABLE `swift_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `swift_accounts_ibfk_1` (`tutor_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_tutor`
--
ALTER TABLE `contact_tutor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `iban_accounts`
--
ALTER TABLE `iban_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyc_details`
--
ALTER TABLE `kyc_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `online_meetings`
--
ALTER TABLE `online_meetings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payout_accounts`
--
ALTER TABLE `payout_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payout_requests`
--
ALTER TABLE `payout_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paystack_accounts`
--
ALTER TABLE `paystack_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtb`
--
ALTER TABLE `subtb`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `swift_accounts`
--
ALTER TABLE `swift_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_tutor`
--
ALTER TABLE `contact_tutor`
  ADD CONSTRAINT `contact_tutor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contact_tutor_ibfk_2` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `iban_accounts`
--
ALTER TABLE `iban_accounts`
  ADD CONSTRAINT `iban_accounts_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `tutor` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paystack_accounts`
--
ALTER TABLE `paystack_accounts`
  ADD CONSTRAINT `paystack_accounts_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `swift_accounts`
--
ALTER TABLE `swift_accounts`
  ADD CONSTRAINT `swift_accounts_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
