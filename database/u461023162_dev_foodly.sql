-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 24, 2024 at 01:25 PM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u461023162_dev_foodly`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `image2` longtext DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `image2`, `cover`, `video`, `created_at`, `updated_at`) VALUES
(1, '20230327011739.png', '20230327020718.png', '20230327013937.png', 'https://www.youtube.com/watch?v=bjFZ9hCFBE8', '2022-08-05 07:32:34', '2023-03-26 22:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `about_translations`
--

CREATE TABLE `about_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `description2` longtext DEFAULT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_translations`
--

INSERT INTO `about_translations` (`id`, `about_id`, `locale`, `title`, `title2`, `name`, `description`, `description2`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'About us', NULL, 'Who are we?', '<h3 style=\"line-height: 1.25; margin-bottom: 1.25rem !important;\">We focus on simplicity and comfort</h3><p style=\"line-height: 1.25; margin-bottom: 1.25rem !important;\">Our main idea and goal is to simplify everyday life for our customers, to provide a product that will ease routine work and make them more digital than ever.<br></p>', '<h2><span style=\"font-family: undefined;\">﻿</span>Simplify customer communication&nbsp;</h2><ul><li><font face=\"Nunito\">flexibility</font><br></li><li><font face=\"Nunito\">Quick fix of request</font><br></li><li><font face=\"Nunito\">Contactless orders and payments</font><br></li><li><font face=\"Nunito\">Ability to quickly update the menu</font><br></li><li><font face=\"Nunito\">Increase brand awareness</font><br></li><li><font face=\"Nunito\">Optimization of personnel</font><br></li><li><font face=\"Nunito\">No need to download or install additional apps</font><br></li></ul>', 'We offer QR menu services to cafe-restaurants. <br>Which is available for any type of food outlet. The guest can easily scan the QR menu on the table and browse it, order the desired dish or call the waiter at his table easily with the touch of a button, or request an account from the electronic menu via the QR menu on his phone easily and quickly', '2022-08-05 07:32:34', '2023-07-18 13:46:45'),
(2, 1, 'ka', 'ჩვენს შესახებ', NULL, 'ვინ ვართ ჩვენ ?', '<h3 style=\"line-height: 1.25; margin-bottom: 1.25rem !important;\">მთავარ აქცენტს ვაკეთებთ სიმარტივეზე და კომფორტზე</h3><p class=\"mb-7\" style=\"margin-bottom: 1.75rem !important;\">ჩვენი მთავარი იდეა და მიზანია, ჩვენს მომხმარებლებს გავუმარტივოთ ყოველდღიურობა, მივაწოდოთ ის პროდუქტი რომელიც შეუმსუბუქებს რუტინულ სამუშოს და გახდის უფრო ციფრულს ვიდრე ოდესმე</p><p class=\"mb-7\" style=\"margin-bottom: 1.75rem !important;\">ჩვენ ვაგენერირებთ დახვეწილ,განსხვავებულ და ეფექტურ იდეებს თქვენი ბიზნესისატვის და მზად ვართ ნებისმიერი გამოწვევისათვის<br>გააციფრულე შენი ბიზნესი ჩვენთან</p>', '<h2>&nbsp;</h2><h3></h3><h4><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">მოქნილობა</span></li></ul><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">მოთხოვნის სწრაფი დაფიქსირება</span></li></ul><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">უკონტაქტო შეკვეთები და გადახდები</span></li></ul><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">მენიუს სწრაფი განახლების შესაძლებლობა</span></li></ul><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">ბრენდის ცნობადობის გაზრდა</span></li></ul><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">პერსონალის ოპტიმიზაცია</span></li></ul><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">არ საჭიროებს ჩამოტვირთვას და დამატებით აპლიკაციებს</span></li></ul></h4>', '<p class=\"MsoNormal\" style=\"\">QR მენიუ - შესაძლებლობა, გახადო შენი ბიზნესი ციფრული. Kerdzebi.-ის\r\nდახმარებით, თქვენ შეძლებთ დაამზადოთ ონლაინ მენიუ თქვენი კვების ობიექტისათვის. შედეგად,\r\nმომხმარებელი სწრაფად და მარტივად შეძლებს შეგიკვეთოთ კერძები, თქვენ კი დაზოგავთ დროსა\r\nდა ენერგიას.</p>', '2022-08-05 07:32:34', '2023-03-26 22:11:35'),
(3, 1, 'ru', 'О нас', NULL, 'кто мы такие?', '<h3 style=\"line-height: 1.25; margin-bottom: 1.25rem !important;\">მთავარ აქცენტს ვაკეთებთ სიმარტივეზე და კომფორტზე RU</h3><h3 class=\"display-4 mb-5\" style=\"font-weight: 700; line-height: 1.25; color: rgb(52, 63, 82); font-size: 1.9rem; letter-spacing: -0.01rem; background-color: rgb(254, 254, 254); margin-bottom: 1.25rem !important;\"><br></h3>', '<h2><span style=\"font-family: undefined;\">﻿</span>გაიმარტივე კომუნიკაცია მომხმარებელთან&nbsp;</h2><h3><ul style=\"font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-weight: 400;\"><li><span style=\"font-family: Nunito;\">მოქნილობა</span></li><li><span style=\"font-family: Nunito;\">მოთხოვნის სწრაფი დაფიქსირება</span></li><li><span style=\"font-family: Nunito;\">უკონტაქტო შეკვეთები და გადახდები</span></li><li><span style=\"font-family: Nunito;\">მენიუს სწრაფი განახლების შესაძლებლობა</span></li><li><span style=\"font-family: Nunito;\">ბრენდის ცნობადობის გაზრდა</span></li><li><span style=\"font-family: Nunito;\">პერსონალის ოპტიმიზაცია</span></li><li><span style=\"font-family: Nunito;\">არ საჭიროებს ჩამოტვირთვას და დამატებით აპლიკაციებს</span></li></ul></h3>', '<div><p class=\"MsoNormal\">ჩვენ მიერ შექმნილი პროდუქტი,რამოდენიმე ეტაპს გადის უშუალო გამოყენებაში ჩაშვებამდე, ესენია:<o:p></o:p></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -0.25in; margin-left: 50px;\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>დიზაინის დამუშავება<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -0.25in; margin-left: 50px;\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>პროგრამირება<o:p></o:p></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -0.25in; margin-left: 50px;\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>ტესტირება<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-left: 50px;\"></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -0.25in; margin-left: 50px;\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>ტრენინგი</p></div>', '2022-08-05 07:32:34', '2023-03-26 22:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `advanceds`
--

CREATE TABLE `advanceds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_sdk` longtext DEFAULT NULL,
  `facebook_messenger` longtext DEFAULT NULL,
  `meta_pixel` longtext DEFAULT NULL,
  `google_analytics` longtext DEFAULT NULL,
  `google_ads` longtext DEFAULT NULL,
  `google_adsense` longtext DEFAULT NULL,
  `google_tag_manager` longtext DEFAULT NULL,
  `yandex_metrica` longtext DEFAULT NULL,
  `og_url` longtext DEFAULT NULL,
  `og_image` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advanceds`
--

INSERT INTO `advanceds` (`id`, `facebook_sdk`, `facebook_messenger`, `meta_pixel`, `google_analytics`, `google_ads`, `google_adsense`, `google_tag_manager`, `yandex_metrica`, `og_url`, `og_image`, `created_at`, `updated_at`) VALUES
(2, '<div style=\"line-height: 19px;\"><div style=\"\">&lt;!-- Your SDK code --&gt;</div><div style=\"\">&lt;script&gt;</div><div style=\"\">&nbsp; &nbsp; window.fbAsyncInit = function() {</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; FB.init({</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; xfbml: true,</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; version: \'v15.0\'</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; });</div><div style=\"\">&nbsp; &nbsp; };</div><br><div style=\"\">&nbsp; &nbsp; (function(d, s, id) {</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; var js, fjs = d.getElementsByTagName(s)[0];</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; if (d.getElementById(id)) return;</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; js = d.createElement(s);</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; js.id = id;</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; fjs.parentNode.insertBefore(js, fjs);</div><div style=\"\">&nbsp; &nbsp; }(document, \'script\', \'facebook-jssdk\'));</div><div style=\"\">&lt;/script&gt;</div></div>', '<div style=\"line-height: 19px;\"><div style=\"\">&lt;!-- Messenger Chat Plugin Code --&gt;</div><div style=\"\">&nbsp; &nbsp; &lt;div id=\"fb-root\"&gt;&lt;/div&gt;</div><br><div style=\"\">&nbsp; &nbsp; &lt;!-- Your Chat Plugin code --&gt;</div><div style=\"\">&nbsp; &nbsp; &lt;div id=\"fb-customer-chat\" class=\"fb-customerchat\"&gt;</div><div style=\"\">&nbsp; &nbsp; &lt;/div&gt;</div><br><div style=\"\">&nbsp; &nbsp; &lt;script&gt;</div><div style=\"\">&nbsp; &nbsp; &nbsp; var chatbox = document.getElementById(\'fb-customer-chat\');</div><div style=\"\">&nbsp; &nbsp; &nbsp; chatbox.setAttribute(\"page_id\", \"108229158722532\");</div><div style=\"\">&nbsp; &nbsp; &nbsp; chatbox.setAttribute(\"attribution\", \"biz_inbox\");</div><div style=\"\">&nbsp; &nbsp; &lt;/script&gt;</div><br><div style=\"\">&nbsp; &nbsp; &lt;!-- Your SDK code --&gt;</div><div style=\"\">&nbsp; &nbsp; &lt;script&gt;</div><div style=\"\">&nbsp; &nbsp; &nbsp; window.fbAsyncInit = function() {</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; FB.init({</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; xfbml &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: true,</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; version &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: \'v15.0\'</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; });</div><div style=\"\">&nbsp; &nbsp; &nbsp; };</div><br><div style=\"\">&nbsp; &nbsp; &nbsp; (function(d, s, id) {</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; var js, fjs = d.getElementsByTagName(s)[0];</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; if (d.getElementById(id)) return;</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; js = d.createElement(s); js.id = id;</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';</div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; fjs.parentNode.insertBefore(js, fjs);</div><div style=\"\">&nbsp; &nbsp; &nbsp; }(document, \'script\', \'facebook-jssdk\'));</div><div style=\"\">&nbsp; &nbsp; &lt;/script&gt;</div></div>', '<span style=\"color: rgb(52, 57, 94); font-family: &quot;BPG Mrgvlovani&quot;, sans-serif; font-size: 12px; font-weight: 600; letter-spacing: 0.5px;\">Meta Pixel</span>', '<span style=\"color: rgb(52, 57, 94); font-family: &quot;BPG Mrgvlovani&quot;, sans-serif; font-size: 12px; font-weight: 600; letter-spacing: 0.5px;\">Google Analytics</span>', '<span style=\"color: rgb(52, 57, 94); font-family: &quot;BPG Mrgvlovani&quot;, sans-serif; font-size: 12px; font-weight: 600; letter-spacing: 0.5px;\">Google Ads</span>', '<span style=\"color: rgb(52, 57, 94); font-family: &quot;BPG Mrgvlovani&quot;, sans-serif; font-size: 12px; font-weight: 600; letter-spacing: 0.5px;\">Google Adsense</span>', NULL, NULL, 'https://foodly.space/', '20240116000604.png', '2022-10-21 09:30:06', '2024-01-16 00:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `advanced_translations`
--

CREATE TABLE `advanced_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advanced_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advanced_translations`
--

INSERT INTO `advanced_translations` (`id`, `advanced_id`, `locale`, `og_title`, `og_description`, `created_at`, `updated_at`) VALUES
(4, 2, 'en', 'Foodly', 'Restaurants Reservation Portal - Foodly®', '2022-10-21 09:30:06', '2024-02-11 14:58:53'),
(5, 2, 'ka', 'ფუდლი', 'რესტორნების რეზერვაციის პორტალი - Foodly®', '2022-10-21 09:30:06', '2024-02-11 14:58:53'),
(6, 2, 'ru', 'CoFi®', 'Web & Mobile Development Company', '2022-10-21 09:30:06', '2023-07-27 21:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `table_id`, `product_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(37, 0, 56, 150, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `restaurant_id` int(10) UNSIGNED DEFAULT NULL,
  `image` text DEFAULT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `restaurant_id`, `image`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(81, NULL, 11, '20240130122044.png', 100, 1, '2023-10-14 12:09:59', '2024-01-30 08:20:44'),
(82, NULL, 11, '20240130121855.png', 200, 1, '2023-10-14 12:10:09', '2024-01-30 08:18:55'),
(83, 139, 4, '20231213114944.png', 2, 1, '2023-10-14 12:10:25', '2023-12-13 07:49:44'),
(84, 139, 4, '20240118173022.png', 1, 1, '2023-10-14 12:10:38', '2024-01-18 17:30:22'),
(85, 143, 10, '20231014192629.png', 3, 1, '2023-10-14 12:10:52', '2023-12-13 08:25:18'),
(86, 81, 11, '20231014194902.png', 4, 0, '2023-10-14 12:11:25', '2023-12-16 19:39:21'),
(87, 139, 4, '20231213121959.png', 5, 0, '2023-10-14 12:11:47', '2023-12-13 08:20:34'),
(89, 82, 11, '20231014161221.png', 6, 0, '2023-10-14 12:12:21', '2023-12-13 08:11:22'),
(94, 82, 11, '20231025162542.png', 7, 0, '2023-10-25 12:25:42', '2023-12-13 08:12:36'),
(95, 139, 4, '20231213121733.png', 8, 1, '2023-10-26 13:28:08', '2023-12-13 08:17:33'),
(97, 82, 11, '20231105165024.png', 9, 0, '2023-11-05 12:50:24', '2023-12-13 08:11:30'),
(101, 139, 4, '20231213115016.png', 3, 1, '2023-11-15 12:44:32', '2023-12-13 07:50:16'),
(102, 139, 4, '20231202004701.png', 17, 0, '2023-12-01 20:47:01', '2023-12-13 09:52:46'),
(107, 139, 4, '20231213115110.png', 4, 1, '2023-12-05 16:05:17', '2023-12-13 07:51:10'),
(108, 143, 10, '20231207170751.png', 18, 1, '2023-12-07 17:07:51', '2023-12-13 08:14:51'),
(109, 143, 10, '20231207171643.png', 19, 1, '2023-12-07 17:16:43', '2023-12-13 08:15:34'),
(110, 81, 11, '20231209184257.png', 44, 1, '2023-12-09 18:42:57', '2023-12-16 18:29:41'),
(111, 81, 11, '20231209184442.png', 45, 0, '2023-12-09 18:44:42', '2023-12-10 20:15:38'),
(112, 82, 11, '20231215184453.png', 65, 1, '2023-12-09 20:17:20', '2023-12-15 18:44:53'),
(113, 82, 11, '20231215184248.png', 64, 1, '2023-12-09 20:17:44', '2023-12-15 18:42:48'),
(114, 82, 11, '20231215184047.png', 51, 1, '2023-12-09 20:18:49', '2023-12-15 18:40:47'),
(115, 82, 11, '20231209215337.png', 52, 1, '2023-12-09 20:19:15', '2023-12-13 08:11:07'),
(116, 82, 11, '20231215184119.png', 53, 1, '2023-12-09 20:20:38', '2023-12-15 18:41:19'),
(117, 82, 11, '20231209215600.png', 54, 1, '2023-12-09 20:20:57', '2023-12-09 21:56:00'),
(118, 82, 11, '20231209221106.png', 55, 1, '2023-12-09 20:21:17', '2023-12-09 22:11:06'),
(119, 82, 11, '20231209220731.png', 56, 1, '2023-12-09 20:22:29', '2023-12-09 22:07:31'),
(120, 82, 11, '20231209220623.png', 57, 1, '2023-12-09 20:22:47', '2023-12-09 22:06:23'),
(121, 82, 11, '20231209214836.png', 58, 1, '2023-12-09 20:23:41', '2023-12-09 21:48:36'),
(122, 82, 11, '20231209214659.png', 59, 1, '2023-12-09 20:34:22', '2023-12-09 21:46:59'),
(123, 82, 11, '20231209220358.png', 60, 1, '2023-12-09 20:35:59', '2023-12-09 22:03:58'),
(124, 82, 11, '20231209220207.png', 61, 1, '2023-12-09 20:48:36', '2023-12-09 22:02:07'),
(125, 82, 11, '20231209215903.png', 62, 0, '2023-12-09 20:48:52', '2023-12-13 08:12:03'),
(126, 82, 11, NULL, 63, 0, '2023-12-09 20:49:27', '2023-12-10 19:43:47'),
(128, 81, 11, '20231210185619.png', 2, 1, '2023-12-09 21:33:39', '2023-12-10 19:31:40'),
(129, 81, 11, '20231210190342.png', 3, 1, '2023-12-09 21:34:00', '2023-12-10 19:03:42'),
(130, 81, 11, '20231210191624.png', 4, 1, '2023-12-09 21:34:17', '2023-12-10 19:16:24'),
(131, 81, 11, '20231210190543.png', 5, 1, '2023-12-09 21:34:36', '2023-12-10 19:05:43'),
(132, 81, 11, '20231210190630.png', 6, 1, '2023-12-09 21:34:59', '2023-12-10 19:06:30'),
(133, 81, 11, '20231210190721.png', 7, 1, '2023-12-09 21:35:37', '2023-12-10 19:07:43'),
(134, 81, 11, '20231210191047.png', 8, 1, '2023-12-09 21:35:53', '2023-12-10 19:10:47'),
(135, 81, 11, '20231210191315.png', 9, 1, '2023-12-09 21:36:08', '2023-12-10 19:13:15'),
(136, 81, 11, '20231210191456.png', 10, 1, '2023-12-09 21:36:24', '2023-12-10 19:15:04'),
(137, NULL, 4, '20240214200624.png', 3, 1, '2023-12-12 11:18:25', '2024-02-14 20:06:24'),
(139, NULL, 4, '20231212161904.png', 1, 1, '2023-12-12 12:08:26', '2023-12-12 12:19:04'),
(140, NULL, 4, '20231212161958.png', 2, 1, '2023-12-12 12:16:27', '2023-12-12 12:19:58'),
(141, 140, 4, '20231213122232.png', 1, 1, '2023-12-12 12:55:08', '2023-12-13 08:22:32'),
(142, 140, 4, '20231212170029.png', 2, 1, '2023-12-12 13:00:29', '2023-12-12 13:00:29'),
(143, NULL, 10, '20231217190352.png', 1, 1, '2023-12-13 08:14:31', '2023-12-17 19:03:52'),
(144, NULL, 12, '20231216023653.png', 1, 0, '2023-12-14 13:53:58', '2023-12-27 15:03:38'),
(145, NULL, 12, '20231216023705.png', 2, 0, '2023-12-14 13:54:18', '2023-12-27 15:04:49'),
(146, 144, 12, '20231216023802.jpg', 1, 1, '2023-12-14 13:56:00', '2023-12-16 02:38:02'),
(147, 144, 12, '20231216023813.jpg', 2, 1, '2023-12-14 13:56:34', '2023-12-16 02:38:13'),
(148, 144, 12, '20231216023751.jpg', 3, 1, '2023-12-14 14:00:08', '2023-12-18 12:11:18'),
(149, 144, 12, '20231216023935.jpg', 4, 1, '2023-12-14 14:00:37', '2023-12-16 02:39:35'),
(151, NULL, 10, '20231217190621.png', 2, 1, '2023-12-17 19:06:21', '2023-12-17 19:06:21'),
(152, NULL, 8, '20231217190930.png', 1, 0, '2023-12-17 19:09:30', '2023-12-17 19:09:30'),
(153, NULL, 8, '20231217191034.png', 2, 0, '2023-12-17 19:10:00', '2023-12-17 19:10:34'),
(154, NULL, 15, '20231218012200.png', 1, 0, '2023-12-18 01:22:00', '2023-12-25 01:11:19'),
(155, NULL, 15, '20231218012223.png', 2, 0, '2023-12-18 01:22:23', '2023-12-25 01:11:30'),
(156, NULL, 16, '20231219131213.webp', 1, 0, '2023-12-19 13:12:13', '2023-12-20 20:50:45'),
(157, NULL, 16, '20231219131239.webp', 2, 0, '2023-12-19 13:12:39', '2023-12-20 20:50:41'),
(158, 82, 16, '20231209215600.png', 54, 1, '2023-12-09 20:20:57', '2023-12-09 21:56:00'),
(159, 157, 16, NULL, 1, 1, '2023-12-19 13:24:22', '2023-12-19 13:24:22'),
(160, 157, 16, NULL, 2, 1, '2023-12-19 13:30:02', '2023-12-19 13:30:02'),
(161, 157, 16, NULL, 3, 1, '2023-12-19 13:47:00', '2023-12-19 13:47:00'),
(162, NULL, 17, '20231219151550.webp', 1, 0, '2023-12-19 15:15:50', '2023-12-21 02:13:27'),
(163, NULL, 17, '20231219151615.webp', 2, 0, '2023-12-19 15:16:15', '2023-12-21 02:13:41'),
(164, NULL, 18, '20231219155148.webp', 1, 1, '2023-12-19 15:51:48', '2023-12-19 15:51:48'),
(165, NULL, 18, '20231219155205.webp', 2, 1, '2023-12-19 15:52:05', '2023-12-19 15:52:05'),
(166, 152, 8, '20231219155959.jpg', 1, 0, '2023-12-19 15:59:59', '2023-12-19 16:00:24'),
(167, 152, 8, '20231219160130.jpg', 2, 0, '2023-12-19 16:01:30', '2023-12-19 16:01:30'),
(168, 152, 8, '20231219160359.jpg', 3, 0, '2023-12-19 16:03:59', '2023-12-19 16:03:59'),
(169, 152, 8, '20231219160433.jpg', 4, 0, '2023-12-19 16:04:33', '2023-12-19 16:04:33'),
(170, 152, 8, '20231219160508.jpg', 5, 0, '2023-12-19 16:05:08', '2023-12-19 16:05:08'),
(171, 152, 8, '20231219160544.jpg', 6, 1, '2023-12-19 16:05:44', '2023-12-19 16:05:44'),
(172, 153, 8, '20231219162016.jpg', 1, 0, '2023-12-19 16:20:16', '2024-01-20 01:25:41'),
(173, 153, 8, '20231219162056.jpg', 2, 1, '2023-12-19 16:20:56', '2023-12-19 16:20:56'),
(174, 153, 8, '20231219162243.jpg', 3, 1, '2023-12-19 16:22:43', '2023-12-19 16:22:43'),
(175, 153, 8, '20231219162331.jpg', 4, 1, '2023-12-19 16:23:31', '2023-12-19 16:23:31'),
(176, 153, 8, '20231219162533.jpg', 5, 1, '2023-12-19 16:25:33', '2023-12-19 16:25:33'),
(177, 153, 8, '20231219162634.jpg', 6, 1, '2023-12-19 16:26:34', '2023-12-19 16:26:34'),
(178, 153, 8, '20231219162802.jpg', 7, 1, '2023-12-19 16:28:02', '2023-12-19 16:28:02'),
(179, 153, 8, '20231219162826.jpg', 8, 1, '2023-12-19 16:28:26', '2023-12-19 16:28:26'),
(180, 153, 8, '20231219162912.jpg', 9, 1, '2023-12-19 16:29:12', '2023-12-19 16:29:12'),
(181, 153, 8, '20231219162951.jpg', 10, 1, '2023-12-19 16:29:51', '2023-12-19 16:38:12'),
(182, 153, 8, '20231219163052.jpg', 11, 1, '2023-12-19 16:30:52', '2023-12-19 16:30:52'),
(184, 153, 8, '20231219163406.jpg', 12, 1, '2023-12-19 16:34:06', '2023-12-19 16:34:06'),
(185, 153, 8, '20231219163516.jpg', 13, 1, '2023-12-19 16:35:16', '2023-12-19 16:35:16'),
(186, 153, 8, '20231219163558.jpg', 14, 1, '2023-12-19 16:35:58', '2023-12-19 16:37:50'),
(187, 153, 8, '20231219164406.jpg', 15, 1, '2023-12-19 16:44:06', '2023-12-19 16:44:06'),
(188, 153, 8, '20231219164430.jpg', 16, 1, '2023-12-19 16:44:30', '2023-12-19 16:46:58'),
(189, 153, 8, '20231219164459.jpg', 17, 1, '2023-12-19 16:44:59', '2023-12-19 16:44:59'),
(190, 153, 8, '20231219164537.jpg', 18, 1, '2023-12-19 16:45:37', '2023-12-19 16:45:37'),
(191, 153, 8, '20231219164632.jpg', 19, 1, '2023-12-19 16:46:32', '2023-12-19 16:46:32'),
(192, 137, 4, '20240212042953.png', 1, 1, '2023-12-20 00:00:40', '2024-02-12 04:29:53'),
(193, NULL, 20, '20231220181001.webp', 1, 0, '2023-12-20 18:10:01', '2024-01-10 14:55:28'),
(194, NULL, 20, '20231220181037.webp', 2, 0, '2023-12-20 18:10:37', '2024-01-10 14:55:32'),
(195, 193, 20, NULL, 1, 0, '2023-12-20 18:12:04', '2024-01-10 14:55:09'),
(196, NULL, 35, '20240220195724.png', 1, 1, '2024-02-17 14:45:50', '2024-02-20 19:57:24'),
(197, NULL, 35, '20240217144633.png', 2, 1, '2024-02-17 14:46:33', '2024-02-17 14:46:33'),
(198, NULL, 35, '20240220195917.png', 3, 1, '2024-02-17 14:47:51', '2024-02-20 19:59:17'),
(206, 196, 35, '20240223005418.png', 1, 1, '2024-02-22 20:54:18', '2024-02-22 20:57:24'),
(207, 196, 35, '20240223005717.png', 2, 1, '2024-02-22 20:57:17', '2024-02-22 20:57:17'),
(208, 196, 35, '20240223005838.png', 3, 1, '2024-02-22 20:58:38', '2024-02-22 20:58:38'),
(209, 196, 35, '20240223005925.png', 4, 1, '2024-02-22 20:59:25', '2024-02-22 20:59:25'),
(210, 196, 35, '20240223010026.png', 5, 1, '2024-02-22 21:00:26', '2024-02-22 21:00:26'),
(211, 196, 35, '20240223010113.png', 6, 1, '2024-02-22 21:01:13', '2024-02-22 21:01:13'),
(212, 196, 35, '20240223010159.png', 7, 1, '2024-02-22 21:01:59', '2024-02-22 21:01:59'),
(213, 196, 35, '20240223010506.png', 8, 1, '2024-02-22 21:03:05', '2024-02-22 21:05:06'),
(214, 196, 35, '20240223010609.png', 9, 1, '2024-02-22 21:06:09', '2024-02-22 21:06:09'),
(215, 196, 35, '20240223010659.png', 10, 1, '2024-02-22 21:06:59', '2024-02-22 21:06:59'),
(216, 196, 35, '20240223011811.png', 12, 1, '2024-02-22 21:18:11', '2024-02-23 12:12:54'),
(217, 196, 35, '20240223121443.png', 11, 1, '2024-02-23 12:13:26', '2024-02-23 12:14:43'),
(218, 197, 35, '20240224011905.png', NULL, 1, '2024-02-23 19:37:02', '2024-02-24 01:19:05'),
(219, 197, 35, '20240224012005.png', NULL, 1, '2024-02-23 22:24:52', '2024-02-24 01:20:05'),
(220, 197, 35, '20240224012049.png', NULL, 1, '2024-02-23 22:33:10', '2024-02-24 01:20:49'),
(221, 197, 35, '20240224012154.png', NULL, 1, '2024-02-23 23:44:42', '2024-02-24 01:21:54'),
(222, 197, 35, '20240224012229.png', NULL, 1, '2024-02-24 00:30:29', '2024-02-24 01:22:29'),
(223, 197, 35, NULL, NULL, 1, '2024-02-24 00:35:18', '2024-02-24 00:35:18'),
(224, 197, 35, '20240224012339.png', NULL, 1, '2024-02-24 01:11:48', '2024-02-24 01:23:39'),
(225, 197, 35, '20240224012411.png', NULL, 1, '2024-02-24 01:12:11', '2024-02-24 01:24:11'),
(226, 197, 35, NULL, NULL, 1, '2024-02-24 02:43:37', '2024-02-24 02:43:37'),
(227, 197, 35, NULL, NULL, 1, '2024-02-24 11:05:47', '2024-02-24 11:05:47'),
(228, 197, 35, NULL, NULL, 1, '2024-02-24 11:28:25', '2024-02-24 11:28:25'),
(229, 197, 35, NULL, NULL, 1, '2024-02-24 11:33:57', '2024-02-24 11:33:57'),
(230, 197, 35, NULL, NULL, 1, '2024-02-24 12:03:35', '2024-02-24 12:03:35'),
(231, 197, 35, NULL, NULL, 1, '2024-02-24 12:05:16', '2024-02-24 12:05:16'),
(232, 197, 35, NULL, NULL, 1, '2024-02-24 12:06:28', '2024-02-24 12:06:28'),
(233, 197, 35, NULL, NULL, 1, '2024-02-24 12:57:19', '2024-02-24 12:57:19'),
(234, 197, 35, NULL, NULL, 1, '2024-02-24 12:57:31', '2024-02-24 12:57:31'),
(235, 197, 35, NULL, NULL, 1, '2024-02-24 12:59:55', '2024-02-24 12:59:55'),
(236, 197, 35, NULL, NULL, 1, '2024-02-24 13:23:10', '2024-02-24 13:23:10'),
(237, 197, 35, NULL, NULL, 1, '2024-02-24 13:23:47', '2024-02-24 13:23:47'),
(238, 197, 35, NULL, NULL, 1, '2024-02-24 14:19:10', '2024-02-24 14:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(218, 81, 'en', 'Foods', 'Foods', '2023-10-14 12:09:59', '2023-10-14 12:09:59'),
(219, 81, 'ka', 'კერძები', 'კერძები', '2023-10-14 12:09:59', '2023-10-14 12:09:59'),
(220, 82, 'en', 'Drinks', 'Drinks', '2023-10-14 12:10:09', '2023-10-14 12:10:09'),
(221, 82, 'ka', 'სასმელები', 'სასმელები', '2023-10-14 12:10:09', '2023-10-14 12:10:09'),
(222, 83, 'en', 'Salads', 'Salads', '2023-10-14 12:10:25', '2023-10-14 12:10:25'),
(223, 83, 'ka', 'სალათები', 'სალათები', '2023-10-14 12:10:25', '2023-10-14 12:10:25'),
(224, 84, 'en', 'Appetizers', 'Appetizers', '2023-10-14 12:10:38', '2023-10-14 12:10:38'),
(225, 84, 'ka', 'აპეტაიზერები', 'აპეტაიზერები', '2023-10-14 12:10:38', '2023-10-14 12:10:38'),
(226, 85, 'en', 'Soups', 'Soups', '2023-10-14 12:10:52', '2023-10-14 12:10:52'),
(227, 85, 'ka', 'სუპები', 'სუპები', '2023-10-14 12:10:52', '2023-10-14 12:10:52'),
(228, 86, 'en', 'Fishes', 'Fishes', '2023-10-14 12:11:25', '2023-10-14 15:49:36'),
(229, 86, 'ka', 'თევზეული', 'თევზეული', '2023-10-14 12:11:25', '2023-10-14 15:49:36'),
(230, 87, 'en', 'Desserts', 'Desserts', '2023-10-14 12:11:47', '2023-10-14 12:11:47'),
(231, 87, 'ka', 'დესერტები', 'დესერტები', '2023-10-14 12:11:47', '2023-10-14 12:11:47'),
(234, 89, 'en', 'Alcoholic', 'Alcoholic', '2023-10-14 12:12:21', '2023-10-14 12:12:21'),
(235, 89, 'ka', 'ალკოჰოლი', 'ალკოჰოლი', '2023-10-14 12:12:21', '2023-10-14 12:12:21'),
(244, 94, 'en', 'cocktail', 'კოქტეილი', '2023-10-25 12:25:42', '2023-10-25 12:25:42'),
(245, 94, 'ka', 'კოქტეილი', 'cocktail', '2023-10-25 12:25:42', '2023-10-25 12:25:42'),
(246, 95, 'en', 'Pizza', 'Pizza', '2023-10-26 13:28:08', '2023-10-26 13:28:08'),
(247, 95, 'ka', 'პიცა', 'პიცა', '2023-10-26 13:28:08', '2023-10-26 13:28:08'),
(250, 97, 'en', 'Soft Drinks', 'Soft Drinks', '2023-11-05 12:50:24', '2023-11-05 12:50:24'),
(251, 97, 'ka', 'გამაგრილებელი', 'გამაგრილებელი', '2023-11-05 12:50:24', '2023-11-05 12:50:24'),
(257, 101, 'en', 'Pasta', 'Pasta', '2023-11-15 12:44:32', '2023-11-15 12:44:32'),
(258, 101, 'ka', 'პასტა', 'პასტა', '2023-11-15 12:44:32', '2023-11-15 12:44:32'),
(259, 102, 'en', 'Breakfast', 'Breakfast', '2023-12-01 20:47:01', '2023-12-01 20:47:01'),
(260, 102, 'ka', 'საუზმე', 'საუზმე', '2023-12-01 20:47:01', '2023-12-01 20:47:01'),
(267, 107, 'en', 'Khachapuri', 'Khachapuri', '2023-12-05 16:05:17', '2023-12-05 16:05:17'),
(268, 107, 'ka', 'ხაჭაპური', 'ხაჭაპური', '2023-12-05 16:05:17', '2023-12-05 16:05:17'),
(269, 108, 'en', 'Burger', 'Burger', '2023-12-07 17:07:51', '2023-12-07 17:07:51'),
(270, 108, 'ka', 'ბურგერი', 'ბურგერი', '2023-12-07 17:07:51', '2023-12-07 17:07:51'),
(271, 109, 'en', 'Skewers', 'Skewers', '2023-12-07 17:16:43', '2023-12-07 17:16:43'),
(272, 109, 'ka', 'მწვადი', 'მწვადი', '2023-12-07 17:16:43', '2023-12-07 17:16:43'),
(273, 110, 'en', 'Cold dishes', 'Cold dishes', '2023-12-09 18:42:57', '2023-12-09 18:42:57'),
(274, 110, 'ka', 'ცივი კერძები', 'ცივი კერძები', '2023-12-09 18:42:57', '2023-12-09 18:42:57'),
(275, 111, 'en', 'Soups', 'Soups', '2023-12-09 18:44:42', '2023-12-09 18:44:42'),
(276, 111, 'ka', 'წვნიანი', 'წვნიანი', '2023-12-09 18:44:42', '2023-12-09 18:44:42'),
(277, 112, 'en', 'Aperitivo', 'Aperitivo', '2023-12-09 20:17:20', '2023-12-15 18:46:31'),
(278, 112, 'ka', 'აპერატივი', 'აპერატივი', '2023-12-09 20:17:20', '2023-12-09 20:17:20'),
(279, 113, 'en', 'Vodka', 'Vodka', '2023-12-09 20:17:44', '2023-12-15 18:50:24'),
(280, 113, 'ka', 'არაყი', 'არაყი', '2023-12-09 20:17:44', '2023-12-09 20:17:44'),
(281, 114, 'en', 'Gin', 'Gin', '2023-12-09 20:18:49', '2023-12-15 18:50:12'),
(282, 114, 'ka', 'ჯინი', 'ჯინი', '2023-12-09 20:18:49', '2023-12-09 20:18:49'),
(283, 115, 'en', 'Champagne', 'Champagne', '2023-12-09 20:19:15', '2023-12-15 18:50:46'),
(284, 115, 'ka', 'შამპანური', 'შამპანური', '2023-12-09 20:19:15', '2023-12-09 20:19:15'),
(285, 116, 'en', 'Coffee', 'Coffee', '2023-12-09 20:20:38', '2023-12-15 18:51:26'),
(286, 116, 'ka', 'ყავა', 'ყავა', '2023-12-09 20:20:38', '2023-12-09 20:20:38'),
(287, 117, 'en', 'Wine', 'Wine', '2023-12-09 20:20:57', '2023-12-15 18:54:40'),
(288, 117, 'ka', 'ღვინო', 'ღვინო', '2023-12-09 20:20:57', '2023-12-09 20:20:57'),
(289, 118, 'en', 'Non-alcoholic', 'Non-alcoholic', '2023-12-09 20:21:17', '2023-12-15 18:56:37'),
(290, 118, 'ka', 'უალკოჰოლო', 'უალკოჰოლო', '2023-12-09 20:21:17', '2023-12-09 20:21:17'),
(291, 119, 'en', 'Tequila', 'Tequila', '2023-12-09 20:22:29', '2023-12-15 18:52:07'),
(292, 119, 'ka', 'ტეკილა', 'ტეკილა', '2023-12-09 20:22:29', '2023-12-09 20:22:29'),
(293, 120, 'en', 'RUM', 'RUM', '2023-12-09 20:22:47', '2023-12-15 18:55:49'),
(294, 120, 'ka', 'რომი', 'რომი', '2023-12-09 20:22:47', '2023-12-09 20:22:47'),
(295, 121, 'en', 'Beer', 'Beer', '2023-12-09 20:23:41', '2023-12-15 18:53:56'),
(296, 121, 'ka', 'ლუდი', 'ლუდი', '2023-12-09 20:23:41', '2023-12-09 20:23:41'),
(297, 122, 'en', 'Liqueurs', 'Liqueurs', '2023-12-09 20:34:22', '2023-12-15 18:48:48'),
(298, 122, 'ka', 'ლიქიორი', 'ლიქიორი', '2023-12-09 20:34:22', '2023-12-09 20:34:22'),
(299, 123, 'en', 'Cocktails', 'Cocktails', '2023-12-09 20:35:59', '2023-12-15 18:49:44'),
(300, 123, 'ka', 'კოქტეილები', 'კოქტეილები', '2023-12-09 20:35:59', '2023-12-09 20:35:59'),
(301, 124, 'en', 'Cognac', 'Cognac', '2023-12-09 20:48:36', '2023-12-15 18:53:32'),
(302, 124, 'ka', 'კონიაკი', 'კონიაკი', '2023-12-09 20:48:36', '2023-12-09 20:48:36'),
(303, 125, 'en', 'ვისკი', 'ვისკი', '2023-12-09 20:48:52', '2023-12-09 20:48:52'),
(304, 125, 'ka', 'ვისკი', 'ვისკი', '2023-12-09 20:48:52', '2023-12-09 20:48:52'),
(305, 126, 'en', 'დამატებით', 'დამატებით', '2023-12-09 20:49:27', '2023-12-09 20:49:27'),
(306, 126, 'ka', 'დამატებით', 'დამატებით', '2023-12-09 20:49:27', '2023-12-09 20:49:27'),
(309, 128, 'en', 'Burgers', 'Burgers', '2023-12-09 21:33:39', '2023-12-15 18:57:41'),
(310, 128, 'ka', 'ბურგერები', 'ბურგერები', '2023-12-09 21:33:39', '2023-12-09 21:33:39'),
(311, 129, 'en', 'Garnishes', 'Garnishes', '2023-12-09 21:34:00', '2023-12-15 18:58:13'),
(312, 129, 'ka', 'გარნირები', 'გარნირები', '2023-12-09 21:34:00', '2023-12-09 21:34:00'),
(313, 130, 'en', 'Desserts', 'Desserts', '2023-12-09 21:34:17', '2023-12-15 19:02:39'),
(314, 130, 'ka', 'დესერტი', 'დესერტი', '2023-12-09 21:34:17', '2023-12-09 21:34:17'),
(315, 131, 'en', 'Pasta', 'Pasta', '2023-12-09 21:34:36', '2023-12-15 18:58:46'),
(316, 131, 'ka', 'პასტა', 'პასტა', '2023-12-09 21:34:36', '2023-12-09 21:34:36'),
(317, 132, 'en', 'Sauces', 'Sauces', '2023-12-09 21:34:59', '2023-12-15 18:59:17'),
(318, 132, 'ka', 'სოუსები', 'სოუსები', '2023-12-09 21:34:59', '2023-12-09 21:34:59'),
(319, 133, 'en', 'Steaks', 'Steaks', '2023-12-09 21:35:37', '2023-12-15 18:59:44'),
(320, 133, 'ka', 'სტეიკები', 'სტეიკები', '2023-12-09 21:35:37', '2023-12-09 21:35:37'),
(321, 134, 'en', 'Soups', 'Soups', '2023-12-09 21:35:53', '2023-12-15 19:00:15'),
(322, 134, 'ka', 'სუპები', 'სუპები', '2023-12-09 21:35:53', '2023-12-09 21:35:53'),
(323, 135, 'en', 'Baked', 'Baked', '2023-12-09 21:36:08', '2023-12-15 19:00:45'),
(324, 135, 'ka', 'ცომეული', 'ცომეული', '2023-12-09 21:36:08', '2023-12-09 21:36:08'),
(325, 136, 'en', 'Snaks', 'Snaks', '2023-12-09 21:36:24', '2023-12-15 19:01:19'),
(326, 136, 'ka', 'ხემსი', 'ხემსი', '2023-12-09 21:36:24', '2023-12-09 21:36:24'),
(327, 137, 'en', 'Sushi', 'სუში', '2023-12-12 11:18:25', '2023-12-12 11:18:25'),
(328, 137, 'ka', 'სუში', 'სუში', '2023-12-12 11:18:25', '2023-12-12 11:18:25'),
(331, 139, 'en', 'Food', 'Food', '2023-12-12 12:08:26', '2023-12-12 12:19:16'),
(332, 139, 'ka', 'კერძები', 'კერძები', '2023-12-12 12:08:26', '2023-12-12 12:19:16'),
(333, 140, 'en', 'Bar', 'Bar', '2023-12-12 12:16:27', '2023-12-12 12:16:27'),
(334, 140, 'ka', 'ბარი', 'ბარი', '2023-12-12 12:16:27', '2023-12-12 12:16:27'),
(335, 141, 'en', 'Whiskey', 'Whiskey', '2023-12-12 12:55:08', '2023-12-12 12:55:08'),
(336, 141, 'ka', 'ვისკი', 'Whiskey', '2023-12-12 12:55:08', '2023-12-12 12:55:08'),
(337, 142, 'en', 'Cocktail', 'Cocktail', '2023-12-12 13:00:29', '2023-12-12 13:00:29'),
(338, 142, 'ka', 'კოქტეილი', 'კოქტეილი', '2023-12-12 13:00:29', '2023-12-12 13:00:29'),
(339, 143, 'en', 'საკვები', 'საკვები', '2023-12-13 08:14:31', '2023-12-13 08:14:31'),
(340, 143, 'ka', 'საკვები', 'საკვები', '2023-12-13 08:14:31', '2023-12-13 08:14:31'),
(341, 144, 'en', 'Food', 'Food', '2023-12-14 13:53:58', '2023-12-14 13:53:58'),
(342, 144, 'ka', 'კერძები', 'კერძები', '2023-12-14 13:53:58', '2023-12-14 13:53:58'),
(343, 145, 'en', 'Drinks', 'Drinks', '2023-12-14 13:54:18', '2023-12-14 13:54:18'),
(344, 145, 'ka', 'სასმელები', 'სასმელები', '2023-12-14 13:54:18', '2023-12-14 13:54:18'),
(345, 146, 'en', 'Apetaizer', 'Appetizer', '2023-12-14 13:56:00', '2023-12-14 13:56:00'),
(346, 146, 'ka', 'აპეტაიზერი', 'აპეტაიზერი', '2023-12-14 13:56:00', '2023-12-14 13:56:00'),
(347, 147, 'en', 'Salad', 'Salad', '2023-12-14 13:56:34', '2023-12-14 13:56:34'),
(348, 147, 'ka', 'სალათი', 'სალათი', '2023-12-14 13:56:34', '2023-12-14 13:56:34'),
(349, 148, 'en', 'Soup', 'Soup', '2023-12-14 14:00:08', '2023-12-14 14:00:08'),
(350, 148, 'ka', 'წვნიანი', 'წვნიანი', '2023-12-14 14:00:08', '2023-12-14 14:00:08'),
(351, 149, 'en', 'Main Dish', 'Main Dish', '2023-12-14 14:00:37', '2023-12-14 14:00:37'),
(352, 149, 'ka', 'ძირითადი კერძები', 'ძირითადი კერძები', '2023-12-14 14:00:38', '2023-12-14 14:00:38'),
(355, 151, 'en', 'Drinks', 'სასმელები', '2023-12-17 19:06:21', '2023-12-17 19:06:21'),
(356, 151, 'ka', 'სასმელი', 'სასმელი', '2023-12-17 19:06:21', '2023-12-17 19:06:54'),
(357, 152, 'en', 'Food', 'Food', '2023-12-17 19:09:30', '2023-12-17 19:09:30'),
(358, 152, 'ka', 'კერძები', 'კერძები', '2023-12-17 19:09:30', '2023-12-17 19:09:30'),
(359, 153, 'en', 'Drinks', 'Drinks', '2023-12-17 19:10:00', '2023-12-17 19:10:00'),
(360, 153, 'ka', 'სასმელი', 'სასმელი', '2023-12-17 19:10:00', '2023-12-17 19:10:00'),
(361, 154, 'en', 'Food', 'Food', '2023-12-18 01:22:00', '2023-12-18 01:22:00'),
(362, 154, 'ka', 'კერძები', 'კერძები', '2023-12-18 01:22:00', '2023-12-18 01:22:00'),
(363, 155, 'en', 'Drinks', 'Drinks', '2023-12-18 01:22:23', '2023-12-18 01:22:23'),
(364, 155, 'ka', 'სასმელი', 'სასმელი', '2023-12-18 01:22:23', '2023-12-18 01:22:23'),
(365, 156, 'en', 'Food', 'Food', '2023-12-19 13:12:13', '2023-12-19 13:12:13'),
(366, 156, 'ka', 'კერძები', 'კერძები', '2023-12-19 13:12:13', '2023-12-19 13:12:13'),
(367, 157, 'en', 'Drinks', 'Drinks', '2023-12-19 13:12:39', '2023-12-19 13:12:39'),
(368, 157, 'ka', 'სასმელები', 'სასმელები', '2023-12-19 13:12:39', '2023-12-19 13:12:39'),
(369, 159, 'en', 'Wine', 'Wine', '2023-12-19 13:24:22', '2023-12-19 13:24:22'),
(370, 159, 'ka', 'ღვინო', 'ღვინო', '2023-12-19 13:24:22', '2023-12-19 13:24:22'),
(371, 160, 'en', 'Vodka', 'Vodka', '2023-12-19 13:30:02', '2023-12-19 13:30:02'),
(372, 160, 'ka', 'არაყი', 'არაყი', '2023-12-19 13:30:02', '2023-12-19 13:30:02'),
(373, 161, 'en', 'Whiskey', 'Whiskey', '2023-12-19 13:47:00', '2023-12-19 13:47:00'),
(374, 161, 'ka', 'ვისკი', 'ვისკი', '2023-12-19 13:47:00', '2023-12-19 13:47:00'),
(375, 162, 'en', 'Food', 'Food', '2023-12-19 15:15:50', '2023-12-19 15:15:50'),
(376, 162, 'ka', 'კერძები', 'კერძები', '2023-12-19 15:15:50', '2023-12-19 15:15:50'),
(377, 163, 'en', 'Drinks', 'Drinks', '2023-12-19 15:16:15', '2023-12-19 15:16:15'),
(378, 163, 'ka', 'სასმელები', 'სასმელები', '2023-12-19 15:16:15', '2023-12-19 15:16:15'),
(379, 164, 'en', 'Food', 'Food', '2023-12-19 15:51:48', '2023-12-19 15:51:48'),
(380, 164, 'ka', 'კერძები', 'კერძები', '2023-12-19 15:51:48', '2023-12-19 15:51:48'),
(381, 165, 'en', 'Drinks', 'Drinks', '2023-12-19 15:52:05', '2023-12-19 15:52:05'),
(382, 165, 'ka', 'სასმელები', 'სასმელები', '2023-12-19 15:52:05', '2023-12-19 15:52:05'),
(383, 166, 'en', 'Starter', 'Starter', '2023-12-19 15:59:59', '2023-12-19 15:59:59'),
(384, 166, 'ka', 'სტარტერი', 'სტარტერი', '2023-12-19 15:59:59', '2023-12-19 15:59:59'),
(385, 167, 'en', 'Soup', 'Soup', '2023-12-19 16:01:30', '2023-12-19 16:01:30'),
(386, 167, 'ka', 'წვნიანი', 'წვნიანი', '2023-12-19 16:01:30', '2023-12-19 16:01:30'),
(387, 168, 'en', 'Main dish', 'Main dish', '2023-12-19 16:03:59', '2023-12-19 16:06:28'),
(388, 168, 'ka', 'მთავარი კერძები', 'მთავარი კერძები', '2023-12-19 16:03:59', '2023-12-19 16:03:59'),
(389, 169, 'en', 'Pasta', 'Pasta', '2023-12-19 16:04:33', '2023-12-19 16:06:47'),
(390, 169, 'ka', 'პასტა', 'პასტა', '2023-12-19 16:04:33', '2023-12-19 16:04:33'),
(391, 170, 'en', 'Pizza', 'Pizza', '2023-12-19 16:05:08', '2023-12-19 16:07:11'),
(392, 170, 'ka', 'პიცა', 'პიცა', '2023-12-19 16:05:08', '2023-12-19 16:05:08'),
(393, 171, 'en', 'Dessert', 'Dessert', '2023-12-19 16:05:44', '2023-12-19 16:07:28'),
(394, 171, 'ka', 'დესერტი', 'დესერტი', '2023-12-19 16:05:44', '2023-12-19 16:05:44'),
(395, 172, 'en', 'Soft drinks', 'Soft drinks', '2023-12-19 16:20:16', '2023-12-19 16:20:16'),
(396, 172, 'ka', 'უალკოჰოლო', 'უალკოჰოლო', '2023-12-19 16:20:16', '2023-12-19 16:21:55'),
(397, 173, 'en', 'TEA', 'TEA', '2023-12-19 16:20:56', '2023-12-19 16:20:56'),
(398, 173, 'ka', 'ჩაი', 'ჩაი', '2023-12-19 16:20:56', '2023-12-19 16:20:56'),
(399, 174, 'en', 'COFFEE', 'COFFEE', '2023-12-19 16:22:43', '2023-12-19 16:22:43'),
(400, 174, 'ka', 'ყავა', 'ყავა', '2023-12-19 16:22:43', '2023-12-19 16:22:43'),
(401, 175, 'en', 'COCKTAIL', 'COCKTAIL', '2023-12-19 16:23:31', '2023-12-19 16:23:31'),
(402, 175, 'ka', 'კოქტეილი', 'კოქტეილი', '2023-12-19 16:23:31', '2023-12-19 16:23:31'),
(403, 176, 'en', 'Italian Cocktail', 'Italian Cocktail', '2023-12-19 16:25:33', '2023-12-19 16:25:33'),
(404, 176, 'ka', 'იტალიური კოქტეილი', 'იტალიური კოქტეილი', '2023-12-19 16:25:33', '2023-12-19 16:25:33'),
(405, 177, 'en', 'Georgian Wine', 'Georgian Wine', '2023-12-19 16:26:34', '2023-12-19 16:26:34'),
(406, 177, 'ka', 'ქართული ღვინო', 'ქართული ღვინო', '2023-12-19 16:26:34', '2023-12-19 16:26:34'),
(407, 178, 'en', 'Wine From Around The World', 'Wine From Around The World', '2023-12-19 16:28:02', '2023-12-19 16:28:02'),
(408, 178, 'ka', 'უცხოური ღვინო', 'უცხოური ღვინო', '2023-12-19 16:28:02', '2023-12-19 16:28:02'),
(409, 179, 'en', 'Champange', 'Champange', '2023-12-19 16:28:26', '2023-12-19 16:28:26'),
(410, 179, 'ka', 'შამპანური', 'შამპანური', '2023-12-19 16:28:26', '2023-12-19 16:28:26'),
(411, 180, 'en', 'Sparkling Wine', 'Sparkling Wine', '2023-12-19 16:29:12', '2023-12-19 16:29:12'),
(412, 180, 'ka', 'ცქრიალა ღვინო', 'ცქრიალა ღვინო', '2023-12-19 16:29:12', '2023-12-19 16:29:12'),
(413, 181, 'en', 'COGNAC - BRANDY', 'COGNAC - BRANDY', '2023-12-19 16:29:51', '2023-12-19 16:29:51'),
(414, 181, 'ka', 'კონიაკი', 'კონიაკი', '2023-12-19 16:29:51', '2023-12-19 16:29:51'),
(415, 182, 'en', 'WHISKY', 'WHISKY', '2023-12-19 16:30:52', '2023-12-19 16:30:52'),
(416, 182, 'ka', 'ვისკი', 'ვისკი', '2023-12-19 16:30:52', '2023-12-19 16:30:52'),
(419, 184, 'en', 'LIQUEUR', 'LIQUEUR', '2023-12-19 16:34:06', '2023-12-19 16:34:06'),
(420, 184, 'ka', 'ლიქიორი', 'ლიქიორი', '2023-12-19 16:34:06', '2023-12-19 16:34:06'),
(421, 185, 'en', 'VERMOUTH', 'VERMOUTH', '2023-12-19 16:35:16', '2023-12-19 16:35:16'),
(422, 185, 'ka', 'ვერმუტი', 'ვერმუტი', '2023-12-19 16:35:16', '2023-12-19 16:35:16'),
(423, 186, 'en', 'TEQUILA', 'TEQUILA', '2023-12-19 16:35:58', '2023-12-19 16:35:58'),
(424, 186, 'ka', 'ტეკილა', 'ტეკილა', '2023-12-19 16:35:58', '2023-12-19 16:35:58'),
(425, 187, 'en', 'GIN', 'GIN', '2023-12-19 16:44:06', '2023-12-19 16:44:06'),
(426, 187, 'ka', 'ჯინი', 'ჯინი', '2023-12-19 16:44:06', '2023-12-19 16:44:06'),
(427, 188, 'en', 'Rum', 'Rum', '2023-12-19 16:44:30', '2023-12-19 16:44:30'),
(428, 188, 'ka', 'რომი', 'რომი', '2023-12-19 16:44:30', '2023-12-19 16:44:30'),
(429, 189, 'en', 'VODKA', 'VODKA', '2023-12-19 16:44:59', '2023-12-19 16:44:59'),
(430, 189, 'ka', 'არაყი', 'არაყი', '2023-12-19 16:44:59', '2023-12-19 16:44:59'),
(431, 190, 'en', 'CHACHA', 'CHACHA', '2023-12-19 16:45:37', '2023-12-19 16:45:37'),
(432, 190, 'ka', 'ჭაჭა', 'ჭაჭა', '2023-12-19 16:45:37', '2023-12-19 16:45:37'),
(433, 191, 'en', 'BEER', 'BEER', '2023-12-19 16:46:32', '2023-12-19 16:46:32'),
(434, 191, 'ka', 'ლუდი', 'ლუდი', '2023-12-19 16:46:32', '2023-12-19 16:46:32'),
(435, 192, 'en', 'Rolls', 'Rolls', '2023-12-20 00:00:40', '2023-12-20 00:00:40'),
(436, 192, 'ka', 'როლები', 'როლები', '2023-12-20 00:00:40', '2023-12-20 00:00:40'),
(437, 193, 'en', 'Food', 'Food', '2023-12-20 18:10:01', '2023-12-20 18:10:01'),
(438, 193, 'ka', 'კერძები', 'კერძები', '2023-12-20 18:10:01', '2023-12-20 18:10:01'),
(439, 194, 'en', 'Drinks', 'Drinks', '2023-12-20 18:10:37', '2023-12-20 18:10:37'),
(440, 194, 'ka', 'სასმელები', 'სასმელები', '2023-12-20 18:10:37', '2023-12-20 18:10:37'),
(441, 195, 'en', 'Soups & Salads', 'Soups & Salads', '2023-12-20 18:12:04', '2023-12-20 18:12:04'),
(442, 195, 'ka', 'წვნიანი & სალათები', 'წვნიანი & სალათები', '2023-12-20 18:12:04', '2023-12-20 18:12:04'),
(443, 196, 'ka', 'კერძები', 'კერძები', '2024-02-17 14:45:50', '2024-02-17 14:45:50'),
(444, 196, 'en', 'Food', 'Food', '2024-02-17 14:45:50', '2024-02-17 14:45:50'),
(445, 197, 'ka', 'ბარი', 'ბარი', '2024-02-17 14:46:33', '2024-02-17 14:46:33'),
(446, 197, 'en', 'Bar', 'Bar', '2024-02-17 14:46:33', '2024-02-17 14:46:33'),
(447, 198, 'ka', 'ჩილიმი', 'ჩილიმი', '2024-02-17 14:47:51', '2024-02-17 14:47:51'),
(448, 198, 'en', 'Hookah', 'Hookah', '2024-02-17 14:47:51', '2024-02-17 14:47:51'),
(463, 206, 'ka', 'აპეტაიზერი', NULL, '2024-02-22 20:54:18', '2024-02-22 20:54:18'),
(464, 206, 'en', 'აპეტაიზერი', NULL, '2024-02-22 20:54:18', '2024-02-22 20:54:18'),
(465, 207, 'ka', 'ცივი კერძები', NULL, '2024-02-22 20:57:17', '2024-02-22 20:57:17'),
(466, 207, 'en', 'ცივი კერძები', NULL, '2024-02-22 20:57:17', '2024-02-22 20:57:17'),
(467, 208, 'ka', 'ცხელი კერძები', NULL, '2024-02-22 20:58:38', '2024-02-22 20:58:38'),
(468, 208, 'en', 'ცხელი კერძები', NULL, '2024-02-22 20:58:38', '2024-02-22 20:58:38'),
(469, 209, 'ka', 'პასტა', NULL, '2024-02-22 20:59:25', '2024-02-22 20:59:25'),
(470, 209, 'en', 'პასტა', NULL, '2024-02-22 20:59:25', '2024-02-22 20:59:25'),
(471, 210, 'ka', 'სენდვიჩები', NULL, '2024-02-22 21:00:26', '2024-02-22 21:00:26'),
(472, 210, 'en', 'სენდვიჩები', NULL, '2024-02-22 21:00:26', '2024-02-22 21:00:26'),
(473, 211, 'ka', 'თევზეული', NULL, '2024-02-22 21:01:13', '2024-02-22 21:01:13'),
(474, 211, 'en', 'თევზეული', NULL, '2024-02-22 21:01:13', '2024-02-22 21:01:13'),
(475, 212, 'ka', 'წვნიანი', NULL, '2024-02-22 21:01:59', '2024-02-22 21:01:59'),
(476, 212, 'en', 'წვნიანი', NULL, '2024-02-22 21:01:59', '2024-02-22 21:01:59'),
(477, 213, 'ka', 'ცომეული', NULL, '2024-02-22 21:03:05', '2024-02-22 21:03:05'),
(478, 213, 'en', 'ცომეული', NULL, '2024-02-22 21:03:05', '2024-02-22 21:03:05'),
(479, 214, 'ka', 'მაყალი', NULL, '2024-02-22 21:06:09', '2024-02-22 21:06:09'),
(480, 214, 'en', 'მაყალი', NULL, '2024-02-22 21:06:09', '2024-02-22 21:06:09'),
(481, 215, 'ka', 'ტკბილეული', NULL, '2024-02-22 21:06:59', '2024-02-22 21:06:59'),
(482, 215, 'en', 'ტკბილეული', NULL, '2024-02-22 21:06:59', '2024-02-22 21:06:59'),
(483, 216, 'ka', 'სოუსები', NULL, '2024-02-22 21:18:11', '2024-02-22 21:18:11'),
(484, 216, 'en', 'სოუსები', NULL, '2024-02-22 21:18:11', '2024-02-22 21:18:11'),
(485, 217, 'ka', 'დესერტი', NULL, '2024-02-23 12:13:26', '2024-02-23 12:13:26'),
(486, 217, 'en', 'დესერტი', NULL, '2024-02-23 12:13:26', '2024-02-23 12:13:26'),
(487, 218, 'ka', 'არაყი', NULL, '2024-02-23 19:37:02', '2024-02-23 19:45:39'),
(488, 218, 'en', 'Vodka', NULL, '2024-02-23 19:37:02', '2024-02-24 10:55:35'),
(489, 219, 'ka', 'ვისკი', NULL, '2024-02-23 22:24:52', '2024-02-23 22:24:52'),
(490, 219, 'en', 'Whiskey', NULL, '2024-02-23 22:24:52', '2024-02-23 22:24:52'),
(491, 220, 'ka', 'რომი', NULL, '2024-02-23 22:33:10', '2024-02-23 22:33:10'),
(492, 220, 'en', 'Rum', NULL, '2024-02-23 22:33:10', '2024-02-23 22:33:10'),
(493, 221, 'ka', 'ლიქიორი', NULL, '2024-02-23 23:44:42', '2024-02-23 23:44:42'),
(494, 221, 'en', 'liquor', NULL, '2024-02-23 23:44:42', '2024-02-23 23:44:42'),
(495, 222, 'ka', 'კონიაკი', NULL, '2024-02-24 00:30:29', '2024-02-24 00:30:29'),
(496, 222, 'en', 'Cognac', NULL, '2024-02-24 00:30:29', '2024-02-24 00:30:29'),
(497, 223, 'ka', 'ქართული ბრენდი', NULL, '2024-02-24 00:35:18', '2024-02-24 00:35:18'),
(498, 223, 'en', 'Georgian Brandy', NULL, '2024-02-24 00:35:18', '2024-02-24 00:35:18'),
(499, 224, 'ka', 'ჭაჭა', NULL, '2024-02-24 01:11:48', '2024-02-24 01:11:48'),
(500, 224, 'en', 'Chacha', NULL, '2024-02-24 01:11:48', '2024-02-24 02:32:11'),
(501, 225, 'ka', 'ცქრიალა ღვინო', NULL, '2024-02-24 01:12:11', '2024-02-24 01:12:11'),
(502, 225, 'en', 'Sparkling Wine', NULL, '2024-02-24 01:12:11', '2024-02-24 10:56:17'),
(503, 226, 'ka', 'ტეკილა', NULL, '2024-02-24 02:43:37', '2024-02-24 02:43:37'),
(504, 226, 'en', 'Tequila', NULL, '2024-02-24 02:43:37', '2024-02-24 02:43:37'),
(505, 227, 'ka', 'ღვინო', NULL, '2024-02-24 11:05:47', '2024-02-24 11:05:47'),
(506, 227, 'en', 'Wine', NULL, '2024-02-24 11:05:47', '2024-02-24 11:05:47'),
(507, 228, 'ka', 'ჯინი', NULL, '2024-02-24 11:28:25', '2024-02-24 11:28:25'),
(508, 228, 'en', 'GIN', NULL, '2024-02-24 11:28:25', '2024-02-24 11:28:25'),
(509, 229, 'ka', 'კოქტეილები', NULL, '2024-02-24 11:33:57', '2024-02-24 11:33:57'),
(510, 229, 'en', 'Cocktail', NULL, '2024-02-24 11:33:57', '2024-02-24 11:33:57'),
(511, 230, 'ka', 'ლუდი', NULL, '2024-02-24 12:03:35', '2024-02-24 12:03:35'),
(512, 230, 'en', 'Beer', NULL, '2024-02-24 12:03:35', '2024-02-24 12:03:35'),
(513, 231, 'ka', 'გამაგრილებელი სასმელი', NULL, '2024-02-24 12:05:16', '2024-02-24 12:05:16'),
(514, 231, 'en', 'A Soft Drink', NULL, '2024-02-24 12:05:16', '2024-02-24 12:05:16'),
(515, 232, 'ka', 'აპერიტივი', NULL, '2024-02-24 12:06:28', '2024-02-24 12:06:28'),
(516, 232, 'en', 'Aperitif', NULL, '2024-02-24 12:06:28', '2024-02-24 12:06:28'),
(517, 233, 'ka', 'ყავა', NULL, '2024-02-24 12:57:19', '2024-02-24 12:57:19'),
(518, 233, 'en', 'Coffe', NULL, '2024-02-24 12:57:19', '2024-02-24 12:57:19'),
(519, 234, 'ka', 'ჩაი', NULL, '2024-02-24 12:57:31', '2024-02-24 12:57:31'),
(520, 234, 'en', 'Tea', NULL, '2024-02-24 12:57:31', '2024-02-24 12:57:31'),
(521, 235, 'ka', 'ახალ დაწურული წვენი', NULL, '2024-02-24 12:59:55', '2024-02-24 12:59:55'),
(522, 235, 'en', 'Fresh Juice', NULL, '2024-02-24 12:59:55', '2024-02-24 12:59:55'),
(523, 236, 'ka', 'ნატურალური ლიმონათები', NULL, '2024-02-24 13:23:10', '2024-02-24 13:23:10'),
(524, 236, 'en', 'Natural Lemonades', NULL, '2024-02-24 13:23:10', '2024-02-24 13:23:10'),
(525, 237, 'ka', 'მილკშეიკი', NULL, '2024-02-24 13:23:47', '2024-02-24 13:23:47'),
(526, 237, 'en', 'Milkshake', NULL, '2024-02-24 13:23:47', '2024-02-24 13:23:47'),
(527, 238, 'ka', 'სნექები', NULL, '2024-02-24 14:19:10', '2024-02-24 14:19:10'),
(528, 238, 'en', 'Snacks', NULL, '2024-02-24 14:19:10', '2024-02-24 14:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `status` enum('enable','disabled') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(52, '20220106084908.png', 'Debitis et fuga Vol', 'disabled', '2022-01-06 04:49:08', '2022-01-06 04:49:08'),
(53, '20220106221707.png', 'Quidem maxime sapien', 'enable', '2022-01-06 18:17:07', '2022-01-06 18:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `client_translations`
--

CREATE TABLE `client_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_translations`
--

INSERT INTO `client_translations` (`id`, `client_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(154, 52, 'en', 'Cruz Sheppard', 'Nemo et quia sed ull', '2022-01-06 04:49:08', '2022-01-06 04:49:08'),
(155, 52, 'ka', 'Dominic Bishop', 'Similique quos sunt', '2022-01-06 04:49:08', '2022-01-06 04:49:08'),
(156, 52, 'ru', 'Hasad Riggs', 'Qui in dolor sint q', '2022-01-06 04:49:08', '2022-01-06 04:49:08'),
(157, 53, 'en', 'Madison Ortega', 'Ipsam ad ipsam sint', '2022-01-06 18:17:07', '2022-01-06 18:17:07'),
(158, 53, 'ka', 'Hadassah Butler', 'Asperiores dicta cup', '2022-01-06 18:17:07', '2022-01-06 18:17:07'),
(159, 53, 'ru', 'Kai Moody', 'Odit aliquid sed per', '2022-01-06 18:17:07', '2022-01-06 18:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Warren Mathews', 'cikatoci@mailinator.com', 60, 'In non voluptates vo', 'Blanditiis exercitat', '2022-01-11 15:15:36', '2022-01-11 15:15:36'),
(4, 'Gareth Craft', 'totezi@mailinator.com', 29, 'Voluptatem eiusmod q', 'Eu nostrum praesenti', '2022-01-20 11:43:55', '2022-01-20 11:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `image`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(3, '20240210022003.png', 1, 1, '2024-02-08 16:39:41', '2024-02-10 02:20:03'),
(4, '20240210022237.png', 2, 1, '2024-02-08 16:40:40', '2024-02-10 02:22:37'),
(5, '20240210021749.jpg', 3, 1, '2024-02-09 21:24:07', '2024-02-10 02:17:49'),
(6, '20240210021733.jpg', 4, 1, '2024-02-09 21:29:07', '2024-02-10 02:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `cuisine_restaurant`
--

CREATE TABLE `cuisine_restaurant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuisine_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisine_restaurant`
--

INSERT INTO `cuisine_restaurant` (`id`, `cuisine_id`, `restaurant_id`) VALUES
(1, 3, 4),
(2, 3, 11),
(5, 4, 14),
(6, 4, 4),
(7, 3, 10),
(8, 6, 4),
(9, 5, 25),
(10, 5, 4),
(11, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `cuisine_translations`
--

CREATE TABLE `cuisine_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuisine_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisine_translations`
--

INSERT INTO `cuisine_translations` (`id`, `cuisine_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(5, 3, 'ka', 'ქართული', '2024-02-08 16:39:41', '2024-02-09 21:13:19'),
(6, 3, 'en', 'Georgian', '2024-02-08 16:39:41', '2024-02-09 21:13:19'),
(7, 4, 'ka', 'ევროპული', '2024-02-08 16:40:40', '2024-02-08 16:40:40'),
(8, 4, 'en', 'Europian', '2024-02-08 16:40:40', '2024-02-08 16:40:40'),
(9, 5, 'ka', 'აზიური', '2024-02-09 21:24:07', '2024-02-09 21:24:07'),
(10, 5, 'en', 'Asian', '2024-02-09 21:24:07', '2024-02-09 21:24:07'),
(11, 6, 'ka', 'ებრაული', '2024-02-09 21:29:07', '2024-02-09 21:29:07'),
(12, 6, 'en', 'Hebrew', '2024-02-09 21:29:07', '2024-02-09 21:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `image`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(3, '20231215162321.jpg', 2, 1, '2023-12-15 12:13:18', '2023-12-15 12:23:21'),
(4, '20231215162030.jpg', 1, 1, '2023-12-15 12:20:30', '2023-12-15 12:20:30'),
(5, '20231215162755.jpg', 3, 1, '2023-12-15 12:27:55', '2023-12-15 12:27:55'),
(6, '20231218001248.jpg', 4, 0, '2023-12-18 00:12:48', '2023-12-18 01:39:30'),
(7, '20231218021755.jpg', 4, 1, '2023-12-18 02:17:55', '2023-12-18 02:17:55'),
(8, '20240210164813.jpg', 5, 1, '2023-12-18 12:06:29', '2024-02-10 16:48:13'),
(9, '20231220211505.jpg', 6, 1, '2023-12-20 21:11:55', '2023-12-20 21:15:05'),
(12, '20240104180855.jpg', 9, 1, '2024-01-04 18:08:55', '2024-01-04 18:08:55'),
(13, '20240119175957.png', 10, 1, '2024-01-19 17:59:57', '2024-01-19 17:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `group_restaurant`
--

CREATE TABLE `group_restaurant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_restaurant`
--

INSERT INTO `group_restaurant` (`id`, `group_id`, `restaurant_id`, `rank`) VALUES
(4, 3, 4, NULL),
(5, 3, 10, NULL),
(7, 4, 11, 5),
(8, 3, 12, 4),
(9, 5, 11, NULL),
(10, 5, 12, NULL),
(11, 5, 7, NULL),
(12, 6, 14, NULL),
(13, 4, 15, 3),
(14, 7, 15, NULL),
(15, 7, 8, NULL),
(16, 8, 4, NULL),
(17, 7, 16, NULL),
(18, 3, 17, NULL),
(19, 4, 18, 2),
(20, 8, 18, NULL),
(21, 7, 18, NULL),
(22, 5, 19, NULL),
(23, 4, 20, 1),
(24, 9, 14, NULL),
(25, 8, 22, NULL),
(30, 12, 26, NULL),
(31, 12, 27, NULL),
(32, 8, 6, NULL),
(33, 13, 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_translations`
--

CREATE TABLE `group_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_translations`
--

INSERT INTO `group_translations` (`id`, `group_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(3, 3, 'en', 'Live Music', '2023-12-15 12:13:18', '2023-12-15 12:13:18'),
(4, 3, 'ka', 'ცოცხალი მუსიკა', '2023-12-15 12:13:18', '2023-12-15 12:13:18'),
(5, 4, 'en', 'Best view of the city', '2023-12-15 12:20:30', '2024-01-16 01:19:42'),
(6, 4, 'ka', 'საუკეთესო ხედი', '2023-12-15 12:20:30', '2024-02-04 12:41:20'),
(7, 5, 'en', 'Best Terrace', '2023-12-15 12:27:55', '2023-12-15 12:27:55'),
(8, 5, 'ka', 'საუკეთესო ტერასა', '2023-12-15 12:27:55', '2023-12-15 12:27:55'),
(9, 6, 'en', 'Cozy Working Bar', '2023-12-18 00:12:48', '2023-12-18 00:12:48'),
(10, 6, 'ka', 'მყუდრო სამუშაო გარემო', '2023-12-18 00:12:48', '2023-12-18 00:12:48'),
(11, 7, 'en', 'Romantic Place', '2023-12-18 02:17:55', '2023-12-18 02:18:52'),
(12, 7, 'ka', 'რომანტიული სიცრცე', '2023-12-18 02:17:55', '2023-12-18 02:18:52'),
(13, 8, 'en', 'Party Place', '2023-12-18 12:06:29', '2023-12-18 12:06:29'),
(14, 8, 'ka', 'წვეულებების სივრცე', '2023-12-18 12:06:29', '2023-12-18 12:06:29'),
(15, 9, 'ka', 'სამუშაო გარემო', '2023-12-20 21:11:55', '2023-12-27 17:28:27'),
(16, 9, 'en', 'Comfortable Work Place', '2023-12-20 21:11:55', '2023-12-27 17:26:23'),
(21, 12, 'ka', 'საფეხბურთო გარემო', '2024-01-04 18:08:55', '2024-01-04 19:02:44'),
(22, 12, 'en', 'Soccer Environment', '2024-01-04 18:08:55', '2024-01-04 18:08:55'),
(23, 13, 'ka', 'ბიზნეს ლანჩი', '2024-01-19 17:59:57', '2024-01-19 17:59:57'),
(24, 13, 'en', 'Business Lunch', '2024-01-19 17:59:57', '2024-01-19 17:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL,
  `restaurant_id` int(10) UNSIGNED DEFAULT NULL,
  `rank` bigint(20) NOT NULL,
  `image` longtext NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `service_id`, `place_id`, `restaurant_id`, `rank`, `image`, `name`, `status`, `created_at`, `updated_at`) VALUES
(657, NULL, NULL, NULL, 4, 1, 'images/product_images/1698223580main hall.jpg', NULL, 1, '2023-10-25 08:46:20', '2023-10-25 08:46:20'),
(658, NULL, NULL, NULL, 4, 2, 'images/product_images/1698223580terrace.jpg', NULL, 1, '2023-10-25 08:46:20', '2023-10-25 08:46:20'),
(659, NULL, NULL, NULL, 4, 3, 'images/project_images/20240210165411.jpg', 'Exodus_terace', 1, '2023-10-25 12:02:48', '2024-02-10 16:54:11'),
(662, NULL, NULL, NULL, 7, 5, 'images/product_images/16999734211.jpg', 'BERN batumi', 1, '2023-11-14 14:50:21', '2023-11-14 14:50:21'),
(663, NULL, NULL, NULL, 7, 6, 'images/product_images/16999734212.png', 'BERN batumi', 1, '2023-11-14 14:50:21', '2023-11-14 14:50:21'),
(664, NULL, NULL, NULL, 7, 7, 'images/product_images/16999734213.jpg', 'BERN batumi', 1, '2023-11-14 14:50:21', '2023-11-14 14:50:21'),
(665, NULL, NULL, NULL, 7, 8, 'images/product_images/16999734214.jpg', 'BERN batumi', 1, '2023-11-14 14:50:21', '2023-11-14 14:50:21'),
(666, NULL, NULL, NULL, 8, 9, 'images/product_images/17000543521.jpg', NULL, 1, '2023-11-15 13:19:12', '2023-11-15 13:19:12'),
(667, NULL, NULL, NULL, 8, 10, 'images/product_images/17000543522.jpg', NULL, 1, '2023-11-15 13:19:12', '2023-11-15 13:19:12'),
(668, NULL, NULL, NULL, 8, 11, 'images/product_images/17000543523.jpg', NULL, 1, '2023-11-15 13:19:12', '2023-11-15 13:19:12'),
(669, NULL, NULL, NULL, 8, 12, 'images/product_images/17000543524.jpg', NULL, 1, '2023-11-15 13:19:12', '2023-11-15 13:19:12'),
(670, NULL, NULL, NULL, 8, 13, 'images/product_images/17000543525.jpg', NULL, 1, '2023-11-15 13:19:12', '2023-11-15 13:19:12'),
(671, NULL, NULL, NULL, 8, 14, 'images/product_images/17000543526.jpg', NULL, 1, '2023-11-15 13:19:12', '2023-11-15 13:19:12'),
(672, NULL, NULL, NULL, 10, 15, 'images/product_images/17001409561.jpg', NULL, 1, '2023-11-16 13:22:36', '2023-11-16 13:22:36'),
(673, NULL, NULL, NULL, 10, 16, 'images/product_images/17001409562.jpg', NULL, 1, '2023-11-16 13:22:36', '2023-11-16 13:22:36'),
(674, NULL, NULL, NULL, 10, 17, 'images/product_images/17001409563.jpg', NULL, 1, '2023-11-16 13:22:36', '2023-11-16 13:22:36'),
(675, NULL, NULL, NULL, 10, 18, 'images/product_images/17001409564.jpg', NULL, 1, '2023-11-16 13:22:36', '2023-11-16 13:22:36'),
(690, NULL, NULL, 38, 4, 21, 'images/project_images/20240210165201.jpg', NULL, 1, '2023-12-02 11:29:27', '2024-02-10 16:52:01'),
(691, NULL, NULL, 35, 10, 19, 'images/product_images/1701624649Tangerine-Gogebashvili-11-InfoBatumi.Ge_.jpg', NULL, 1, '2023-12-03 17:30:49', '2023-12-03 17:30:49'),
(692, NULL, NULL, 35, 10, 20, 'images/product_images/1701624649Tangerine-Gogebashvili-13-InfoBatumi.Ge_.jpg', NULL, 1, '2023-12-03 17:30:49', '2023-12-03 17:30:49'),
(693, NULL, NULL, 35, 10, 21, 'images/product_images/1701624649Tangerine-Gogebashvili-14-InfoBatumi.Ge_.jpg', NULL, 1, '2023-12-03 17:30:49', '2023-12-03 17:30:49'),
(694, NULL, NULL, 35, 10, 22, 'images/product_images/1701624649Tangerine-Gogebashvili-17-InfoBatumi.Ge_.jpg', NULL, 1, '2023-12-03 17:30:49', '2023-12-03 17:30:49'),
(695, NULL, NULL, NULL, 11, 23, 'images/product_images/17021239461 - David Gakhokia.jpg', NULL, 1, '2023-12-09 16:12:26', '2023-12-09 16:12:26'),
(696, NULL, NULL, NULL, 11, 24, 'images/product_images/17021239462 - David Gakhokia.jpg', NULL, 1, '2023-12-09 16:12:26', '2023-12-09 16:12:26'),
(697, NULL, NULL, NULL, 11, 25, 'images/product_images/17021239463 - David Gakhokia.jpg', NULL, 1, '2023-12-09 16:12:26', '2023-12-09 16:12:26'),
(698, NULL, NULL, NULL, 11, 26, 'images/product_images/17021239464 - David Gakhokia.jpg', NULL, 1, '2023-12-09 16:12:26', '2023-12-09 16:12:26'),
(699, NULL, NULL, NULL, 11, 27, 'images/product_images/17021239465 - David Gakhokia.jpg', NULL, 1, '2023-12-09 16:12:26', '2023-12-09 16:12:26'),
(700, NULL, NULL, NULL, 15, 28, 'images/product_images/17028475101.jpg', NULL, 1, '2023-12-18 01:11:50', '2023-12-18 01:11:50'),
(701, NULL, NULL, NULL, 15, 29, 'images/product_images/17028475102.jpg', NULL, 1, '2023-12-18 01:11:50', '2023-12-18 01:11:50'),
(702, NULL, NULL, NULL, 15, 30, 'images/product_images/17028475103.jpg', NULL, 1, '2023-12-18 01:11:50', '2023-12-18 01:11:50'),
(703, NULL, NULL, NULL, 15, 31, 'images/product_images/17028475104.jpg', NULL, 1, '2023-12-18 01:11:50', '2023-12-18 01:11:50'),
(704, NULL, NULL, NULL, 15, 32, 'images/product_images/17028475105.jpg', NULL, 1, '2023-12-18 01:11:50', '2023-12-18 01:11:50'),
(705, NULL, NULL, NULL, 16, 33, 'images/product_images/17029767571.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(706, NULL, NULL, NULL, 16, 34, 'images/product_images/17029767572.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(707, NULL, NULL, NULL, 16, 35, 'images/product_images/17029767573.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(708, NULL, NULL, NULL, 16, 36, 'images/product_images/17029767574.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(709, NULL, NULL, NULL, 16, 37, 'images/product_images/17029767575.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(710, NULL, NULL, NULL, 16, 38, 'images/product_images/17029767576.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(711, NULL, NULL, NULL, 16, 39, 'images/product_images/17029767577.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(712, NULL, NULL, NULL, 16, 40, 'images/product_images/17029767578.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(713, NULL, NULL, NULL, 16, 41, 'images/product_images/17029767579.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(714, NULL, NULL, NULL, 16, 42, 'images/product_images/170297675710.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(715, NULL, NULL, NULL, 16, 43, 'images/product_images/170297675711.webp', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(716, NULL, NULL, NULL, 16, 44, 'images/product_images/170297675723.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(717, NULL, NULL, NULL, 16, 45, 'images/product_images/170297675755.jpg', NULL, 1, '2023-12-19 13:05:57', '2023-12-19 13:05:57'),
(718, NULL, NULL, NULL, 17, 46, 'images/product_images/17029836401.jpg', NULL, 1, '2023-12-19 15:00:40', '2023-12-19 15:00:40'),
(719, NULL, NULL, NULL, 17, 47, 'images/product_images/17029836403.jpg', NULL, 1, '2023-12-19 15:00:40', '2023-12-19 15:00:40'),
(720, NULL, NULL, NULL, 17, 48, 'images/product_images/17029836404.jpg', NULL, 1, '2023-12-19 15:00:40', '2023-12-19 15:00:40'),
(721, NULL, NULL, NULL, 17, 49, 'images/product_images/170298364024.jpg', NULL, 1, '2023-12-19 15:00:40', '2023-12-19 15:00:40'),
(722, NULL, NULL, NULL, 18, 50, 'images/product_images/17029862171.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(723, NULL, NULL, NULL, 18, 51, 'images/product_images/17029862172.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(724, NULL, NULL, NULL, 18, 52, 'images/product_images/17029862173.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(725, NULL, NULL, NULL, 18, 53, 'images/product_images/17029862174.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(726, NULL, NULL, NULL, 18, 54, 'images/product_images/17029862175.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(727, NULL, NULL, NULL, 18, 55, 'images/product_images/17029862176.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(728, NULL, NULL, NULL, 18, 56, 'images/product_images/17029862177.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(729, NULL, NULL, NULL, 18, 57, 'images/product_images/17029862178.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(730, NULL, NULL, NULL, 18, 58, 'images/product_images/17029862179.jpg', NULL, 1, '2023-12-19 15:43:37', '2023-12-19 15:43:37'),
(731, NULL, NULL, NULL, 20, 59, 'images/product_images/17030800561.jpg', NULL, 1, '2023-12-20 17:47:36', '2023-12-20 17:47:36'),
(732, NULL, NULL, NULL, 20, 60, 'images/product_images/17030800562.jpg', NULL, 1, '2023-12-20 17:47:36', '2023-12-20 17:47:36'),
(733, NULL, NULL, NULL, 20, 61, 'images/product_images/17030800563.jpg', NULL, 1, '2023-12-20 17:47:36', '2023-12-20 17:47:36'),
(734, NULL, NULL, NULL, 20, 62, 'images/product_images/17030800564.jpg', NULL, 1, '2023-12-20 17:47:36', '2023-12-20 17:47:36'),
(735, NULL, NULL, NULL, 20, 63, 'images/product_images/17030800565.jpg', NULL, 1, '2023-12-20 17:47:36', '2023-12-20 17:47:36'),
(736, NULL, NULL, NULL, 14, 64, 'images/product_images/17030928242.jpg', NULL, 1, '2023-12-20 21:20:24', '2023-12-20 21:20:24'),
(737, NULL, NULL, NULL, 14, 65, 'images/product_images/17030928245-INFOBATUMI-1.jpg', NULL, 1, '2023-12-20 21:20:24', '2023-12-20 21:20:24'),
(738, NULL, NULL, NULL, 14, 66, 'images/product_images/17030928248-INFOBATUMI-1.jpg', NULL, 1, '2023-12-20 21:20:24', '2023-12-20 21:20:24'),
(739, NULL, NULL, NULL, 14, 67, 'images/product_images/1703092824მთავარი-INFOBATUMI-1.jpg', NULL, 1, '2023-12-20 21:20:24', '2023-12-20 21:20:24'),
(740, NULL, NULL, NULL, 22, 68, 'images/product_images/17034504861.jpg', NULL, 1, '2023-12-25 00:41:26', '2023-12-25 00:41:26'),
(741, NULL, NULL, NULL, 22, 69, 'images/product_images/17034504862.jpg', NULL, 1, '2023-12-25 00:41:26', '2023-12-25 00:41:26'),
(742, NULL, NULL, NULL, 22, 70, 'images/product_images/17034508503.jpg', NULL, 1, '2023-12-25 00:47:30', '2023-12-25 00:47:30'),
(743, NULL, NULL, NULL, 22, 71, 'images/product_images/17034508504.jpg', NULL, 1, '2023-12-25 00:47:30', '2023-12-25 00:47:30'),
(744, NULL, NULL, NULL, 26, 72, 'images/product_images/170437841810.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(745, NULL, NULL, NULL, 26, 73, 'images/product_images/17043784189.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(746, NULL, NULL, NULL, 26, 74, 'images/product_images/17043784188.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(747, NULL, NULL, NULL, 26, 75, 'images/product_images/17043784187.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(748, NULL, NULL, NULL, 26, 76, 'images/product_images/17043784186.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(749, NULL, NULL, NULL, 26, 77, 'images/product_images/17043784185.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(750, NULL, NULL, NULL, 26, 78, 'images/product_images/17043784184.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(751, NULL, NULL, NULL, 26, 79, 'images/product_images/17043784183.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(752, NULL, NULL, NULL, 26, 80, 'images/product_images/17043784182.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(753, NULL, NULL, NULL, 26, 81, 'images/product_images/17043784181.jpg', NULL, 1, '2024-01-04 18:26:58', '2024-01-04 18:26:58'),
(754, NULL, NULL, NULL, 27, 82, 'images/product_images/17043801353.jpg', NULL, 1, '2024-01-04 18:55:35', '2024-01-04 18:55:35'),
(755, NULL, NULL, NULL, 27, 83, 'images/product_images/17043801352.jpg', NULL, 1, '2024-01-04 18:55:35', '2024-01-04 18:55:35'),
(756, NULL, NULL, NULL, 27, 84, 'images/product_images/17043801351.jpg', NULL, 1, '2024-01-04 18:55:35', '2024-01-04 18:55:35'),
(757, NULL, NULL, NULL, 28, 85, 'images/product_images/1704886147Senate-2023-9-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(758, NULL, NULL, NULL, 28, 86, 'images/product_images/1704886147Senate-2023-4-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(759, NULL, NULL, NULL, 28, 87, 'images/product_images/1704886147Senate-2023-3-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(760, NULL, NULL, NULL, 28, 88, 'images/product_images/1704886147Senate-2023-1-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(761, NULL, NULL, NULL, 28, 89, 'images/product_images/1704886147Senate-13-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(762, NULL, NULL, NULL, 28, 90, 'images/product_images/1704886147Senate-2023-7-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(763, NULL, NULL, NULL, 28, 91, 'images/product_images/1704886147Senate-2023-6-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(764, NULL, NULL, NULL, 28, 92, 'images/product_images/1704886147Senate-2023-2-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(765, NULL, NULL, NULL, 28, 93, 'images/product_images/1704886147Senate-2023-8-InfoBatumi-Ge.jpg', NULL, 1, '2024-01-10 15:29:07', '2024-01-10 15:29:07'),
(766, NULL, NULL, NULL, 30, 94, 'images/product_images/17067875440F4A1116-min - Operation NewWave.jpg', NULL, 1, '2024-02-01 11:39:04', '2024-02-01 11:39:04'),
(767, NULL, NULL, NULL, 30, 95, 'images/product_images/17067877630F4A1120-min - Operation NewWave.jpg', NULL, 1, '2024-02-01 11:42:43', '2024-02-01 11:42:43'),
(768, NULL, NULL, NULL, 30, 96, 'images/product_images/17067878680F4A1136-min - Operation NewWave.jpg', NULL, 1, '2024-02-01 11:44:28', '2024-02-01 11:44:28'),
(769, NULL, NULL, NULL, 30, 97, 'images/product_images/1706787926JP5A9159 - Operation NewWave.jpg', NULL, 1, '2024-02-01 11:45:26', '2024-02-01 11:45:26'),
(770, NULL, NULL, NULL, 30, 98, 'images/product_images/1706788179Atlantis-New-Wave-35 - Operation NewWave (1).jpg', NULL, 1, '2024-02-01 11:49:39', '2024-02-01 11:49:39'),
(771, NULL, NULL, NULL, 30, 99, 'images/product_images/1706788179Atlantis-New-Wave-36 - Operation NewWave (1).jpg', NULL, 1, '2024-02-01 11:49:39', '2024-02-01 11:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, NULL, 'en', '2021-12-26 04:01:46', '2021-12-26 04:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_translations`
--

CREATE TABLE `message_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_08_12_014722_create_permission_tables', 1),
(7, '2021_08_12_014733_create_posts_table', 1),
(8, '2021_12_06_090353_create_post_translations_table', 1),
(9, '2021_12_18_141228_create_pages_table', 1),
(10, '2021_12_21_111633_create_contacts_table', 1),
(11, '2021_12_24_215528_create_clients_table', 1),
(15, '2021_12_26_072418_create_places_table', 2),
(16, '2021_12_26_073511_create_place_translations_table', 2),
(17, '2022_01_01_193700_create_categories_table', 2),
(18, '2022_01_03_144525_create_category_translations_table', 2),
(19, '2022_01_05_111526_create_tables_table', 3),
(20, '2022_01_09_152436_create_products_table', 4),
(21, '2022_01_09_152920_create_product_translations_table', 4),
(22, '2022_01_11_083356_create_reservations_table', 5),
(23, '2022_01_13_084017_create_messages_table', 6),
(24, '2022_01_13_084600_create_message_translations_table', 6),
(25, '2022_01_20_160345_create_settings_table', 7),
(26, '2022_01_20_162023_create_setting_translations_table', 7),
(27, '2022_01_21_171753_create_networks_table', 8),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 9),
(29, '2022_02_03_135223_create_orders_table', 10),
(30, '2023_10_24_170514_create_restaurants_table', 11),
(31, '2023_10_24_170537_create_restaurant_translations_table', 11),
(32, '2023_12_02_213545_create_tables_table', 12),
(33, '2023_12_02_213710_create_table_translations_table', 12),
(34, '2023_12_14_155506_create_slide_restaurant_table', 13),
(35, '2023_12_15_112227_create_groups_table', 14),
(36, '2023_12_15_112533_create_group_restaurant_table', 14),
(37, '2023_12_15_130730_create_group_translations_table', 14),
(38, '2024_01_24_002814_create_regions_table', 15),
(39, '2024_01_24_002842_create_region_translations_table', 15),
(40, '2024_01_24_114223_create_region_restaurant_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `frame` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `networks`
--

INSERT INTO `networks` (`id`, `icon`, `name`, `image`, `link`, `frame`, `created_at`, `updated_at`) VALUES
(7, 'fab fa-facebook-f', 'facebook', NULL, 'https://www.facebook.com/foodly.space', NULL, '2022-01-21 15:51:12', '2023-12-03 12:17:49'),
(9, 'fab fa-instagram', 'instagram', NULL, 'https://www.instagram.com/foodly.space/', NULL, '2022-01-22 03:24:57', '2023-12-03 12:18:09'),
(12, 'fab fa-linkedin', 'linkedin', NULL, 'https://www.linkedin.com/company/foodly-space', NULL, '2024-01-26 08:49:07', '2024-01-26 08:49:07'),
(13, 'fab fa-whatsapp', 'whatsapp', NULL, 'whatsapp://send?text=Hello World!&phone=+995599020765', NULL, '2024-01-26 08:51:20', '2024-01-26 08:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `currency` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@kerdzebi.ge', '$2y$10$KAq74t8XMXbELQizDm4KsOsnyDAytvdLoopwXsVtXDTUzMZgkYxIy', '2022-01-11 08:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `title`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user-list', 'Users', 'web', '2021-12-26 04:11:11', '2023-01-22 22:12:55'),
(2, 'user-create', 'Create User', 'web', '2021-12-26 04:11:11', '2023-01-22 22:24:05'),
(3, 'user-edit', 'Edit User', 'web', '2021-12-26 04:11:11', '2023-01-22 22:24:25'),
(4, 'user-delete', 'Delete User', 'web', '2021-12-26 04:11:11', '2023-01-22 22:24:52'),
(5, 'role-list', 'Roles', 'web', '2021-12-26 04:11:11', '2023-01-22 22:25:59'),
(6, 'role-create', 'Create Role', 'web', '2021-12-26 04:11:11', '2023-01-22 22:26:18'),
(7, 'role-edit', 'Edit Role', 'web', '2021-12-26 04:11:11', '2023-01-22 22:26:35'),
(8, 'role-delete', 'Delete Role', 'web', '2021-12-26 04:11:11', '2023-01-22 22:26:52'),
(9, 'permission-list', 'Permissions', 'web', '2021-12-26 04:11:11', '2023-01-22 22:27:15'),
(10, 'permission-create', 'პრივილეგიის დამატება', 'web', '2021-12-26 04:11:11', '2022-01-11 15:29:04'),
(11, 'permission-edit', 'პრივილეგიის რედაქტირება', 'web', '2021-12-26 04:11:11', '2022-01-11 15:29:20'),
(12, 'permission-delete', 'პრივილეგიის წაშლა', 'web', '2021-12-26 04:11:11', '2022-01-11 15:29:34'),
(13, 'post-list', 'პოსტების დათვალიერება', 'web', '2021-12-26 04:11:11', '2022-01-22 05:52:48'),
(14, 'post-create', 'პოსტის შექმნა', 'web', '2021-12-26 04:11:11', '2022-01-22 05:53:06'),
(15, 'post-edit', 'პოსტის რედაქტირება', 'web', '2021-12-26 04:11:11', '2022-01-22 05:53:30'),
(16, 'post-delete', 'პოსტის წაშლა', 'web', '2021-12-26 04:11:11', '2022-01-22 05:53:50'),
(17, 'contact-list', 'კონტაქტების ნახვა', 'web', '2021-12-26 04:47:05', '2022-01-11 15:30:07'),
(18, 'contact-edit', 'კონტაქტის რედაქტირება', 'web', '2021-12-26 04:47:37', '2022-01-22 05:51:52'),
(19, 'contact-create', 'კონტაქტის შექმნა', 'web', '2021-12-26 04:48:23', '2022-01-22 05:52:09'),
(20, 'contact-delete', 'კონტაქტის წაშლა', 'web', '2021-12-26 04:48:51', '2022-01-31 19:52:58'),
(21, 'client-list', 'კლიენტები', 'web', '2021-12-26 08:39:18', '2021-12-26 08:39:18'),
(22, 'client-edit', 'კლიენტების რედაქტირება', 'web', '2021-12-26 08:40:34', '2021-12-26 08:40:34'),
(23, 'client-delete', 'კლიენტის წაშლა', 'web', '2021-12-26 08:40:58', '2021-12-26 08:40:58'),
(24, 'place-list', 'ადგილების ნახვა', 'web', '2022-01-06 06:47:35', '2022-01-06 06:47:35'),
(25, 'place-create', 'ადგილის შექმნა', 'web', '2022-01-06 06:48:10', '2022-01-06 06:48:10'),
(26, 'place-edit', 'ადგილის რედაქტირება', 'web', '2022-01-06 06:48:35', '2022-01-06 06:48:35'),
(27, 'place-delete', 'ადგილის წაშლა', 'web', '2022-01-06 06:48:57', '2022-01-06 06:48:57'),
(29, 'table-list', 'მაგიდების სია', 'web', '2022-01-08 09:43:16', '2022-01-08 09:43:16'),
(30, 'table-edit', 'მაგიდის რედაქტირება', 'web', '2022-01-08 09:44:18', '2022-01-08 09:44:18'),
(31, 'table-delete', 'მაგიდის წაშლა', 'web', '2022-01-08 09:44:45', '2022-01-08 09:44:45'),
(32, 'table-create', 'მაგიდის დამატება', 'web', '2022-01-08 09:46:00', '2022-01-08 09:46:00'),
(33, 'setting-list', 'პარამეტრების ნახვა', 'web', '2022-01-09 07:31:54', '2022-01-09 07:31:54'),
(34, 'setting-create', 'პარამეტრების შექმნა', 'web', '2022-01-09 07:32:43', '2022-01-09 07:32:43'),
(35, 'setting-edit', 'პარამეტრების რედაქტირება', 'web', '2022-01-09 07:33:33', '2022-01-09 07:33:33'),
(36, 'setting-delete', 'პარამეტრების წაშლა', 'web', '2022-01-09 07:34:08', '2022-01-09 07:34:08'),
(37, 'category-list', 'კატეგორიების სია', 'web', '2022-01-09 08:20:03', '2022-01-09 08:20:03'),
(38, 'category-create', 'კატეგორის დამატება', 'web', '2022-01-09 08:20:42', '2022-01-09 08:20:42'),
(39, 'category-edit', 'კატეგორის რედაქტირება', 'web', '2022-01-09 08:22:06', '2022-01-09 08:22:06'),
(40, 'category-delete', 'კატეგორის წაშლა', 'web', '2022-01-09 08:22:28', '2022-01-09 08:22:28'),
(41, 'product-list', 'პროდუქციის სია', 'web', '2022-01-09 14:54:35', '2022-01-09 14:54:52'),
(42, 'product-create', 'პროდუქტის დამატება', 'web', '2022-01-09 14:55:20', '2022-01-09 14:55:20'),
(43, 'product-edit', 'პროდუქტის რედაქტირება', 'web', '2022-01-09 14:55:41', '2022-01-09 14:55:41'),
(44, 'product-delete', 'პროდუქტის წაშლა', 'web', '2022-01-09 14:56:00', '2022-01-09 14:56:00'),
(45, 'reservation-list', 'რეზერვაციების სია', 'web', '2022-01-11 06:59:48', '2022-01-11 06:59:48'),
(46, 'reservation-create', 'რეზერვაციის დამატება', 'web', '2022-01-11 07:00:26', '2022-01-11 07:00:26'),
(47, 'reservation-edit', 'რეზერვაციის რედაქტირება', 'web', '2022-01-11 07:00:53', '2022-01-11 07:00:53'),
(48, 'reservation-delete', 'რეზერვაციის წაშლა', 'web', '2022-01-11 07:01:09', '2022-01-11 07:01:09'),
(51, 'token-list', 'ტოკენების სია', 'web', '2022-01-31 19:53:50', '2022-01-31 19:53:50'),
(52, 'token-create', 'ტოკენის შექმნა', 'web', '2022-01-31 19:54:21', '2022-01-31 19:54:21'),
(53, 'token-delete', 'ტოკენის წაშლა', 'web', '2022-01-31 19:54:38', '2022-01-31 19:54:38'),
(54, 'order-list', 'შეკვეთების ცხრილი', 'web', '2022-02-03 13:07:37', '2022-02-03 13:07:37'),
(55, 'order-create', 'შეკვეთის დამატება', 'web', '2022-02-03 13:08:16', '2022-02-03 13:08:16'),
(56, 'order-edit', 'შეკვეთის რედაქტირება', 'web', '2022-02-03 13:08:38', '2022-02-03 13:09:00'),
(57, 'order-delete', 'შეკვეთის წაშლა', 'web', '2022-02-03 13:09:15', '2022-02-03 13:09:15'),
(58, 'message-list', 'Messages', 'web', '2023-01-22 22:45:32', '2023-01-22 22:45:32'),
(59, 'restaurant-list', 'რესტორნები', 'web', '2023-11-08 05:42:47', '2023-11-08 05:43:10'),
(61, 'slide-list', 'სლადიდები', 'web', '2023-11-08 05:44:52', '2023-11-08 05:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(13, 'App\\Models\\User', 5, 'Tok1', '9f854b835f65828e302c347895769c44d653ba038336949e2497282f32228843', '[\"*\"]', '2022-02-01 07:45:40', '2022-01-31 20:49:04', '2022-02-01 07:45:40'),
(18, 'App\\Models\\User', 1, 'demo1', '47f9938840763f8328947598831d21415684e03a9bec15ed2270a468e8a1c2bb', '[\"*\"]', '2023-10-16 11:25:32', '2023-10-16 11:23:49', '2023-10-16 11:25:32'),
(19, 'App\\Models\\User', 1, 'front', 'c3a1816d15d628173c9a775da62434ae91e7ce8c78e5deacd0317279ec97c1fe', '[\"*\"]', NULL, '2024-01-16 12:38:33', '2024-01-16 12:38:33'),
(20, 'App\\Models\\User', 1, 'front', '269d07147087a608fb1cfa674a9cc1d7c8484d7f51d3195e3c4f3de5571cde1b', '[\"*\"]', '2024-01-16 12:50:55', '2024-01-16 12:41:49', '2024-01-16 12:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `render_image` text DEFAULT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `restaurant_id`, `image`, `render_image`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(26, 4, '20231020132631.jpg', '20231020132631.jpg', 2, 1, '2023-10-20 09:26:31', '2023-10-20 09:26:31'),
(35, 10, '20231203212757.jpg', '202312032127.png', 11, 1, '2023-11-18 21:02:01', '2023-12-03 17:27:57'),
(36, 4, '20240212044031.jpg', '202312021450.jpg', 1, 1, '2023-12-02 10:50:43', '2024-02-12 04:40:31'),
(38, 4, '20240212044948.jpg', '202312021511.jpg', 3, 1, '2023-12-02 11:11:28', '2024-02-12 04:49:48'),
(39, 4, '20240212044929.jpg', '202312032033.png', 4, 1, '2023-12-03 16:16:16', '2024-02-12 04:49:29'),
(40, 10, '20231203211626.jpg', '202312032114.png', 10, 1, '2023-12-03 17:14:42', '2023-12-03 17:16:26'),
(41, 11, '20231209181718.jpg', '202312091817.jpg', 2, 1, '2023-12-09 18:17:18', '2023-12-09 19:13:29'),
(42, 11, '20231209182415.jpg', '202312091824.jpg', 3, 1, '2023-12-09 18:24:15', '2023-12-09 19:13:37'),
(43, 11, '20231209183431.jpg', '202312091834.jpg', 1, 1, '2023-12-09 18:34:31', '2023-12-09 19:13:16'),
(44, 7, '20231211220011.jpg', '202312112200.jpg', NULL, 1, '2023-12-11 22:00:11', '2023-12-11 22:00:11'),
(45, 7, '20231211220047.png', '202312112200.png', NULL, 1, '2023-12-11 22:00:47', '2023-12-11 22:00:47'),
(46, 17, '20231219145858.jpg', '202312191458.jpg', 2, 1, '2023-12-19 14:58:58', '2023-12-21 01:49:28'),
(47, 17, '20231219145941.jpg', '202312191459.jpg', 1, 1, '2023-12-19 14:59:41', '2023-12-21 01:49:21'),
(48, 35, NULL, NULL, 2, 1, '2024-02-21 19:44:22', '2024-02-21 19:59:38'),
(49, 35, NULL, NULL, 1, 1, '2024-02-21 19:59:23', '2024-02-21 19:59:32'),
(50, 35, '20240223025104.png', '202402230249.png', 3, 1, '2024-02-21 20:00:15', '2024-02-23 02:51:04'),
(51, 35, NULL, NULL, 4, 1, '2024-02-21 20:00:42', '2024-02-21 20:00:49'),
(54, 35, NULL, NULL, 5, 1, '2024-02-21 20:17:32', '2024-02-21 22:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `place_translations`
--

CREATE TABLE `place_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `place_translations`
--

INSERT INTO `place_translations` (`id`, `place_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(72, 26, 'en', 'Terrace', 'Terrace', '2023-10-20 09:26:31', '2023-10-20 09:26:31'),
(73, 26, 'ka', 'ტერასა', 'ტერასა', '2023-10-20 09:26:31', '2023-10-20 09:26:31'),
(90, 35, 'en', 'floor 2', 'floor 2', '2023-11-18 21:02:01', '2023-11-18 21:02:01'),
(91, 35, 'ka', 'სართული 2', 'სართული 2', '2023-11-18 21:27:27', '2023-11-18 21:27:27'),
(92, 36, 'en', 'Main Hall', 'Main Hall', '2023-12-02 10:50:43', '2023-12-02 10:50:43'),
(93, 36, 'ka', 'მთავარი დარბაზი', 'მთავარი დარბაზი', '2023-12-02 10:50:43', '2023-12-02 10:50:43'),
(96, 38, 'en', 'VIP', 'VIP', '2023-12-02 11:11:28', '2023-12-02 11:11:28'),
(97, 38, 'ka', 'VIP', 'VIP', '2023-12-02 11:11:28', '2023-12-02 11:11:28'),
(98, 39, 'en', 'Sushi Bar', 'Sushi Bar', '2023-12-03 16:16:16', '2023-12-03 16:16:16'),
(99, 39, 'ka', 'სუში ბარი', 'სუში ბარი', '2023-12-03 16:16:16', '2023-12-03 16:16:16'),
(100, 40, 'en', 'Floor 1', 'Floor 1', '2023-12-03 17:14:42', '2023-12-03 17:14:42'),
(101, 40, 'ka', 'სართული 1', 'სართული 1', '2023-12-03 17:14:42', '2023-12-03 17:14:42'),
(102, 41, 'en', 'Sea View', 'Sea View', '2023-12-09 18:17:18', '2023-12-09 18:17:18'),
(103, 41, 'ka', 'ზღვის ხედი', 'ზღვის ხედი', '2023-12-09 18:17:18', '2023-12-09 18:17:18'),
(104, 42, 'en', 'Mountain view', 'Mountain view', '2023-12-09 18:24:15', '2023-12-09 18:24:15'),
(105, 42, 'ka', 'მთის ხედი', 'მთის ხედი', '2023-12-09 18:24:15', '2023-12-09 18:24:15'),
(106, 43, 'en', 'Hall', 'Hall', '2023-12-09 18:34:31', '2023-12-09 18:34:31'),
(107, 43, 'ka', 'შიდა სივრცე', 'შიდა სივრცე', '2023-12-09 18:34:31', '2023-12-09 18:34:31'),
(108, 44, 'en', 'მთავარი დარბაზი', 'მთავარი დარბაზი', '2023-12-11 22:00:11', '2023-12-11 22:00:11'),
(109, 44, 'ka', 'მთავარი დარბაზი', 'მთავარი დარბაზი', '2023-12-11 22:00:11', '2023-12-11 22:00:11'),
(110, 45, 'en', 'ტერასა', 'ტერასა', '2023-12-11 22:00:47', '2023-12-11 22:00:47'),
(111, 45, 'ka', 'ტერასა', 'ტერასა', '2023-12-11 22:00:47', '2023-12-11 22:00:47'),
(112, 46, 'en', 'Teracce', 'Teracce', '2023-12-19 14:58:58', '2023-12-19 14:58:58'),
(113, 46, 'ka', 'ტერასა', 'ტერასა', '2023-12-20 21:49:09', '2023-12-21 01:49:09'),
(114, 47, 'en', 'Main Hall', 'Main Hall', '2023-12-19 14:59:41', '2023-12-19 14:59:41'),
(115, 47, 'ka', 'მთავარი დარბაზი', 'მთავარი დარბაზი', '2023-12-19 14:59:41', '2023-12-19 14:59:41'),
(116, 48, 'ka', 'გარე სივრცე', 'გარე სივრცე', '2024-02-21 19:44:22', '2024-02-21 19:44:22'),
(117, 48, 'en', 'Outdoor', 'Outdoor', '2024-02-21 19:44:22', '2024-02-21 19:44:22'),
(118, 49, 'ka', 'მთავარი დარბაზი', 'მთავარი დარბაზი', '2024-02-21 19:59:23', '2024-02-21 19:59:23'),
(119, 49, 'en', 'Main Hall', 'Main Hall', '2024-02-21 19:59:23', '2024-02-21 19:59:23'),
(120, 50, 'ka', 'სართული 2', 'სართული 2', '2024-02-21 20:00:15', '2024-02-21 20:00:15'),
(121, 50, 'en', 'Floor 2', 'Floor 2', '2024-02-21 20:00:15', '2024-02-21 20:00:15'),
(122, 51, 'ka', 'ტერასა', 'ტერასა', '2024-02-21 20:00:42', '2024-02-21 20:00:42'),
(123, 51, 'en', 'Terrace', 'Terrace', '2024-02-21 20:00:42', '2024-02-21 20:00:42'),
(126, 54, 'ka', 'ვერანდა', NULL, '2024-02-21 20:17:32', '2024-02-21 20:17:32'),
(127, 54, 'en', 'Veranda', NULL, '2024-02-21 20:17:32', '2024-02-21 20:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-01-09 06:39:39', '2022-01-09 06:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `locale`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Recusandae Laboris', 'Amet voluptas ut to', NULL, NULL),
(2, 1, 'ka', 'Vel vel molestiae fa', 'Quo quod ut id culpa', NULL, NULL),
(3, 1, 'ru', 'Ratione illo error i', 'Sequi facilis offici', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `cover`, `created_at`, `updated_at`) VALUES
(1, NULL, '2022-05-10 11:09:42', '2022-05-10 11:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy_translations`
--

CREATE TABLE `privacy_policy_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy_policy_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policy_translations`
--

INSERT INTO `privacy_policy_translations` (`id`, `privacy_policy_id`, `locale`, `title`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Privacy Policy', 'Privacy Policy', 'Last updated: March 28, 2022\r\n\r\n \r\n\r\nThis Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.\r\n\r\n \r\n\r\nWe use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the Privacy Policy Template.\r\n\r\n \r\n\r\nCollecting and Using Your Personal Data\r\n\r\n \r\n\r\nTypes of Data Collected\r\n\r\n \r\n\r\nPersonal Data\r\n\r\nWhile using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:\r\n\r\n \r\n\r\nEmail address\r\nFirst name and last name\r\nPhone number\r\nAddress, State, Province, ZIP/Postal code, City\r\nUsage Data\r\n \r\n\r\nUsage Data\r\n\r\nUsage Data is collected automatically when using the Service.\r\n\r\n \r\n\r\nUsage Data may include information such as Your Devices Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\r\n\r\n \r\n\r\nWhen You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.\r\n\r\n \r\n\r\nWe may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.\r\n\r\n \r\n\r\nInformation from Third-Party Social Media Services\r\n\r\n \r\n\r\nThe Company allows You to create an account and log in to use the Service through the following Third-party Social Media Services:\r\n\r\nGoogle\r\nFacebook\r\nTwitter\r\n \r\n\r\nIf You decide to register through or otherwise grant us access to a Third-Party Social Media Service, We may collect Personal data that is already associated with Your Third-Party Social Media Services account, such as Your name, Your email address, Your activities or Your contact list associated with that account.\r\n\r\n \r\n\r\nYou may also have the option of sharing additional information with the Company through Your Third-Party Social Media Services account. If You choose to provide such information and Personal Data, during registration or otherwise, You are giving the Company permission to use, share, and store it in a manner consistent with this Privacy Policy.\r\n\r\n \r\n\r\nTracking Technologies and Cookies\r\n\r\n \r\n\r\nCookies or Browser Cookies. A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.\r\nFlash Cookies. Certain features of our Service may use local stored objects (or Flash Cookies) to collect and store information about Your preferences or Your activity on our Service. Flash Cookies are not managed by the same browser settings as those used for Browser Cookies. For more information on how You can delete Flash Cookies, please read \"Where can I change the settings for disabling, or deleting local shared objects?\" available at https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_\r\n \r\n\r\nTo provide and maintain our Service, including to monitor the usage of our Service.\r\n\r\n \r\n\r\nTo manage Your Account: to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.\r\n\r\n \r\n\r\nFor the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.\r\n\r\n \r\n\r\nTo contact You: To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile applications push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.\r\n\r\n \r\n\r\nTo provide You with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.\r\n\r\n \r\n\r\nTo manage Your requests: To attend and manage Your requests to Us.\r\n\r\n \r\n\r\nFor business transfers: We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.\r\n\r\n \r\n\r\nFor other purposes: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.\r\n\r\n \r\n\r\nTransfer of Your Personal Data\r\n\r\n \r\n\r\nYour information, including Personal Data, is processed at the Companys operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.\r\n\r\n \r\n\r\nYour consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.\r\n\r\n \r\n\r\nThe Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.\r\n\r\n \r\n\r\nSecurity of Your Personal Data\r\n\r\n \r\n\r\nThe security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.\r\n\r\n \r\n\r\nChanges to this Privacy Policy\r\n\r\n \r\n\r\nWe may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\r\n\r\n \r\n\r\nWe will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.\r\n\r\n \r\n\r\nYou are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.', '2022-05-10 11:09:42', '2022-05-14 09:08:49'),
(2, 1, 'ka', 'კონფიდენციალურობის პოლიტიკა', 'კონფიდენციალურობის პოლიტიკა', '<div style=\"font-family: liberty-nusregular; color: rgb(51, 51, 51);\"><br></div><div style=\"font-family: liberty-nusregular; color: rgb(51, 51, 51);\"><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">შპს \"დი ემ ჯი\" აფასებს ამ ვებგვერდზე (შემდგომში -ვებგვერდი) თქვენს ვიზიტს და იმ ინტერესს, რომელსაც სერვისებისა და პროდუქტების მიმართ იჩენთ.<br>თქვენი კონფიდენციალური ინფორმაციის დაცვა ჩვენთვის მნიშვნელოვანია და ჩვენი ვებგვერდის სტუმრობის განმავლობაში, გვსურს თავს კომფორტულად გრძნობდეთ.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ჩვენ ვუფრთხილდებით და ვიცავთ თქვენს პერსონალურ მონაცემებს, რომელიც შეგროვდა, მუშავდება და გამოიყენება ვებგვერდზე თქვენი სტუმრობის განმავლობაში და შემდგომში.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ვებგვერდით სარგებლობისას პერსონალური მონაცემების დამუშავების პირობები განსაზღვრულია წინამდებარე კონფიდენციალურობის პოლიტიკით, რომელიც თავის მხრივ შემუშავებულია ჩვენ მიერ დამტკიცებული „<a href=\"https://kerdzebi.ge/privacy-policy\" target=\"_blank\" style=\"color: rgb(219, 0, 17); outline: 0px; font-family: liberty-nusregular;\">მონაცემთა დაცვის პოლიტიკის</a>“ საფუძველზე. აღნიშნული დოკუმენტი ხელმისაწვდომია ვებგვერდზე და შეგიძლიათ გაეცნოთ.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">ვებგვერდზე შემოსვლით თქვენ ეთანხმებით წინამდებარე კონფიდენციალურობის პოლიტიკას (შემდგომში - პოლიტიკა)</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">თუ თქვენ არ ეთანხმებით წინამდებარე პოლიტიკას, არ განაგრძოთ ვებგვერდის მომდევნო გვერდებით სარგებლობა.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">წინამდებარე პოლიტიკა, შესაძლოა, დროდადრო განახლდეს. აქედან გამომდინარე, გთხოვთ, რომ მას გაეცნოთ რეგულარულად. წინამდებარე პოლიტიკის ბოლო აბზაცი მიანიშნებს იმ თარიღს, თუ როდის მოხდა პოლიტიკის უკანასკნელი განახლება.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">რა მიზანს ემსახურება წინამდებარე პოლიტიკა და რა არის მისი მოქმედების სფერო?</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">სს „ლიბერთი ბანკი“, მისი შვილობილი კომპანიები ან/და აფილირებული პირები (“ლიბერთი ბანკი” ან „ჩვენ“) ცდილობენ დაიცვან იმ პირების პერსონალური მონაცემები, რომლებიც სარგებლობენ ვებგვერდით. შესაბამისად, ლიბერთი ბანკმა შეიმუშავა წინამდებარე პოლიტიკა იმის აღსაწერად, თუ როგორ და რა სახის ინფორმაცია შეგროვდება ვებგვერდის მომხმარებლებისგან და იმ მიზნების განსასაზღვრად, რომლის მისაღწევადაც ლიბერთი ბანკმა შესაძლოა შეაგროვოს, გადასცეს ან სხვაგვარად ხელმისაწვდომი გახადოს აღნიშნული მონაცემები. ლიბერთი ბანკი ასევე განსაზღვრავს ყველა შესაძლო გონივრულ ზომას, რომელიც თქვენი მონაცემების უსაფრთხოების დასაცვად არის აუცილებელი.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">წინამდებარე პოლიტიკა ვრცელდება ყველა სახის ინფორმაციაზე, რომელსაც თქვენ მიერ ვებგვერდის გამოყენების შედეგად მოიპოვებს ლიბერთი ბანკი. პოლიტიკა არ ვრცელდება მესამე პირების იმ ვებგვერდებზე, რომლებიც არ არიან ლიბერთი ბანკთან აფილირებული პირები, მაგრამ შესაძლოა ასეთ ვებგვერდებთან კავშირი ლიბერთი ბანკის ვებგვერდის საშუალებით იყოს შესაძლებელი (შემდგომში - მესამე პირების ვებგვერდები). გთხოვთ, გაეცნოთ ასეთი მესამე პირების ვებგვერდების კონფიდენციალურობის პოლიტიკას, თუკი თქვენ მათ ვებ გვერდებს იყენებთ, იმდენად, რამდენადაც ლიბერთი ბანკი არ არის პასუხისმგებელი და არ აქვს გავლენა არც მესამე პირების ვებგვერდების შემცველ მასალებზე და არც მათი კონფიდენციალურობის დაცვის პრაქტიკაზე.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">წინამდებარე პოლიტიკის პირობები ექვემდებარება, ლიბერთი ბანკთან თქვენი სახელშეკრულებო ურთიერთობის ფარგლებში გაფორმებულ ნებისმიერ დამატებით განაცხადს ან სახელშეკრულებო პირობას (ასეთის არსებობის შემთხვევაში), მაგალითად ისეთს, როგორიცაა ლიბერთი ანგარიშის მომსახურების პირობები, PAY ანგარიშის და ბარათის მომსახურების პირობები და სხვა და ნებისმიერ სავალდებულო ძალის მქონე მოქმედ კანონს ან რეგულაციას.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">რა ინფორმაციას ვაგროვებთ თქვენგან და რა მიზნით?</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">როდესაც თქვენ სტუმრობთ ლიბერთი ბანკის ვებგვერდს, ჩვენი სერვერი ავტომატურად იწერს დეტალებს თქვენი ვიზიტის შესახებ (მაგალითად, შეზღუდვის გარეშე, თქვენი IP მისამართი, ვებგვერდი, რომლიდანაც ჩვენს ვებგვერდს ესტუმრეთ, ვიზიტის დროს გამოყენებული ინტერნეტ-ბრაუზერის ტიპი, მოწყობილობის ტიპი რომელშიც აღნიშნული ბაუზერია განთავსებული, ლიბერთი ბანკის ვებგვერდის ის კონკრეტული გვერდები, რომლებსაც ფაქტობრივად ესტუმრეთ და ვებგვერდზე თქვენი სტუმრობის თარიღი და ხანგრძლივობა და სხვა).</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">დამატებით, ჩვენი ვაგროვებთ პერსონალურ მონაცემებს, რომელსაც თქვენ გვაწვდით ლიბერთი ბანკის ვებგვერდის მეშვეობით, მაგალითად როდესაც შეგყავთ პერსონალური მონაცემები (სახელი, გვარი, სქესი, მისამართი, ელ-ფოსტის მისამართი, ტელეფონის/ფაქსის ნომერი და სხვა) ვებგვერდის სარეგისტრაციო გვერდზე ან მაშინ, როდესაც ჩვენს ვებგვერდზე სიახლეების მისაღებად რეგისტრირდებით, ან რომელსაც გვაწვდიან ისეთი მესამე პირები, რომელთა კლიენტი/აბონენტიც თქვენ ბრძანდებით, მაგალითად როდესაც იხდით ასეთი მესამე პირებისადმი დავალიანებას ან/და ავსებთ თქვენი სააბონენტო ანგარიშის ბალანსს.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ლიბერთი ბანკი გამოიყენებს თქვენს პერსონალურ მონაცემებს:<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;ვებგვერდის ტექნიკური ადმინისტრირების და მისი კვლევისა და განვითარების მიზნებისათვის;<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;კლიენტისა და მომხმარებლის ადმინისტრირებისა და მარკეტინგული მიზნებისათვის;<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;ლიბერთი ბანკის სხვა ელექტრონულ არხებთან მიმართებით, ზემოხსენებული მიზნებისთვის;<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;ჩვენი სერვისებისა და პროდუქტების შესახებ თქვენთვის ინფორმაციის მოსაწოდებლად;<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;წინამდებარე პოლიტიკით განსაზღვრულ სხვა შემთხვევებისთვის.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ლიბერთი ბანკი იცავს ყველა მოქმედ კანონს და რეგულაციას, რომელიც ჩვენ მიერ პერსონალური მონაცემების დამუშავების საკითხს ეხება.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">როგორ ვაგროვებთ და ვინახავთ ინფორმაციას თქვენ შესახებ?</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ლიბერთი ბანკი იყენებს ისეთ ტექნოლოგიას, როგორიცაა მზა ჩანაწერები (cookies) ან თეგი (შემდგომში - თრექინგის ტექნოლოგია), იმისთვის, რომ შევაგროვოთ ზემოაღნიშნული ინფორმაცია (იხილეთ: რა ინფორმაციას ვაგროვებთ თქვენგან და რა მიზნით?) და გავიგოთ, თუ როგორ იყენებენ ვიზიტორები ჩვენს ვებგვერდს.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">მზა ჩანაწერების ან თეგების ტექნოლოგია გვეხმარება ვმართოთ და გავაუმჯობესოთ ვებგვერდის ეფექტურობა, მაგალითად იმის მიხედვით, ყოფილა თუ არა თქვენს კომპიუტერსა და ჩვენს ვებგვერდს შორის წარსულში რამე კავშირი, მოვახდინოთ &nbsp;ვებგვერდზე ყველაზე პოპულარული სექციების იდენტიფიცირება და სხვა.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">გთხოვთ დარწმუნდეთ, რომ თქვენი მზა ჩანაწერების წესები გაწერილია იმგვარად, რომ მონიშნული არ გაქვთ მზა ჩანაწერის ის ტიპი, რომლის გამოყენებაზე ლიბერთი ბანკს ნებას არ რთავთ. &nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">როდესაც ინახავთ თქვენი მზა ჩანაწერების წესებს, ისინი ასევე ვრცელდება ლიბერთი ბანკის ვებგვერდზე თქვენს სამომავლო ვიზიტებზეც. თუმცა, ლიბერთი ბანკის მიღმა არსებული ტექნიკური მიზეზებით, ეს გარანტირებული არ არის. მაგალითად, თუ თქვენს მიერ მოხდა ინტერნეტ-ბრაუზერის აღდგენა/ხელახალი ინსტალაცია, მზა ჩანაწერებისგან გაწმენდა ან ლიბერთი ბანკის ვებგვერდზე ვიზიტი სხვა ინტერნეტ-ბრაუზერის ან მოწყობილობის გამოყენებით, თქვენი მზა ჩანაწერების წესები, შესაძლოა, დაიკარგოს.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ხშირ შემთხვევაში, თქვენ ასევე შეგიძლიათ თქვენი ინტერნეტ-ბრაუზერით თრექინგის ტექნოლოგიების კონტროლი. გთხოვთ, დარწმუნდეთ რომ თქვენი ინტერნეტ-ბრაუზერი ასახავს თქვენ სურვილს გსურთ თუ არა, სადაც ეს შესაძლებელია, გაგაფრთხილოთ თრექინგ ტექნოლოგიების და ან მათი მიღების შესახებ. თქვენი ინტერნეტ-ბრაუზერის სპეციალურ შესაძლებლობებს და ინსტრუქციებს მათი მოხმარების შესახებ, როგორც წესი, შეგიძლიათ გაეცნოთ თქვენი ინტერნეტ-ბრაუზერის სახელმძღვანელოში ან სექციაში „დახმარება“.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">თრექინგ ტექნოლოგიების გამოყენებაზე უარის თქმამ ან მათმა დეაქტივაციამ შესაძლოა უარყოფითი გავლენა იქონიოს ლიბერთი ბანკის ვებგვერდის ან მისი სხვადასხვა ნაწილების მიერ შემოთავაზებული სერვისების ხელმისაწვდომობაზე და მათ გამართულ ფუნქციონირებაზე.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">ვის გადავცემთ ვებგვერდიდან თქვენზე შეგროვებულ ინფორმაციას?</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ლიბერთი ბანკმა შესაძლოა თქვენი ინფორმაცია გადასცეს მასთან აფილირებულ პირებს, მის ან მისი აფილირებული პირების აგენტებს ან ლიბერთი ბანკისთვის სერვისის მომწოდებელ მესამე პირებს თქვენი ქვეყნის გარეთ ან შიგნით, ზემოაღნიშნული მიზნების მისაღწევად. ჩვენთან აფილირებული პირები, აგენტები და სერვისის მომწოდებელი მესამე პირები, რომლებსაც ლიბერთი ბანკის ვებგვერდის მეშვეობით მოპოვებულ თქვენს პერსონალურ მონაცემებზე წვდომა აქვთ, ასევე გააჩნიათ ამ მონაცემების კონფიდენციალურობის დაცვის ვალდებულება.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">როდესაც ვახდენთ პერსონალური მონაცემების საერთაშორისო ტრანსფერს, ჩვენ ვრწმუნდებით ვართ თუ არა მოქმედ კანონმდებლობასთან და რეგულაციებთან შესაბამისობაში, მაგალითად, ვაფორმებთ შესაბამის ხელშეკრულებებს იმ პირებთან, რომლებიც თქვენს პერსონალურ მონაცემებს ჩვენგან იღებენ, რათა მათ უზრუნველყონ ამ მონაცემების ადეკვატური დაცვა.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ასევე, ჩვენ მიერ თქვენი ინფორმაცია შესაძლოა გადაეცეს სახელმწიფო ორგანოებს ან ერთეულებს, მარეგულირებელ ორგანოებს ან ნებისმიერ სხვა პირს, მოქმედი კანონმდებლობის, რეგულაციების, სასამართლო განჩინების ან ოფიციალური მოთხოვნის, სახელმწიფო მარეგულირებელი ორგანოს გამოცემული ინსქტრუქციის საფუძველზე და მიზნების შესაბამისად ან მოქმედი კანონმდებლობის საფუძველზე წარმართული ნებისმიერი მსგავსი პროცესის საფუძველზე.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">უსაფრთხოების რა ზომები დავნერგეთ ვებგვერდის მეშვეობით მოპოვებული თქვენი ინფორმაციის დასაცავად?</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ლიბერთი ბანკმა მოახდინა მისთვის ხელმისაწვდომი ყველა გონივრული ტექნიკური და ორგანიზაციული უსაფრთხოების ზომის იმპლემენტაცია, იმისათვის, რომ ლიბერთი ბანკის მიერ ვებგვერდის მეშვეობით მოპოვებული თქვენი პერსონალური მონაცემები დაცული იყოს უნებართვო წვდომისგან, გამოყენებისგან, დაკარგვისგან ან განადგურებისგან.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">როგორ ვექცევით ლიბერთი ბანკის მიერ და ლიბერთი ბანკისთვის გაგზავნილ ელექტონულ შეტყობინებებს?&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ლიბერთი ბანკის მიერ და ლიბერთი ბანკისთვის გაგზავნილ ყველა ელექტრონულ შეტყობინებას (SMS, მაილი და სხვა) ჩვენ ავტომატურად ვინახავთ სპეციალური ელექტრონული ჟურნალის სისტემაში, რომელსაც გააჩნია სამართლებრივი მტკიცებულების ძალა. მათ ჩვენ ვიცავთ გონივრული ტექნიკური და ორგანიზაციული ზომების გამოყენებით და მათთან წვდომა დასაშვებია მხოლოდ განსაზღვრულ შემთხვევებში, მოქმედი კანონმდებლობის და რეგულაციების ზედმოწევნითი დაცვით (მაგალითად სასამართლოს განჩინება, დანაშაულის ჩადენის ეჭვი, რეგულატორული ვალდებულებების დარღვევა, შრომითი ხელშეკრულების არსებითი დარღვევა) სპეციალური ფუნქციებით აღჭურვილი კონკრეტული პიროვნებების მიერ (მაგალითად სამართლებრივი შესაბამისობის ან რისკების სამსახური). პროცესის ყოველი ნაბიჯი, მათ შორის გამოყენებული ძებნის კრიტერიუმები, შეიყვანება სპეციალურ აუდიტორულ ველში. ყველა შეტყობინება ნადგურდება მას შემდეგ, რაც ამოიწურება მათი შენახვისთვის განსაზღვრული გონივრული პერიოდი.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">რა უნდა გაითვალისწინოთ, როდესაც მონაცემებს ინტერნეტის მეშვეობით აგზავნით?&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">მიიჩნევა, რომ ინტერნეტი არ წარმოადგენს დაცულ გარემოს, და ინფორმაციაზე, რომელსაც ინტერნეტის მეშვეობით იგზავნება (მაგალითად ვებგვერდის ან ელექტრონული შეტყობინების სისტემის გამოყენებით) შესაძლოა არასანქცირებული წვდომა მოიპოვონ მესამე პირებმა, რამაც, შესაძლებელია, გამოიწვიოს ინფორმაციის გამჟღავნება, ინფორმაციის შემცველი მასალის ცვლილება ან სხვა ტექნიკური შეცდომა. იმის მიუხედავად, იმყოფებიან თუ არა ინფორმაციის გამგზავნიც და მისი მიმღებიც ერთი და იმავე ქვეყანაში, ინტერნეტის მეშვეობით გაგზავნილი ინფორმაცია შესაძლოა გადაიცეს საერთაშორისო საზღვრების მიღმა და შესაძლებელია აღმოჩნდეს ისეთ ქვეყანაში, სადაც თქვენი ქვეყნისგან განსხვავებით, პერსონალური მონაცემების დაცვისათვის სუსტი მექანიზმები არსებობს.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">გთხოვთ, გაითვალისწინოთ, რომ ჩვენ არ ვაგებთ პასუხს თქვენი ინფორმაციის უსაფრთხოებაზე იმ ეტაპზე, როდესაც ეს ინფორმაცია ინტერნეტის მეშვეობით ლიბერთი ბანკისთვის გადაცემის მდგომარეობაში იმყოფება. იმისათვის, რომ დაიცვათ თქვენი მონაცემების კონფიდენციალურობა, გვსურს შეგახსენოთ, რომ თქვენ შეგიძლიათ ლიბერთი ბანკთან კომუნიკაციისათვის აირჩიოთ ის მეთოდი, რომელსაც შესაფერისად მიიჩნევთ.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">როგორ ვეპყრობით 18 წელს მიუღწეველი პირების შესახებ ინფორმაციას?</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ლიბერთი ბანკი არ ემსახურება პირებს, რომელთაც 18 წლის ასაკისთვის არ მიუღწევიათ და შესაბამისად, ვებგერდი არ აგროვებს პერსონალურ მონაცემებს აღნიშნული პირებისგან. ლიბერთი ბანკისთვის ვებგვერდის მეშვეობით პერსონალური მონაცემების გადაცემამდე 18 წელს მიუღწეველმა პირებმა უნდა მოიპოვონ ნებართვა მშობლებისგან ან კანონიერი წარმომადგენლებისგან.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\"><span style=\"font-weight: 700; font-family: liberty-nusregular;\">როგორ შეგიძლიათ თქვენ პერსონალური მონაცემებზე წვდომა ან მათი გაცნობა?</span></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">მოქმედი კანონმდებლობით ან რეგულაციებით გათვალისწინებული წესით, თქვენ შეგიძლიათ:<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;გადაამოწმოთ ვინახავთ თუ არა თქვენს პერსონალურ მონაცემებს;<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;გვთხოვოთ ჩვენთან დაცული თქვენი პერსონალური მონაცემების ასლის გადმოცემა; ან<br style=\"font-family: liberty-nusregular;\">-&nbsp;&nbsp; &nbsp;მოითხოვოთ ჩვენთან დაცული თქვენი პერსონალურ მონაცემებში უსწორობის აღმოფხვრა.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">თქვენი პერსონალური მონაცემების დამუშავებასთნ დაკავშირებული მოთხოვნების არსებობის შემთხვევაში, გთხოვთ გამოგვიგზავნოთ წერილი შემდეგ მისამართზე:&nbsp;<a href=\"http://info@kerdzebi.ge\">info@kerdzebi.ge</a></p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-family: liberty-nusmedium; line-height: 18px; color: rgb(52, 52, 52);\">ბოლო ცვლილება განხორციელდა 2023 წლის 1 მარტს.</p></div>', '2022-05-10 11:09:42', '2023-02-28 22:31:17'),
(3, 1, 'ru', 'Privacy Policy', 'Privacy Policy', 'Last updated: March 28, 2022\r\n\r\n \r\n\r\nThis Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.\r\n\r\n \r\n\r\nWe use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the Privacy Policy Template.\r\n\r\n \r\n\r\nCollecting and Using Your Personal Data\r\n\r\n \r\n\r\nTypes of Data Collected\r\n\r\n \r\n\r\nPersonal Data\r\n\r\nWhile using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:\r\n\r\n \r\n\r\nEmail address\r\nFirst name and last name\r\nPhone number\r\nAddress, State, Province, ZIP/Postal code, City\r\nUsage Data\r\n \r\n\r\nUsage Data\r\n\r\nUsage Data is collected automatically when using the Service.\r\n\r\n \r\n\r\nUsage Data may include information such as Your Devices Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\r\n\r\n \r\n\r\nWhen You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.\r\n\r\n \r\n\r\nWe may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.\r\n\r\n \r\n\r\nInformation from Third-Party Social Media Services\r\n\r\n \r\n\r\nThe Company allows You to create an account and log in to use the Service through the following Third-party Social Media Services:\r\n\r\nGoogle\r\nFacebook\r\nTwitter\r\n \r\n\r\nIf You decide to register through or otherwise grant us access to a Third-Party Social Media Service, We may collect Personal data that is already associated with Your Third-Party Social Media Services account, such as Your name, Your email address, Your activities or Your contact list associated with that account.\r\n\r\n \r\n\r\nYou may also have the option of sharing additional information with the Company through Your Third-Party Social Media Services account. If You choose to provide such information and Personal Data, during registration or otherwise, You are giving the Company permission to use, share, and store it in a manner consistent with this Privacy Policy.\r\n\r\n \r\n\r\nTracking Technologies and Cookies\r\n\r\n \r\n\r\nCookies or Browser Cookies. A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.\r\nFlash Cookies. Certain features of our Service may use local stored objects (or Flash Cookies) to collect and store information about Your preferences or Your activity on our Service. Flash Cookies are not managed by the same browser settings as those used for Browser Cookies. For more information on how You can delete Flash Cookies, please read \"Where can I change the settings for disabling, or deleting local shared objects?\" available at https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_\r\n \r\n\r\nTo provide and maintain our Service, including to monitor the usage of our Service.\r\n\r\n \r\n\r\nTo manage Your Account: to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.\r\n\r\n \r\n\r\nFor the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.\r\n\r\n \r\n\r\nTo contact You: To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile applications push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.\r\n\r\n \r\n\r\nTo provide You with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.\r\n\r\n \r\n\r\nTo manage Your requests: To attend and manage Your requests to Us.\r\n\r\n \r\n\r\nFor business transfers: We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.\r\n\r\n \r\n\r\nFor other purposes: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.\r\n\r\n \r\n\r\nTransfer of Your Personal Data\r\n\r\n \r\n\r\nYour information, including Personal Data, is processed at the Companys operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.\r\n\r\n \r\n\r\nYour consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.\r\n\r\n \r\n\r\nThe Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.\r\n\r\n \r\n\r\nSecurity of Your Personal Data\r\n\r\n \r\n\r\nThe security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.\r\n\r\n \r\n\r\nChanges to this Privacy Policy\r\n\r\n \r\n\r\nWe may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\r\n\r\n \r\n\r\nWe will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.\r\n\r\n \r\n\r\nYou are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.', '2022-05-10 11:09:42', '2022-05-14 09:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `price` varchar(10) NOT NULL,
  `discounted_price` int(10) UNSIGNED DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `status`, `rank`, `price`, `discounted_price`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(150, '20231026172313.jpg', 1, 1, '65', NULL, NULL, 86, '2023-10-26 13:23:13', '2023-10-26 13:23:13'),
(151, '20231026172858.jpg', 1, 2, '49', NULL, NULL, 86, '2023-10-26 13:23:37', '2023-10-26 13:28:58'),
(152, '20231026172405.jpg', 1, 6, '49', NULL, NULL, 86, '2023-10-26 13:24:05', '2023-10-26 13:24:05'),
(153, '20231026172537.jpg', 1, 9, '29', NULL, NULL, 95, '2023-10-26 13:25:37', '2023-10-26 13:28:34'),
(154, '20231026172933.jpg', 1, 3, '32', NULL, NULL, 95, '2023-10-26 13:29:33', '2023-10-26 13:29:33'),
(155, '20231026173001.jpg', 1, 4, '42', NULL, NULL, 95, '2023-10-26 13:30:01', '2023-10-26 13:30:01'),
(156, '20231026173049.jpg', 1, 8, '37', NULL, NULL, 95, '2023-10-26 13:30:49', '2023-10-26 13:30:49'),
(157, '20231026175758.jpg', 1, 10, '9', NULL, NULL, 85, '2023-10-26 13:57:58', '2023-12-05 02:24:49'),
(159, '20231026175844.jpg', 0, 11, '10', NULL, NULL, 85, '2023-10-26 13:58:44', '2023-12-05 02:25:30'),
(160, '20231026175905.jpg', 1, 7, '6', NULL, NULL, 85, '2023-10-26 13:59:05', '2023-12-05 02:25:14'),
(161, '20231026231924.jpg', 0, 13, '15', NULL, NULL, 83, '2023-10-26 19:19:24', '2023-12-05 02:14:42'),
(162, '20231026232016.jpg', 0, 15, '17', NULL, NULL, 83, '2023-10-26 19:20:16', '2023-12-05 02:15:06'),
(163, '20231026232205.jpg', 0, 14, '12', NULL, NULL, 83, '2023-10-26 19:22:05', '2023-12-05 02:15:16'),
(164, '20231026232303.jpg', 0, 16, '14', NULL, NULL, 83, '2023-10-26 19:23:03', '2023-12-05 02:22:55'),
(165, '20231205154737.jpg', 1, NULL, '20', NULL, NULL, 84, '2023-12-05 15:47:37', '2023-12-05 15:47:37'),
(166, '20231205155009.jpg', 1, NULL, '18', NULL, NULL, 84, '2023-12-05 15:50:09', '2023-12-05 15:50:09'),
(167, '20231205155058.jpg', 1, NULL, '11', NULL, NULL, 84, '2023-12-05 15:50:58', '2023-12-05 15:50:58'),
(168, '20231205155434.jpg', 1, NULL, '14', NULL, NULL, 84, '2023-12-05 15:54:34', '2023-12-05 15:54:34'),
(169, '20231205161540.jpg', 1, NULL, '29', NULL, NULL, 107, '2023-12-05 16:15:40', '2023-12-05 16:15:40'),
(170, '20231205161617.jpg', 1, NULL, '24', NULL, NULL, 107, '2023-12-05 16:16:17', '2023-12-05 16:16:17'),
(171, '20231205161700.jpg', 1, NULL, '24', NULL, NULL, 107, '2023-12-05 16:17:00', '2023-12-05 16:17:00'),
(172, '20231205161751.jpg', 1, NULL, '24', NULL, NULL, 107, '2023-12-05 16:17:51', '2023-12-05 16:17:51'),
(173, '20231205162020.jpg', 1, NULL, '24', NULL, NULL, 107, '2023-12-05 16:18:18', '2023-12-05 16:20:20'),
(174, '20231205161854.jpg', 1, NULL, '24', NULL, NULL, 107, '2023-12-05 16:18:54', '2023-12-05 16:18:54'),
(175, '20231206030956.jpg', 1, NULL, '32', NULL, NULL, 83, '2023-12-06 03:09:56', '2023-12-06 03:09:56'),
(176, '20231206031033.jpg', 1, NULL, '29', NULL, NULL, 83, '2023-12-06 03:10:33', '2023-12-06 03:10:33'),
(177, '20231206031330.jpg', 1, NULL, '42', NULL, NULL, 83, '2023-12-06 03:11:38', '2023-12-06 03:13:30'),
(178, '20231206031231.jpg', 1, NULL, '22', NULL, NULL, 83, '2023-12-06 03:12:31', '2023-12-06 03:12:31'),
(179, '20231218171522.jpg', 1, NULL, '27', NULL, NULL, 108, '2023-12-07 17:10:50', '2023-12-18 17:15:22'),
(180, '20231218171534.jpg', 1, NULL, '25', NULL, NULL, 108, '2023-12-07 17:13:09', '2023-12-18 17:15:34'),
(181, '20231218171309.jpg', 1, NULL, '12', NULL, NULL, 109, '2023-12-07 17:18:33', '2023-12-18 17:13:09'),
(182, '20231218171333.jpg', 1, NULL, '11', NULL, NULL, 109, '2023-12-07 17:21:03', '2023-12-18 17:13:33'),
(183, '20231218171226.jpg', 1, NULL, '6', NULL, NULL, 109, '2023-12-07 17:23:33', '2023-12-18 17:12:26'),
(184, '20231218171254.jpg', 1, NULL, '8', NULL, NULL, 109, '2023-12-07 17:29:04', '2023-12-18 17:12:54'),
(185, NULL, 1, NULL, '0', NULL, NULL, 94, '2023-12-09 20:28:01', '2023-12-09 20:28:01'),
(186, NULL, 1, NULL, '22', NULL, NULL, 112, '2023-12-09 20:44:15', '2023-12-10 20:38:58'),
(187, NULL, 1, NULL, '15', NULL, NULL, 112, '2023-12-09 20:47:13', '2023-12-10 20:39:15'),
(188, NULL, 1, NULL, '15', NULL, NULL, 112, '2023-12-09 20:55:03', '2023-12-10 20:39:32'),
(190, NULL, 1, NULL, '15', NULL, NULL, 112, '2023-12-09 20:57:59', '2023-12-10 20:39:51'),
(191, NULL, 1, NULL, '110', NULL, NULL, 113, '2023-12-09 20:58:44', '2023-12-10 20:32:09'),
(192, NULL, 1, NULL, '140', NULL, NULL, 113, '2023-12-09 20:58:57', '2023-12-10 20:32:36'),
(193, NULL, 1, NULL, '370', NULL, NULL, 113, '2023-12-09 20:59:09', '2023-12-10 20:33:15'),
(194, NULL, 1, NULL, '165', NULL, NULL, 113, '2023-12-09 20:59:20', '2023-12-10 20:32:47'),
(195, NULL, 1, NULL, '100', NULL, NULL, 113, '2023-12-09 20:59:32', '2023-12-10 20:33:03'),
(196, NULL, 1, NULL, '0', NULL, NULL, 113, '2023-12-09 20:59:44', '2023-12-09 20:59:44'),
(197, NULL, 1, NULL, '0', NULL, NULL, 126, '2023-12-09 21:00:22', '2023-12-09 21:00:22'),
(198, NULL, 1, NULL, '0', NULL, NULL, 126, '2023-12-09 21:00:35', '2023-12-09 21:00:35'),
(199, NULL, 1, NULL, '0', NULL, NULL, 126, '2023-12-09 21:00:53', '2023-12-09 21:00:53'),
(200, NULL, 1, NULL, '18', NULL, NULL, 125, '2023-12-09 21:01:28', '2023-12-10 20:34:39'),
(201, NULL, 1, NULL, '18', NULL, NULL, 125, '2023-12-09 21:01:44', '2023-12-10 20:34:52'),
(202, NULL, 1, NULL, '20', NULL, NULL, 125, '2023-12-09 21:01:56', '2023-12-10 20:35:07'),
(203, NULL, 1, NULL, '40', NULL, NULL, 125, '2023-12-09 21:02:07', '2023-12-10 20:35:17'),
(204, NULL, 1, NULL, '0', NULL, NULL, 125, '2023-12-09 21:02:20', '2023-12-09 21:02:20'),
(205, NULL, 1, NULL, '15', NULL, NULL, 125, '2023-12-09 21:02:34', '2023-12-10 20:35:37'),
(206, NULL, 1, NULL, '15', NULL, NULL, 125, '2023-12-09 21:03:01', '2023-12-10 20:35:47'),
(207, NULL, 1, NULL, '13', NULL, NULL, 125, '2023-12-09 21:03:20', '2023-12-10 20:36:07'),
(208, NULL, 1, NULL, '25', NULL, NULL, 125, '2023-12-09 21:03:37', '2023-12-10 20:36:21'),
(209, NULL, 1, NULL, '40', NULL, NULL, 124, '2023-12-09 21:04:11', '2023-12-10 20:33:36'),
(210, NULL, 1, NULL, '25', NULL, NULL, 124, '2023-12-09 21:04:24', '2023-12-10 20:33:46'),
(211, NULL, 1, NULL, '20', NULL, NULL, 124, '2023-12-09 21:04:44', '2023-12-10 20:33:56'),
(212, NULL, 1, NULL, '15', NULL, NULL, 124, '2023-12-09 21:04:56', '2023-12-10 20:34:05'),
(213, NULL, 1, NULL, '45', NULL, NULL, 124, '2023-12-09 21:05:10', '2023-12-10 20:34:23'),
(214, NULL, 1, NULL, '0', NULL, NULL, 124, '2023-12-09 21:05:22', '2023-12-09 21:05:22'),
(215, NULL, 1, NULL, '18', NULL, NULL, 123, '2023-12-09 21:06:37', '2023-12-10 20:51:41'),
(216, NULL, 1, NULL, '25', NULL, NULL, 123, '2023-12-09 21:06:50', '2023-12-10 20:52:03'),
(217, NULL, 1, NULL, '30', NULL, NULL, 123, '2023-12-09 21:06:59', '2023-12-10 20:52:14'),
(218, NULL, 1, NULL, '25', NULL, NULL, 123, '2023-12-09 21:08:35', '2023-12-10 20:52:26'),
(219, NULL, 1, NULL, '23', NULL, NULL, 123, '2023-12-09 21:08:48', '2023-12-10 20:52:39'),
(220, NULL, 1, NULL, '17', NULL, NULL, 123, '2023-12-09 21:09:03', '2023-12-10 20:52:54'),
(221, NULL, 1, NULL, '25', NULL, NULL, 123, '2023-12-09 21:09:16', '2023-12-10 20:53:46'),
(222, NULL, 1, NULL, '20', NULL, NULL, 123, '2023-12-09 21:09:27', '2023-12-10 20:53:59'),
(223, NULL, 1, NULL, '20', NULL, NULL, 123, '2023-12-09 21:09:40', '2023-12-10 20:53:06'),
(224, NULL, 1, NULL, '22', NULL, NULL, 123, '2023-12-09 21:09:52', '2023-12-10 20:53:19'),
(225, NULL, 1, NULL, '20', NULL, NULL, 123, '2023-12-09 21:10:04', '2023-12-10 20:53:34'),
(226, NULL, 1, NULL, '15', NULL, NULL, 123, '2023-12-09 21:10:19', '2023-12-10 20:57:56'),
(227, NULL, 1, NULL, '17', NULL, NULL, 123, '2023-12-09 21:10:30', '2023-12-10 20:58:31'),
(228, NULL, 1, NULL, '22', NULL, NULL, 123, '2023-12-09 21:10:40', '2023-12-10 20:58:16'),
(229, NULL, 1, NULL, '30', NULL, NULL, 123, '2023-12-09 21:10:53', '2023-12-10 20:54:15'),
(230, NULL, 1, NULL, '15', NULL, NULL, 123, '2023-12-09 21:11:05', '2023-12-10 20:54:29'),
(231, NULL, 1, NULL, '15', NULL, NULL, 123, '2023-12-09 21:11:17', '2023-12-10 20:54:42'),
(232, NULL, 1, NULL, '15', NULL, NULL, 123, '2023-12-09 21:11:28', '2023-12-10 20:54:56'),
(233, NULL, 1, NULL, '26', NULL, NULL, 123, '2023-12-09 21:11:39', '2023-12-10 20:55:22'),
(234, NULL, 1, NULL, '20', NULL, NULL, 123, '2023-12-09 21:11:52', '2023-12-10 20:55:55'),
(235, NULL, 1, NULL, '15', NULL, NULL, 123, '2023-12-09 21:12:02', '2023-12-10 20:56:10'),
(236, NULL, 1, NULL, '15', NULL, NULL, 123, '2023-12-09 21:12:17', '2023-12-10 20:56:24'),
(237, NULL, 1, NULL, '15', NULL, NULL, 123, '2023-12-09 21:12:29', '2023-12-10 20:56:37'),
(238, NULL, 1, NULL, '20', NULL, NULL, 123, '2023-12-09 21:12:40', '2023-12-10 20:56:55'),
(239, NULL, 1, NULL, '20', NULL, NULL, 123, '2023-12-09 21:12:49', '2023-12-10 20:57:27'),
(240, NULL, 1, NULL, '20', NULL, NULL, 123, '2023-12-09 21:13:03', '2023-12-10 20:58:43'),
(241, NULL, 1, NULL, '14', NULL, NULL, 122, '2023-12-09 21:13:44', '2023-12-10 20:37:17'),
(242, NULL, 1, NULL, '12', NULL, NULL, 122, '2023-12-09 21:13:57', '2023-12-10 20:37:29'),
(243, NULL, 1, NULL, '15', NULL, NULL, 122, '2023-12-09 21:14:06', '2023-12-10 20:37:43'),
(244, NULL, 1, NULL, '0', NULL, NULL, 122, '2023-12-09 21:14:16', '2023-12-09 21:14:16'),
(245, NULL, 1, NULL, '0', NULL, NULL, 122, '2023-12-09 21:14:27', '2023-12-09 21:14:27'),
(246, NULL, 1, NULL, '12', NULL, NULL, 121, '2023-12-09 21:14:57', '2023-12-10 20:59:01'),
(247, NULL, 1, NULL, '9', NULL, NULL, 121, '2023-12-09 21:15:07', '2023-12-10 20:59:14'),
(248, NULL, 1, NULL, '14', NULL, NULL, 121, '2023-12-09 21:15:16', '2023-12-10 20:59:28'),
(249, NULL, 1, NULL, '12', NULL, NULL, 121, '2023-12-09 21:15:26', '2023-12-10 20:59:41'),
(250, NULL, 1, NULL, '16', NULL, NULL, 121, '2023-12-09 21:15:36', '2023-12-10 21:00:00'),
(251, NULL, 1, NULL, '11', NULL, NULL, 120, '2023-12-09 21:16:08', '2023-12-10 20:36:34'),
(252, NULL, 1, NULL, '13', NULL, NULL, 120, '2023-12-09 21:16:18', '2023-12-10 20:37:00'),
(253, NULL, 1, NULL, '0', NULL, NULL, 120, '2023-12-09 21:16:34', '2023-12-09 21:16:34'),
(254, NULL, 1, NULL, '0', NULL, NULL, 120, '2023-12-09 21:16:43', '2023-12-09 21:16:43'),
(255, NULL, 1, NULL, '15', NULL, NULL, 119, '2023-12-09 21:17:10', '2023-12-10 20:37:59'),
(256, NULL, 1, NULL, '15', NULL, NULL, 119, '2023-12-09 21:17:19', '2023-12-10 20:38:41'),
(257, NULL, 1, NULL, '0', NULL, NULL, 119, '2023-12-09 21:17:30', '2023-12-09 21:17:30'),
(258, NULL, 1, NULL, '4', NULL, NULL, 118, '2023-12-09 21:18:01', '2023-12-10 20:27:58'),
(259, NULL, 1, NULL, '6', NULL, NULL, 118, '2023-12-09 21:18:14', '2023-12-10 20:28:07'),
(260, NULL, 1, NULL, '6', NULL, NULL, 118, '2023-12-09 21:18:25', '2023-12-10 20:28:17'),
(261, NULL, 1, NULL, '6', NULL, NULL, 118, '2023-12-09 21:18:35', '2023-12-10 20:28:26'),
(262, NULL, 1, NULL, '6', NULL, NULL, 118, '2023-12-09 21:18:44', '2023-12-10 20:28:37'),
(263, NULL, 1, NULL, '20', NULL, NULL, 118, '2023-12-09 21:18:53', '2023-12-10 20:28:48'),
(264, NULL, 1, NULL, '15', NULL, NULL, 118, '2023-12-09 21:19:03', '2023-12-10 20:28:58'),
(265, NULL, 1, NULL, '0', NULL, NULL, 118, '2023-12-09 21:19:16', '2023-12-09 21:19:16'),
(266, NULL, 1, NULL, '12', NULL, NULL, 118, '2023-12-09 21:19:26', '2023-12-10 20:29:53'),
(267, NULL, 1, NULL, '8', NULL, NULL, 118, '2023-12-09 21:19:37', '2023-12-10 20:30:05'),
(268, NULL, 1, NULL, '0', NULL, NULL, 118, '2023-12-09 21:19:47', '2023-12-09 21:19:47'),
(269, NULL, 1, NULL, '45', NULL, NULL, 117, '2023-12-09 21:20:08', '2023-12-10 20:46:42'),
(270, NULL, 1, NULL, '70', NULL, NULL, 117, '2023-12-09 21:20:17', '2023-12-10 20:46:52'),
(271, NULL, 1, NULL, '45', NULL, NULL, 117, '2023-12-09 21:20:30', '2023-12-10 20:47:03'),
(272, NULL, 1, NULL, '65', NULL, NULL, 117, '2023-12-09 21:20:41', '2023-12-10 20:47:14'),
(273, NULL, 1, NULL, '100', NULL, NULL, 117, '2023-12-09 21:20:50', '2023-12-10 20:47:25'),
(274, NULL, 1, NULL, '45', NULL, NULL, 117, '2023-12-09 21:21:03', '2023-12-10 20:48:05'),
(275, NULL, 1, NULL, '0', NULL, NULL, 117, '2023-12-09 21:21:14', '2023-12-09 21:21:14'),
(276, NULL, 1, NULL, '0', NULL, NULL, 116, '2023-12-09 21:22:11', '2023-12-09 21:22:11'),
(277, NULL, 1, NULL, '5', NULL, NULL, 116, '2023-12-09 21:22:21', '2023-12-10 20:30:29'),
(278, NULL, 1, NULL, '7', NULL, NULL, 116, '2023-12-09 21:22:30', '2023-12-10 20:30:38'),
(279, NULL, 1, NULL, '6', NULL, NULL, 116, '2023-12-09 21:22:41', '2023-12-10 20:30:47'),
(280, NULL, 1, NULL, '11', NULL, NULL, 116, '2023-12-09 21:22:51', '2023-12-10 20:30:57'),
(281, NULL, 1, NULL, '16', NULL, NULL, 116, '2023-12-09 21:23:00', '2023-12-10 20:31:07'),
(282, NULL, 1, NULL, '8', NULL, NULL, 116, '2023-12-09 21:23:09', '2023-12-10 20:31:18'),
(283, NULL, 1, NULL, '15', NULL, NULL, 116, '2023-12-09 21:23:26', '2023-12-10 20:31:28'),
(284, NULL, 1, NULL, '16', NULL, NULL, 116, '2023-12-09 21:23:36', '2023-12-10 20:31:57'),
(285, NULL, 1, NULL, '4', NULL, NULL, 116, '2023-12-09 21:23:45', '2023-12-10 20:30:16'),
(286, NULL, 1, NULL, '5', NULL, NULL, 116, '2023-12-09 21:24:24', '2023-12-10 20:31:49'),
(287, NULL, 1, NULL, '55', NULL, NULL, 115, '2023-12-09 21:24:55', '2023-12-10 20:48:21'),
(289, NULL, 1, NULL, '400', NULL, NULL, 115, '2023-12-09 21:25:12', '2023-12-10 20:49:43'),
(290, NULL, 1, NULL, '14', NULL, NULL, 114, '2023-12-09 21:25:35', '2023-12-10 20:44:28'),
(291, NULL, 1, NULL, '18', NULL, NULL, 114, '2023-12-09 21:25:44', '2023-12-10 20:46:16'),
(292, NULL, 1, NULL, '0', NULL, NULL, 114, '2023-12-09 21:25:52', '2023-12-09 21:25:52'),
(293, '20231217020932.jpg', 1, NULL, '14', NULL, NULL, 110, '2023-12-09 21:50:55', '2023-12-17 02:09:32'),
(294, '20231217020957.jpg', 1, NULL, '16', NULL, NULL, 110, '2023-12-09 21:51:04', '2023-12-17 02:09:57'),
(295, '20231217021047.jpg', 1, NULL, '25', NULL, NULL, 110, '2023-12-09 21:51:17', '2023-12-17 02:10:47'),
(296, '20231217021024.jpg', 1, NULL, '23', NULL, NULL, 110, '2023-12-09 21:51:26', '2023-12-17 02:10:24'),
(297, '20231216183818.jpg', 1, NULL, '28', NULL, NULL, 110, '2023-12-09 21:51:45', '2023-12-16 19:06:48'),
(298, '20231217020904.jpg', 1, NULL, '20', NULL, NULL, 110, '2023-12-09 21:51:55', '2023-12-17 02:09:04'),
(299, '20231217020822.jpg', 1, NULL, '22', NULL, NULL, 110, '2023-12-09 21:52:02', '2023-12-17 02:08:22'),
(300, '20231217020915.jpg', 1, NULL, '35', NULL, NULL, 110, '2023-12-09 21:52:19', '2023-12-17 02:09:15'),
(301, NULL, 1, NULL, '0', NULL, NULL, 127, '2023-12-09 21:52:29', '2023-12-09 21:52:29'),
(302, '20231217021038.jpg', 1, NULL, '65', NULL, NULL, 110, '2023-12-09 21:52:37', '2023-12-17 02:10:38'),
(303, '20231217020753.jpg', 1, NULL, '40', NULL, NULL, 110, '2023-12-09 21:52:46', '2023-12-17 02:07:53'),
(304, NULL, 1, NULL, '0', NULL, NULL, 127, '2023-12-09 21:52:57', '2023-12-09 21:52:57'),
(305, '20231217021056.jpg', 1, NULL, '21', NULL, NULL, 110, '2023-12-09 21:53:09', '2023-12-17 02:10:56'),
(306, '20231217181220.jpg', 1, NULL, '24', NULL, NULL, 128, '2023-12-09 21:53:46', '2023-12-17 18:12:20'),
(307, '20231217181206.jpg', 1, NULL, '28', NULL, NULL, 128, '2023-12-09 21:53:57', '2023-12-17 18:12:06'),
(308, '20231217181231.jpg', 1, NULL, '22', NULL, NULL, 128, '2023-12-09 21:54:05', '2023-12-17 18:12:31'),
(309, '20231216193026.jpg', 1, NULL, '10', NULL, NULL, 129, '2023-12-09 21:54:43', '2023-12-16 19:51:24'),
(310, '20231216193126.jpg', 1, NULL, '15', NULL, NULL, 129, '2023-12-09 21:54:55', '2023-12-16 19:31:27'),
(311, '20231216193412.webp', 1, NULL, '12', NULL, NULL, 129, '2023-12-09 21:55:04', '2023-12-16 19:34:12'),
(312, '20231216193526.jpg', 1, NULL, '18', NULL, NULL, 129, '2023-12-09 21:55:12', '2023-12-16 19:35:26'),
(313, NULL, 1, NULL, '16', NULL, NULL, 129, '2023-12-09 21:55:19', '2023-12-10 20:24:28'),
(314, NULL, 1, NULL, '10', NULL, NULL, 130, '2023-12-09 21:55:40', '2023-12-16 19:51:48'),
(315, NULL, 1, NULL, '24', NULL, NULL, 130, '2023-12-09 21:55:49', '2023-12-16 19:52:17'),
(316, '20231216182237.jpg', 1, NULL, '22', NULL, NULL, 131, '2023-12-09 21:56:16', '2023-12-16 18:22:37'),
(317, '20231216181823.jpg', 1, NULL, '25', NULL, NULL, 131, '2023-12-09 21:56:24', '2023-12-16 18:18:23'),
(318, '20231216181622.jpg', 1, NULL, '25', NULL, NULL, 131, '2023-12-09 21:56:34', '2023-12-16 18:16:22'),
(319, NULL, 1, NULL, '5', NULL, NULL, 132, '2023-12-09 21:57:06', '2023-12-16 19:52:37'),
(320, NULL, 1, NULL, '5', NULL, NULL, 132, '2023-12-09 21:57:14', '2023-12-16 19:52:45'),
(321, NULL, 1, NULL, '7', NULL, NULL, 132, '2023-12-09 21:57:23', '2023-12-16 19:52:53'),
(322, '20231216182403.jpg', 1, NULL, '26', NULL, NULL, 133, '2023-12-09 21:57:45', '2023-12-16 18:24:03'),
(323, '20231216182508.jpg', 1, NULL, '45', NULL, NULL, 133, '2023-12-09 21:57:54', '2023-12-16 18:25:08'),
(324, '20231216182602.jpg', 1, NULL, '30', NULL, NULL, 133, '2023-12-09 21:58:03', '2023-12-16 18:26:02'),
(325, NULL, 0, NULL, '0', NULL, NULL, 133, '2023-12-09 21:58:12', '2023-12-16 18:26:33'),
(326, NULL, 1, NULL, '18', NULL, NULL, 133, '2023-12-09 21:58:21', '2023-12-16 19:49:57'),
(327, '20231217183113.jpg', 1, NULL, '15', NULL, NULL, 134, '2023-12-09 21:58:51', '2023-12-17 18:31:13'),
(328, '20231217183124.jpg', 1, NULL, '16', NULL, NULL, 134, '2023-12-09 21:59:01', '2023-12-17 18:31:24'),
(329, '20231217183058.jpg', 1, NULL, '18', NULL, NULL, 134, '2023-12-09 21:59:11', '2023-12-17 18:30:58'),
(330, '20231216180541.jpg', 1, NULL, '22', NULL, NULL, 135, '2023-12-09 21:59:34', '2023-12-16 18:05:41'),
(331, '20231216180628.jpg', 1, NULL, '18', NULL, NULL, 135, '2023-12-09 21:59:43', '2023-12-16 18:06:28'),
(332, '20231211113848.jpg', 1, NULL, '24', NULL, NULL, 135, '2023-12-09 21:59:52', '2023-12-11 11:38:48'),
(333, '20231211114203.jpg', 1, NULL, '22', NULL, NULL, 135, '2023-12-09 22:00:04', '2023-12-11 11:42:03'),
(334, '20231211114300.jpg', 1, NULL, '26', NULL, NULL, 135, '2023-12-09 22:00:14', '2023-12-11 11:43:00'),
(335, '20231216180750.jpg', 1, NULL, '28', NULL, NULL, 135, '2023-12-09 22:00:23', '2023-12-16 18:07:50'),
(336, '20231216181012.jpg', 1, NULL, '20', NULL, NULL, 135, '2023-12-09 22:00:32', '2023-12-16 18:10:12'),
(337, NULL, 1, NULL, '4', NULL, NULL, 135, '2023-12-09 22:00:40', '2023-12-10 20:21:43'),
(338, NULL, 1, NULL, '3', NULL, NULL, 135, '2023-12-09 22:00:49', '2023-12-10 20:21:32'),
(339, NULL, 1, NULL, '10', NULL, NULL, 136, '2023-12-09 22:01:09', '2023-12-16 19:53:32'),
(340, NULL, 1, NULL, '15', NULL, NULL, 136, '2023-12-09 22:02:24', '2023-12-10 21:00:27'),
(342, NULL, 1, NULL, '25', NULL, NULL, 136, '2023-12-09 22:02:37', '2023-12-16 19:50:13'),
(343, NULL, 1, NULL, '12', NULL, NULL, 118, '2023-12-10 20:29:36', '2023-12-10 20:29:36'),
(344, NULL, 1, NULL, '10', NULL, NULL, 136, '2023-12-10 21:00:53', '2023-12-10 21:00:53'),
(345, '20231213115508.jpg', 1, NULL, '11', NULL, NULL, 142, '2023-12-13 07:55:08', '2023-12-13 07:56:15'),
(346, '20231213115715.jpg', 1, NULL, '9', NULL, NULL, 142, '2023-12-13 07:57:15', '2023-12-13 07:57:15'),
(347, '20231213115752.jpg', 1, NULL, '9', NULL, NULL, 142, '2023-12-13 07:57:52', '2023-12-13 07:57:52'),
(348, '20231213120027.jpg', 1, NULL, '29', NULL, NULL, 142, '2023-12-13 08:00:27', '2023-12-13 08:00:27'),
(349, '20231213173004.jpg', 1, NULL, '44', NULL, NULL, 101, '2023-12-13 13:30:04', '2023-12-13 13:30:04'),
(351, '20231213173320.jpg', 1, NULL, '33', NULL, NULL, 101, '2023-12-13 13:33:20', '2023-12-13 13:33:20'),
(352, '20231213173416.jpg', 1, NULL, '31', NULL, NULL, 101, '2023-12-13 13:34:16', '2023-12-13 13:34:16'),
(353, '20231213173502.jpg', 1, NULL, '35', NULL, NULL, 101, '2023-12-13 13:35:02', '2023-12-13 13:35:02'),
(354, '20240118174531.jpg', 1, NULL, '22', NULL, NULL, 192, '2024-01-18 17:44:14', '2024-01-18 17:45:31'),
(355, '20240118174906.jpg', 1, NULL, '25', NULL, NULL, 192, '2024-01-18 17:49:06', '2024-01-18 17:49:06'),
(356, '20240118175008.jpg', 1, NULL, '25', NULL, NULL, 192, '2024-01-18 17:50:08', '2024-01-18 17:50:08'),
(357, '20240118175115.jpg', 1, NULL, '23', NULL, NULL, 192, '2024-01-18 17:51:15', '2024-01-18 17:51:44'),
(358, NULL, 1, NULL, '4', NULL, NULL, 202, '2024-02-22 14:19:02', '2024-02-22 14:19:02'),
(359, NULL, 1, NULL, '6', NULL, NULL, 202, '2024-02-22 14:19:24', '2024-02-22 14:19:24'),
(360, NULL, 1, NULL, '15', NULL, NULL, 205, '2024-02-22 14:26:11', '2024-02-22 14:26:11'),
(361, NULL, 1, NULL, '21', NULL, NULL, 205, '2024-02-22 14:26:29', '2024-02-22 14:26:29'),
(362, '20240224134354.jpg', 1, NULL, '10', NULL, NULL, 206, '2024-02-22 21:20:22', '2024-02-24 13:43:54'),
(363, '20240224134844.jpg', 1, NULL, '12', NULL, NULL, 206, '2024-02-22 21:20:35', '2024-02-24 13:48:44'),
(364, '20240224134958.jpg', 1, NULL, '15', NULL, NULL, 206, '2024-02-22 21:20:47', '2024-02-24 13:49:58'),
(365, '20240224135049.jpg', 1, NULL, '14', NULL, NULL, 206, '2024-02-22 21:21:04', '2024-02-24 13:50:49'),
(366, '20240224135141.jpg', 1, NULL, '15', NULL, NULL, 206, '2024-02-22 21:21:17', '2024-02-24 13:51:41'),
(367, '20240224135210.jpg', 1, NULL, '19', NULL, NULL, 206, '2024-02-22 21:21:29', '2024-02-24 13:52:10'),
(368, '20240224135344.jpg', 1, NULL, '22', NULL, NULL, 206, '2024-02-22 21:21:44', '2024-02-24 13:53:44'),
(369, '20240224135413.jpg', 1, NULL, '18', NULL, NULL, 206, '2024-02-22 21:21:56', '2024-02-24 13:54:13'),
(370, '20240224135551.jpg', 1, NULL, '12', NULL, NULL, 206, '2024-02-22 21:22:08', '2024-02-24 13:55:51'),
(371, '20240224135717.jpg', 1, NULL, '12', NULL, NULL, 206, '2024-02-22 21:22:34', '2024-02-24 13:57:17'),
(372, '20240224135755.jpg', 1, NULL, '8', NULL, NULL, 206, '2024-02-22 21:22:59', '2024-02-24 13:57:55'),
(373, '20240224135837.jpg', 1, NULL, '8', NULL, NULL, 206, '2024-02-22 21:23:10', '2024-02-24 13:58:37'),
(374, '20240224135941.jpg', 1, NULL, '25', NULL, NULL, 207, '2024-02-22 21:23:33', '2024-02-24 13:59:41'),
(375, '20240224140210.jpg', 1, NULL, '15', NULL, NULL, 207, '2024-02-22 21:23:49', '2024-02-24 14:02:10'),
(376, '20240224140240.jpg', 1, NULL, '26', NULL, NULL, 207, '2024-02-22 21:23:59', '2024-02-24 14:02:40'),
(377, '20240224140502.jpeg', 1, NULL, '10', NULL, NULL, 207, '2024-02-22 21:24:08', '2024-02-24 14:05:02'),
(378, '20240224140452.jpg', 1, NULL, '12', NULL, NULL, 207, '2024-02-22 21:24:19', '2024-02-24 14:04:52'),
(379, '20240224140608.jpg', 1, NULL, '20', NULL, NULL, 207, '2024-02-22 21:25:27', '2024-02-24 14:06:08'),
(380, '20240224140639.jpg', 1, NULL, '19', NULL, NULL, 207, '2024-02-22 21:25:36', '2024-02-24 14:06:39'),
(381, '20240224140704.jpg', 1, NULL, '20', NULL, NULL, 207, '2024-02-22 21:25:48', '2024-02-24 14:07:04'),
(382, '20240224140736.jpg', 1, NULL, '23', NULL, NULL, 207, '2024-02-22 21:26:01', '2024-02-24 14:07:36'),
(383, '20240224140805.jpg', 1, NULL, '28', NULL, NULL, 207, '2024-02-22 21:26:11', '2024-02-24 14:08:05'),
(384, '20240224140844.png', 1, NULL, '32', NULL, NULL, 207, '2024-02-22 21:26:20', '2024-02-24 14:08:44'),
(385, '20240224140948.jpg', 1, NULL, '35', NULL, NULL, 207, '2024-02-22 21:26:35', '2024-02-24 14:09:48'),
(386, '20240224141041.jpg', 1, NULL, '30', NULL, NULL, 207, '2024-02-22 21:26:48', '2024-02-24 14:10:41'),
(387, '20240224141340.jpg', 1, NULL, '45', NULL, NULL, 207, '2024-02-22 21:26:58', '2024-02-24 14:13:40'),
(388, '20240224141733.jpg', 1, NULL, '12', NULL, NULL, 207, '2024-02-22 21:27:08', '2024-02-24 14:17:33'),
(389, '20240224141900.jpg', 1, NULL, '10', NULL, NULL, 207, '2024-02-22 21:27:18', '2024-02-24 14:19:00'),
(390, '20240224142700.jpeg', 1, NULL, '12', NULL, NULL, 207, '2024-02-22 21:27:31', '2024-02-24 14:27:00'),
(391, NULL, 1, NULL, '220', NULL, NULL, 208, '2024-02-22 21:27:42', '2024-02-22 21:27:42'),
(392, '20240224145857.jpg', 1, NULL, '30', NULL, NULL, 208, '2024-02-22 21:27:55', '2024-02-24 14:58:57'),
(393, '20240224150030.jpg', 1, NULL, '45', NULL, NULL, 208, '2024-02-22 21:28:07', '2024-02-24 15:00:30'),
(394, '20240224150214.jpg', 1, NULL, '35', NULL, NULL, 208, '2024-02-22 21:28:18', '2024-02-24 15:02:14'),
(395, '20240224150407.jpg', 1, NULL, '30', NULL, NULL, 208, '2024-02-22 21:28:31', '2024-02-24 15:04:07'),
(396, '20240224150541.jpg', 1, NULL, '33', NULL, NULL, 208, '2024-02-22 21:28:39', '2024-02-24 15:05:41'),
(397, '20240224151045.jpg', 1, NULL, '22', NULL, NULL, 208, '2024-02-22 21:28:49', '2024-02-24 15:10:45'),
(398, '20240224151249.jpg', 1, NULL, '27', NULL, NULL, 208, '2024-02-22 21:29:00', '2024-02-24 15:12:49'),
(399, '20240224151405.jpg', 1, NULL, '18', NULL, NULL, 208, '2024-02-22 21:29:14', '2024-02-24 15:14:05'),
(400, '20240224151601.jpg', 1, NULL, '25', NULL, NULL, 208, '2024-02-22 21:29:27', '2024-02-24 15:16:01'),
(401, '20240224142839.jpeg', 1, NULL, '28', NULL, NULL, 208, '2024-02-22 21:29:47', '2024-02-24 14:28:39'),
(402, '20240224151409.jfif', 1, NULL, '16', NULL, NULL, 208, '2024-02-22 21:30:08', '2024-02-24 15:14:09'),
(403, '20240224151707.jfif', 1, NULL, '15', NULL, NULL, 208, '2024-02-22 21:30:21', '2024-02-24 15:17:07'),
(404, NULL, 1, NULL, '18', NULL, NULL, 208, '2024-02-22 21:30:38', '2024-02-22 21:30:38'),
(405, NULL, 1, NULL, '10', NULL, NULL, 208, '2024-02-22 21:30:50', '2024-02-22 21:30:50'),
(406, NULL, 1, NULL, '13', NULL, NULL, 208, '2024-02-22 21:31:03', '2024-02-22 21:31:03'),
(407, NULL, 1, NULL, '23', NULL, NULL, 209, '2024-02-22 21:32:06', '2024-02-22 21:32:06'),
(408, NULL, 1, NULL, '28', NULL, NULL, 209, '2024-02-22 21:32:28', '2024-02-22 21:32:28'),
(409, NULL, 1, NULL, '18', NULL, NULL, 209, '2024-02-22 21:32:41', '2024-02-22 21:32:41'),
(410, NULL, 1, NULL, '30', NULL, NULL, 209, '2024-02-22 21:32:54', '2024-02-22 21:32:54'),
(411, NULL, 1, NULL, '25', NULL, NULL, 209, '2024-02-22 21:33:09', '2024-02-22 21:33:09'),
(412, NULL, 1, NULL, '16', NULL, NULL, 210, '2024-02-22 21:33:22', '2024-02-22 21:33:22'),
(413, NULL, 1, NULL, '13', NULL, NULL, 210, '2024-02-22 21:33:36', '2024-02-22 21:33:36'),
(414, NULL, 1, NULL, '12', NULL, NULL, 210, '2024-02-22 21:33:49', '2024-02-22 21:33:49'),
(415, NULL, 1, NULL, '30', NULL, NULL, 211, '2024-02-22 21:34:05', '2024-02-22 21:34:05'),
(416, NULL, 1, NULL, '35', NULL, NULL, 211, '2024-02-22 21:34:24', '2024-02-22 21:34:24'),
(417, NULL, 1, NULL, '25', NULL, NULL, 211, '2024-02-22 21:34:32', '2024-02-22 21:34:32'),
(418, NULL, 1, NULL, '45', NULL, NULL, 211, '2024-02-22 21:34:44', '2024-02-22 21:34:44'),
(419, NULL, 1, NULL, '40', NULL, NULL, 211, '2024-02-22 21:34:54', '2024-02-22 21:34:54'),
(420, NULL, 1, NULL, '40', NULL, NULL, 211, '2024-02-22 21:35:08', '2024-02-22 21:35:08'),
(421, NULL, 1, NULL, '25', NULL, NULL, 211, '2024-02-22 21:35:19', '2024-02-22 21:35:19'),
(422, NULL, 1, NULL, '22', NULL, NULL, 211, '2024-02-22 21:35:28', '2024-02-22 21:35:28'),
(423, NULL, 1, NULL, '28', NULL, NULL, 211, '2024-02-22 21:35:42', '2024-02-22 21:35:42'),
(424, NULL, 1, NULL, '190', NULL, NULL, 211, '2024-02-22 21:35:55', '2024-02-22 21:35:55'),
(425, NULL, 1, NULL, '10', NULL, NULL, 212, '2024-02-22 21:36:07', '2024-02-22 21:36:07'),
(426, NULL, 1, NULL, '15', NULL, NULL, 212, '2024-02-22 21:36:17', '2024-02-22 21:36:17'),
(427, NULL, 1, NULL, '14', NULL, NULL, 212, '2024-02-22 21:36:28', '2024-02-22 21:36:28'),
(428, NULL, 1, NULL, '20', NULL, NULL, 213, '2024-02-22 21:36:42', '2024-02-22 21:36:42'),
(429, NULL, 1, NULL, '25', NULL, NULL, 213, '2024-02-22 21:36:59', '2024-02-22 21:36:59'),
(430, NULL, 1, NULL, '15', NULL, NULL, 213, '2024-02-22 21:37:09', '2024-02-22 21:37:09'),
(431, NULL, 1, NULL, '22', NULL, NULL, 213, '2024-02-22 21:37:18', '2024-02-22 21:37:18'),
(432, NULL, 1, NULL, '22', NULL, NULL, 213, '2024-02-22 21:37:27', '2024-02-22 21:37:27'),
(433, NULL, 1, NULL, '25', NULL, NULL, 213, '2024-02-22 21:37:37', '2024-02-22 21:37:37'),
(434, NULL, 1, NULL, '28', NULL, NULL, 213, '2024-02-22 21:37:51', '2024-02-22 21:37:51'),
(435, NULL, 1, NULL, '28', NULL, NULL, 213, '2024-02-22 21:38:02', '2024-02-22 21:38:02'),
(436, NULL, 1, NULL, '30', NULL, NULL, 213, '2024-02-22 21:38:13', '2024-02-22 21:38:13'),
(437, NULL, 1, NULL, '20', NULL, NULL, 213, '2024-02-22 21:38:55', '2024-02-22 21:38:55'),
(438, NULL, 1, NULL, '14', NULL, NULL, NULL, '2024-02-22 21:39:03', '2024-02-22 21:39:03'),
(439, NULL, 1, NULL, '5', NULL, NULL, 213, '2024-02-22 21:39:14', '2024-02-22 21:39:14'),
(440, NULL, 1, NULL, '4', NULL, NULL, 213, '2024-02-22 21:39:24', '2024-02-22 21:39:24'),
(441, NULL, 1, NULL, '7', NULL, NULL, 213, '2024-02-22 21:39:34', '2024-02-22 21:39:34'),
(442, NULL, 1, NULL, '25', NULL, NULL, 214, '2024-02-22 21:39:47', '2024-02-22 21:39:47'),
(443, NULL, 1, NULL, '18', NULL, NULL, 214, '2024-02-22 21:40:00', '2024-02-22 21:40:00'),
(444, NULL, 1, NULL, '30', NULL, NULL, 214, '2024-02-23 12:06:06', '2024-02-23 12:06:06'),
(445, NULL, 1, NULL, '16', NULL, NULL, 214, '2024-02-23 12:06:22', '2024-02-23 12:06:22'),
(446, NULL, 1, NULL, '17', NULL, NULL, 214, '2024-02-23 12:06:55', '2024-02-23 12:06:55'),
(447, NULL, 1, NULL, '16', NULL, NULL, 214, '2024-02-23 12:07:10', '2024-02-23 12:07:10'),
(448, NULL, 1, NULL, '18', NULL, NULL, 214, '2024-02-23 12:07:58', '2024-02-23 12:07:58'),
(449, NULL, 1, NULL, '25', NULL, NULL, 214, '2024-02-23 12:08:10', '2024-02-23 12:08:10'),
(450, NULL, 1, NULL, '15', NULL, NULL, 214, '2024-02-23 12:08:26', '2024-02-23 12:08:26'),
(451, NULL, 1, NULL, '14', NULL, NULL, 214, '2024-02-23 12:08:40', '2024-02-23 12:08:40'),
(452, NULL, 1, NULL, '150', NULL, NULL, 214, '2024-02-23 12:08:54', '2024-02-23 12:08:54'),
(453, NULL, 1, NULL, '15', NULL, NULL, 215, '2024-02-23 12:09:07', '2024-02-23 12:09:07'),
(454, NULL, 1, NULL, '8', NULL, NULL, 215, '2024-02-23 12:09:20', '2024-02-23 12:09:20'),
(455, NULL, 1, NULL, '12', NULL, NULL, 215, '2024-02-23 12:09:37', '2024-02-23 12:09:37'),
(456, NULL, 1, NULL, '12', NULL, NULL, 215, '2024-02-23 12:09:51', '2024-02-23 12:09:51'),
(457, NULL, 1, NULL, '60', NULL, NULL, 215, '2024-02-23 12:10:06', '2024-02-23 12:10:06'),
(458, NULL, 1, NULL, '10', NULL, NULL, 215, '2024-02-23 12:10:18', '2024-02-23 12:10:18'),
(459, NULL, 1, NULL, '10', NULL, NULL, 215, '2024-02-23 12:10:35', '2024-02-23 12:10:35'),
(460, NULL, 1, NULL, '10', NULL, NULL, 215, '2024-02-23 12:10:50', '2024-02-23 12:10:50'),
(461, NULL, 1, NULL, '10', NULL, NULL, 215, '2024-02-23 12:11:45', '2024-02-23 12:11:45'),
(462, NULL, 1, NULL, '15', NULL, NULL, 215, '2024-02-23 12:12:00', '2024-02-23 12:12:00'),
(463, NULL, 1, NULL, '12', NULL, NULL, 215, '2024-02-23 12:12:16', '2024-02-23 12:12:16'),
(464, NULL, 1, NULL, '22', NULL, NULL, 217, '2024-02-23 12:15:07', '2024-02-23 12:15:07'),
(465, NULL, 1, NULL, '60', NULL, NULL, 217, '2024-02-23 12:15:20', '2024-02-23 12:15:20'),
(466, NULL, 1, NULL, '35', NULL, NULL, 217, '2024-02-23 12:15:33', '2024-02-23 12:15:33'),
(467, '20240224145407.jfif', 1, NULL, '3', NULL, NULL, 216, '2024-02-23 12:15:46', '2024-02-24 14:54:07'),
(468, '20240224145205.jfif', 1, NULL, '3', NULL, NULL, 216, '2024-02-23 12:16:03', '2024-02-24 14:52:05'),
(469, '20240224145023.jfif', 1, NULL, '3', NULL, NULL, 216, '2024-02-23 12:16:55', '2024-02-24 14:50:23'),
(470, '20240224144920.jfif', 1, NULL, '5', NULL, NULL, 216, '2024-02-23 12:17:13', '2024-02-24 14:49:20'),
(471, '20240224144723.jfif', 1, NULL, '5', NULL, NULL, 216, '2024-02-23 12:17:42', '2024-02-24 14:47:23'),
(472, '20240224144503.jfif', 1, NULL, '8', NULL, NULL, 216, '2024-02-23 12:17:55', '2024-02-24 14:45:03'),
(473, '20240224142534.jpeg', 1, NULL, '5', NULL, NULL, 216, '2024-02-23 12:18:37', '2024-02-24 14:25:34'),
(474, '20240224142443.jpeg', 1, NULL, '7', NULL, NULL, 216, '2024-02-23 12:18:53', '2024-02-24 14:24:43'),
(475, '20240224142327.jpeg', 1, NULL, '6', NULL, NULL, 216, '2024-02-23 12:19:04', '2024-02-24 14:23:27'),
(476, '20240224142213.jpeg', 1, NULL, '5', NULL, NULL, 216, '2024-02-23 12:19:16', '2024-02-24 14:22:13'),
(477, '20240224142110.jpeg', 1, NULL, '7', NULL, NULL, 216, '2024-02-23 12:19:30', '2024-02-24 14:21:10'),
(478, '20240223194916.png', 1, NULL, '9', NULL, NULL, 218, '2024-02-23 19:49:16', '2024-02-23 20:08:15'),
(479, '20240223195536.png', 1, NULL, '90', NULL, NULL, NULL, '2024-02-23 19:55:36', '2024-02-23 19:55:36'),
(480, '20240223195625.png', 1, NULL, '85', NULL, NULL, 218, '2024-02-23 19:56:25', '2024-02-23 20:42:55'),
(481, '20240223200232.png', 1, NULL, '150', NULL, NULL, 218, '2024-02-23 20:02:32', '2024-02-23 20:08:48'),
(482, '20240223201129.png', 1, NULL, '8', NULL, NULL, 218, '2024-02-23 20:10:44', '2024-02-23 20:11:29'),
(483, '20240223202324.png', 1, NULL, '75', NULL, NULL, 218, '2024-02-23 20:23:24', '2024-02-23 20:43:23'),
(484, '20240223202455.png', 1, NULL, '140', NULL, NULL, 218, '2024-02-23 20:24:55', '2024-02-23 20:24:55'),
(485, '20240223202947.jpg', 1, NULL, '18', NULL, NULL, 218, '2024-02-23 20:29:47', '2024-02-23 20:29:47'),
(486, '20240223203624.jpg', 1, NULL, '175', NULL, NULL, 218, '2024-02-23 20:36:24', '2024-02-23 20:52:00'),
(487, '20240223205402.jpg', 1, NULL, '350', NULL, NULL, NULL, '2024-02-23 20:54:02', '2024-02-23 20:54:02'),
(488, '20240223205617.jpg', 1, NULL, '350', NULL, NULL, 218, '2024-02-23 20:56:17', '2024-02-23 20:56:17'),
(489, '20240223205918.jpg', 1, NULL, '18', NULL, NULL, 218, '2024-02-23 20:59:18', '2024-02-23 20:59:18'),
(490, '20240223210011.jpg', 1, NULL, '175', NULL, NULL, 218, '2024-02-23 21:00:11', '2024-02-23 21:00:11'),
(491, '20240223215014.jpg', 1, NULL, '350', NULL, NULL, 218, '2024-02-23 21:50:14', '2024-02-23 21:50:14'),
(492, '20240223215636.jpg', 1, NULL, '8', NULL, NULL, 218, '2024-02-23 21:56:36', '2024-02-23 21:56:36'),
(493, '20240223220442.jpg', 1, NULL, '60', NULL, NULL, 218, '2024-02-23 22:04:42', '2024-02-23 22:04:42'),
(494, '20240223220543.jpg', 1, NULL, '120', NULL, NULL, 218, '2024-02-23 22:05:43', '2024-02-23 22:05:43'),
(495, '20240223223050.png', 1, NULL, '12', NULL, NULL, 219, '2024-02-23 22:30:50', '2024-02-23 22:30:50'),
(496, '20240223223522.png', 1, NULL, '14', NULL, NULL, 219, '2024-02-23 22:35:22', '2024-02-23 22:35:22'),
(497, '20240223223805.png', 1, NULL, '11', NULL, NULL, 220, '2024-02-23 22:38:05', '2024-02-23 22:38:05'),
(498, '20240223223806.jpg', 1, NULL, '18', NULL, NULL, 219, '2024-02-23 22:38:06', '2024-02-23 22:38:06'),
(499, '20240223224034.jpg', 1, NULL, '40', NULL, NULL, 219, '2024-02-23 22:40:34', '2024-02-23 22:40:34'),
(500, '20240223224226.jpg', 1, NULL, '180', NULL, NULL, 219, '2024-02-23 22:42:26', '2024-02-23 22:42:26'),
(501, '20240223224327.png', 1, NULL, '11', NULL, NULL, 220, '2024-02-23 22:43:27', '2024-02-23 22:43:27'),
(502, '20240223225527.png', 1, NULL, '21', NULL, NULL, 219, '2024-02-23 22:55:27', '2024-02-23 22:55:27'),
(503, '20240223225806.png', 1, NULL, '21', NULL, NULL, 219, '2024-02-23 22:58:06', '2024-02-23 22:58:06'),
(504, '20240223230023.png', 1, NULL, '20', NULL, NULL, 219, '2024-02-23 23:00:23', '2024-02-23 23:00:23'),
(505, '20240223230303.png', 1, NULL, '12', NULL, NULL, 219, '2024-02-23 23:03:03', '2024-02-23 23:03:03'),
(506, '20240223230521.jpeg', 1, NULL, '12', NULL, NULL, 219, '2024-02-23 23:05:21', '2024-02-23 23:05:21'),
(507, '20240223230818.png', 1, NULL, '16', NULL, NULL, 219, '2024-02-23 23:08:18', '2024-02-23 23:08:18'),
(508, '20240223231016.jpg', 1, NULL, '26', NULL, NULL, 219, '2024-02-23 23:10:16', '2024-02-23 23:10:16'),
(509, '20240223232503.png', 1, NULL, '12', NULL, NULL, 219, '2024-02-23 23:25:03', '2024-02-23 23:25:03'),
(510, '20240223232744.png', 1, NULL, '20', NULL, NULL, 219, '2024-02-23 23:27:44', '2024-02-23 23:27:44'),
(511, '20240223232942.jpg', 1, NULL, '12', NULL, NULL, 219, '2024-02-23 23:29:42', '2024-02-23 23:29:42'),
(512, '20240223234219.jpg', 1, NULL, '18', NULL, NULL, 219, '2024-02-23 23:42:19', '2024-02-23 23:42:19'),
(513, '20240223235216.jpg', 1, NULL, '11', NULL, NULL, 220, '2024-02-23 23:52:16', '2024-02-23 23:52:16'),
(514, '20240223235705.jpeg', 1, NULL, '12', NULL, NULL, 221, '2024-02-23 23:57:05', '2024-02-23 23:57:05'),
(515, '20240224000006.jpg', 1, NULL, '12', NULL, NULL, 221, '2024-02-24 00:00:06', '2024-02-24 00:00:06'),
(516, '20240224000149.jpg', 1, NULL, '11', NULL, NULL, 221, '2024-02-24 00:01:49', '2024-02-24 00:01:49'),
(517, '20240224000324.png', 1, NULL, '12', NULL, NULL, 221, '2024-02-24 00:03:24', '2024-02-24 00:03:24'),
(518, '20240224000458.png', 1, NULL, '12', NULL, NULL, 221, '2024-02-24 00:04:58', '2024-02-24 00:04:58'),
(519, '20240224001238.jpeg', 1, NULL, '11', NULL, NULL, 221, '2024-02-24 00:12:38', '2024-02-24 00:12:38'),
(520, '20240224002121.jpg', 1, NULL, '17', NULL, NULL, 221, '2024-02-24 00:21:21', '2024-02-24 00:21:21'),
(521, '20240224002312.jpg', 1, NULL, '17', NULL, NULL, 221, '2024-02-24 00:23:12', '2024-02-24 00:23:12'),
(522, '20240224002548.jpg', 1, NULL, '10', NULL, NULL, 220, '2024-02-24 00:25:48', '2024-02-24 00:25:48'),
(523, '20240224002632.jpg', 1, NULL, '13', NULL, NULL, 221, '2024-02-24 00:26:32', '2024-02-24 00:26:32'),
(524, NULL, 1, NULL, '13', NULL, NULL, 218, '2024-02-24 00:30:35', '2024-02-24 00:30:35'),
(526, '20240224003659.jpg', 1, NULL, '25', NULL, NULL, 222, '2024-02-24 00:36:59', '2024-02-24 00:36:59'),
(527, '20240224003826.jpg', 1, NULL, '28', NULL, NULL, 222, '2024-02-24 00:38:26', '2024-02-24 00:38:26'),
(528, '20240224004021.png', 1, NULL, '39.90', NULL, NULL, 222, '2024-02-24 00:40:21', '2024-02-24 00:40:21'),
(529, '20240224004207.jpg', 1, NULL, '110', NULL, NULL, 222, '2024-02-24 00:42:07', '2024-02-24 00:42:07'),
(530, '20240224004525.jpg', 1, NULL, '8.90', NULL, NULL, 223, '2024-02-24 00:45:25', '2024-02-24 00:45:25'),
(531, '20240224004659.png', 1, NULL, '11.90', NULL, NULL, 223, '2024-02-24 00:46:59', '2024-02-24 00:46:59'),
(532, '20240224004830.png', 1, NULL, '15.90', NULL, NULL, 223, '2024-02-24 00:48:30', '2024-02-24 00:48:30'),
(533, '20240224004948.jpg', 1, NULL, '28', NULL, NULL, 223, '2024-02-24 00:49:48', '2024-02-24 00:49:48'),
(534, '20240224021743.jpg', 1, NULL, '16.90', NULL, NULL, 220, '2024-02-24 00:57:39', '2024-02-24 02:17:43'),
(535, '20240224023252.jpg', 1, NULL, '6.90', NULL, NULL, 224, '2024-02-24 01:18:05', '2024-02-24 02:32:52'),
(536, '20240224023233.jpg', 1, NULL, '7.90', NULL, NULL, 224, '2024-02-24 01:19:15', '2024-02-24 02:32:33'),
(537, '20240224012258.png', 1, NULL, '35,90', NULL, NULL, 225, '2024-02-24 01:22:58', '2024-02-24 01:22:58'),
(538, '20240224014524.png', 1, NULL, '35.90', NULL, NULL, 225, '2024-02-24 01:45:24', '2024-02-24 01:45:24'),
(539, '20240224014738.png', 1, NULL, '39.90', NULL, NULL, 225, '2024-02-24 01:47:38', '2024-02-24 02:19:32'),
(540, '20240224014955.png', 1, NULL, '39.90', NULL, NULL, 225, '2024-02-24 01:49:55', '2024-02-24 01:49:55'),
(541, '20240224015221.jpg', 1, NULL, '69.90', NULL, NULL, 225, '2024-02-24 01:52:21', '2024-02-24 01:52:21'),
(542, '20240224024230.png', 1, NULL, '9.9', NULL, NULL, 220, '2024-02-24 02:42:30', '2024-02-24 02:42:30'),
(543, '20240224024657.jpg', 1, NULL, '11.90', NULL, NULL, 226, '2024-02-24 02:46:57', '2024-02-24 02:46:57'),
(544, '20240224025721.jpg', 1, NULL, '11.90', NULL, NULL, 226, '2024-02-24 02:57:21', '2024-02-24 02:57:21'),
(545, '20240224025929.jpeg', 1, NULL, '11.90', NULL, NULL, 226, '2024-02-24 02:59:29', '2024-02-24 02:59:29'),
(546, '20240224105958.png', 1, NULL, '12.90', NULL, NULL, 226, '2024-02-24 10:56:52', '2024-02-24 10:59:58'),
(547, '20240224110132.jpg', 1, NULL, '25', NULL, NULL, 226, '2024-02-24 11:01:32', '2024-02-24 11:01:32'),
(548, '20240224110230.jpg', 1, NULL, '26', NULL, NULL, 226, '2024-02-24 11:02:30', '2024-02-24 11:02:30'),
(549, '20240224110847.jpg', 1, NULL, '11.90', NULL, NULL, 227, '2024-02-24 11:08:47', '2024-02-24 11:08:47'),
(550, '20240224112314.png', 1, NULL, '14', NULL, NULL, 227, '2024-02-24 11:23:14', '2024-02-24 11:44:07'),
(551, '20240224112941.jpg', 1, NULL, '12.90', NULL, NULL, NULL, '2024-02-24 11:29:41', '2024-02-24 11:29:41'),
(552, '20240224112952.jpg', 1, NULL, '30', NULL, NULL, 227, '2024-02-24 11:29:52', '2024-02-24 11:29:52'),
(553, '20240224113029.jpg', 1, NULL, '12.90', NULL, NULL, 228, '2024-02-24 11:30:29', '2024-02-24 11:30:29'),
(554, '20240224113211.jpg', 1, NULL, '10.90', NULL, NULL, 228, '2024-02-24 11:32:11', '2024-02-24 11:32:11'),
(555, '20240224113212.png', 1, NULL, '16', NULL, NULL, 227, '2024-02-24 11:32:12', '2024-02-24 11:43:12'),
(556, '20240224113700.jfif', 1, NULL, '25', NULL, NULL, 229, '2024-02-24 11:37:00', '2024-02-24 11:37:00'),
(557, '20240224114230.png', 1, NULL, '29.9', NULL, NULL, 227, '2024-02-24 11:37:24', '2024-02-24 11:42:30'),
(558, '20240224114150.jpg', 1, NULL, '100', NULL, NULL, 227, '2024-02-24 11:41:50', '2024-02-24 11:41:50'),
(559, '20240224114634.png', 1, NULL, '11.90', NULL, NULL, 228, '2024-02-24 11:46:34', '2024-02-24 11:46:34'),
(560, '20240224114722.png', 1, NULL, '15', NULL, NULL, 227, '2024-02-24 11:47:22', '2024-02-24 11:47:22'),
(561, '20240224114821.jpeg', 1, NULL, '28', NULL, NULL, 229, '2024-02-24 11:48:21', '2024-02-24 11:48:21'),
(562, '20240224114907.jpg', 1, NULL, '0', NULL, NULL, 227, '2024-02-24 11:49:07', '2024-02-24 11:49:07'),
(563, '20240224115021.jpg', 1, NULL, '45', NULL, NULL, 227, '2024-02-24 11:50:21', '2024-02-24 11:50:21'),
(564, '20240224115157.png', 1, NULL, '30', NULL, NULL, 227, '2024-02-24 11:51:57', '2024-02-24 11:51:57'),
(565, '20240224115342.jpg', 1, NULL, '10', NULL, NULL, 227, '2024-02-24 11:53:42', '2024-02-24 11:53:42'),
(566, NULL, 1, NULL, '70', NULL, NULL, 227, '2024-02-24 11:55:21', '2024-02-24 11:55:21'),
(567, '20240224115656.jpg', 1, NULL, '70', NULL, NULL, 227, '2024-02-24 11:56:56', '2024-02-24 11:56:56'),
(568, NULL, 1, NULL, '45', NULL, NULL, 227, '2024-02-24 11:58:32', '2024-02-24 11:58:32'),
(569, '20240224115908.jpeg', 1, NULL, '25', NULL, NULL, 229, '2024-02-24 11:59:08', '2024-02-24 11:59:08'),
(570, '20240224120046.png', 1, NULL, '9.9', NULL, NULL, 227, '2024-02-24 12:00:46', '2024-02-24 12:00:46'),
(571, '20240224120540.png', 1, NULL, '12', NULL, NULL, 230, '2024-02-24 12:05:40', '2024-02-24 12:05:40'),
(572, '20240224120634.jpeg', 1, NULL, '25', NULL, NULL, 229, '2024-02-24 12:06:34', '2024-02-24 12:06:34'),
(573, '20240224120738.jpg', 1, NULL, '14', NULL, NULL, 230, '2024-02-24 12:07:38', '2024-02-24 12:07:38'),
(574, '20240224121031.png', 1, NULL, '12', NULL, NULL, 230, '2024-02-24 12:10:31', '2024-02-24 12:10:31'),
(575, '20240224121145.jpeg', 1, NULL, '27', NULL, NULL, NULL, '2024-02-24 12:11:45', '2024-02-24 12:11:45'),
(576, '20240224121739.png', 1, NULL, '12.90', NULL, NULL, 232, '2024-02-24 12:15:15', '2024-02-24 12:17:39'),
(577, '20240224121905.jpg', 1, NULL, '12.90', NULL, NULL, 232, '2024-02-24 12:19:05', '2024-02-24 12:19:05'),
(578, '20240224121957.png', 1, NULL, '0', NULL, NULL, 230, '2024-02-24 12:19:57', '2024-02-24 12:19:57'),
(579, '20240224122019.jpeg', 1, NULL, '27', NULL, NULL, NULL, '2024-02-24 12:20:19', '2024-02-24 12:20:19'),
(580, '20240224125006.jpg', 1, NULL, '0', NULL, NULL, 230, '2024-02-24 12:20:46', '2024-02-24 12:50:06'),
(581, '20240224124927.jpg', 1, NULL, '4', NULL, NULL, 231, '2024-02-24 12:22:46', '2024-02-24 12:49:27'),
(582, '20240224122328.jpeg', 1, NULL, '27', NULL, NULL, 229, '2024-02-24 12:23:28', '2024-02-24 12:23:28'),
(583, '20240224122344.png', 1, NULL, '5', NULL, NULL, 231, '2024-02-24 12:23:44', '2024-02-24 12:23:44'),
(584, '20240224122540.jpg', 1, NULL, '6', NULL, NULL, 231, '2024-02-24 12:25:40', '2024-02-24 12:25:40'),
(585, '20240224122734.jpeg', 1, NULL, '6', NULL, NULL, 231, '2024-02-24 12:27:34', '2024-02-24 12:27:34'),
(586, '20240224122823.jpg', 1, NULL, '6', NULL, NULL, 231, '2024-02-24 12:28:23', '2024-02-24 12:28:23'),
(587, '20240224122956.jpeg', 1, NULL, '25', NULL, NULL, 229, '2024-02-24 12:29:56', '2024-02-24 12:29:56'),
(588, '20240224123629.jpeg', 1, NULL, '30', NULL, NULL, 229, '2024-02-24 12:36:29', '2024-02-24 12:36:29'),
(589, '20240224123640.jpg', 1, NULL, '12.90', NULL, NULL, 232, '2024-02-24 12:36:40', '2024-02-24 12:36:40'),
(590, '20240224123725.jpg', 1, NULL, '15', NULL, NULL, 231, '2024-02-24 12:37:25', '2024-02-24 12:37:25'),
(591, '20240224123832.jpg', 1, NULL, '12', NULL, NULL, 231, '2024-02-24 12:38:32', '2024-02-24 12:38:32'),
(592, '20240224124033.png', 1, NULL, '10.90', NULL, NULL, 232, '2024-02-24 12:39:22', '2024-02-24 12:40:33'),
(593, '20240224124056.jpg', 1, NULL, '0', NULL, NULL, 231, '2024-02-24 12:40:56', '2024-02-24 12:40:56'),
(594, '20240224124152.jpeg', 1, NULL, '26', NULL, NULL, 229, '2024-02-24 12:41:52', '2024-02-24 12:41:52'),
(595, '20240224124420.png', 1, NULL, '0', NULL, NULL, 231, '2024-02-24 12:44:20', '2024-02-24 12:44:20'),
(596, '20240224124621.png', 1, NULL, '0', NULL, NULL, 231, '2024-02-24 12:46:21', '2024-02-24 12:46:21'),
(597, '20240224124712.png', 1, NULL, '500', NULL, NULL, 232, '2024-02-24 12:47:12', '2024-02-24 12:48:46'),
(598, '20240224124733.jpeg', 1, NULL, '26', NULL, NULL, NULL, '2024-02-24 12:47:33', '2024-02-24 12:47:33'),
(599, '20240224125023.png', 1, NULL, '630', NULL, NULL, 232, '2024-02-24 12:50:23', '2024-02-24 12:50:23'),
(600, '20240224125354.jpg', 1, NULL, '2280', NULL, NULL, 232, '2024-02-24 12:53:54', '2024-02-24 12:53:54'),
(601, '20240224125604.jpeg', 1, NULL, '15', NULL, NULL, NULL, '2024-02-24 12:56:04', '2024-02-24 12:56:04'),
(602, '20240224130133.jpeg', 1, NULL, '18', NULL, NULL, 229, '2024-02-24 13:01:33', '2024-02-24 13:01:33'),
(603, '20240224130150.jfif', 1, NULL, '12', NULL, NULL, 235, '2024-02-24 13:01:50', '2024-02-24 13:01:50'),
(604, '20240224130258.jfif', 1, NULL, '13', NULL, NULL, 235, '2024-02-24 13:02:58', '2024-02-24 13:02:58'),
(605, '20240224130328.jpg', 1, NULL, '4', NULL, NULL, 233, '2024-02-24 13:03:28', '2024-02-24 13:03:28'),
(606, '20240224130350.jfif', 1, NULL, '15', NULL, NULL, 235, '2024-02-24 13:03:50', '2024-02-24 13:03:50'),
(607, '20240224130609.jpg', 1, NULL, '5', NULL, NULL, 233, '2024-02-24 13:06:09', '2024-02-24 13:06:09'),
(608, '20240224130645.jpeg', 1, NULL, '21', NULL, NULL, NULL, '2024-02-24 13:06:45', '2024-02-24 13:06:45'),
(609, '20240224131009.jpeg', 1, NULL, '7', NULL, NULL, 233, '2024-02-24 13:10:09', '2024-02-24 13:10:09'),
(610, '20240224131112.jpeg', 1, NULL, '8', NULL, NULL, 233, '2024-02-24 13:11:12', '2024-02-24 13:11:12'),
(611, '20240224131250.jfif', 1, NULL, '12', NULL, NULL, 235, '2024-02-24 13:12:50', '2024-02-24 13:12:50'),
(612, '20240224131333.jpeg', 1, NULL, '15', NULL, NULL, 233, '2024-02-24 13:13:33', '2024-02-24 13:13:33'),
(613, '20240224131435.jfif', 1, NULL, '25', NULL, NULL, 235, '2024-02-24 13:14:35', '2024-02-24 13:14:35'),
(614, '20240224131511.jpeg', 1, NULL, '27', NULL, NULL, 229, '2024-02-24 13:15:11', '2024-02-24 13:15:11'),
(615, '20240224131521.jpg', 1, NULL, '15', NULL, NULL, 233, '2024-02-24 13:15:21', '2024-02-24 13:15:21'),
(616, '20240224131812.jpg', 1, NULL, '4', NULL, NULL, 233, '2024-02-24 13:18:12', '2024-02-24 13:18:12'),
(617, '20240224131904.jpg', 1, NULL, '10', NULL, NULL, 233, '2024-02-24 13:19:04', '2024-02-24 13:19:04'),
(618, '20240224131932.jpeg', 1, NULL, '20', NULL, NULL, 229, '2024-02-24 13:19:32', '2024-02-24 13:19:32'),
(619, '20240224132010.jpg', 1, NULL, '17', NULL, NULL, 233, '2024-02-24 13:20:10', '2024-02-24 13:20:10'),
(620, '20240224132254.jpeg', 1, NULL, '15', NULL, NULL, NULL, '2024-02-24 13:22:54', '2024-02-24 13:22:54'),
(621, '20240224132747.jpeg', 1, NULL, '16', NULL, NULL, 229, '2024-02-24 13:27:47', '2024-02-24 13:27:47'),
(622, '20240224133046.jpg', 1, NULL, '12', NULL, NULL, 237, '2024-02-24 13:30:46', '2024-02-24 13:30:46'),
(623, '20240224133149.jpg', 1, NULL, '15', NULL, NULL, 236, '2024-02-24 13:31:17', '2024-02-24 13:31:49'),
(624, '20240224133312.jpeg', 1, NULL, '20', NULL, NULL, 229, '2024-02-24 13:33:12', '2024-02-24 13:33:12'),
(625, '20240224133335.jpg', 1, NULL, '13', NULL, NULL, 237, '2024-02-24 13:33:35', '2024-02-24 13:33:35'),
(626, '20240224133528.jfif', 1, NULL, '17', NULL, NULL, 236, '2024-02-24 13:35:28', '2024-02-24 13:35:28'),
(627, '20240224133536.jpg', 1, NULL, '15', NULL, NULL, 237, '2024-02-24 13:35:36', '2024-02-24 13:35:36'),
(628, '20240224133627.jpeg', 1, NULL, '20', NULL, NULL, NULL, '2024-02-24 13:36:27', '2024-02-24 13:36:27'),
(629, '20240224133829.jpg', 1, NULL, '17', NULL, NULL, 237, '2024-02-24 13:38:29', '2024-02-24 13:38:29'),
(630, '20240224134110.jpeg', 1, NULL, '21', NULL, NULL, NULL, '2024-02-24 13:41:10', '2024-02-24 13:41:10'),
(631, '20240224134152.jpg', 1, NULL, '25', NULL, NULL, 236, '2024-02-24 13:41:52', '2024-02-24 13:41:52'),
(632, '20240224134222.jpeg', 1, NULL, '21', NULL, NULL, 229, '2024-02-24 13:42:22', '2024-02-24 13:42:22'),
(633, '20240224134623.jfif', 1, NULL, '20', NULL, NULL, 236, '2024-02-24 13:45:00', '2024-02-24 13:46:23'),
(634, '20240224134938.jpeg', 1, NULL, '18', NULL, NULL, 229, '2024-02-24 13:49:38', '2024-02-24 13:49:38'),
(635, NULL, 1, NULL, '0', NULL, NULL, NULL, '2024-02-24 13:51:04', '2024-02-24 13:51:04'),
(636, '20240224135108.jfif', 1, NULL, '17', NULL, NULL, 229, '2024-02-24 13:51:08', '2024-02-24 13:51:08'),
(637, '20240224135335.jpeg', 1, NULL, '20', NULL, NULL, 229, '2024-02-24 13:53:35', '2024-02-24 13:53:35'),
(638, '20240224135503.jfif', 1, NULL, '17', NULL, NULL, 229, '2024-02-24 13:55:03', '2024-02-24 13:55:03'),
(639, '20240224135725.jpeg', 1, NULL, '20', NULL, NULL, 229, '2024-02-24 13:57:25', '2024-02-24 13:57:25'),
(640, '20240224135916.jfif', 1, NULL, '15', NULL, NULL, 229, '2024-02-24 13:59:16', '2024-02-24 13:59:16'),
(641, '20240224140129.jfif', 1, NULL, '17', NULL, NULL, 229, '2024-02-24 14:01:29', '2024-02-24 14:01:29'),
(642, '20240224140133.jpeg', 1, NULL, '22', NULL, NULL, NULL, '2024-02-24 14:01:33', '2024-02-24 14:01:33'),
(643, '20240224140156.jpeg', 1, NULL, '22', NULL, NULL, 229, '2024-02-24 14:01:56', '2024-02-24 14:01:56'),
(644, '20240224140354.jfif', 1, NULL, '25', NULL, NULL, 229, '2024-02-24 14:03:54', '2024-02-24 14:03:54'),
(645, '20240224140433.jpeg', 1, NULL, '18', NULL, NULL, 229, '2024-02-24 14:04:33', '2024-02-24 14:04:33'),
(646, '20240224140546.jfif', 1, NULL, '18', NULL, NULL, 229, '2024-02-24 14:05:46', '2024-02-24 14:05:46'),
(647, '20240224140649.jpeg', 1, NULL, '20', NULL, NULL, 229, '2024-02-24 14:06:49', '2024-02-24 14:06:49'),
(648, '20240224140927.jpeg', 1, NULL, '20', NULL, NULL, 229, '2024-02-24 14:09:27', '2024-02-24 14:09:27'),
(649, '20240224141329.jpeg', 1, NULL, '20', NULL, NULL, 229, '2024-02-24 14:13:29', '2024-02-24 14:13:29'),
(650, '20240224142222.jfif', 1, NULL, '0', NULL, NULL, NULL, '2024-02-24 14:22:22', '2024-02-24 14:22:22'),
(651, '20240224142426.jfif', 1, NULL, '0', NULL, NULL, 238, '2024-02-24 14:24:26', '2024-02-24 14:24:26'),
(652, '20240224142458.jfif', 1, NULL, '0', NULL, NULL, 238, '2024-02-24 14:24:58', '2024-02-24 14:24:58'),
(653, '20240224142629.jfif', 1, NULL, '0', NULL, NULL, 238, '2024-02-24 14:26:29', '2024-02-24 14:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(321, 150, 'en', 'Salmon fillet', 'Salmon fillet, olive oil, grilled vegetables', '2023-10-26 13:23:13', '2023-10-26 20:06:31'),
(322, 150, 'ka', 'ორაგულის ფილე', '<p><span style=\"text-align: right;\">ორაგული, ზეითუნის ზეთი, გრილზე შემწვარი ბოსტნეული</span><br></p>', '2023-10-26 13:23:13', '2023-10-26 13:23:13'),
(323, 151, 'en', 'Barbunia', '<p style=\"\">fried barbunia, mexican potatoes, mexican sauce, lemon<br></p>', '2023-10-26 13:23:37', '2023-10-26 20:07:16'),
(324, 151, 'ka', 'ბარაბულკა', '<p><span style=\"text-align: right;\">არაბულკა, მექსიკური კარტოფილი, მექსიკური სოუსი, ლიმონი</span><br></p>', '2023-10-26 13:23:37', '2023-10-26 13:23:37'),
(325, 152, 'en', 'Dennis/Dorado', 'Grilled dorado, grilled potatoes, vegetable salad, lemon', '2023-10-26 13:24:05', '2023-10-26 20:08:02'),
(326, 152, 'ka', 'დორადო', '<p><span style=\"text-align: right;\">გრილზე შემწვარი დორადო, გრილზე შემწვარი კარტოფილი, ბოსტნეულის სალათი, ლიმონი</span><br></p>', '2023-10-26 13:24:05', '2023-10-26 13:24:05'),
(327, 153, 'en', 'Pizza four cheese', '<p style=\"\">Feta cheese, mozzarella, cheddar, blue cheese, sesame seeds<br></p>', '2023-10-26 13:25:37', '2023-10-26 20:18:38'),
(328, 153, 'ka', 'პიცა ოთხი ყველით', '<p><span style=\"text-align: right;\">ფეტა ყველი, მოცარელა, ჩედარი, ობიანი ყველი, სეზამის მარცვლები</span><br></p>', '2023-10-26 13:25:37', '2023-10-26 13:25:37'),
(329, 154, 'en', 'Pizza bomb', '<p style=\"\">Tomato sauce, mozzarella, sesame seeds, tomatoes, olives, red onions, corn<br></p>', '2023-10-26 13:29:33', '2023-10-26 20:18:12'),
(330, 154, 'ka', 'პიცა ბომბი', '<p><span style=\"text-align: right;\">პომიდვრის სოუსი, მოცარელა, სეზამის მარცვლები, პომიდორი, ზეთისხილი, წითელი ხახვი, სიმინდი</span><br></p>', '2023-10-26 13:29:33', '2023-10-26 13:29:33'),
(331, 155, 'en', 'Pizza anchovy', 'Tomato sauce, mozzarella, sesame seeds, achovies', '2023-10-26 13:30:01', '2023-10-26 20:17:36'),
(332, 155, 'ka', 'პიცა ანჩოუსი', '<p><span style=\"text-align: right;\">პომიდვრის სოუსი, მოცარელა, სეზამის მარცვლები, ანჩოუსი</span><br></p>', '2023-10-26 13:30:01', '2023-10-26 13:30:01'),
(333, 156, 'en', 'Meat pizza', '<font color=\"#212529\" face=\"BPG Mrgvlovani, sans-serif\">Kebab meat, tomato sauce, parsley</font><br>', '2023-10-26 13:30:49', '2023-10-26 20:13:08'),
(334, 156, 'ka', 'ხორცის პიცა', '<p>ქაბაბის ფარში, პომიდვრის სოუსი, ოხრახუში<br></p>', '2023-10-26 13:30:49', '2023-10-26 13:30:49'),
(335, 157, 'en', 'Soup -Kharcho', '<div style=\"\">Soup -Kharcho</div>', '2023-10-26 13:57:58', '2023-10-26 20:01:02'),
(336, 157, 'ka', 'სუპ-ხარჩო', '<span style=\"color: rgb(33, 37, 41); font-family: &quot;BPG Mrgvlovani&quot;, sans-serif; text-align: center;\">სუპ-ხარჩო იმერულად</span><br>', '2023-10-26 13:57:58', '2023-10-26 13:57:58'),
(339, 159, 'en', 'Chikhirtma', '<p>Chikhirtma<br></p>', '2023-10-26 13:58:44', '2023-10-26 20:26:11'),
(340, 159, 'ka', 'ჩიხირთმა', '<p>ჩიხირთმა<br></p>', '2023-10-26 13:58:44', '2023-10-26 13:58:44'),
(341, 160, 'en', 'Chicken soup', '<p>Chicken soup<br></p>', '2023-10-26 13:59:05', '2023-10-26 20:26:39'),
(342, 160, 'ka', 'ქათმის სუპი', '<p>ქათმის სუპი<br></p>', '2023-10-26 13:59:05', '2023-10-26 13:59:05'),
(343, 161, 'en', 'Greek Salad', '<p>Greek Salad<br></p>', '2023-10-26 19:19:24', '2023-10-26 20:28:03'),
(344, 161, 'ka', 'ბერძნული სალათი', '<p>ბერძნული სალათი<br></p>', '2023-10-26 19:19:24', '2023-10-26 19:19:24'),
(345, 162, 'en', 'Sake salad', '<p>Sake salad<br></p>', '2023-10-26 19:20:16', '2023-10-26 20:28:25'),
(346, 162, 'ka', 'სეიკ სალათი', '<p>სეიკ სალათი<br></p>', '2023-10-26 19:20:16', '2023-10-26 19:20:16'),
(347, 163, 'en', 'Chicken salad', '<p>Chicken salad<br></p>', '2023-10-26 19:22:05', '2023-10-26 20:28:49'),
(348, 163, 'ka', 'ქათმის სალათი', '<p>ქათმის სალათი<br></p>', '2023-10-26 19:22:05', '2023-10-26 19:22:05'),
(349, 164, 'en', 'Caesar with chicken', '<p>Caesar with chicken<br></p>', '2023-10-26 19:23:03', '2023-10-26 20:29:42'),
(350, 164, 'ka', 'ცეზარი ქათმით', '<p>ცეზარი ქათმით<br></p>', '2023-10-26 19:23:03', '2023-10-26 19:23:03'),
(351, 165, 'en', 'Mixed vegetables on the grill', '<p>Green bell pepper, red bell pepper, cucumber, cherry tomato, carrot, radish, oregano, lemon juice, salt<br></p>', '2023-12-05 15:47:37', '2023-12-05 15:47:37'),
(352, 165, 'ka', 'ბოსტნეულის დაფა', '<p>მწვანე ბულგარული, წითელი ბულგარული, კიტრი, ჩერი პომიდორი, სტაფილო, ბოლოკი, ორეგანო, ლიმონისწვენი, მარილი<br></p>', '2023-12-05 15:47:37', '2023-12-05 15:55:53'),
(353, 166, 'en', 'Georgian pickles', '<p>Pickled cucumber, red pepper, white cabbage, red cabbage, tomatoes<br></p>', '2023-12-05 15:50:09', '2023-12-05 15:50:09'),
(354, 166, 'ka', 'ქართული მწნილი', '<p>მწნილი კიტრი, წითელი წიწაკა, თეთრი კომბოსტო, წითელი კომბოსტო, პომიდორი<br></p>', '2023-12-05 15:50:09', '2023-12-05 15:50:09'),
(355, 167, 'en', 'French fries', '<p>French fries<br></p>', '2023-12-05 15:50:58', '2023-12-05 15:50:58'),
(356, 167, 'ka', 'კარტოფილი ფრი', '<p>კარტოფილი ფრი<br></p>', '2023-12-05 15:50:58', '2023-12-05 15:50:58'),
(357, 168, 'en', 'Onion rings', '<p>Onion rings<br></p>', '2023-12-05 15:54:34', '2023-12-05 15:54:34'),
(358, 168, 'ka', 'ხახვის რგოლები', '<p>ხახვის რგოლები<br></p>', '2023-12-05 15:54:34', '2023-12-05 15:54:34'),
(359, 169, 'en', 'Exodus mini khachapuri', '<p>combination of three wonderful khachapuries in mini version<br></p>', '2023-12-05 16:15:40', '2023-12-05 16:15:40'),
(360, 169, 'ka', 'ექსოდუს მინი ხაჭაპური', '<p>ექსოდუს მინი ხაჭაპური<br></p>', '2023-12-05 16:15:40', '2023-12-05 16:15:40'),
(361, 170, 'en', 'Megrelian khachapuri', '<p>Sulguni, Imeretian cheese, mozzarella, sesame seeds<br></p>', '2023-12-05 16:16:17', '2023-12-05 16:16:17'),
(362, 170, 'ka', 'მეგრული ხაჭაპური', '<p>სულგუნი, იმერული ყველი, მოცარელა, სეზამის მარცვლები<br></p>', '2023-12-05 16:16:17', '2023-12-05 16:16:17'),
(363, 171, 'en', 'Imeretian khachapuri', '<p>Sulguni cheese, Imeretian cheese, sesame seeds<br></p>', '2023-12-05 16:17:00', '2023-12-05 16:17:00'),
(364, 171, 'ka', 'იმერული ხაჭაპური', '<p>სულგუნი, იმერული ყველი, სეზამის მარცვლები<br></p>', '2023-12-05 16:17:00', '2023-12-05 16:17:00'),
(365, 172, 'en', 'Four cheese khachapuri', '<p>Gouda, blue cheese, cheddar, mozzarella, sesame seeds, arugula<br></p>', '2023-12-05 16:17:51', '2023-12-05 16:17:51'),
(366, 172, 'ka', 'ოთხი ყველის ხაჭაპური', '<p>გაუდა, ობიანი ყველი, ჩედარი, მოცარელა, სეზამის მარცვლები, რუკოლა<br></p>', '2023-12-05 16:17:51', '2023-12-05 16:17:51'),
(367, 173, 'en', 'Shakshuka khachapuri', '<p>Shakshuka sauce, sesame seeds, egg<br></p>', '2023-12-05 16:18:18', '2023-12-05 16:18:18'),
(368, 173, 'ka', 'შაკშუკა ხაჭაპური', '<p>შაკშუკას სოუსი, სეზამის მარცვლები, კვერცხი<br></p>', '2023-12-05 16:18:18', '2023-12-05 16:18:18'),
(369, 174, 'en', 'Adjarian khachapuri', '<p>Sulguni cheese, Imeretian cheese, egg, mozzarella, sesame seeds, butter<br></p>', '2023-12-05 16:18:54', '2023-12-05 16:18:54'),
(370, 174, 'ka', 'აჭარული ხაჭაპური', '<p>სულგუნი, იმერული ყველი, კვერცხი, მოცარელა, სეზამის მარცვლები, კარაქი<br></p>', '2023-12-05 16:18:54', '2023-12-05 16:18:54'),
(371, 175, 'en', 'Spicy salad', '<p>Cherry tomatoes, mozzarella, red onions, coriander, hot peppers, salt, olive oil, crushed garlic, lemon<br></p>', '2023-12-06 03:09:56', '2023-12-06 03:09:56'),
(372, 175, 'ka', 'ცხარე სალათი', '<p>Cherry tomatoes, mozzarella, red onions, coariander, hot peppers, salt, pepper, olive oil, crushed garlic, lemon<br></p>', '2023-12-06 03:09:56', '2023-12-06 03:09:56'),
(373, 176, 'en', 'Salmon salad', '<p>salmon, lettuce, blue cheese, cherry tomatoes, carrot, arugula, honey, lemon, balsamic<br></p>', '2023-12-06 03:10:33', '2023-12-06 03:10:33'),
(374, 176, 'ka', 'ორაგულის სალათი', '<p>ორაგული, სალათის ფოთოლი, ობიანი ყველი, ჩერი პომიდორი, სტაფილო, რუკოლა, თაფლი, ლიმონი, ბალზამიკო<br></p>', '2023-12-06 03:10:33', '2023-12-06 03:10:33'),
(375, 177, 'en', 'Salad shrimps mushrooms', '<p>Mushrooms, shrimps, green bell pepper, sesame seeds, white wine, garlic, lemon juice<br></p>', '2023-12-06 03:11:38', '2023-12-06 03:11:38'),
(376, 177, 'ka', 'სოკოს და კრევეტების სალათი', '<p>სოკო, კრევეტები, მწვანე ბულგარული, სეზამის მარცვლები, თეთრი ღვინო, ნიორი, ლიმონის წვენი<br></p>', '2023-12-06 03:11:38', '2023-12-06 03:11:38'),
(377, 178, 'en', 'Georgian salad', '<p>tomatoes, cucumber, parsley, red onions, vinegar, olive oil, green bell pepper, red bell pepper<br></p>', '2023-12-06 03:12:31', '2023-12-06 03:12:31'),
(378, 178, 'ka', 'ქართული სალათი', '<p>კიტრი, პომიდორი, ოხრახუში, წითელი ხახვი, ძმარი, ზეითუნის ზეთი<br></p>', '2023-12-06 03:12:31', '2023-12-06 03:12:31'),
(379, 179, 'en', 'Beef Burger', '<p>Beef Burger<br></p>', '2023-12-07 17:10:50', '2023-12-07 17:10:50'),
(380, 179, 'ka', 'ბურგერი საქონლის ხორცის', '<p>ბურგერი საქონლის ხორცის<br></p>', '2023-12-07 17:10:50', '2023-12-07 17:10:50'),
(381, 180, 'en', 'Chicken Burger', 'Chicken Burger', '2023-12-07 17:13:09', '2023-12-07 17:13:09'),
(382, 180, 'ka', 'ბურგერი ქათმის ხორცის', '<p>ბურგერი ქათმის ხორცის<br></p>', '2023-12-07 17:13:09', '2023-12-07 17:13:09'),
(383, 181, 'en', 'Lamb skewers', 'Lamb skewers', '2023-12-07 17:18:33', '2023-12-07 17:18:33'),
(384, 181, 'ka', 'ცხვრის ხორცის მიქსი', '<p>ცხვრის ხორცის მიქსი<br></p>', '2023-12-07 17:18:33', '2023-12-07 17:18:33'),
(385, 182, 'en', 'Veal skewers', '<p>Veal skewers<br></p>', '2023-12-07 17:21:03', '2023-12-07 17:21:03'),
(386, 182, 'ka', 'ხბოს ხორცის მიქსი', '<p>ხბოს ხორცის მიქსი<br></p>', '2023-12-07 17:21:03', '2023-12-07 17:21:03'),
(387, 183, 'en', 'Chicken skewers', '<p>Chicken skewers</p><p>Price per 100 gr raw product<br></p>', '2023-12-07 17:23:33', '2023-12-07 17:23:33'),
(388, 183, 'ka', 'ქათმის ხორცის მწვადი', '<p>ქათმის ხორცის</p><p>100გრ ნედლი პროდუქტის ფასი<br></p>', '2023-12-07 17:23:33', '2023-12-07 17:29:52'),
(389, 184, 'en', 'Pork skewers', '<p>Pork skewers</p><p>Neck, Rib, Loin, Ribs in a sweet marinade.</p><p>Price per 100 gr raw product<br></p><p><br></p>', '2023-12-07 17:29:04', '2023-12-07 17:29:04'),
(390, 184, 'ka', 'ღორის ხორცის მწვადი', '<p>ღორის ხორცის მწვადი</p><p>შეიკა, ნეკნები, ჩალაღაჯი, ნეკნები ტკბილ მარინადში.</p><p>100გრ ნედლი პროდუქტის ფასი<br></p>', '2023-12-07 17:29:04', '2023-12-07 17:29:04'),
(391, 185, 'en', 'აპეროლ სპიცი', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"177\" style=\"width: 133pt;\"><tbody><tr height=\"19\" style=\"height:14.6pt\">\r\n  <td height=\"19\" class=\"xl63\" width=\"177\" style=\"height:14.6pt;width:133pt\">აპეროლ\r\n  სპიცი</td></tr></tbody></table>', '2023-12-09 20:28:01', '2023-12-09 20:28:01'),
(392, 185, 'ka', 'აპეროლ სპიცი', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"177\" style=\"width: 133pt;\"><tbody><tr height=\"19\" style=\"height:14.6pt\">\r\n  <td height=\"19\" class=\"xl63\" width=\"177\" style=\"height:14.6pt;width:133pt\">აპეროლ\r\n  სპიცი</td></tr></tbody></table>', '2023-12-09 20:28:01', '2023-12-09 20:28:01'),
(393, 186, 'en', 'აპეროლი', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"168\" style=\"width: 126pt;\"><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl63\" width=\"168\" style=\"height:15.0pt;width:126pt\">აპეროლი&nbsp;</td></tr></tbody></table>', '2023-12-09 20:44:15', '2023-12-09 20:44:15'),
(394, 186, 'ka', 'აპეროლი', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"168\" style=\"width: 126pt;\"><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl63\" width=\"168\" style=\"height:15.0pt;width:126pt\">აპეროლი&nbsp;</td></tr></tbody></table>', '2023-12-09 20:44:15', '2023-12-09 20:44:15'),
(395, 187, 'en', 'მარტინი როსო', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"168\" style=\"width: 126pt;\"><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl65\" width=\"168\" style=\"height:15.0pt;width:126pt\">მარტინი\r\n  როსო&nbsp;</td></tr></tbody></table>', '2023-12-09 20:47:13', '2023-12-09 20:47:13'),
(396, 187, 'ka', 'მარტინი როსო', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"168\" style=\"width: 126pt;\"><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl65\" width=\"168\" style=\"height:15.0pt;width:126pt\">მარტინი\r\n  როსო&nbsp;</td></tr></tbody></table>', '2023-12-09 20:47:13', '2023-12-09 20:47:13'),
(397, 188, 'en', 'მარტინი ექსტრა დრაი', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"168\" style=\"width: 126pt;\"><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl65\" width=\"168\" style=\"height:15.0pt;width:126pt\">მარტინი\r\n  ექსტრა დრაი&nbsp;</td></tr></tbody></table>', '2023-12-09 20:55:03', '2023-12-09 20:55:03'),
(398, 188, 'ka', 'მარტინი ექსტრა დრაი', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"168\" style=\"width: 126pt;\"><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl65\" width=\"168\" style=\"height:15.0pt;width:126pt\">მარტინი\r\n  ექსტრა დრაი&nbsp;</td></tr></tbody></table>', '2023-12-09 20:55:03', '2023-12-09 20:55:03'),
(401, 190, 'en', 'მარტინი ბლანკო', '.', '2023-12-09 20:57:59', '2023-12-09 20:57:59'),
(402, 190, 'ka', 'მარტინი ბლანკო', '.', '2023-12-09 20:57:59', '2023-12-09 20:57:59'),
(403, 191, 'en', 'სტალიჩნაია', '.', '2023-12-09 20:58:44', '2023-12-09 20:58:44'),
(404, 191, 'ka', 'სტალიჩნაია', '.', '2023-12-09 20:58:44', '2023-12-09 20:58:44'),
(405, 192, 'en', 'აბსოლუტი ვოდკა', '.', '2023-12-09 20:58:57', '2023-12-09 20:58:57'),
(406, 192, 'ka', 'აბსოლუტი ვოდკა', '.', '2023-12-09 20:58:57', '2023-12-09 20:58:57'),
(407, 193, 'en', 'გრეი გუსი', '.', '2023-12-09 20:59:09', '2023-12-09 20:59:09'),
(408, 193, 'ka', 'გრეი გუსი', '.', '2023-12-09 20:59:09', '2023-12-09 20:59:09'),
(409, 194, 'en', 'აბსოლუტი კურანტი', '.', '2023-12-09 20:59:20', '2023-12-09 20:59:20'),
(410, 194, 'ka', 'აბსოლუტი კურანტი', '.', '2023-12-09 20:59:20', '2023-12-09 20:59:20'),
(411, 195, 'en', 'დანზკა კლასიკი', '.', '2023-12-09 20:59:32', '2023-12-09 20:59:32'),
(412, 195, 'ka', 'დანზკა კლასიკი', '.', '2023-12-09 20:59:32', '2023-12-09 20:59:32'),
(413, 196, 'en', 'ჭაჭა კახური', '.', '2023-12-09 20:59:44', '2023-12-09 20:59:44'),
(414, 196, 'ka', 'ჭაჭა კახური', '.', '2023-12-09 20:59:44', '2023-12-09 20:59:44'),
(415, 197, 'en', 'ლაიმი', '.', '2023-12-09 21:00:22', '2023-12-09 21:00:22'),
(416, 197, 'ka', 'ლაიმი', '.', '2023-12-09 21:00:22', '2023-12-09 21:00:22'),
(417, 198, 'en', 'ლიმონი', '.', '2023-12-09 21:00:35', '2023-12-09 21:00:35'),
(418, 198, 'ka', 'ლიმონი', '.', '2023-12-09 21:00:35', '2023-12-09 21:00:35'),
(419, 199, 'en', 'რძე 0,150', '.', '2023-12-09 21:00:53', '2023-12-09 21:00:53'),
(420, 199, 'ka', 'რძე 0,150', '.', '2023-12-09 21:00:53', '2023-12-09 21:00:53'),
(421, 200, 'en', 'ჯეკ დენიელსი', '.', '2023-12-09 21:01:28', '2023-12-09 21:01:28'),
(422, 200, 'ka', 'ჯეკ დენიელსი', '.', '2023-12-09 21:01:28', '2023-12-09 21:01:28'),
(423, 201, 'en', 'ჯეიმსონი', '.', '2023-12-09 21:01:44', '2023-12-09 21:01:44'),
(424, 201, 'ka', 'ჯეიმსონი', '.', '2023-12-09 21:01:44', '2023-12-09 21:01:44'),
(425, 202, 'en', 'ჩივას რეგალი 12', '.', '2023-12-09 21:01:56', '2023-12-09 21:01:56'),
(426, 202, 'ka', 'ჩივას რეგალი 12', '.', '2023-12-09 21:01:56', '2023-12-09 21:01:56'),
(427, 203, 'en', 'ჩივას რეგალი 18', '.', '2023-12-09 21:02:07', '2023-12-09 21:02:07'),
(428, 203, 'ka', 'ჩივას რეგალი 18', '.', '2023-12-09 21:02:07', '2023-12-09 21:02:07'),
(429, 204, 'en', 'რედ ლებელი', '.', '2023-12-09 21:02:20', '2023-12-09 21:02:20'),
(430, 204, 'ka', 'რედ ლებელი', '.', '2023-12-09 21:02:20', '2023-12-09 21:02:20'),
(431, 205, 'en', 'ჯ&ბ', '.', '2023-12-09 21:02:34', '2023-12-09 21:02:34'),
(432, 205, 'ka', 'ჯ&ბ', '.', '2023-12-09 21:02:34', '2023-12-09 21:02:34'),
(433, 206, 'en', 'ჯიმ ბიმი', '.', '2023-12-09 21:03:01', '2023-12-09 21:03:01'),
(434, 206, 'ka', 'ჯიმ ბიმი', '.', '2023-12-09 21:03:01', '2023-12-09 21:03:01'),
(435, 207, 'en', 'მეიკერს მარკი', '.', '2023-12-09 21:03:20', '2023-12-09 21:03:20'),
(436, 207, 'ka', 'მეიკერს მარკი', '.', '2023-12-09 21:03:20', '2023-12-09 21:03:20'),
(437, 208, 'en', 'გლენმორანჟი', '.', '2023-12-09 21:03:37', '2023-12-09 21:03:37'),
(438, 208, 'ka', 'გლენმორანჟი', '.', '2023-12-09 21:03:37', '2023-12-09 21:03:37'),
(439, 209, 'en', 'ჰენესი ვ ს ო პ', '.', '2023-12-09 21:04:11', '2023-12-09 21:04:11'),
(440, 209, 'ka', 'ჰენესი ვ ს ო პ', '.', '2023-12-09 21:04:11', '2023-12-09 21:04:11'),
(441, 210, 'en', 'ჰენესი ვ ს', '.', '2023-12-09 21:04:24', '2023-12-09 21:04:24'),
(442, 210, 'ka', 'ჰენესი ვ ს', '.', '2023-12-09 21:04:24', '2023-12-09 21:04:24'),
(443, 211, 'en', 'სარაჯიშვილი ვ ს ო პ', '.', '2023-12-09 21:04:44', '2023-12-09 21:04:44'),
(444, 211, 'ka', 'სარაჯიშვილი ვ ს ო პ', '.', '2023-12-09 21:04:44', '2023-12-09 21:04:44'),
(445, 212, 'en', 'სარაჯიშვილი ვ ს', '.', '2023-12-09 21:04:56', '2023-12-09 21:04:56'),
(446, 212, 'ka', 'სარაჯიშვილი ვ ს', '.', '2023-12-09 21:04:56', '2023-12-09 21:04:56'),
(447, 213, 'en', 'რემი მარტინი ვ ს ო პ', '.', '2023-12-09 21:05:10', '2023-12-09 21:05:10'),
(448, 213, 'ka', 'რემი მარტინი ვ ს ო პ', '.', '2023-12-09 21:05:10', '2023-12-09 21:05:10'),
(449, 214, 'en', 'ლე კავკასი', '.', '2023-12-09 21:05:22', '2023-12-09 21:05:22'),
(450, 214, 'ka', 'ლე კავკასი', '.', '2023-12-09 21:05:22', '2023-12-09 21:05:22'),
(451, 215, 'en', 'კოსმოპოლიტენი', '.', '2023-12-09 21:06:37', '2023-12-09 21:06:37'),
(452, 215, 'ka', 'კოსმოპოლიტენი', '.', '2023-12-09 21:06:37', '2023-12-09 21:06:37'),
(453, 216, 'en', 'ლონ აილენდ აისთი', '.', '2023-12-09 21:06:50', '2023-12-09 21:06:50'),
(454, 216, 'ka', 'ლონ აილენდ აისთი', '.', '2023-12-09 21:06:50', '2023-12-09 21:06:50'),
(455, 217, 'en', 'ლონგ აილენდ ენერჯი', '.', '2023-12-09 21:06:59', '2023-12-09 21:06:59'),
(456, 217, 'ka', 'ლონგ აილენდ ენერჯი', '.', '2023-12-09 21:06:59', '2023-12-09 21:06:59'),
(457, 218, 'en', 'მაი ტაი', '.', '2023-12-09 21:08:35', '2023-12-09 21:08:35'),
(458, 218, 'ka', 'მაი ტაი', '.', '2023-12-09 21:08:35', '2023-12-09 21:08:35'),
(459, 219, 'en', 'პინა კოლადა', '.', '2023-12-09 21:08:48', '2023-12-09 21:08:48'),
(460, 219, 'ka', 'პინა კოლადა', '.', '2023-12-09 21:08:48', '2023-12-09 21:08:48'),
(461, 220, 'en', 'ჯინ ტონიკი', '.', '2023-12-09 21:09:03', '2023-12-09 21:09:03'),
(462, 220, 'ka', 'ჯინ ტონიკი', '.', '2023-12-09 21:09:03', '2023-12-09 21:09:03'),
(463, 221, 'en', 'სისხლიანი მერი', '.', '2023-12-09 21:09:16', '2023-12-09 21:09:16'),
(464, 221, 'ka', 'სისხლიანი მერი', '.', '2023-12-09 21:09:16', '2023-12-09 21:09:16'),
(465, 222, 'en', 'ცისფერი ლაგუნა', '.', '2023-12-09 21:09:27', '2023-12-09 21:09:27'),
(466, 222, 'ka', 'ცისფერი ლაგუნა', '.', '2023-12-09 21:09:27', '2023-12-09 21:09:27'),
(467, 223, 'en', 'მარგარიტა', '.', '2023-12-09 21:09:40', '2023-12-09 21:09:40'),
(468, 223, 'ka', 'მარგარიტა', '.', '2023-12-09 21:09:40', '2023-12-09 21:09:40'),
(469, 224, 'en', 'ნეგრონი', '.', '2023-12-09 21:09:52', '2023-12-09 21:09:52'),
(470, 224, 'ka', 'ნეგრონი', '.', '2023-12-09 21:09:52', '2023-12-09 21:09:52'),
(471, 225, 'en', 'მოხიტო', '.', '2023-12-09 21:10:04', '2023-12-09 21:10:04'),
(472, 225, 'ka', 'მოხიტო', '.', '2023-12-09 21:10:04', '2023-12-09 21:10:04'),
(473, 226, 'en', 'კუბა ლიბრე', '.', '2023-12-09 21:10:19', '2023-12-09 21:10:19'),
(474, 226, 'ka', 'კუბა ლიბრე', '.', '2023-12-09 21:10:19', '2023-12-09 21:10:19'),
(475, 227, 'en', 'არაყი რედბული', '.', '2023-12-09 21:10:30', '2023-12-09 21:10:30'),
(476, 227, 'ka', 'არაყი რედბული', '.', '2023-12-09 21:10:30', '2023-12-09 21:10:30'),
(477, 228, 'en', 'იაგერ ბუმი', '.', '2023-12-09 21:10:40', '2023-12-09 21:10:40'),
(478, 228, 'ka', 'იაგერ ბუმი', '.', '2023-12-09 21:10:40', '2023-12-09 21:10:40'),
(479, 229, 'en', 'ფლირტი მონარქისგან', '.', '2023-12-09 21:10:53', '2023-12-09 21:10:53'),
(480, 229, 'ka', 'ფლირტი მონარქისგან', '.', '2023-12-09 21:10:53', '2023-12-09 21:10:53'),
(481, 230, 'en', 'ძველი მოდა', '.', '2023-12-09 21:11:05', '2023-12-09 21:11:05'),
(482, 230, 'ka', 'ძველი მოდა', '.', '2023-12-09 21:11:05', '2023-12-09 21:11:05'),
(483, 231, 'en', 'მწვანე მექსიკელი', '.', '2023-12-09 21:11:17', '2023-12-09 21:11:17'),
(484, 231, 'ka', 'მწვანე მექსიკელი', '.', '2023-12-09 21:11:17', '2023-12-09 21:11:17'),
(485, 232, 'en', 'ბრონქსი', '.', '2023-12-09 21:11:28', '2023-12-09 21:11:28'),
(486, 232, 'ka', 'ბრონქსი', '.', '2023-12-09 21:11:28', '2023-12-09 21:11:28'),
(487, 233, 'en', 'ესპრესო ჯინი', '.', '2023-12-09 21:11:39', '2023-12-09 21:11:39'),
(488, 233, 'ka', 'ესპრესო ჯინი', '.', '2023-12-09 21:11:39', '2023-12-09 21:11:39'),
(489, 234, 'en', 'ნათლიმამა', '.', '2023-12-09 21:11:52', '2023-12-09 21:11:52'),
(490, 234, 'ka', 'ნათლიმამა', '.', '2023-12-09 21:11:52', '2023-12-09 21:11:52'),
(491, 235, 'en', 'დაიკირი', '.', '2023-12-09 21:12:02', '2023-12-09 21:12:02'),
(492, 235, 'ka', 'დაიკირი', '.', '2023-12-09 21:12:02', '2023-12-09 21:12:02'),
(493, 236, 'en', 'ბ-52', '.', '2023-12-09 21:12:17', '2023-12-09 21:12:17'),
(494, 236, 'ka', 'ბ-52', '.', '2023-12-09 21:12:17', '2023-12-09 21:12:17'),
(495, 237, 'en', 'ჰიროსიმა', '.', '2023-12-09 21:12:29', '2023-12-09 21:12:29'),
(496, 237, 'ka', 'ჰიროსიმა', '.', '2023-12-09 21:12:29', '2023-12-09 21:12:29'),
(497, 238, 'en', 'ვისკი საუერი', '.', '2023-12-09 21:12:40', '2023-12-09 21:12:40'),
(498, 238, 'ka', 'ვისკი საუერი', '.', '2023-12-09 21:12:40', '2023-12-09 21:12:40'),
(499, 239, 'en', 'ტეკილა სანრაიზი', '.', '2023-12-09 21:12:49', '2023-12-09 21:12:49'),
(500, 239, 'ka', 'ტეკილა სანრაიზი', '.', '2023-12-09 21:12:49', '2023-12-09 21:12:49'),
(501, 240, 'en', 'ეფლ ჯეკი', '.', '2023-12-09 21:13:03', '2023-12-09 21:13:03'),
(502, 240, 'ka', 'ეფლ ჯეკი', '.', '2023-12-09 21:13:03', '2023-12-09 21:13:03'),
(503, 241, 'en', 'ბეილისი', '.', '2023-12-09 21:13:44', '2023-12-09 21:13:44'),
(504, 241, 'ka', 'ბეილისი', '.', '2023-12-09 21:13:44', '2023-12-09 21:13:44'),
(505, 242, 'en', 'იაგერმეისტერი', '.', '2023-12-09 21:13:57', '2023-12-09 21:13:57'),
(506, 242, 'ka', 'იაგერმეისტერი', '.', '2023-12-09 21:13:57', '2023-12-09 21:13:57'),
(507, 243, 'en', 'კამპარი', '.', '2023-12-09 21:14:06', '2023-12-09 21:14:06'),
(508, 243, 'ka', 'კამპარი', '.', '2023-12-09 21:14:06', '2023-12-09 21:14:06'),
(509, 244, 'en', 'ამარეტო დისარონო', '.', '2023-12-09 21:14:16', '2023-12-09 21:14:16'),
(510, 244, 'ka', 'ამარეტო დისარონო', '.', '2023-12-09 21:14:16', '2023-12-09 21:14:16'),
(511, 245, 'en', 'აფსენტი', '.', '2023-12-09 21:14:27', '2023-12-09 21:14:27'),
(512, 245, 'ka', 'აფსენტი', '.', '2023-12-09 21:14:27', '2023-12-09 21:14:27'),
(513, 246, 'en', 'შავი ლომი', '.', '2023-12-09 21:14:57', '2023-12-09 21:14:57'),
(514, 246, 'ka', 'შავი ლომი', '.', '2023-12-09 21:14:57', '2023-12-09 21:14:57'),
(515, 247, 'en', 'აისი', '.', '2023-12-09 21:15:07', '2023-12-09 21:15:07'),
(516, 247, 'ka', 'აისი', '.', '2023-12-09 21:15:07', '2023-12-09 21:15:07'),
(517, 248, 'en', 'კორონა', '.', '2023-12-09 21:15:16', '2023-12-09 21:15:16'),
(518, 248, 'ka', 'კორონა', '.', '2023-12-09 21:15:16', '2023-12-09 21:15:16'),
(519, 249, 'en', 'ჰეინეკენი', '.', '2023-12-09 21:15:26', '2023-12-09 21:15:26'),
(520, 249, 'ka', 'ჰეინეკენი', '.', '2023-12-09 21:15:26', '2023-12-09 21:15:26'),
(521, 250, 'en', 'პაულანერი', '.', '2023-12-09 21:15:36', '2023-12-09 21:15:36'),
(522, 250, 'ka', 'პაულანერი', '.', '2023-12-09 21:15:36', '2023-12-09 21:15:36'),
(523, 251, 'en', 'ბაკარდი თეთრი', '.', '2023-12-09 21:16:08', '2023-12-09 21:16:08'),
(524, 251, 'ka', 'ბაკარდი თეთრი', '.', '2023-12-09 21:16:08', '2023-12-09 21:16:08'),
(525, 252, 'en', 'კაპიტან მორგანი შავი', '.', '2023-12-09 21:16:18', '2023-12-09 21:16:18'),
(526, 252, 'ka', 'კაპიტან მორგანი შავი', '.', '2023-12-09 21:16:18', '2023-12-09 21:16:18'),
(527, 253, 'en', 'ბაკარდი შავი', '.', '2023-12-09 21:16:34', '2023-12-09 21:16:34'),
(528, 253, 'ka', 'ბაკარდი შავი', '.', '2023-12-09 21:16:34', '2023-12-09 21:16:34'),
(529, 254, 'en', 'კაპიტან მორგანი თეთრი', '.', '2023-12-09 21:16:43', '2023-12-09 21:16:43'),
(530, 254, 'ka', 'კაპიტან მორგანი თეთრი', '.', '2023-12-09 21:16:43', '2023-12-09 21:16:43'),
(531, 255, 'en', 'ოლმეგა', '.', '2023-12-09 21:17:10', '2023-12-09 21:17:10'),
(532, 255, 'ka', 'ოლმეგა', '.', '2023-12-09 21:17:10', '2023-12-09 21:17:10'),
(533, 256, 'en', 'ოლმეკა გოლდი', '.', '2023-12-09 21:17:19', '2023-12-10 20:38:41'),
(534, 256, 'ka', 'ოლმეკა გოლდი', '.', '2023-12-09 21:17:19', '2023-12-10 20:38:41'),
(535, 257, 'en', 'სილვერ პატრონი', '.', '2023-12-09 21:17:30', '2023-12-09 21:17:30'),
(536, 257, 'ka', 'სილვერ პატრონი', '.', '2023-12-09 21:17:30', '2023-12-09 21:17:30'),
(537, 258, 'en', 'წყალი', '.', '2023-12-09 21:18:01', '2023-12-09 21:18:01'),
(538, 258, 'ka', 'წყალი', '.', '2023-12-09 21:18:01', '2023-12-09 21:18:01'),
(539, 259, 'en', 'წვენი', '.', '2023-12-09 21:18:14', '2023-12-09 21:18:14'),
(540, 259, 'ka', 'წვენი', '.', '2023-12-09 21:18:14', '2023-12-09 21:18:14'),
(541, 260, 'en', 'კოკა კოლა', '.', '2023-12-09 21:18:25', '2023-12-09 21:18:25'),
(542, 260, 'ka', 'კოკა კოლა', '.', '2023-12-09 21:18:25', '2023-12-09 21:18:25'),
(543, 261, 'en', 'ფანტა', '.', '2023-12-09 21:18:35', '2023-12-09 21:18:35'),
(544, 261, 'ka', 'ფანტა', '.', '2023-12-09 21:18:35', '2023-12-09 21:18:35'),
(545, 262, 'en', 'სპრაიტი', '.', '2023-12-09 21:18:44', '2023-12-09 21:18:44'),
(546, 262, 'ka', 'სპრაიტი', '.', '2023-12-09 21:18:44', '2023-12-09 21:18:44'),
(547, 263, 'en', 'სახლის ლიმონათი', '.', '2023-12-09 21:18:53', '2023-12-09 21:18:53'),
(548, 263, 'ka', 'სახლის ლიმონათი', '.', '2023-12-09 21:18:53', '2023-12-09 21:18:53'),
(549, 264, 'en', 'მილკ შეიკი', '.', '2023-12-09 21:19:03', '2023-12-09 21:19:03'),
(550, 264, 'ka', 'მილკ შეიკი', '.', '2023-12-09 21:19:03', '2023-12-09 21:19:03'),
(551, 265, 'en', 'დაწურული ხილი', '.', '2023-12-09 21:19:16', '2023-12-09 21:19:16'),
(552, 265, 'ka', 'დაწურული ხილი', '.', '2023-12-09 21:19:16', '2023-12-09 21:19:16'),
(553, 266, 'en', 'რედბული', '.', '2023-12-09 21:19:26', '2023-12-09 21:19:26'),
(554, 266, 'ka', 'რედბული', '.', '2023-12-09 21:19:26', '2023-12-09 21:19:26'),
(555, 267, 'en', 'შვეფსი', '.', '2023-12-09 21:19:37', '2023-12-09 21:19:37'),
(556, 267, 'ka', 'შვეფსი', '.', '2023-12-09 21:19:37', '2023-12-09 21:19:37'),
(557, 268, 'en', 'ნაბეღლავი', '.', '2023-12-09 21:19:47', '2023-12-09 21:19:47'),
(558, 268, 'ka', 'ნაბეღლავი', '.', '2023-12-09 21:19:47', '2023-12-09 21:19:47'),
(559, 269, 'en', 'წინანდალი', '.', '2023-12-09 21:20:08', '2023-12-09 21:20:08'),
(560, 269, 'ka', 'წინანდალი', '.', '2023-12-09 21:20:08', '2023-12-09 21:20:08'),
(561, 270, 'en', 'ტვიში', '.', '2023-12-09 21:20:17', '2023-12-09 21:20:17'),
(562, 270, 'ka', 'ტვიში', '.', '2023-12-09 21:20:17', '2023-12-09 21:20:17'),
(563, 271, 'en', 'საფერავი', '.', '2023-12-09 21:20:30', '2023-12-09 21:20:30'),
(564, 271, 'ka', 'საფერავი', '.', '2023-12-09 21:20:30', '2023-12-09 21:20:30'),
(565, 272, 'en', 'ქინძმარაული', '.', '2023-12-09 21:20:41', '2023-12-09 21:20:41'),
(566, 272, 'ka', 'ქინძმარაული', '.', '2023-12-09 21:20:41', '2023-12-09 21:20:41'),
(567, 273, 'en', 'ხვანჭკარა', '.', '2023-12-09 21:20:50', '2023-12-09 21:20:50'),
(568, 273, 'ka', 'ხვანჭკარა', '.', '2023-12-09 21:20:50', '2023-12-09 21:20:50'),
(569, 274, 'en', 'მარანი როზე', '.', '2023-12-09 21:21:03', '2023-12-09 21:21:03'),
(570, 274, 'ka', 'მარანი როზე', '.', '2023-12-09 21:21:03', '2023-12-09 21:21:03'),
(571, 275, 'en', 'კონდოლის მწვანე ქისი', '.', '2023-12-09 21:21:14', '2023-12-09 21:21:14'),
(572, 275, 'ka', 'კონდოლის მწვანე ქისი', '.', '2023-12-09 21:21:14', '2023-12-09 21:21:14'),
(573, 276, 'en', 'ყავა ბათუმური', '.', '2023-12-09 21:22:11', '2023-12-09 21:22:11'),
(574, 276, 'ka', 'ყავა ბათუმური', '.', '2023-12-09 21:22:11', '2023-12-09 21:22:11'),
(575, 277, 'en', 'ესპრესო', '.', '2023-12-09 21:22:21', '2023-12-09 21:22:21'),
(576, 277, 'ka', 'ესპრესო', '.', '2023-12-09 21:22:21', '2023-12-09 21:22:21'),
(577, 278, 'en', 'ორმაგი ესპრესო', '.', '2023-12-09 21:22:30', '2023-12-09 21:22:30'),
(578, 278, 'ka', 'ორმაგი ესპრესო', '.', '2023-12-09 21:22:30', '2023-12-09 21:22:30'),
(579, 279, 'en', 'ამერიკანო', '.', '2023-12-09 21:22:41', '2023-12-09 21:22:41'),
(580, 279, 'ka', 'ამერიკანო', '.', '2023-12-09 21:22:41', '2023-12-09 21:22:41'),
(581, 280, 'en', 'ლატე', '.', '2023-12-09 21:22:51', '2023-12-09 21:22:51'),
(582, 280, 'ka', 'ლატე', '.', '2023-12-09 21:22:51', '2023-12-09 21:22:51'),
(583, 281, 'en', 'ლატე ბეილისით', '.', '2023-12-09 21:23:00', '2023-12-09 21:23:00'),
(584, 281, 'ka', 'ლატე ბეილისით', '.', '2023-12-09 21:23:00', '2023-12-09 21:23:00'),
(585, 282, 'en', 'კაპუჩინო', '.', '2023-12-09 21:23:09', '2023-12-09 21:23:09'),
(586, 282, 'ka', 'კაპუჩინო', '.', '2023-12-09 21:23:09', '2023-12-09 21:23:09'),
(587, 283, 'en', 'ირლანდიური ყავა', '.', '2023-12-09 21:23:26', '2023-12-09 21:23:26'),
(588, 283, 'ka', 'ირლანდიური ყავა', '.', '2023-12-09 21:23:26', '2023-12-09 21:23:26'),
(589, 284, 'en', 'ცივი ყავა ნაყინით', '.', '2023-12-09 21:23:36', '2023-12-09 21:23:36'),
(590, 284, 'ka', 'ცივი ყავა ნაყინით', '.', '2023-12-09 21:23:36', '2023-12-09 21:23:36'),
(591, 285, 'en', 'ჩაი', '.', '2023-12-09 21:23:45', '2023-12-09 21:23:45'),
(592, 285, 'ka', 'ჩაი', '.', '2023-12-09 21:23:45', '2023-12-09 21:23:45'),
(593, 286, 'en', 'ჩაი ჩაიდნით', '.', '2023-12-09 21:24:24', '2023-12-09 21:24:24'),
(594, 286, 'ka', 'ჩაი ჩაიდნით', '.', '2023-12-09 21:24:24', '2023-12-09 21:24:24'),
(595, 287, 'en', 'მარანი ბრუტი', '.', '2023-12-09 21:24:55', '2023-12-09 21:24:55'),
(596, 287, 'ka', 'მარანი ბრუტი', '.', '2023-12-09 21:24:55', '2023-12-09 21:24:55'),
(599, 289, 'en', 'მოეტ შარდონ', '.', '2023-12-09 21:25:12', '2023-12-10 20:49:43'),
(600, 289, 'ka', 'მოეტ შარდონ', '.', '2023-12-09 21:25:12', '2023-12-10 20:49:43'),
(601, 290, 'en', 'ბიფიტერი', '.', '2023-12-09 21:25:35', '2023-12-09 21:25:35'),
(602, 290, 'ka', 'ბიფიტერი', '.', '2023-12-09 21:25:35', '2023-12-09 21:25:35'),
(603, 291, 'en', 'ბომბეი საფირი', '.', '2023-12-09 21:25:44', '2023-12-09 21:25:44'),
(604, 291, 'ka', 'ბომბეი საფირი', '.', '2023-12-09 21:25:44', '2023-12-09 21:25:44'),
(605, 292, 'en', 'ჰენდრიკსი', '.', '2023-12-09 21:25:52', '2023-12-09 21:25:52'),
(606, 292, 'ka', 'ჰენდრიკსი', '.', '2023-12-09 21:25:52', '2023-12-09 21:25:52'),
(607, 293, 'en', 'კიტრი & პომიდორი', '.', '2023-12-09 21:50:55', '2023-12-09 21:50:55'),
(608, 293, 'ka', 'კიტრი & პომიდორი', '.', '2023-12-09 21:50:55', '2023-12-09 21:50:55'),
(609, 294, 'en', 'კიტრი&პომიდორი ნიგვძზით', '.', '2023-12-09 21:51:04', '2023-12-09 21:51:04'),
(610, 294, 'ka', 'კიტრი&პომიდორი ნიგვძზით', '.', '2023-12-09 21:51:04', '2023-12-09 21:51:04'),
(611, 295, 'en', 'ფხალის ასორტი', '.', '2023-12-09 21:51:17', '2023-12-09 21:51:17'),
(612, 295, 'ka', 'ფხალის ასორტი', '.', '2023-12-09 21:51:17', '2023-12-09 21:51:17'),
(613, 296, 'en', 'სალათი ცეზარი', '.', '2023-12-09 21:51:26', '2023-12-09 21:51:26'),
(614, 296, 'ka', 'სალათი ცეზარი', '.', '2023-12-09 21:51:26', '2023-12-09 21:51:26'),
(615, 297, 'en', 'სალათი ცეზარი კრევეტებით', '.', '2023-12-09 21:51:45', '2023-12-09 21:51:45'),
(616, 297, 'ka', 'სალათი ცეზარი კრევეტებით', '.', '2023-12-09 21:51:45', '2023-12-09 21:51:45'),
(617, 298, 'en', 'ბერძნული სალათი', '.', '2023-12-09 21:51:55', '2023-12-09 21:51:55'),
(618, 298, 'ka', 'ბერძნული სალათი', '.', '2023-12-09 21:51:55', '2023-12-09 21:51:55'),
(619, 299, 'en', 'ქართული ყველის ასორტი', '.', '2023-12-09 21:52:02', '2023-12-09 21:52:02'),
(620, 299, 'ka', 'ქართული ყველის ასორტი', '.', '2023-12-09 21:52:02', '2023-12-09 21:52:02'),
(621, 300, 'en', 'ევროპული ყველის ასორტი', '.', '2023-12-09 21:52:19', '2023-12-09 21:52:19'),
(622, 300, 'ka', 'ევროპული ყველის ასორტი', '.', '2023-12-09 21:52:19', '2023-12-09 21:52:19'),
(623, 301, 'en', 'ძეხვეულის დაფა', '.', '2023-12-09 21:52:29', '2023-12-09 21:52:29'),
(624, 301, 'ka', 'ძეხვეულის დაფა', '.', '2023-12-09 21:52:29', '2023-12-09 21:52:29'),
(625, 302, 'en', 'სკანდინავიური დაფა', '.', '2023-12-09 21:52:37', '2023-12-09 21:52:37'),
(626, 302, 'ka', 'სკანდინავიური დაფა', '.', '2023-12-09 21:52:37', '2023-12-09 21:52:37'),
(627, 303, 'en', 'ქართული დაფა', '.', '2023-12-09 21:52:46', '2023-12-09 21:52:46'),
(628, 303, 'ka', 'ქართული დაფა', '.', '2023-12-09 21:52:46', '2023-12-09 21:52:46'),
(629, 304, 'en', 'რუკოლას სალათი', '.', '2023-12-09 21:52:57', '2023-12-09 21:52:57'),
(630, 304, 'ka', 'რუკოლას სალათი', '.', '2023-12-09 21:52:57', '2023-12-09 21:52:57'),
(631, 305, 'en', 'აღმოსავლური ქათმის სალათი', '.', '2023-12-09 21:53:09', '2023-12-09 21:53:09'),
(632, 305, 'ka', 'აღმოსავლური ქათმის სალათი', '.', '2023-12-09 21:53:09', '2023-12-09 21:53:09'),
(633, 306, 'en', 'კლასიკური ქათმის ბურგერი', '.', '2023-12-09 21:53:46', '2023-12-09 21:53:46'),
(634, 306, 'ka', 'კლასიკური ქათმის ბურგერი', '.', '2023-12-09 21:53:46', '2023-12-09 21:53:46'),
(635, 307, 'en', 'კლასიკური საქონლის ბურგერი', '.', '2023-12-09 21:53:57', '2023-12-09 21:53:57'),
(636, 307, 'ka', 'კლასიკური საქონლის ბურგერი', '.', '2023-12-09 21:53:57', '2023-12-09 21:53:57'),
(637, 308, 'en', 'ქლაბ სენდვიჩი', '.', '2023-12-09 21:54:05', '2023-12-09 21:54:05'),
(638, 308, 'ka', 'ქლაბ სენდვიჩი', '.', '2023-12-09 21:54:05', '2023-12-09 21:54:05'),
(639, 309, 'en', 'ფრი', '.', '2023-12-09 21:54:43', '2023-12-09 21:54:43'),
(640, 309, 'ka', 'ფრი', '.', '2023-12-09 21:54:43', '2023-12-09 21:54:43'),
(641, 310, 'en', 'მექსიკური კარტოფილი', '.', '2023-12-09 21:54:55', '2023-12-10 20:22:19'),
(642, 310, 'ka', 'მექსიკური კარტოფილი', '.', '2023-12-09 21:54:55', '2023-12-10 20:22:19'),
(643, 311, 'en', 'ხახვის რგოლები', '.', '2023-12-09 21:55:04', '2023-12-09 21:55:04'),
(644, 311, 'ka', 'ხახვის რგოლები', '.', '2023-12-09 21:55:04', '2023-12-09 21:55:04'),
(645, 312, 'en', 'კალმარის რგოლები', '.', '2023-12-09 21:55:12', '2023-12-09 21:55:12'),
(646, 312, 'ka', 'კალმარის რგოლები', '.', '2023-12-09 21:55:12', '2023-12-09 21:55:12'),
(647, 313, 'en', 'ყველის ჩხირები', '.', '2023-12-09 21:55:19', '2023-12-09 21:55:19'),
(648, 313, 'ka', 'ყველის ჩხირები', '.', '2023-12-09 21:55:19', '2023-12-09 21:55:19'),
(649, 314, 'en', 'ნაყინი', '.', '2023-12-09 21:55:40', '2023-12-09 21:55:40'),
(650, 314, 'ka', 'ნაყინი', '.', '2023-12-09 21:55:40', '2023-12-09 21:55:40'),
(651, 315, 'en', 'ხილის ასორტი', '.', '2023-12-09 21:55:49', '2023-12-09 21:55:49'),
(652, 315, 'ka', 'ხილის ასორტი', '.', '2023-12-09 21:55:49', '2023-12-09 21:55:49'),
(653, 316, 'en', 'კარბონარა', '.', '2023-12-09 21:56:16', '2023-12-09 21:56:16'),
(654, 316, 'ka', 'კარბონარა', '.', '2023-12-09 21:56:16', '2023-12-09 21:56:16'),
(655, 317, 'en', 'ბოლონეზე', '.', '2023-12-09 21:56:24', '2023-12-09 21:56:24'),
(656, 317, 'ka', 'ბოლონეზე', '.', '2023-12-09 21:56:24', '2023-12-09 21:56:24'),
(657, 318, 'en', 'კრევეტებით', '.', '2023-12-09 21:56:34', '2023-12-09 21:56:34'),
(658, 318, 'ka', 'კრევეტებით', '.', '2023-12-09 21:56:34', '2023-12-09 21:56:34'),
(659, 319, 'en', 'ტყემალი', '.', '2023-12-09 21:57:06', '2023-12-09 21:57:06'),
(660, 319, 'ka', 'ტყემალი', '.', '2023-12-09 21:57:06', '2023-12-09 21:57:06'),
(661, 320, 'en', 'საწებელი', '.', '2023-12-09 21:57:14', '2023-12-09 21:57:14'),
(662, 320, 'ka', 'საწებელი', '.', '2023-12-09 21:57:14', '2023-12-09 21:57:14'),
(663, 321, 'en', 'ყველის სოუსი', '.', '2023-12-09 21:57:23', '2023-12-09 21:57:23'),
(664, 321, 'ka', 'ყველის სოუსი', '.', '2023-12-09 21:57:23', '2023-12-09 21:57:23'),
(665, 322, 'en', 'ორაგულის სტეიკი', '.', '2023-12-09 21:57:45', '2023-12-09 21:57:45'),
(666, 322, 'ka', 'ორაგულის სტეიკი', '.', '2023-12-09 21:57:45', '2023-12-09 21:57:45'),
(667, 323, 'en', 'საქონლის სტეიკი', '.', '2023-12-09 21:57:54', '2023-12-09 21:57:54'),
(668, 323, 'ka', 'საქონლის სტეიკი', '.', '2023-12-09 21:57:54', '2023-12-09 21:57:54'),
(669, 324, 'en', 'ქათმის სტეიკი ქამა სოკოს სოუსით', '.', '2023-12-09 21:58:03', '2023-12-09 21:58:03'),
(670, 324, 'ka', 'ქათმის სტეიკი ქამა სოკოს სოუსით', '.', '2023-12-09 21:58:03', '2023-12-09 21:58:03'),
(671, 325, 'en', 'ღორის სტეიკი', '.', '2023-12-09 21:58:12', '2023-12-09 21:58:12'),
(672, 325, 'ka', 'ღორის სტეიკი', '.', '2023-12-09 21:58:12', '2023-12-09 21:58:12'),
(673, 326, 'en', 'ბოსტნეული გრილზე', '.', '2023-12-09 21:58:21', '2023-12-09 21:58:21'),
(674, 326, 'ka', 'ბოსტნეული გრილზე', '.', '2023-12-09 21:58:21', '2023-12-09 21:58:21'),
(675, 327, 'en', 'გოგრის კრემუპი', '.', '2023-12-09 21:58:51', '2023-12-09 21:58:51'),
(676, 327, 'ka', 'გოგრის კრემუპი', '.', '2023-12-09 21:58:51', '2023-12-09 21:58:51'),
(677, 328, 'en', 'სოკოს კრემსუპი', '.', '2023-12-09 21:59:01', '2023-12-09 21:59:01'),
(678, 328, 'ka', 'სოკოს კრემსუპი', '.', '2023-12-09 21:59:01', '2023-12-09 21:59:01'),
(679, 329, 'en', 'ბროკოლის კრემსუპი', '.', '2023-12-09 21:59:11', '2023-12-09 21:59:11'),
(680, 329, 'ka', 'ბროკოლის კრემსუპი', '.', '2023-12-09 21:59:11', '2023-12-09 21:59:11'),
(681, 330, 'en', 'სამეფო ხაჭაპური', '.', '2023-12-09 21:59:34', '2023-12-09 21:59:34'),
(682, 330, 'ka', 'სამეფო ხაჭაპური', '.', '2023-12-09 21:59:34', '2023-12-09 21:59:34'),
(683, 331, 'en', 'იმერული ხაჭაპური', '.', '2023-12-09 21:59:43', '2023-12-09 21:59:43'),
(684, 331, 'ka', 'იმერული ხაჭაპური', '.', '2023-12-09 21:59:43', '2023-12-09 21:59:43'),
(685, 332, 'en', 'პიცა პეპერონი', '.', '2023-12-09 21:59:52', '2023-12-09 21:59:52'),
(686, 332, 'ka', 'პიცა პეპერონი', '.', '2023-12-09 21:59:52', '2023-12-09 21:59:52'),
(687, 333, 'en', 'პიცა მარგარიტა', '.', '2023-12-09 22:00:04', '2023-12-09 22:00:04'),
(688, 333, 'ka', 'პიცა მარგარიტა', '.', '2023-12-09 22:00:04', '2023-12-09 22:00:04'),
(689, 334, 'en', 'კომბინირებული პიცა', '.', '2023-12-09 22:00:14', '2023-12-09 22:00:14'),
(690, 334, 'ka', 'კომბინირებული პიცა', '.', '2023-12-09 22:00:14', '2023-12-09 22:00:14'),
(691, 335, 'en', 'პიცა 4 ყველით', '.', '2023-12-09 22:00:23', '2023-12-09 22:00:23'),
(692, 335, 'ka', 'პიცა 4 ყველით', '.', '2023-12-09 22:00:23', '2023-12-09 22:00:23'),
(693, 336, 'en', 'ვეგეტარიანული პიცა', '.', '2023-12-09 22:00:32', '2023-12-09 22:00:32'),
(694, 336, 'ka', 'ვეგეტარიანული პიცა', '.', '2023-12-09 22:00:32', '2023-12-09 22:00:32'),
(695, 337, 'en', 'პურის ასორტი', '.', '2023-12-09 22:00:40', '2023-12-09 22:00:40'),
(696, 337, 'ka', 'პურის ასორტი', '.', '2023-12-09 22:00:40', '2023-12-09 22:00:40'),
(697, 338, 'en', 'მჭადი', '.', '2023-12-09 22:00:49', '2023-12-09 22:00:49'),
(698, 338, 'ka', 'მჭადი', '.', '2023-12-09 22:00:49', '2023-12-09 22:00:49'),
(699, 339, 'en', 'მიწის თხილი', '.', '2023-12-09 22:01:09', '2023-12-09 22:01:09'),
(700, 339, 'ka', 'მიწის თხილი', '.', '2023-12-09 22:01:09', '2023-12-09 22:01:09'),
(701, 340, 'en', 'ფისტაშკა', '.', '2023-12-09 22:02:24', '2023-12-09 22:02:24'),
(702, 340, 'ka', 'ფისტაშკა', '.', '2023-12-09 22:02:24', '2023-12-09 22:02:24'),
(705, 342, 'en', 'თხილის მიქსი', '.', '2023-12-09 22:02:37', '2023-12-09 22:02:37'),
(706, 342, 'ka', 'თხილის მიქსი', '.', '2023-12-09 22:02:37', '2023-12-09 22:02:37'),
(707, 343, 'en', 'ფრეში', '.', '2023-12-10 20:29:36', '2023-12-10 20:29:36'),
(708, 343, 'ka', 'ფრეში', '.', '2023-12-10 20:29:36', '2023-12-10 20:29:36'),
(709, 344, 'en', 'ჩიფსი', '.', '2023-12-10 21:00:53', '2023-12-10 21:00:53'),
(710, 344, 'ka', 'ჩიფსი', '.', '2023-12-10 21:00:53', '2023-12-10 21:00:53'),
(711, 345, 'en', 'Cuba libre', '.', '2023-12-13 07:55:08', '2023-12-13 07:55:08'),
(712, 345, 'ka', 'Cuba libre', '.', '2023-12-13 07:55:08', '2023-12-13 07:55:08'),
(713, 346, 'en', 'Whiskey cola', '.', '2023-12-13 07:57:15', '2023-12-13 07:57:15'),
(714, 346, 'ka', 'Whiskey cola', '.', '2023-12-13 07:57:16', '2023-12-13 07:57:16'),
(715, 347, 'en', 'Vodka redbull', '.', '2023-12-13 07:57:52', '2023-12-13 07:57:52'),
(716, 347, 'ka', 'Vodka redbull', '.', '2023-12-13 07:57:52', '2023-12-13 07:57:52'),
(717, 348, 'en', 'Exodus Lady', '.', '2023-12-13 08:00:27', '2023-12-13 08:00:27'),
(718, 348, 'ka', 'Exodus Lady', '.', '2023-12-13 08:00:27', '2023-12-13 08:00:27'),
(719, 349, 'en', 'Spaghetti shrimps', 'tomato sauce, spaghetti, white wine, shrimps, garlic, parmesan, arugula, artichoke', '2023-12-13 13:30:04', '2023-12-13 13:30:04'),
(720, 349, 'ka', 'Spaghetti shrimps', 'tomato sauce, spaghetti, white wine, shrimps, garlic, parmesan, arugula, artichoke', '2023-12-13 13:30:04', '2023-12-13 13:30:04'),
(723, 351, 'en', 'Aglio Olio', 'Spaghetti, garlic, green pepper, parsley, parmesan', '2023-12-13 13:33:20', '2023-12-13 13:33:20'),
(724, 351, 'ka', 'Aglio Olio', 'Spaghetti, garlic, green pepper, parsley, parmesan', '2023-12-13 13:33:20', '2023-12-13 13:33:20'),
(725, 352, 'en', 'Spaghetti tomato sauce', 'tomato sauce, spaghetti, garlic, parmesan, arugula, artichoke', '2023-12-13 13:34:16', '2023-12-13 13:34:16'),
(726, 352, 'ka', 'Spaghetti tomato sauce', 'tomato sauce, spaghetti, garlic, parmesan, arugula, artichoke', '2023-12-13 13:34:16', '2023-12-13 13:34:16'),
(727, 353, 'en', 'Pasta bolognese', 'Lamb and beef meat, tomato sauce, spaghetti, garlic, parmesan, arugula, artichoke', '2023-12-13 13:35:02', '2023-12-13 13:35:02'),
(728, 353, 'ka', 'Pasta bolognese', 'Lamb and beef meat, tomato sauce, spaghetti, garlic, parmesan, arugula, artichoke', '2023-12-13 13:35:02', '2023-12-13 13:35:02'),
(729, 354, 'ka', 'Lava rolls', '.', '2024-01-18 17:44:14', '2024-01-18 17:45:31'),
(730, 354, 'en', 'Lava rolls', '.', '2024-01-18 17:44:14', '2024-01-18 17:45:31'),
(731, 355, 'ka', 'Taru crispy', '.', '2024-01-18 17:49:06', '2024-01-18 17:49:06'),
(732, 355, 'en', 'Taru crispy', '.', '2024-01-18 17:49:06', '2024-01-18 17:49:06'),
(733, 356, 'ka', 'california', '.', '2024-01-18 17:50:08', '2024-01-18 17:50:08'),
(734, 356, 'en', 'california', '.', '2024-01-18 17:50:08', '2024-01-18 17:50:08'),
(735, 357, 'ka', 'philadelphia', 'cheese philadelphia, salmon, cucumber', '2024-01-18 17:51:15', '2024-01-18 17:51:15'),
(736, 357, 'en', 'philadelphia', 'cheese philadelphia, salmon, cucumber', '2024-01-18 17:51:15', '2024-01-18 17:51:15'),
(737, 358, 'ka', 'ამერიკანო', '.', '2024-02-22 14:19:02', '2024-02-22 14:19:02'),
(738, 358, 'en', 'Americano', '.', '2024-02-22 14:19:02', '2024-02-22 14:19:02'),
(739, 359, 'ka', 'კაპუჩინო', '.', '2024-02-22 14:19:24', '2024-02-22 14:19:24'),
(740, 359, 'en', 'Capuchino', '.', '2024-02-22 14:19:24', '2024-02-22 14:19:24'),
(741, 360, 'ka', 'ქათმის სალათი', '.', '2024-02-22 14:26:11', '2024-02-22 14:26:11'),
(742, 360, 'en', 'Chiken Salad', '.', '2024-02-22 14:26:11', '2024-02-22 14:26:11'),
(743, 361, 'ka', 'ცეზარი', '.', '2024-02-22 14:26:29', '2024-02-22 14:26:29'),
(744, 361, 'en', 'Cesar', '.', '2024-02-22 14:26:29', '2024-02-22 14:26:29'),
(745, 362, 'ka', 'კარტოფილი ფრი', 'კარტოფილი ფრი, მარილი, კეტჩუპი&nbsp;<br>', '2024-02-22 21:20:22', '2024-02-24 14:32:21'),
(746, 362, 'en', 'FRENCH FRIES', '.French fries, salt, ketchup', '2024-02-22 21:20:22', '2024-02-24 14:32:21'),
(747, 363, 'ka', 'კარტოფილი მექსიკურად', 'კარტოფილი, ორეგანო, მარილი, დაღერღილი წიწაკა, მაიონეზი, სოიოს სოუსი, პაპრიკა&nbsp;', '2024-02-22 21:20:35', '2024-02-24 14:32:38'),
(748, 363, 'en', 'MEXICAN POTATO', '.Potatoes, oregano, salt, chopped pepper, mayonnaise, soy sauce, paprika', '2024-02-22 21:20:35', '2024-02-24 14:32:38'),
(749, 364, 'ka', 'სოკოს ჩიფსები', 'ხის სოკო, შავი ბალზამიკო, მარილი, ბროწეული, მწვანილი', '2024-02-22 21:20:48', '2024-02-24 14:32:09'),
(750, 364, 'en', 'Mushroom chips', 'Wood mushrooms, black balsamic vinegar, salt, pomegranate, herbs', '2024-02-22 21:20:48', '2024-02-24 15:06:20'),
(751, 365, 'ka', 'კარტოფილი გლეხურად', 'კარტოფილი, მარილი, ქათმის კუბიკი, საქონლის კუბიკი, სოკოს კუბიკი, მწვანილი, ნიორი, ბროწეული, ზეთი&nbsp;', '2024-02-22 21:21:04', '2024-02-24 14:33:02'),
(752, 365, 'en', 'Potato Glekhurad', '.Potatoes, salt, chicken cube, beef cube, mushroom cube, herbs, garlic, pomegranate, oil', '2024-02-22 21:21:04', '2024-02-24 15:06:46'),
(753, 366, 'ka', 'ბრინჯი ბოსტნეულით', 'ბრინჯი, ბოსტნეულის მიქსი, მწვანილი, მარილი, შავი პილპილი, პომინდორი ჩერი, გლასე, ზეთი&nbsp;', '2024-02-22 21:21:18', '2024-02-24 14:33:18'),
(754, 366, 'en', 'RICE WITH VEGETABLES', '.Rice, mixed vegetables, herbs, salt, black pepper, cherry tomatoes, glace, oil', '2024-02-22 21:21:18', '2024-02-24 14:33:18'),
(755, 367, 'ka', 'ლობიოს კროკეტები', 'ლობიო, კეკალი,, დაფნა, ნიორი, ხახვი, კარაქი, ქონდარი, მარილი, მწვანილი, დაღერღილი წიწაკა, ზეთი, საფანელი, კვერცხი, ფქვილი, ჯონჯოლი, კახური ზეთი, მაიონეზი&nbsp;', '2024-02-22 21:21:29', '2024-02-24 14:33:35'),
(756, 367, 'en', 'Bean croquettes', '.Beans, chickpeas, bay leaf, garlic, onion, butter, savory, salt, herbs, chopped pepper, oil, spinach, egg, flour, Djonjoli ,Kakhetian oil, mayonnaise', '2024-02-22 21:21:29', '2024-02-24 15:07:07'),
(757, 368, 'ka', 'ქათმის კროკეტები', 'ქათმის ფილე, დაღერღილი წიწაკა, მარილი, შავი წიწაკა, კვერცხი, საფანელი, ფქვილი, იმერული ყველი, სულგუნი, ნაღები, ქართული თხილი&nbsp;', '2024-02-22 21:21:44', '2024-02-24 14:33:55'),
(758, 368, 'en', 'Chicken croquettes', '.Chicken fillet, chopped pepper, salt, black pepper, egg, breadcrumbs, flour, Imer cheese, sulgun, cream, Georgian nuts', '2024-02-22 21:21:44', '2024-02-24 15:07:21'),
(759, 369, 'ka', 'ქათმის ჩხირები', 'ქათმის ჩხირები, ტკბილ-ცხარე სოუსი,კარტოფილი ფრი, მარილი&nbsp;', '2024-02-22 21:21:56', '2024-02-24 14:34:21'),
(760, 369, 'en', 'Chicken sticks', '.Chicken sticks, sweet-spicy sauce, french fries, salt', '2024-02-22 21:21:56', '2024-02-24 15:07:35'),
(761, 370, 'ka', 'მოხალული ქართული თხილი', '.', '2024-02-22 21:22:08', '2024-02-22 21:22:08'),
(762, 370, 'en', 'Roasted Georgian nuts', '.', '2024-02-22 21:22:08', '2024-02-24 15:07:51'),
(763, 371, 'ka', 'ფისტაჩკა პორცია', '.', '2024-02-22 21:22:34', '2024-02-22 21:22:34'),
(764, 371, 'en', 'A portion of pistachios', '.', '2024-02-22 21:22:34', '2024-02-24 15:08:05'),
(765, 372, 'ka', 'ზეთისხილი შავი პორცია', '.', '2024-02-22 21:22:59', '2024-02-22 21:22:59'),
(766, 372, 'en', 'BLACK OLIVES', '.', '2024-02-22 21:22:59', '2024-02-23 11:35:39'),
(767, 373, 'ka', 'ზეთისხილი მწვანე პორცია', '.', '2024-02-22 21:23:10', '2024-02-22 21:23:10'),
(768, 373, 'en', 'GREEN OLIVES', '.', '2024-02-22 21:23:10', '2024-02-23 11:35:59'),
(769, 374, 'ka', 'მწნილის ასორტი', '.ჯონჯოლი, კიტრის მწნილი, პომინდვრის მწნილი, წითელი კომბოსტოს მწნილი, თეთრი ფხლის მწნილი, წიწაკის მწნილი, ნივრის მწნილი', '2024-02-22 21:23:33', '2024-02-24 14:35:15'),
(770, 374, 'en', 'Assorted pickles', '.Jonjoli, pickled cucumber, pickled tomato, pickled red cabbage, pickled beetroot, pickled pepper, pickled garlic', '2024-02-22 21:23:33', '2024-02-24 15:08:38'),
(771, 375, 'ka', 'ბაჟე', 'ნიგოზი, ხმელი ქინძი, მარილი, ყვითელი ყვავილი, ზეითუნის ზეთი', '2024-02-22 21:23:49', '2024-02-24 14:36:32'),
(772, 375, 'en', 'Baje', '.Walnut, dried coriander, salt, yellow flower, olive oil', '2024-02-22 21:23:49', '2024-02-24 14:36:32'),
(773, 376, 'ka', 'ბადრიჯანი ნიგვზით', '.ბადრიჯანი, ნიგოზი, ზეთი, მარილი, ხმელი ქინძი, ნიორი, ძმარი, დაღერღილი წიწაკა', '2024-02-22 21:23:59', '2024-02-24 14:38:07'),
(774, 376, 'en', 'Eggplant with walnuts', '.Eggplant, walnut, oil, salt. Dried coriander, garlic, vinegar, chopped pepper', '2024-02-22 21:23:59', '2024-02-24 14:38:32'),
(775, 377, 'ka', 'კ/პ სალათი', '.კიტრი, პომიდორი, მწვანილი, ხახვი, რეჰანი, მწვანე მწარე წიწაკა, მარილი ზეთი', '2024-02-22 21:24:08', '2024-02-24 14:39:36'),
(776, 377, 'en', 'Cucumber tomato salad', '.Cucumber, tomato, herbs, onion, basil, green bitter pepper, salt, oil', '2024-02-22 21:24:08', '2024-02-24 14:39:36'),
(777, 378, 'ka', 'კ/პ ნიგვზით', '.კიტრი, პომინდორი, მწვანილი, ხახვი, რეჰანი, მარილი, მწვანე მწარე წიწაკა, ნიგოზი, ძმარი', '2024-02-22 21:24:19', '2024-02-24 14:40:23'),
(778, 378, 'en', 'Cucumber tomato salad with walnuts', '.Cucumber, tomato, herbs, onion, basil, salt, green pepper, walnut, vinegar', '2024-02-22 21:24:19', '2024-02-24 14:40:23'),
(779, 379, 'ka', 'ქათმის სალათი', '.ქათმის ფილე, სალათის ფოთოლი, სტაფილო, კიტრი, მარილი, მწვანილი, ზეთი, სუმახი, გლასე', '2024-02-22 21:25:27', '2024-02-24 14:41:11'),
(780, 379, 'en', 'CHICKEN SALAD', '.Chicken fillet, lettuce, carrot, cucumber, salt, herbs, oil, sumach, glace', '2024-02-22 21:25:27', '2024-02-24 14:41:11'),
(781, 380, 'ka', 'ბერძნული სალათი', '.კიტრი, პომიდორი, ბულგარული წითელი, ბულგარული მწვანე, ზეთისხილი, შავი ზეთისხილი, მწვანე ლიმონი, ზეითუნის ზეთი, ფეტა ყველი ,ორეგანო', '2024-02-22 21:25:36', '2024-02-24 14:42:09'),
(782, 380, 'en', 'GREEK SALAD', '.Cucumber, tomato, Bulgarian red, Bulgarian green, olives, black olives, green lemon, olive oil, feta cheese, oregano', '2024-02-22 21:25:36', '2024-02-24 14:42:09'),
(783, 381, 'ka', 'მწვანე სალათი', '.სალათის ფოთოლი, კიტრი, მწვანე ბულგარული, მწვანე ზეთისხილი, კაპერს,ი ნუშის ფანტელი, ზეითუნის ზეთი, ლიმონი', '2024-02-22 21:25:48', '2024-02-24 14:42:58'),
(784, 381, 'en', 'GREEN SALAD', '.Lettuce, cucumber, green bulgar, green olives, capers, almond flakes, olive oil, lemon', '2024-02-22 21:25:48', '2024-02-24 14:42:58'),
(785, 382, 'ka', 'ცეზარი ქათმით', '.სალათის ფოთოლი, ქათმის ფილე, ზეთი, კვერცხი, პარმეზანი, დიჟონის მარცვლოვანი მდოგვი, ლიმონი, ნიორი, ანჩოუს,ი პური, ბაგეტი, ორეგანო, ზეითუნის ზეთი, შავი პილპილ,ი მარილი, სოიოს სოუსი, უოლჩესტერ სოუსი', '2024-02-22 21:26:01', '2024-02-24 14:44:10'),
(786, 382, 'en', 'CAESAR SALAD WITH CHICKEN', '.Lettuce, chicken fillet, oil, egg, Parmesan, Dijon grain mustard, lemon, garlic, anchovy, bread, baguette, oregano, olive oil, black pepper, salt, soy sauce, walchester sauce', '2024-02-22 21:26:01', '2024-02-24 14:44:10'),
(787, 383, 'ka', 'ცეზარი ორაგულით', '.სალათის ფოთოლი, ორაგული, ზეთი, კვერცხი, პარმეზანი, დიჟონის მარცვლოვანი მდოგვი, ლიმონი, ნიორი, ანჩოუს,ი პური, ბაგეტი, ორეგანო, ზეითუნის ზეთი, შავი პილპილ,ი მარილი, სოიოს სოუსი', '2024-02-22 21:26:11', '2024-02-24 14:45:51'),
(788, 383, 'en', 'CAESAR  SALAD WITH SALMON', '.Lettuce,&nbsp;salmon, oil, egg, Parmesan, Dijon grain mustard, lemon, garlic, anchovy, bread, baguette, oregano, olive oil, black pepper, salt, soy sauce', '2024-02-22 21:26:11', '2024-02-24 14:45:51'),
(789, 384, 'ka', 'ცეზარი კრევეტებით', '..სალათის ფოთოლი, კრევეტები, ზეთი, კვერცხი, პარმეზანი, დიჟონის მარცვლოვანი მდოგვი, ლიმონი, ნიორი, ანჩოუს,ი პური, ბაგეტი, ორეგანო, ზეითუნის ზეთი, შავი პილპილ,ი მარილი, სოიოს სოუსი', '2024-02-22 21:26:20', '2024-02-24 14:47:15'),
(790, 384, 'en', 'CAESAR SALAD WITH SHRIMPS', '.Lettuce, shrimps, oil, egg, Parmesan, Dijon grain mustard, lemon, garlic, anchovies, bread, baguette, oregano, olive oil, black pepper, salt, soy sauce', '2024-02-22 21:26:20', '2024-02-24 14:47:15'),
(791, 385, 'ka', 'სამეფო კრევეტების სალათი', '.ჯავშნიანი კრევეტი, პომიდორი ჩერი, სალათის ფოთოლი, ლიმონი, ზეთისხილი მწვანე, ზეთისხილი შავი, გლასე ,ფეტა ყველი, ზეთი', '2024-02-22 21:26:35', '2024-02-24 14:49:00'),
(792, 385, 'en', 'ROYAL SHRIMP SALAD', '.Armored shrimp, cherry tomatoes, lettuce, lemon, green olives, black olives, glace, feta cheese, oil', '2024-02-22 21:26:35', '2024-02-24 14:49:00');
INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(793, 386, 'ka', 'ყველის ასორტი ქართული', '.იმერული ყველი, სულგუნი, შებოლილი სულგუნი, გუდის ყველი, ქართული ნიგოზი, ჩურჩხელა თხილიანი, ყურძენი, თაფლი', '2024-02-22 21:26:48', '2024-02-24 14:50:00'),
(794, 386, 'en', 'GEORGIAN CHEESE PLATTER', '.Imerian cheese, sulgun, smoked sulgun, Gudi cheese, Georgian walnut, Churchkhela nuts, grapes, honey', '2024-02-22 21:26:48', '2024-02-24 14:50:00'),
(795, 387, 'ka', 'ყველის ასორტი ევროპული', '.ყველი ემენტალი, ყველი ქამემბერი, გაუდა, ობიანი (დორბლუ), თაფლი, ნიგოზი, პიტნა, თხის ყველი, წითელი ყურძენი', '2024-02-22 21:26:58', '2024-02-24 14:50:48'),
(796, 387, 'en', 'EUROPEAN CHEESE PLATTER', '.Emmental cheese, Camembert cheese, Gouda, Obiani (Dorblu), honey, walnuts, mint, goat cheese, red grapes', '2024-02-22 21:26:58', '2024-02-24 14:50:48'),
(797, 388, 'ka', 'სულგუნი', '.', '2024-02-22 21:27:08', '2024-02-22 21:27:08'),
(798, 388, 'en', 'SULGUNI CHEESE', '.', '2024-02-22 21:27:08', '2024-02-23 11:42:41'),
(799, 389, 'ka', 'იმერული', '.', '2024-02-22 21:27:18', '2024-02-22 21:27:18'),
(800, 389, 'en', 'IMERULI CHEESE', '.', '2024-02-22 21:27:18', '2024-02-23 11:42:57'),
(801, 390, 'ka', 'შებოლილი სულგუნი', '.', '2024-02-22 21:27:31', '2024-02-22 21:27:31'),
(802, 390, 'en', 'SULGUNI CHEESE SMOKED', '.', '2024-02-22 21:27:31', '2024-02-23 11:43:19'),
(803, 391, 'ka', 'საფირმო ჩაიხანა აჭარული დაფა', '.ხბოს ხორცი, ხახვი, ყვითელი ყვავილი, კარაქი, სინორი, ნიგოზი, ნადუღი, ნიორი, კაიმაღი, მჭადის ფქვილი, მარილი, კიტრის მწნილი, იაღი, არაყი, კარტოფილი, ყველი, დაბწნილი, ყურუთი', '2024-02-22 21:27:42', '2024-02-24 14:56:39'),
(804, 391, 'en', 'SIGNATURE CHAIHANA ADJARULI PLATTER', '.Veal, onion, yellow flower, butter, sinoრი, walnut, broth, garlic, kaimaghi, mchadi flour, salt, pickled cucumber, yagi, vodka, potatoes, grated cheese, kuruti', '2024-02-22 21:27:42', '2024-02-24 14:56:39'),
(805, 392, 'ka', 'ქათმის სტეიკი პესცოს სოუსით', '.ქათმის ფილე. პესტოს სოუსი. ნიორი. კარტოფილი ფრი. ზეთი. გლასე. მარილი. სალათის ფოთოლი. კიტრი. პომიდორი', '2024-02-22 21:27:55', '2024-02-24 14:58:57'),
(806, 392, 'en', 'CHICKEN STEAK WITH PESTO SAUCE', '.Chicken fillet. Pesto sauce. garlic. French fries. oil. Glass. salt. lettuce. Cucumber. tomato', '2024-02-22 21:27:55', '2024-02-24 14:58:57'),
(807, 393, 'ka', 'ღორის სუკი ფრანგულად', '.ღორის შეიკა, ყველი გაუდა, ზეთი, კარტოფილი ფრი, ბალზამიკო, კონიაკი, ნაღები', '2024-02-22 21:28:07', '2024-02-24 15:00:30'),
(808, 393, 'en', 'Pork souk in French', '.Pork shank, Gouda cheese, oil, French fries, balsamic vinegar, brandy, cream', '2024-02-22 21:28:07', '2024-02-24 15:00:30'),
(809, 394, 'ka', 'წიწილა მაყვლის სოუსით', '.წიწილა, მაყვალი, წითელი ტყემალი, დაღერღილი წიწაკა, ხმელი ქინძი, მარილი ,ზეთი, წითელი ღვინო', '2024-02-22 21:28:18', '2024-02-24 15:02:14'),
(810, 394, 'en', 'Chicken with blackberry sauce', '.chickpeas, blackberries, red tkemali, chopped pepper, dried coriander, salt, oil, red wine', '2024-02-22 21:28:18', '2024-02-24 15:02:47'),
(811, 395, 'ka', 'წიწილა ტაბაკა', '.', '2024-02-22 21:28:31', '2024-02-22 21:28:31'),
(812, 395, 'en', 'Chicken Tabaka', '.', '2024-02-22 21:28:31', '2024-02-24 15:04:07'),
(813, 396, 'ka', 'ჩქმერული', '.წიწილა, ნიორი, ნაღები, ზეთი, დაღერღილი წიწაკ,ა შავი პილპილი, მარილი', '2024-02-22 21:28:40', '2024-02-24 15:05:41'),
(814, 396, 'en', 'Shkmeruli', '.Chickpeas, garlic, cream, oil, chopped pepper, black pepper, salt', '2024-02-22 21:28:40', '2024-02-24 15:05:41'),
(815, 397, 'ka', 'ოჯახური ღორის', '.ღორის შეიკა, კარტოფილ,ი დაფნა, ხახვი, წითელი დაღერღილი წიწაკა, ნიორი, მწვანილი ,ზეთ,ი უცხო სუნელ,ი მარილი', '2024-02-22 21:28:50', '2024-02-24 15:10:45'),
(816, 397, 'en', 'Potato with pork', '.Pork shank, potatoes, bay leaf, onion, red pepper, garlic, herbs, oil, foreign spices, salt', '2024-02-22 21:28:50', '2024-02-24 15:10:45'),
(817, 398, 'ka', 'ოჯახური ხბოს', 'ხბოს ხორცი, კარტოფილ,ი დაფნა, ხახვი, წითელი დაღერღილი წიწაკა, ნიორი, მწვანილი ,ზეთ,ი უცხო სუნელ,ი მარილი', '2024-02-22 21:29:00', '2024-02-24 15:12:49'),
(818, 398, 'en', 'Potato with .Veal', '.Veal, potatoes, bay leaf, onion, red pepper, garlic, herbs, oil, foreign spices, salt', '2024-02-22 21:29:00', '2024-02-24 15:12:49'),
(819, 399, 'ka', 'ოჯახური სოკოს', '.სოკო, კარტოფილი, დაფნა, ხახვი, წითელი დაღერღილი წიწაკა, ნიორი, მწვანილი ,ზეთ,ი უცხო სუნელ,ი მარილი', '2024-02-22 21:29:14', '2024-02-24 15:14:05'),
(820, 399, 'en', 'Potato with Mushroom', '.Mushrooms, potatoes, bay leaves, onions, red pepper, garlic, herbs, oil, foreign spices, salt', '2024-02-22 21:29:14', '2024-02-24 15:14:05'),
(821, 400, 'ka', 'კუპატის ჩხირები', '.კუპატი, კვერცხი, ფქვილი, პაპრიკა, ნიორი, მარილი, პანკოს საფანელი, ბროწეულის სოუსი, ბროწეული, მწვანილი', '2024-02-22 21:29:27', '2024-02-24 15:16:01'),
(822, 400, 'en', 'Kupati sticks', '.Kupati, egg, flour, paprika, garlic, salt, panko coating, pomegranate sauce, pomegranate, herbs', '2024-02-22 21:29:27', '2024-02-24 15:16:01'),
(823, 401, 'ka', 'ხბოს ნეკნები აჯიკით', '.ხბოს ნეკნები, მშრალი აჯიკა, პომინდორი, ხახვი, ნიორი, მწვანილი, ზეთი, კარაქი', '2024-02-22 21:29:47', '2024-02-24 15:17:24'),
(824, 401, 'en', 'CALF RIBS WITH ADJIKA', '.Veal ribs, dry adjika, tomato, onion, garlic, herbs, oil, butter', '2024-02-22 21:29:47', '2024-02-24 15:17:24'),
(825, 402, 'ka', 'ლობიო ქოთანში', '.ლობიო კაკალი დაფნა ნიორი ხახვი კარაქი ქონდარი მარილი მწვანილი დაღერღილი წიწაკა ზეთი', '2024-02-22 21:30:08', '2024-02-24 15:14:09'),
(826, 402, 'en', 'BEANS IN A POT', '.Beans, bay leaf, garlic, onion, butter, Svanuri salt, herbs, chopped pepper, oil', '2024-02-22 21:30:08', '2024-02-24 15:14:09'),
(827, 403, 'ka', 'პილმენი ქოთანში', '.პილმენი სულგუნი ფქვილი მარილი შავი წიწაკა მწვანილი ნიორი კარაქი არაჟანი', '2024-02-22 21:30:21', '2024-02-24 15:17:07'),
(828, 403, 'en', 'Pillman in a pot', '.Pilmen, sulgun flour, salt, black pepper, herbs, garlic, butter, sour cream', '2024-02-22 21:30:21', '2024-02-24 15:17:07'),
(829, 404, 'ka', 'პილმენი ქოთანში გამომცხვ ყველით', '.', '2024-02-22 21:30:38', '2024-02-22 21:30:38'),
(830, 404, 'en', 'პილმენი ქოთანში გამომცხვ ყველით', '.', '2024-02-22 21:30:38', '2024-02-22 21:30:38'),
(831, 405, 'ka', 'სოკო კეცე', '.', '2024-02-22 21:30:50', '2024-02-22 21:30:50'),
(832, 405, 'en', 'სოკო კეცე', '.', '2024-02-22 21:30:50', '2024-02-22 21:30:50'),
(833, 406, 'ka', 'სოკო კეცზე სულგუნით', '.', '2024-02-22 21:31:03', '2024-02-22 21:31:03'),
(834, 406, 'en', 'სოკო კეცზე სულგუნით', '.', '2024-02-22 21:31:03', '2024-02-22 21:31:03'),
(835, 407, 'ka', 'კარბონარა', '.', '2024-02-22 21:32:06', '2024-02-22 21:32:06'),
(836, 407, 'en', 'CARBONARA', '.', '2024-02-22 21:32:06', '2024-02-23 11:52:12'),
(837, 408, 'ka', 'კვადროფორმაჯო', '.', '2024-02-22 21:32:28', '2024-02-22 21:32:28'),
(838, 408, 'en', 'კვადროფორმაჯო', '.', '2024-02-22 21:32:28', '2024-02-22 21:32:28'),
(839, 409, 'ka', 'პენე ალ არაბიტა', '.', '2024-02-22 21:32:41', '2024-02-22 21:32:41'),
(840, 409, 'en', 'პენე ალ არაბიტა', '.', '2024-02-22 21:32:41', '2024-02-22 21:32:41'),
(841, 410, 'ka', 'კრევეტების პასტა', '.', '2024-02-22 21:32:54', '2024-02-22 21:32:54'),
(842, 410, 'en', 'SHRIMP PASTA', '.', '2024-02-22 21:32:54', '2024-02-23 11:52:43'),
(843, 411, 'ka', 'მიდიების პასტა', '.', '2024-02-22 21:33:09', '2024-02-22 21:33:09'),
(844, 411, 'en', 'მიდიების პასტა', '.', '2024-02-22 21:33:09', '2024-02-22 21:33:09'),
(845, 412, 'ka', 'ქლაბ სენდვიჩი', '.', '2024-02-22 21:33:22', '2024-02-22 21:33:22'),
(846, 412, 'en', 'CLUB SANDWICH', '.', '2024-02-22 21:33:22', '2024-02-23 11:53:01'),
(847, 413, 'ka', 'ქათმის სენდვიჩი', '.', '2024-02-22 21:33:36', '2024-02-22 21:33:36'),
(848, 413, 'en', 'CHICKEN SANDWICH', '.', '2024-02-22 21:33:36', '2024-02-23 11:50:45'),
(849, 414, 'ka', 'სენდვიჩი ლორით და ყველით', '.', '2024-02-22 21:33:49', '2024-02-22 21:33:49'),
(850, 414, 'en', 'SANDWICH WITH HAM AND CHEESE', '.', '2024-02-22 21:33:49', '2024-02-23 11:53:25'),
(851, 415, 'ka', 'კრევეტები ბრინჯის გარნირით', '.', '2024-02-22 21:34:05', '2024-02-22 21:34:05'),
(852, 415, 'en', 'კრევეტები ბრინჯის გარნირით', '.', '2024-02-22 21:34:05', '2024-02-22 21:34:05'),
(853, 416, 'ka', 'მიდიები თეთრი ღვინის სოუსით', '.', '2024-02-22 21:34:24', '2024-02-22 21:34:24'),
(854, 416, 'en', 'მიდიები თეთრი ღვინის სოუსით', '.', '2024-02-22 21:34:24', '2024-02-22 21:34:24'),
(855, 417, 'ka', 'კალმარი ტკბილცხარე სოუსით', '.', '2024-02-22 21:34:32', '2024-02-22 21:34:32'),
(856, 417, 'en', 'კალმარი ტკბილცხარე სოუსით', '.', '2024-02-22 21:34:32', '2024-02-22 21:34:32'),
(857, 418, 'ka', 'ორაგულის სტეიკი ხიზილალას სოუსით', '.', '2024-02-22 21:34:44', '2024-02-22 21:34:44'),
(858, 418, 'en', 'SALMON STEAK WITH CAVIAR SAUCE', '.', '2024-02-22 21:34:44', '2024-02-23 11:54:39'),
(859, 419, 'ka', 'დორადო ტკბილ ცხარე სოუსით', '.', '2024-02-22 21:34:54', '2024-02-22 21:34:54'),
(860, 419, 'en', 'დორადო ტკბილ ცხარე სოუსით', '.', '2024-02-22 21:34:54', '2024-02-22 21:34:54'),
(861, 420, 'ka', 'სიბასი ტკბილცხარე სოუსით', '.', '2024-02-22 21:35:08', '2024-02-22 21:35:08'),
(862, 420, 'en', 'სიბასი ტკბილცხარე სოუსით', '.', '2024-02-22 21:35:08', '2024-02-22 21:35:08'),
(863, 421, 'ka', 'კალმახი სოკოს სოუსით', '.', '2024-02-22 21:35:19', '2024-02-22 21:35:19'),
(864, 421, 'en', 'TROUT WITH MUSHROOM SAUCE', '.', '2024-02-22 21:35:19', '2024-02-23 11:55:35'),
(865, 422, 'ka', 'კალმახი ბროწეულით', '.', '2024-02-22 21:35:28', '2024-02-22 21:35:28'),
(866, 422, 'en', 'SALMON WITH POMEGRANATE', '.', '2024-02-22 21:35:28', '2024-02-23 11:56:24'),
(867, 423, 'ka', 'ბარაბულკა ბროწეულის სოუსით', '.', '2024-02-22 21:35:42', '2024-02-22 21:35:42'),
(868, 423, 'en', 'ბარაბულკა ბროწეულის სოუსით', '.', '2024-02-22 21:35:42', '2024-02-22 21:35:42'),
(869, 424, 'ka', 'ზღვის პროდუქტების ასორტი', '.', '2024-02-22 21:35:55', '2024-02-22 21:35:55'),
(870, 424, 'en', 'SEAFOOD PLATTER', '.', '2024-02-22 21:35:55', '2024-02-23 11:57:08'),
(871, 425, 'ka', 'ქათმის სუპი', '.', '2024-02-22 21:36:07', '2024-02-22 21:36:07'),
(872, 425, 'en', 'CHICKEN SOUP', '.', '2024-02-22 21:36:07', '2024-02-23 11:57:25'),
(873, 426, 'ka', 'ჩიხირთმა', '.', '2024-02-22 21:36:17', '2024-02-22 21:36:17'),
(874, 426, 'en', 'ჩიხირთმა', '.', '2024-02-22 21:36:17', '2024-02-22 21:36:17'),
(875, 427, 'ka', 'სოკოს კრემ სუპი', '.', '2024-02-22 21:36:28', '2024-02-22 21:36:28'),
(876, 427, 'en', 'MUSHROOM CREAMSOUP', '.', '2024-02-22 21:36:28', '2024-02-23 11:57:47'),
(877, 428, 'ka', 'ხაჭაპური იმერული', '.', '2024-02-22 21:36:42', '2024-02-22 21:36:42'),
(878, 428, 'en', 'IMERULI KHATCHAPURI', '.', '2024-02-22 21:36:42', '2024-02-23 11:58:12'),
(879, 429, 'ka', 'ხაჭაპური მეგრული', '.', '2024-02-22 21:36:59', '2024-02-22 21:36:59'),
(880, 429, 'en', 'MEGRULI KHATCHAPURI', '.', '2024-02-22 21:36:59', '2024-02-23 11:58:30'),
(881, 430, 'ka', 'ხაჭაპური აჭარული', '.', '2024-02-22 21:37:10', '2024-02-22 21:37:10'),
(882, 430, 'en', 'ADJARULI KHATCHAPURI', '.', '2024-02-22 21:37:10', '2024-02-23 11:58:50'),
(883, 431, 'ka', 'ხაჭაპური შამფურზე', '.', '2024-02-22 21:37:18', '2024-02-22 21:37:18'),
(884, 431, 'en', 'KHATCHAPURI ON A SKIMMER', '.', '2024-02-22 21:37:18', '2024-02-23 11:59:25'),
(885, 432, 'ka', 'პიცა მარგარიტა', '.', '2024-02-22 21:37:27', '2024-02-22 21:37:27'),
(886, 432, 'en', 'PIZZA MARGARITA', '.', '2024-02-22 21:37:27', '2024-02-23 11:59:50'),
(887, 433, 'ka', 'პიცა პეპერონი', '.', '2024-02-22 21:37:38', '2024-02-22 21:37:38'),
(888, 433, 'en', 'PIZZA PEPERONI', '.', '2024-02-22 21:37:38', '2024-02-23 12:00:07'),
(889, 434, 'ka', 'პიცა კვადრო ფორმაჯო', '.', '2024-02-22 21:37:51', '2024-02-22 21:37:51'),
(890, 434, 'en', 'პიცა კვადრო ფორმაჯო', '.', '2024-02-22 21:37:51', '2024-02-22 21:37:51'),
(891, 435, 'ka', 'პიცა ოთხი სეზონი', '.', '2024-02-22 21:38:02', '2024-02-22 21:38:02'),
(892, 435, 'en', 'PIZZA FOUR SEASONS', '.', '2024-02-22 21:38:02', '2024-02-23 12:00:30'),
(893, 436, 'ka', 'პიცა კომბინირებული', '.', '2024-02-22 21:38:13', '2024-02-22 21:38:13'),
(894, 436, 'en', 'PIZZA COMBINED', '.', '2024-02-22 21:38:13', '2024-02-23 12:01:12'),
(895, 437, 'ka', 'პიცა ვეგეტარიანული', '.', '2024-02-22 21:38:55', '2024-02-22 21:38:55'),
(896, 437, 'en', 'PIZZA VEGETARIAN', '.', '2024-02-22 21:38:55', '2024-02-23 12:01:31'),
(897, 438, 'ka', 'ლობიანი', '.', '2024-02-22 21:39:03', '2024-02-22 21:39:03'),
(898, 438, 'en', 'ლობიანი', '.', '2024-02-22 21:39:03', '2024-02-22 21:39:03'),
(899, 439, 'ka', 'პური', '.', '2024-02-22 21:39:14', '2024-02-22 21:39:14'),
(900, 439, 'en', 'BREAD', '.', '2024-02-22 21:39:14', '2024-02-23 12:01:48'),
(901, 440, 'ka', 'მჭადი', '.', '2024-02-22 21:39:24', '2024-02-22 21:39:24'),
(902, 440, 'en', 'მჭადი', '.', '2024-02-22 21:39:24', '2024-02-22 21:39:24'),
(903, 441, 'ka', 'ჭვიშტარი', '.', '2024-02-22 21:39:34', '2024-02-22 21:39:34'),
(904, 441, 'en', 'ჭვიშტარი', '.', '2024-02-22 21:39:34', '2024-02-22 21:39:34'),
(905, 442, 'ka', 'ხბოს მწვადი', '.', '2024-02-22 21:39:47', '2024-02-22 21:39:47'),
(906, 442, 'en', 'CALF MTSVADI', '.', '2024-02-22 21:39:47', '2024-02-23 12:02:09'),
(907, 443, 'ka', 'ღორის მწვადი', '.', '2024-02-22 21:40:00', '2024-02-22 21:40:00'),
(908, 443, 'en', 'PORK MTSVADI', '.', '2024-02-22 21:40:00', '2024-02-23 12:02:21'),
(909, 444, 'ka', 'ორაგულის მწვადი', '.', '2024-02-23 12:06:06', '2024-02-23 12:06:06'),
(910, 444, 'en', 'ორაგულის მწვადი', '.', '2024-02-23 12:06:06', '2024-02-23 12:06:06'),
(911, 445, 'ka', 'ქათმის მწვადი', '.', '2024-02-23 12:06:22', '2024-02-23 12:06:22'),
(912, 445, 'en', 'ქათმის მწვადი', '.', '2024-02-23 12:06:22', '2024-02-23 12:06:22'),
(913, 446, 'ka', 'ქათმის ფრთები', '.', '2024-02-23 12:06:55', '2024-02-23 12:06:55'),
(914, 446, 'en', 'ქათმის ფრთები', '.', '2024-02-23 12:06:55', '2024-02-23 12:06:55'),
(915, 447, 'ka', 'ქათმის  ქაბაბი', '.', '2024-02-23 12:07:10', '2024-02-23 12:07:10'),
(916, 447, 'en', 'ქათმის  ქაბაბი', '.', '2024-02-23 12:07:10', '2024-02-23 12:07:10'),
(917, 448, 'ka', 'საქონლის ქაბაბი', '.', '2024-02-23 12:07:58', '2024-02-23 12:07:58'),
(918, 448, 'en', 'საქონლის ქაბაბი', '.', '2024-02-23 12:07:58', '2024-02-23 12:07:58'),
(919, 449, 'ka', 'აფხასურა', '.', '2024-02-23 12:08:10', '2024-02-23 12:08:10'),
(920, 449, 'en', 'აფხასურა', '.', '2024-02-23 12:08:10', '2024-02-23 12:08:10'),
(921, 450, 'ka', 'ახალი კარტოფილი', '.', '2024-02-23 12:08:26', '2024-02-23 12:08:26'),
(922, 450, 'en', 'ახალი კარტოფილი', '.', '2024-02-23 12:08:26', '2024-02-23 12:08:26'),
(923, 451, 'ka', 'ბოსტნეულის მწვადი', '.', '2024-02-23 12:08:40', '2024-02-23 12:08:40'),
(924, 451, 'en', 'ბოსტნეულის მწვადი', '.', '2024-02-23 12:08:40', '2024-02-23 12:08:40'),
(925, 452, 'ka', 'მწვადის ასორტი', '.', '2024-02-23 12:08:54', '2024-02-23 12:08:54'),
(926, 452, 'en', 'მწვადის ასორტი', '.', '2024-02-23 12:08:54', '2024-02-23 12:08:54'),
(927, 453, 'ka', 'ფონდატნტე', '.', '2024-02-23 12:09:07', '2024-02-23 12:09:07'),
(928, 453, 'en', 'ფონდატნტე', '.', '2024-02-23 12:09:07', '2024-02-23 12:09:07'),
(929, 454, 'ka', 'ფახლავა', '.', '2024-02-23 12:09:20', '2024-02-23 12:09:20'),
(930, 454, 'en', 'ფახლავა', '.', '2024-02-23 12:09:20', '2024-02-23 12:09:20'),
(931, 455, 'ka', 'ჩის ქეიქი', '.', '2024-02-23 12:09:37', '2024-02-23 12:09:37'),
(932, 455, 'en', 'ჩის ქეიქი', '.', '2024-02-23 12:09:37', '2024-02-23 12:09:37'),
(933, 456, 'ka', 'ტირამისუ', '.', '2024-02-23 12:09:51', '2024-02-23 12:09:51'),
(934, 456, 'en', 'ტირამისუ', '.', '2024-02-23 12:09:51', '2024-02-23 12:09:51'),
(935, 457, 'ka', 'ქართული ტკბილის დაფა', '.', '2024-02-23 12:10:06', '2024-02-23 12:10:06'),
(936, 457, 'en', 'ქართული ტკბილის დაფა', '.', '2024-02-23 12:10:06', '2024-02-23 12:10:06'),
(937, 458, 'ka', 'საზამთროს მურაბა', '.', '2024-02-23 12:10:18', '2024-02-23 12:10:18'),
(938, 458, 'en', 'საზამთროს მურაბა', '.', '2024-02-23 12:10:18', '2024-02-23 12:10:18'),
(939, 459, 'ka', 'კაკლის მურაბა', '.', '2024-02-23 12:10:35', '2024-02-23 12:10:35'),
(940, 459, 'en', 'კაკლის მურაბა', '.', '2024-02-23 12:10:35', '2024-02-23 12:10:35'),
(941, 460, 'ka', 'ლეღვის მურაბა', '.', '2024-02-23 12:10:50', '2024-02-23 12:10:50'),
(942, 460, 'en', 'ლეღვის მურაბა', '.', '2024-02-23 12:10:50', '2024-02-23 12:10:50'),
(943, 461, 'ka', 'ალუბლის მურაბა', '.', '2024-02-23 12:11:45', '2024-02-23 12:11:45'),
(944, 461, 'en', 'ალუბლის მურაბა', '.', '2024-02-23 12:11:45', '2024-02-23 12:11:45'),
(945, 462, 'ka', 'ბლინი ბანანით და ნუთელათი', '.', '2024-02-23 12:12:00', '2024-02-23 12:12:00'),
(946, 462, 'en', 'ბლინი ბანანით და ნუთელათი', '.', '2024-02-23 12:12:00', '2024-02-23 12:12:00'),
(947, 463, 'ka', 'ბლინი კენკრით', '.', '2024-02-23 12:12:16', '2024-02-23 12:12:16'),
(948, 463, 'en', 'ბლინი კენკრით', '.', '2024-02-23 12:12:16', '2024-02-23 12:12:16'),
(949, 464, 'ka', 'სეზონური ხილი', '.', '2024-02-23 12:15:07', '2024-02-23 12:15:07'),
(950, 464, 'en', 'სეზონური ხილი', '.', '2024-02-23 12:15:07', '2024-02-23 12:15:07'),
(951, 465, 'ka', 'ხილის ასორტი დიდი', '.წითელი ვაშლი მწვანე ვაშლი მსხალი ფორთოხალი წითელი ფორთოხალი ანანასი ბანანი ყურძენი', '2024-02-23 12:15:20', '2024-02-24 15:03:09'),
(952, 465, 'en', 'Assorted Fruit Big', '.Red apple Green apple Pear Orange Red orange Pineapple Banana Grape', '2024-02-23 12:15:20', '2024-02-24 15:03:09'),
(953, 466, 'ka', 'ხილის ასორტი პატარა', '.წითელი ვაშლი მწვანე ვაშლი მსხალი ფორთოხალი წითელი ფორთოხალი ბანანი ყურძენი', '2024-02-23 12:15:33', '2024-02-24 15:01:27'),
(954, 466, 'en', 'Assorted Fruit Small', '.Red apple Green apple Pears Oranges Red oranges Bananas Grapes', '2024-02-23 12:15:33', '2024-02-24 15:01:27'),
(955, 467, 'ka', 'მაიონეზი', '.', '2024-02-23 12:15:46', '2024-02-23 12:15:46'),
(956, 467, 'en', 'Mayonnaise', '.', '2024-02-23 12:15:46', '2024-02-24 14:54:07'),
(957, 468, 'ka', 'კეტჩუპი', '.', '2024-02-23 12:16:03', '2024-02-24 14:52:05'),
(958, 468, 'en', 'Ketchup', '.', '2024-02-23 12:16:03', '2024-02-24 14:52:05'),
(959, 469, 'ka', 'მდოგვი', '.', '2024-02-23 12:16:55', '2024-02-23 12:16:55'),
(960, 469, 'en', 'Mustard', '.', '2024-02-23 12:16:55', '2024-02-24 14:50:23'),
(961, 470, 'ka', 'საწებელი', '.', '2024-02-23 12:17:13', '2024-02-24 14:49:20'),
(962, 470, 'en', 'საწებელი', '.', '2024-02-23 12:17:13', '2024-02-24 14:49:20'),
(963, 471, 'ka', 'ტყემალი', '.', '2024-02-23 12:17:42', '2024-02-23 12:17:42'),
(964, 471, 'en', 'Tkemali', '.', '2024-02-23 12:17:42', '2024-02-24 14:47:23'),
(965, 472, 'ka', 'ყველის სოუსი', '.ობიანი ყველი გაუდა მოცარელა პარმეზანი ნაღები შავი პილპილი რძე<div><br></div>', '2024-02-23 12:17:55', '2024-02-24 14:45:03'),
(966, 472, 'en', 'Cheese Sauce', '.Moldy cheese Gouda Mozzarella Parmesan Cream Black pepper Milk', '2024-02-23 12:17:55', '2024-02-24 14:45:03'),
(967, 473, 'ka', 'ბროწეულის სოუსი', '.', '2024-02-23 12:18:37', '2024-02-23 12:18:37'),
(968, 473, 'en', 'ბროწეულის სოუსი', '.', '2024-02-23 12:18:37', '2024-02-23 12:18:37'),
(969, 474, 'ka', 'არაჟანი', '.', '2024-02-23 12:18:53', '2024-02-23 12:18:53'),
(970, 474, 'en', 'არაჟანი', '.', '2024-02-23 12:18:53', '2024-02-23 12:18:53'),
(971, 475, 'ka', 'მაწონი', '.', '2024-02-23 12:19:04', '2024-02-23 12:19:04'),
(972, 475, 'en', 'მაწონი', '.', '2024-02-23 12:19:04', '2024-02-23 12:19:04'),
(973, 476, 'ka', 'ტკბილ ცხარ სოუსი', '.', '2024-02-23 12:19:16', '2024-02-23 12:19:16'),
(974, 476, 'en', 'ტკბილ ცხარ სოუსი', '.', '2024-02-23 12:19:16', '2024-02-23 12:19:16'),
(975, 477, 'ka', 'მექსიკური სოუსი', '.', '2024-02-23 12:19:30', '2024-02-23 12:19:30'),
(976, 477, 'en', 'მექსიკური სოუსი', '.', '2024-02-23 12:19:30', '2024-02-23 12:19:30'),
(977, 478, 'ka', 'აბსოლუტი 50გრ', '.', '2024-02-23 19:49:16', '2024-02-23 20:18:54'),
(978, 478, 'en', 'ABSOLUT 50gr', '.', '2024-02-23 19:49:16', '2024-02-23 20:08:15'),
(979, 479, 'ka', 'აბსოლუტი 0.5L', '.', '2024-02-23 19:55:36', '2024-02-23 19:55:36'),
(980, 479, 'en', 'ABSOLUT 0.5L', '.', '2024-02-23 19:55:36', '2024-02-23 19:55:36'),
(981, 480, 'ka', 'აბსოლუტი 0.5ლ', '.', '2024-02-23 19:56:25', '2024-02-23 20:19:13'),
(982, 480, 'en', 'ABSOLUT 0.5L', '.', '2024-02-23 19:56:25', '2024-02-23 20:00:17'),
(983, 481, 'ka', 'აბსოლუტი 1ლ', '.', '2024-02-23 20:02:32', '2024-02-23 20:19:50'),
(984, 481, 'en', 'ABSOLUT 1L', '.', '2024-02-23 20:02:32', '2024-02-23 20:08:48'),
(985, 482, 'ka', 'ფინლანდია 50გრ', '.', '2024-02-23 20:10:44', '2024-02-23 20:10:44'),
(986, 482, 'en', 'FINLANDIA 50gr', '.', '2024-02-23 20:10:44', '2024-02-23 20:10:44'),
(987, 483, 'ka', 'ფინლანდია 0.5ლ', '.', '2024-02-23 20:23:24', '2024-02-23 20:23:24'),
(988, 483, 'en', 'FINLANDIA 0.5L', '.', '2024-02-23 20:23:24', '2024-02-23 20:23:24'),
(989, 484, 'ka', 'ფინლანდია 1ლ', '.', '2024-02-23 20:24:55', '2024-02-23 20:24:55'),
(990, 484, 'en', 'FINLANDIA 1L', '.', '2024-02-23 20:24:55', '2024-02-23 20:24:55'),
(991, 485, 'ka', 'გრეი გუსი 50გრ', '.', '2024-02-23 20:29:47', '2024-02-23 20:29:47'),
(992, 485, 'en', 'GREY GOOSE 50gr', '.', '2024-02-23 20:29:47', '2024-02-23 20:29:47'),
(993, 486, 'ka', 'გრეი გუსი 0.5ლ', '.', '2024-02-23 20:36:24', '2024-02-23 20:36:24'),
(994, 486, 'en', 'GREY GOOSE 0.5L', '.', '2024-02-23 20:36:24', '2024-02-23 20:36:24'),
(995, 487, 'ka', 'გრეი გუსი 1ლ', '.', '2024-02-23 20:54:02', '2024-02-23 20:54:02'),
(996, 487, 'en', 'GREY GOOSE 1L', '.', '2024-02-23 20:54:02', '2024-02-23 20:54:02'),
(997, 488, 'ka', 'გრეი გუსი 1ლ', '.', '2024-02-23 20:56:17', '2024-02-23 20:56:17'),
(998, 488, 'en', 'GREY GOOSE 1L', '.', '2024-02-23 20:56:17', '2024-02-23 20:56:17'),
(999, 489, 'ka', 'ბელუგა 50გრ', '.', '2024-02-23 20:59:18', '2024-02-23 20:59:18'),
(1000, 489, 'en', 'BELUGA 50gr', '.', '2024-02-23 20:59:18', '2024-02-23 20:59:18'),
(1001, 490, 'ka', 'ბელუგა 0.5ლ', '.', '2024-02-23 21:00:11', '2024-02-23 21:00:11'),
(1002, 490, 'en', 'BELUGA 0.5L', '.', '2024-02-23 21:00:11', '2024-02-23 21:00:11'),
(1003, 491, 'ka', 'ბელუგა 1ლ', '.', '2024-02-23 21:50:14', '2024-02-23 21:50:14'),
(1004, 491, 'en', 'BELUGA 1L', '.', '2024-02-23 21:50:14', '2024-02-23 21:50:14'),
(1005, 492, 'ka', 'სტოლიჩნაია 50გრ', '.', '2024-02-23 21:56:36', '2024-02-23 21:56:36'),
(1006, 492, 'en', 'STOLICHNAYA 50gr', '.', '2024-02-23 21:56:36', '2024-02-23 21:56:36'),
(1007, 493, 'ka', 'სტოლიჩნაია 0.5ლ', '.', '2024-02-23 22:04:42', '2024-02-23 22:04:42'),
(1008, 493, 'en', 'STOLICHNAYA 0.5L', '.', '2024-02-23 22:04:42', '2024-02-23 22:04:42'),
(1009, 494, 'ka', 'სტოლიჩნაია 1ლ', '.', '2024-02-23 22:05:43', '2024-02-23 22:05:43'),
(1010, 494, 'en', 'STOLICHNAYA 1L', '.', '2024-02-23 22:05:43', '2024-02-23 22:05:43'),
(1011, 495, 'ka', 'ბალანთაინს ფაინესტი 50გრ', '.', '2024-02-23 22:30:50', '2024-02-23 22:30:50'),
(1012, 495, 'en', 'BALLANTINE\'S FINEST 50 gr', '.', '2024-02-23 22:30:50', '2024-02-23 22:30:50'),
(1013, 496, 'ka', 'გრანტსი 8წ 50გრ', '.', '2024-02-23 22:35:22', '2024-02-23 22:35:22'),
(1014, 496, 'en', 'GRANT\'S TRIPLE WOOD 8y 50gr', '.', '2024-02-23 22:35:22', '2024-02-23 22:35:22'),
(1015, 497, 'ka', 'ბაკარდი ბლანკო 50გრ', '.', '2024-02-23 22:38:05', '2024-02-23 23:56:26'),
(1016, 497, 'en', 'Bacardi Carta Blanca 50gr', '.', '2024-02-23 22:38:05', '2024-02-23 23:56:26'),
(1017, 498, 'ka', 'ჩივას რეგალი 12წ 50გრ', '.', '2024-02-23 22:38:06', '2024-02-23 22:38:06'),
(1018, 498, 'en', 'CHIVAS REGAL 12y 50gr', '.', '2024-02-23 22:38:06', '2024-02-23 22:38:06'),
(1019, 499, 'ka', 'ჩივას რეგალი 18 წ 50გრ', '.', '2024-02-23 22:40:34', '2024-02-23 22:40:34'),
(1020, 499, 'en', 'CHIVAS REGAL, 18 წლიანი 1y 50gr', '.', '2024-02-23 22:40:34', '2024-02-23 22:40:34'),
(1021, 500, 'ka', 'ჩივას რეგალი 25 წ 50გრ', '.', '2024-02-23 22:42:26', '2024-02-23 22:42:26'),
(1022, 500, 'en', 'CHIVAS REGAL, 25y 50gr', '.', '2024-02-23 22:42:26', '2024-02-23 22:42:26'),
(1023, 501, 'ka', 'ბაკარდი ნეგრა 50გრ', '.', '2024-02-23 22:43:27', '2024-02-23 23:55:44'),
(1024, 501, 'en', 'Bacardi Carta Negra 50gr', '.', '2024-02-23 22:43:27', '2024-02-23 23:55:44'),
(1025, 502, 'ka', 'გლენფიდიხი 12 წ 50გრ', '.', '2024-02-23 22:55:27', '2024-02-23 22:55:27'),
(1026, 502, 'en', 'GLENFIDDICH FLASK  12y 50gr', '.', '2024-02-23 22:55:27', '2024-02-23 22:55:27'),
(1027, 503, 'ka', 'გლენმორანჟი ორიგინალი 50გრ', '.', '2024-02-23 22:58:06', '2024-02-23 22:58:06'),
(1028, 503, 'en', 'GLEN MORAY 50gr', '.', '2024-02-23 22:58:06', '2024-02-23 22:58:06'),
(1029, 504, 'ka', 'მანქი შოლდერი 50გრ', '.', '2024-02-23 23:00:23', '2024-02-23 23:00:23'),
(1030, 504, 'en', 'MONKEY SHOULDER 50gr', '.', '2024-02-23 23:00:23', '2024-02-23 23:00:23'),
(1031, 505, 'ka', 'ტულამორ დიუ 50გრ', '.', '2024-02-23 23:03:03', '2024-02-23 23:03:03'),
(1032, 505, 'en', 'TULLAMORE DEW 50gr', '.', '2024-02-23 23:03:03', '2024-02-23 23:03:03'),
(1033, 506, 'ka', 'ბუშმილსი 50გრ', '.', '2024-02-23 23:05:21', '2024-02-23 23:05:21'),
(1034, 506, 'en', 'BUSHMILLS,50გრ', '.', '2024-02-23 23:05:21', '2024-02-23 23:05:21'),
(1035, 507, 'ka', 'ჯეკ დენიელსი 50გრ', '.', '2024-02-23 23:08:18', '2024-02-23 23:08:18'),
(1036, 507, 'en', 'JACK DANIEL\'S 50gr', '.', '2024-02-23 23:08:18', '2024-02-23 23:08:18'),
(1037, 508, 'ka', 'ჯეკ დენიელს სინგ ბარელ 50გრ', '.', '2024-02-23 23:10:16', '2024-02-23 23:10:16'),
(1038, 508, 'en', 'JACK DANIEL\'S SINGLE BARREL 50gr', '.', '2024-02-23 23:10:16', '2024-02-23 23:10:16'),
(1039, 509, 'ka', 'ჯონ ჯეიმსონი 50გრ', '.', '2024-02-23 23:25:03', '2024-02-23 23:25:03'),
(1040, 509, 'en', 'JOHN JAMESON 50gr', '.', '2024-02-23 23:25:03', '2024-02-23 23:25:03'),
(1041, 510, 'ka', 'ჯეკ დენიელს ჰანი 50გრ', '.', '2024-02-23 23:27:44', '2024-02-23 23:27:44'),
(1042, 510, 'en', 'JACK DANIEL\'S, 50gr', '.', '2024-02-23 23:27:44', '2024-02-23 23:27:44'),
(1043, 511, 'ka', 'ჯონი უოქერ რედი 50გრ', '.', '2024-02-23 23:29:42', '2024-02-23 23:29:42'),
(1044, 511, 'en', 'JOHNNIE WALKER RED LABEL 50gr', '.', '2024-02-23 23:29:42', '2024-02-23 23:29:42'),
(1045, 512, 'ka', 'ჯონი უოქერ ბლექი 50გრ', '.', '2024-02-23 23:42:19', '2024-02-23 23:42:19'),
(1046, 512, 'en', 'JOHNNIE WALKER BLACK LABEL 50gr', '.', '2024-02-23 23:42:19', '2024-02-23 23:42:19'),
(1047, 513, 'ka', 'კაპიტან მორგანი დარქი 50გრ', '.', '2024-02-23 23:52:16', '2024-02-23 23:54:44'),
(1048, 513, 'en', 'CAPTAIN MORGAN DARK 50gr', '.', '2024-02-23 23:52:16', '2024-02-23 23:54:44'),
(1049, 514, 'ka', 'ბეილისი 50გრ', '.', '2024-02-23 23:57:05', '2024-02-23 23:57:05'),
(1050, 514, 'en', 'BAILEYS 50gr', '.', '2024-02-23 23:57:05', '2024-02-23 23:57:05'),
(1051, 515, 'ka', 'კალუა 50გრ', '.', '2024-02-24 00:00:06', '2024-02-24 00:00:06'),
(1052, 515, 'en', 'KAHLUA 50gr', '.', '2024-02-24 00:00:06', '2024-02-24 00:00:06'),
(1053, 516, 'ka', 'კუანტრო 50გრ', '.', '2024-02-24 00:01:49', '2024-02-24 00:01:49'),
(1054, 516, 'en', 'COINTREAU 50gr', '.', '2024-02-24 00:01:49', '2024-02-24 00:01:49'),
(1055, 517, 'ka', 'ამარეტო დისარონო 50გრ', '.', '2024-02-24 00:03:24', '2024-02-24 00:03:24'),
(1056, 517, 'en', 'AMARETTO DISARONNO 50gr', '.', '2024-02-24 00:03:24', '2024-02-24 00:03:24'),
(1057, 518, 'ka', 'აპეროლი 50გრ', '.', '2024-02-24 00:04:58', '2024-02-24 00:04:58'),
(1058, 518, 'en', 'APEROL 50gr', '.', '2024-02-24 00:04:58', '2024-02-24 00:04:58'),
(1059, 519, 'ka', 'იაგერმაისტერი 50გრ', '.', '2024-02-24 00:12:38', '2024-02-24 00:12:38'),
(1060, 519, 'en', 'JAGERMEISTER 50gr', '.', '2024-02-24 00:12:38', '2024-02-24 00:12:38'),
(1061, 520, 'ka', 'სამბუკა 50გრ', '.', '2024-02-24 00:21:21', '2024-02-24 00:21:21'),
(1062, 520, 'en', 'sambuca molinari 50gr', '.', '2024-02-24 00:21:21', '2024-02-24 00:21:21'),
(1063, 521, 'ka', 'აბსენტი 50გრ', '.', '2024-02-24 00:23:12', '2024-02-24 00:23:12'),
(1064, 521, 'en', 'absenta 50gr', '.', '2024-02-24 00:23:12', '2024-02-24 00:23:12'),
(1065, 522, 'ka', 'კაპიტან მორგანი რედი გოლდი 50გრ', '.', '2024-02-24 00:25:48', '2024-02-24 00:25:48'),
(1066, 522, 'en', 'CAPTAIN MORGAN SPICED GOLD 50gr', '.', '2024-02-24 00:25:48', '2024-02-24 00:25:48'),
(1067, 523, 'ka', 'პასოა 50გრ', '.', '2024-02-24 00:26:32', '2024-02-24 00:26:32'),
(1068, 523, 'en', 'passoa 50gr', '.', '2024-02-24 00:26:32', '2024-02-24 00:26:32'),
(1069, 524, 'ka', '123', '.', '2024-02-24 00:30:35', '2024-02-24 00:30:35'),
(1070, 524, 'en', '123', '.', '2024-02-24 00:30:35', '2024-02-24 00:30:35'),
(1073, 526, 'ka', 'რემი მარტინი ვ.ს.ო.პ 50გრ', '.', '2024-02-24 00:36:59', '2024-02-24 00:36:59'),
(1074, 526, 'en', 'REMY MARTIN V.S.O.P 50gr', '.', '2024-02-24 00:36:59', '2024-02-24 00:36:59'),
(1075, 527, 'ka', 'ჰენესი ვ.ს 50გრ', '.', '2024-02-24 00:38:26', '2024-02-24 00:38:26'),
(1076, 527, 'en', 'HENNESSY V.S 50gr', '.', '2024-02-24 00:38:26', '2024-02-24 00:38:26'),
(1077, 528, 'ka', 'ჰენესი ვ.ს.ო.პ 50გრ', '.', '2024-02-24 00:40:21', '2024-02-24 00:40:21'),
(1078, 528, 'en', 'HENNESSY V.S.O.P 50gr', '.', '2024-02-24 00:40:21', '2024-02-24 00:40:21'),
(1079, 529, 'ka', 'ჰენესი იქს. ო 50გრ', '.', '2024-02-24 00:42:07', '2024-02-24 00:42:07'),
(1080, 529, 'en', 'HENNESSY X.O 50gr', '.', '2024-02-24 00:42:07', '2024-02-24 00:42:07'),
(1081, 530, 'ka', 'სარაჯიშვილი 5 * 50გრ', '.', '2024-02-24 00:45:25', '2024-02-24 00:45:25'),
(1082, 530, 'en', 'sarajishvili 50gr', '.', '2024-02-24 00:45:25', '2024-02-24 00:45:25'),
(1083, 531, 'ka', 'სარაჯიშვილი ვ.ს 50გრ', '.', '2024-02-24 00:46:59', '2024-02-24 00:46:59'),
(1084, 531, 'en', 'sarajishvili V.S 50gr', '.', '2024-02-24 00:46:59', '2024-02-24 00:46:59'),
(1085, 532, 'ka', 'სარაჯიშვილი ვ.ს.ო.პ 50გრ', '.', '2024-02-24 00:48:30', '2024-02-24 00:48:30'),
(1086, 532, 'en', 'sarajishvili V.S.O.P 50gr', '.', '2024-02-24 00:48:30', '2024-02-24 00:48:30'),
(1087, 533, 'ka', 'სარაჯიშვილი იქს.ო 50გრ', '.', '2024-02-24 00:49:48', '2024-02-24 00:49:48'),
(1088, 533, 'en', 'sarajishvili X.O 50gr', '.', '2024-02-24 00:49:48', '2024-02-24 00:49:48'),
(1089, 534, 'ka', 'შტრო80 50გრ', '<p><br></p><p><br></p><p>.</p>', '2024-02-24 00:57:39', '2024-02-24 02:17:43'),
(1090, 534, 'en', 'Stroh80 50gr', '.', '2024-02-24 00:57:39', '2024-02-24 00:57:39'),
(1091, 535, 'ka', 'ჭაჭა ვერცხლის დ1 50გრ', '.', '2024-02-24 01:18:05', '2024-02-24 01:18:05'),
(1092, 535, 'en', 'Chacha silver D1 50gr', '.', '2024-02-24 01:18:05', '2024-02-24 01:18:05'),
(1093, 536, 'ka', 'ჭაჭა ოქრო ბ1 50გრ', '.', '2024-02-24 01:19:15', '2024-02-24 01:19:15'),
(1094, 536, 'en', 'Chacha gold b1 50gr', '.', '2024-02-24 01:19:15', '2024-02-24 01:19:15'),
(1095, 537, 'ka', 'მარანი ცქრიალა ბრუტი', '.', '2024-02-24 01:22:58', '2024-02-24 01:22:58'),
(1096, 537, 'en', 'Winery Sparkling Brut', '.', '2024-02-24 01:22:58', '2024-02-24 01:22:58'),
(1097, 538, 'ka', 'მარანი ნახ.მშრალი', '.', '2024-02-24 01:45:24', '2024-02-24 01:45:24'),
(1098, 538, 'en', 'Marani semi dry', '.', '2024-02-24 01:45:24', '2024-02-24 01:45:24'),
(1099, 539, 'ka', 'მარანი ნახ.ტკბილი', '.', '2024-02-24 01:47:38', '2024-02-24 01:47:38'),
(1100, 539, 'en', 'Marani semi sweet', '.', '2024-02-24 01:47:38', '2024-02-24 01:47:38'),
(1101, 540, 'ka', 'მარანი როზე ბრუტი', '.', '2024-02-24 01:49:55', '2024-02-24 01:49:55'),
(1102, 540, 'en', 'Marani roze', '.', '2024-02-24 01:49:55', '2024-02-24 01:49:55'),
(1103, 541, 'ka', 'ასტი მარტინი', '.', '2024-02-24 01:52:21', '2024-02-24 01:52:21'),
(1104, 541, 'en', 'asti martini', '.', '2024-02-24 01:52:21', '2024-02-24 01:52:21'),
(1105, 542, 'ka', 'მალიბუ 50გრ', '.', '2024-02-24 02:42:30', '2024-02-24 02:42:30'),
(1106, 542, 'en', 'Malibu 50gr', '.', '2024-02-24 02:42:30', '2024-02-24 02:42:30'),
(1107, 543, 'ka', 'ხოსე კუერვო სილვერი 50გრ', '.', '2024-02-24 02:46:57', '2024-02-24 02:46:57'),
(1108, 543, 'en', 'JOSE CUERVO SILVER 50gr', '.', '2024-02-24 02:46:57', '2024-02-24 02:46:57'),
(1109, 544, 'ka', 'ხოსე კუერვო გოლდი 50გრ', '.', '2024-02-24 02:57:21', '2024-02-24 02:57:21'),
(1110, 544, 'en', 'JOSE CUERVO REPOSADO GOLD 50gr', '.', '2024-02-24 02:57:21', '2024-02-24 02:57:21'),
(1111, 545, 'ka', 'ოლმეკა ბლანკო 50გრ', '.', '2024-02-24 02:59:29', '2024-02-24 02:59:29'),
(1112, 545, 'en', 'OLMECA BLANCO 50gr', '.', '2024-02-24 02:59:29', '2024-02-24 02:59:29'),
(1113, 546, 'ka', 'ოლმეკა გოლდი 50გრ', '.', '2024-02-24 10:56:52', '2024-02-24 10:56:52'),
(1114, 546, 'en', 'OLMECA GOLD 50gr', '.', '2024-02-24 10:56:52', '2024-02-24 10:56:52'),
(1115, 547, 'ka', 'პატრონ რეპოსადო 50გრ', '.', '2024-02-24 11:01:32', '2024-02-24 11:01:32'),
(1116, 547, 'en', 'PATRON REPOSADO 50gr', '.', '2024-02-24 11:01:32', '2024-02-24 11:01:32'),
(1117, 548, 'ka', 'პატრონ ანეხო 50გრ', '.', '2024-02-24 11:02:30', '2024-02-24 11:02:30'),
(1118, 548, 'en', 'PATRON ANEJO 50gr', '.', '2024-02-24 11:02:30', '2024-02-24 11:02:30'),
(1119, 549, 'ka', 'წინანდალი 0.15ლ/0.75ლ', '.', '2024-02-24 11:08:47', '2024-02-24 11:13:34'),
(1120, 549, 'en', 'TSINANDALI 0.15L/0.75L', '.', '2024-02-24 11:08:47', '2024-02-24 11:13:34'),
(1121, 550, 'ka', 'ცოლიკოური 0.15/0.75 ლ.', '.', '2024-02-24 11:23:14', '2024-02-24 11:23:14'),
(1122, 550, 'en', 'TSOLIKOURI 0.15/0.75 L.', '.', '2024-02-24 11:23:14', '2024-02-24 11:23:14'),
(1123, 551, 'ka', 'ჰენდრიქსი 50გრ', '.', '2024-02-24 11:29:41', '2024-02-24 11:29:41'),
(1124, 551, 'en', 'HENDRICK\'S 50gr', '.', '2024-02-24 11:29:41', '2024-02-24 11:29:41'),
(1125, 552, 'ka', 'რქაწითელი 0.75 ლ.', '.', '2024-02-24 11:29:52', '2024-02-24 11:29:52'),
(1126, 552, 'en', 'RKATSITELI 0.75 L', '.', '2024-02-24 11:29:52', '2024-02-24 11:29:52'),
(1127, 553, 'ka', 'ჰენდრიქსი', '.', '2024-02-24 11:30:29', '2024-02-24 11:30:58'),
(1128, 553, 'en', 'HENDRICK\'S 50gr', '.', '2024-02-24 11:30:29', '2024-02-24 11:30:29'),
(1129, 554, 'ka', 'ბიფიტერი 50გრ', '.', '2024-02-24 11:32:11', '2024-02-24 11:32:11'),
(1130, 554, 'en', 'BEEFEATER', '.', '2024-02-24 11:32:11', '2024-02-24 11:32:11'),
(1131, 555, 'ka', 'ტვიში 0.15/0.75 ლ.', '.', '2024-02-24 11:32:12', '2024-02-24 11:32:12'),
(1132, 555, 'en', 'TVISHI  0.15/0.75 L', '.', '2024-02-24 11:32:12', '2024-02-24 11:32:12'),
(1133, 556, 'ka', 'მოჰიტო', '.ლაიმი, პიტნა, მონინი სიროფი, მალიბუ, სპრაიტი', '2024-02-24 11:37:00', '2024-02-24 11:37:00'),
(1134, 556, 'en', 'Mohito', '.Lime, Mint, Monin, Malibu, Sprite', '2024-02-24 11:37:00', '2024-02-24 11:37:00'),
(1135, 557, 'ka', 'ალაზნის ველი თეთრი 0.75 ლ.', '.', '2024-02-24 11:37:24', '2024-02-24 11:37:24'),
(1136, 557, 'en', 'ALAZANI VALLEY WHITE 0.75 L', '.', '2024-02-24 11:37:24', '2024-02-24 11:37:24'),
(1137, 558, 'ka', 'ხვანჭკარა 0.75 ლ.', '.', '2024-02-24 11:41:50', '2024-02-24 11:41:50'),
(1138, 558, 'en', 'KHVANCHKARA 0.75 L', '.', '2024-02-24 11:41:50', '2024-02-24 11:41:50'),
(1139, 559, 'ka', 'ბომბეი საფირი 50გრ', '.', '2024-02-24 11:46:34', '2024-02-24 11:46:34'),
(1140, 559, 'en', 'BOMBAY SAPPHIRE 50gr', '.', '2024-02-24 11:46:34', '2024-02-24 11:46:34'),
(1141, 560, 'ka', 'ქინძმარაული 0.15/0.75 ლ.', '.', '2024-02-24 11:47:22', '2024-02-24 11:47:22'),
(1142, 560, 'en', 'KINDZMARAULI 0.15/0.75 L', '.', '2024-02-24 11:47:22', '2024-02-24 11:47:22'),
(1143, 561, 'ka', 'მოჰიტო მარწყვის', 'ლაიმი, პიტნა, მონინი სიროფი, მარწყვი, ბაკარდი, სპრაიტი', '2024-02-24 11:48:21', '2024-02-24 11:51:00'),
(1144, 561, 'en', 'Strawberry Mojito', 'Lime, mint, Monin syrup, strawberry, Bacardi, Sprite<br>', '2024-02-24 11:48:21', '2024-02-24 11:51:00'),
(1145, 562, 'ka', 'ოჯალეში 0.75 ლ.', '.', '2024-02-24 11:49:07', '2024-02-24 11:49:07'),
(1146, 562, 'en', 'OJALESHI 0.75 L', '.', '2024-02-24 11:49:07', '2024-02-24 11:49:07'),
(1147, 563, 'ka', 'ახაშენი 0.75 ლ.', '.', '2024-02-24 11:50:21', '2024-02-24 11:50:21'),
(1148, 563, 'en', 'AKHASHENI 0.75 L', '.', '2024-02-24 11:50:21', '2024-02-24 11:50:21'),
(1149, 564, 'ka', 'ალაზნის ველი წითელი 0.75 ლ.', '.', '2024-02-24 11:51:57', '2024-02-24 11:51:57'),
(1150, 564, 'en', 'ALAZANI VALLEY RED 0.75 L', '.', '2024-02-24 11:51:57', '2024-02-24 11:51:57'),
(1151, 565, 'ka', 'საფერავი 0.15/0.75 ლ.', '.', '2024-02-24 11:53:42', '2024-02-24 11:53:42'),
(1152, 565, 'en', 'SAPERAVI 0.15/0.75 L', '.', '2024-02-24 11:53:42', '2024-02-24 11:53:42'),
(1153, 566, 'ka', 'საფერავი გაუფილტრავი', '.', '2024-02-24 11:55:21', '2024-02-24 11:55:21'),
(1154, 566, 'en', 'SAPERAVI UNFILTERED', '.', '2024-02-24 11:55:21', '2024-02-24 11:55:21'),
(1155, 567, 'ka', 'მუკუზანი 0.75 ლ.', '.', '2024-02-24 11:56:56', '2024-02-24 11:56:56'),
(1156, 567, 'en', 'Mukuzani 0.75 L', '.', '2024-02-24 11:56:56', '2024-02-24 11:56:56'),
(1157, 568, 'ka', 'კაბერნე საფერავი 0.75 ლ.', '.', '2024-02-24 11:58:32', '2024-02-24 11:58:32'),
(1158, 568, 'en', 'CABERNET SAPERAVI 0.75 L.', '.', '2024-02-24 11:58:32', '2024-02-24 11:58:32'),
(1159, 569, 'ka', 'პინა კოლადა', 'ბაკარდი, მონინი სიროფი, მალიბუ, წვენი, ანანასი, ალუბალი', '2024-02-24 11:59:08', '2024-02-24 11:59:08'),
(1160, 569, 'en', 'Pina Colada', 'Bacardi, Monin syrup, Malibu, Juice, Pineapple, Cherry.', '2024-02-24 11:59:08', '2024-02-24 11:59:08'),
(1161, 570, 'ka', 'საფერავი როზე 0.15/0.75 ლ.', '.', '2024-02-24 12:00:46', '2024-02-24 12:00:46'),
(1162, 570, 'en', 'SAPERAVI ROSE 0.15/0.75 L', '.', '2024-02-24 12:00:46', '2024-02-24 12:00:46'),
(1163, 571, 'ka', 'ბუდვაიზერი - ბოთლი', '.', '2024-02-24 12:05:40', '2024-02-24 12:11:08'),
(1164, 571, 'en', 'Budweiser - Bottle', '.', '2024-02-24 12:05:40', '2024-02-24 12:11:08'),
(1165, 572, 'ka', 'მაი-ტაი', 'ოლდ ნიკი თეთრი, ბაკარდი შავი, ამარეტო დისარონო, მონინი ლიქიორი, მონინი სიროფი, ფორთოხალი', '2024-02-24 12:06:34', '2024-02-24 12:06:34'),
(1166, 572, 'en', 'Mai Tai', 'Old Nick White, Bacardi Black, Amaretto Disaronno, Monin Liqueur, Monin Syrup, Orange', '2024-02-24 12:06:34', '2024-02-24 12:06:34'),
(1167, 573, 'ka', 'ჰეინეკენი - ბოთლი', '.', '2024-02-24 12:07:38', '2024-02-24 12:07:38'),
(1168, 573, 'en', 'HEINEKEN - BOTTLE', '.', '2024-02-24 12:07:38', '2024-02-24 12:07:38'),
(1169, 574, 'ka', 'ჰეინეკენი ჩამოსასხმელი 0.33/0.5 ლ.', '.', '2024-02-24 12:10:31', '2024-02-24 12:10:31'),
(1170, 574, 'en', 'HEINEKEN ON TAP 0.33/0.5 L.', '.', '2024-02-24 12:10:31', '2024-02-24 12:10:31'),
(1171, 575, 'ka', 'სექსი პლაჟზე', 'ფინლანდია, პასოა, მონინი ლიქიორი, წვენი, ფორთოხალი, ალუბალი', '2024-02-24 12:11:45', '2024-02-24 12:11:45'),
(1172, 575, 'en', 'Sex on the beach', 'Finlandia, Pessoa, Monin liqueur, Juice, Orange, Cherry', '2024-02-24 12:11:45', '2024-02-24 12:11:45'),
(1173, 576, 'ka', 'მარტინი ბიანკო', '.', '2024-02-24 12:15:15', '2024-02-24 12:15:15'),
(1174, 576, 'en', 'MARTINI BIANCO', '.', '2024-02-24 12:15:15', '2024-02-24 12:15:15'),
(1175, 577, 'ka', 'მარტინი როსსო', '.', '2024-02-24 12:19:05', '2024-02-24 12:19:05'),
(1176, 577, 'en', 'MARTINI ROSSO', '.', '2024-02-24 12:19:05', '2024-02-24 12:19:05'),
(1177, 578, 'ka', 'კორონა - ბოთლი', '.', '2024-02-24 12:19:57', '2024-02-24 12:19:57'),
(1178, 578, 'en', 'CORONA - BOTTLE', '.', '2024-02-24 12:19:57', '2024-02-24 12:19:57'),
(1179, 579, 'ka', 'ბლუ ჰავაი', 'ოლდ ნიკი თეთრი, მალიბუ, მონინი ლიქიორი, წვენი, ანანასი, ალუბალი', '2024-02-24 12:20:19', '2024-02-24 12:20:19'),
(1180, 579, 'en', 'Blue Hawaii', 'Old Nick White, Malibu, Monin liqueur, uice, Pineapple, Cherry', '2024-02-24 12:20:19', '2024-02-24 12:20:19'),
(1181, 580, 'ka', 'ლაიმი', '.', '2024-02-24 12:20:46', '2024-02-24 12:20:46'),
(1182, 580, 'en', 'Lime', '.', '2024-02-24 12:20:46', '2024-02-24 12:20:46'),
(1183, 581, 'ka', 'წყალი ბაკურიანი 0.5 ლ', '.', '2024-02-24 12:22:46', '2024-02-24 12:22:46'),
(1184, 581, 'en', 'Bakuriani Water 0.5 L', '.', '2024-02-24 12:22:46', '2024-02-24 12:22:46'),
(1185, 582, 'ka', 'ბლუ ჰავაი', 'ოლდ ნიკი თეთრი, მალიბუ, მონინი ლიქიორი, წვენი, ანანასი, ალუბალი', '2024-02-24 12:23:28', '2024-02-24 12:23:28'),
(1186, 582, 'en', 'Blue Hawaii', 'Old Nick White, Malibu, Monin liqueur, Juice, Pineapple, Cherry', '2024-02-24 12:23:28', '2024-02-24 12:23:28'),
(1187, 583, 'ka', 'ბორჯომი 0.5 ლ.', '.', '2024-02-24 12:23:44', '2024-02-24 12:23:44'),
(1188, 583, 'en', 'Borjomi 0.5 L', '.', '2024-02-24 12:23:44', '2024-02-24 12:23:44'),
(1189, 584, 'ka', 'კოკა კოლა 0.25 ლ.', '.', '2024-02-24 12:25:40', '2024-02-24 12:25:40'),
(1190, 584, 'en', 'Coca-Cola 0.25 L', '.', '2024-02-24 12:25:40', '2024-02-24 12:25:40'),
(1191, 585, 'ka', 'ფანტა 0.25 ლ.', '.', '2024-02-24 12:27:34', '2024-02-24 12:27:34'),
(1192, 585, 'en', 'FANTA 0.25 L', '.', '2024-02-24 12:27:34', '2024-02-24 12:27:34'),
(1193, 586, 'ka', 'სპრაიტი 0.25 ლ.', '.', '2024-02-24 12:28:23', '2024-02-24 12:28:23'),
(1194, 586, 'en', 'Sprite 0.25 L', '.', '2024-02-24 12:28:23', '2024-02-24 12:28:23'),
(1195, 587, 'ka', 'ლონგ აილენდ აის თი', 'ოლდ ნიკი თეთრი, ნემიროვსკაია, ხოსე კუერვო სილვერი, გორდონსი, მონინი ლიქიორი, ლიმონი, კოკა-კოლა', '2024-02-24 12:29:56', '2024-02-24 12:29:56'),
(1196, 587, 'en', 'Long island iced tea', 'Old Nick White, Nemirovskaya, Jose Cuervo Silver, Gordon\'s, Monin Liquor, Lemon, Coca-Cola', '2024-02-24 12:29:56', '2024-02-24 12:29:56'),
(1197, 588, 'ka', 'ლონგ აილენდ ენერჯი', 'ოლდ ნიკი თეთრი, ნემიროვსკაია, ხოსე კუერვო სილვერი, მონინი ლიქიორი, გორდონსი, ლიმონი, რედ ბული', '2024-02-24 12:36:29', '2024-02-24 12:36:29'),
(1198, 588, 'en', 'Long island energy', 'Old Nick White, Nemirovskaya, Jose Cuervo Silver, Monin Liquor, Gordon\'s, Lemon, Red Bull', '2024-02-24 12:36:29', '2024-02-24 12:36:29'),
(1199, 589, 'ka', 'მარტინი ექსტრა დრაი', '.', '2024-02-24 12:36:40', '2024-02-24 12:36:40'),
(1200, 589, 'en', 'MARTINI EXTRA DRY', '.', '2024-02-24 12:36:40', '2024-02-24 12:36:40'),
(1201, 590, 'ka', 'წვენი', '.', '2024-02-24 12:37:25', '2024-02-24 12:37:25'),
(1202, 590, 'en', 'Juice', '.', '2024-02-24 12:37:25', '2024-02-24 12:37:25'),
(1203, 591, 'ka', 'რედბული', '.', '2024-02-24 12:38:32', '2024-02-24 12:38:32'),
(1204, 591, 'en', 'Red Bull', '.', '2024-02-24 12:38:32', '2024-02-24 12:38:32'),
(1205, 592, 'ka', 'კამპარი', '.', '2024-02-24 12:39:22', '2024-02-24 12:39:22'),
(1206, 592, 'en', 'Kampari', '.', '2024-02-24 12:39:22', '2024-02-24 12:39:22'),
(1207, 593, 'ka', 'ლიმონი', '.', '2024-02-24 12:40:56', '2024-02-24 12:40:56'),
(1208, 593, 'en', 'Lemon', '.', '2024-02-24 12:40:56', '2024-02-24 12:40:56'),
(1209, 594, 'ka', 'ლონგ აილენდ ბიჩ', 'ბაკარდი, ნემიროვსკაია, ხოსე კუერვო სილვერი, გორდონსი, მონინი ლიქიორი, ლიმონი, წვენი', '2024-02-24 12:41:52', '2024-02-24 12:41:52'),
(1210, 594, 'en', 'Long Island Beach', 'Bacardi, Nemirovskaya, Jose Cuervo Silver, Gordons, Monin Liqueur, Lemon, Juice', '2024-02-24 12:41:52', '2024-02-24 12:41:52'),
(1211, 595, 'ka', 'ტონიკი ჯინჯერი', '.', '2024-02-24 12:44:20', '2024-02-24 12:44:20'),
(1212, 595, 'en', 'Ginger Tonic', '.', '2024-02-24 12:44:20', '2024-02-24 12:44:20'),
(1213, 596, 'ka', 'ტონიკი სოდა', '.', '2024-02-24 12:46:21', '2024-02-24 12:46:21'),
(1214, 596, 'en', 'Tonic Soda', '.', '2024-02-24 12:46:21', '2024-02-24 12:46:21'),
(1215, 597, 'ka', 'მოეტ & შანდონ ბრუტ იმპერიალი', '.', '2024-02-24 12:47:12', '2024-02-24 12:47:12'),
(1216, 597, 'en', 'MOET & CHANDON', '.', '2024-02-24 12:47:12', '2024-02-24 12:47:12'),
(1217, 598, 'ka', 'ადიოს მ.', 'ბაკარდი, ნემიროვსკაია, ხოსე კუერვო სილვერი, გორდონსი, მონინი ლიქიორი, ლიმონი, სპრაიტი', '2024-02-24 12:47:33', '2024-02-24 12:47:33'),
(1218, 598, 'en', 'Adios M.', 'Bacardi, Nemirovskaya, Jose Cuervo Silver, Gordons, Monin Liqueur, Lemon, Sprite', '2024-02-24 12:47:33', '2024-02-24 12:47:33'),
(1219, 599, 'ka', 'ვევ კლიკო ბრუტი', '.', '2024-02-24 12:50:23', '2024-02-24 12:50:23'),
(1220, 599, 'en', 'VEUVE CLICQUOT', '.', '2024-02-24 12:50:23', '2024-02-24 12:50:23'),
(1221, 600, 'ka', 'დომ პერინიონ ბლანკ 2004', '.', '2024-02-24 12:53:54', '2024-02-24 12:53:54'),
(1222, 600, 'en', 'DOM PERIGNON', '.', '2024-02-24 12:53:54', '2024-02-24 12:53:54'),
(1223, 601, 'ka', 'კუბა ლიბრე', 'ბაკარდი, კოკა-კოლა, ლაიმი', '2024-02-24 12:56:04', '2024-02-24 12:56:04'),
(1224, 601, 'en', 'Cuba Libre', 'Bacardi, Coca-Cola, Lime', '2024-02-24 12:56:04', '2024-02-24 12:56:04'),
(1225, 602, 'ka', 'ჯინ ტონიკი', 'გორდონსი, ტონიკი, ლაიმი', '2024-02-24 13:01:33', '2024-02-24 13:01:33'),
(1226, 602, 'en', 'Gin tonic', 'Gordons, Tonic, Lime', '2024-02-24 13:01:33', '2024-02-24 13:01:33'),
(1227, 603, 'ka', 'ფორთოხალი', '.', '2024-02-24 13:01:50', '2024-02-24 13:01:50'),
(1228, 603, 'en', 'Orange', '.', '2024-02-24 13:01:50', '2024-02-24 13:01:50'),
(1229, 604, 'ka', 'გრეიფრუტი', '.', '2024-02-24 13:02:58', '2024-02-24 13:02:58'),
(1230, 604, 'en', 'Grapefruit', '.', '2024-02-24 13:02:58', '2024-02-24 13:02:58'),
(1231, 605, 'ka', 'ესპრესო', '.', '2024-02-24 13:03:28', '2024-02-24 13:03:28'),
(1232, 605, 'en', 'Espresso', '.', '2024-02-24 13:03:28', '2024-02-24 13:03:28'),
(1233, 606, 'ka', 'ვაშლი', '.', '2024-02-24 13:03:50', '2024-02-24 13:03:50'),
(1234, 606, 'en', 'Apple', '.', '2024-02-24 13:03:50', '2024-02-24 13:03:50'),
(1235, 607, 'ka', 'ამერიკანო', '.', '2024-02-24 13:06:09', '2024-02-24 13:06:09'),
(1236, 607, 'en', 'Americano', '.', '2024-02-24 13:06:09', '2024-02-24 13:06:09'),
(1237, 608, 'ka', 'ეფლ ჯეკი', 'ჯეკ დენიელსი, წვენი', '2024-02-24 13:06:45', '2024-02-24 13:06:45'),
(1238, 608, 'en', 'Apple Jack', 'Jack Daniels, Juice', '2024-02-24 13:06:45', '2024-02-24 13:06:45'),
(1239, 609, 'ka', 'კაპუჩინო', '.', '2024-02-24 13:10:09', '2024-02-24 13:10:09'),
(1240, 609, 'en', 'Cappuccino', '.', '2024-02-24 13:10:09', '2024-02-24 13:10:09'),
(1241, 610, 'ka', 'ლატე', '.', '2024-02-24 13:11:12', '2024-02-24 13:11:12'),
(1242, 610, 'en', 'Latte', '.', '2024-02-24 13:11:12', '2024-02-24 13:11:12'),
(1243, 611, 'ka', 'სტაფილო', '.', '2024-02-24 13:12:50', '2024-02-24 13:12:50'),
(1244, 611, 'en', 'Carrot', '.', '2024-02-24 13:12:50', '2024-02-24 13:12:50'),
(1245, 612, 'ka', 'ირლანდიული ყავა', '.', '2024-02-24 13:13:33', '2024-02-24 13:13:33'),
(1246, 612, 'en', 'Irish Coffee', '.', '2024-02-24 13:13:33', '2024-02-24 13:13:33'),
(1247, 613, 'ka', 'ანანასი', '.', '2024-02-24 13:14:35', '2024-02-24 13:14:35'),
(1248, 613, 'en', 'Pineapple', '.', '2024-02-24 13:14:35', '2024-02-24 13:14:35'),
(1249, 614, 'ka', 'იაგერ ბული', 'იაგერმაისტერი, რედ ბული, ლიმონი', '2024-02-24 13:15:11', '2024-02-24 13:15:11'),
(1250, 614, 'en', 'Jager Bull', 'Jagermeister, Red Bull, Lemon', '2024-02-24 13:15:11', '2024-02-24 13:15:11'),
(1251, 615, 'ka', 'ცხელი შოკოლადი', '.', '2024-02-24 13:15:21', '2024-02-24 13:15:21'),
(1252, 615, 'en', 'Hot Chocolate', '.', '2024-02-24 13:15:21', '2024-02-24 13:15:21'),
(1253, 616, 'ka', 'აღმოსავლური ყავა', '.', '2024-02-24 13:18:12', '2024-02-24 13:18:12'),
(1254, 616, 'en', 'Eastern Coffee', '.', '2024-02-24 13:18:12', '2024-02-24 13:18:12'),
(1255, 617, 'ka', 'ცივი ყავა', '.', '2024-02-24 13:19:04', '2024-02-24 13:19:04'),
(1256, 617, 'en', 'Iced Coffee', '.', '2024-02-24 13:19:04', '2024-02-24 13:19:04'),
(1257, 618, 'ka', 'ტეკილა სანრაიზი', 'ხოსე კუერვო სილვერი, წვენი, მონინი სიროფი, ფორთოხალი, ალუბალი', '2024-02-24 13:19:32', '2024-02-24 13:19:32'),
(1258, 618, 'en', 'Tequila Sunrise', 'Jose Cuervo Silver, juice, Monin syrup, Orange, Cherry', '2024-02-24 13:19:32', '2024-02-24 13:19:32'),
(1259, 619, 'ka', 'ცივი ყავა ნაყინით', '.', '2024-02-24 13:20:10', '2024-02-24 13:20:10'),
(1260, 619, 'en', 'Iced Coffee with Ice-Cream', '.', '2024-02-24 13:20:10', '2024-02-24 13:20:10'),
(1261, 620, 'ka', 'დაიკირი', 'ბაკარდი, ლიმონი, შაქარი, ლაიმი', '2024-02-24 13:22:54', '2024-02-24 13:22:54'),
(1262, 620, 'en', 'Daiquiri', 'Bacardi, lemon, sugar, lime', '2024-02-24 13:22:54', '2024-02-24 13:22:54'),
(1263, 621, 'ka', 'მარწყვის დაიკირი', 'ბაკარდი, ლიმონი, მარწყვი, შაქარი, ლაიმი', '2024-02-24 13:27:47', '2024-02-24 13:27:47'),
(1264, 621, 'en', 'Strawberry Daiquiri', 'Bacardi, lemon, strawberry, sugar, lime', '2024-02-24 13:27:47', '2024-02-24 13:27:47'),
(1265, 622, 'ka', 'ვანილის შეიკი', 'ნაყინი, რძე, მონინი სიროფი, შაქარი', '2024-02-24 13:30:46', '2024-02-24 13:30:46'),
(1266, 622, 'en', 'Vanilla Shake', '.', '2024-02-24 13:30:46', '2024-02-24 13:30:46'),
(1267, 623, 'ka', 'პიტნის და ლაიმის აკვაფრესკა', '.ლაიმი პიტნა მონინი სიროფი ლიმონი შაქარი', '2024-02-24 13:31:17', '2024-02-24 13:31:17'),
(1268, 623, 'en', 'Mint and Lime watercolor', '.Lime Mint Monin Syrup Lemon Sugar', '2024-02-24 13:31:17', '2024-02-24 13:31:17'),
(1269, 624, 'ka', 'მარგარიტა', '.ხოსე კუერვო სილვერი, მონინი ლიქიორი, ლიმონი, მარილი, ლაიმი', '2024-02-24 13:33:12', '2024-02-24 13:33:12'),
(1270, 624, 'en', 'Margarita', 'Jose Cuervo Silver, Monin Liqueur, Lemon, Salt, Lime', '2024-02-24 13:33:12', '2024-02-24 13:33:12'),
(1271, 625, 'ka', 'შოკოლადის შეიკი', '.ნაყინი, რძე, მონინი სიროფი, შაქარი', '2024-02-24 13:33:35', '2024-02-24 13:37:21'),
(1272, 625, 'en', 'Chocolate Shake', '.', '2024-02-24 13:33:35', '2024-02-24 13:33:35'),
(1273, 626, 'ka', 'კენკრის აკვაფრესკა', '.ლაიმი პიტნა კენკრა მონინი სიროფი ლიმონი შაქარი', '2024-02-24 13:35:28', '2024-02-24 13:35:48'),
(1274, 626, 'en', 'Berries watercolor', '.Lyme Berries Monin syrup Lemon Sugar', '2024-02-24 13:35:28', '2024-02-24 13:35:28'),
(1275, 627, 'ka', 'ბანანის შეიკი', '.ნაყინი, რძე, ბანანი, წვენი, შაქარი', '2024-02-24 13:35:36', '2024-02-24 13:35:36'),
(1276, 627, 'en', 'Banana Shake', '.', '2024-02-24 13:35:36', '2024-02-24 13:35:36'),
(1277, 628, 'ka', 'კოსმოპოლიტენი', '.ფინლანდია, კუანტრო, ლიმონი, წვენი, ლაიმი', '2024-02-24 13:36:27', '2024-02-24 13:36:27'),
(1278, 628, 'en', 'Cosmopolitan', 'Finland, Cointreau, Lemon, Juice, Lime', '2024-02-24 13:36:27', '2024-02-24 13:36:27'),
(1279, 629, 'ka', 'მარწყვის შეიკი', '.ნაყინი, რძე, მონინი სიროფი, შაქარი, მარწყვი ხილი', '2024-02-24 13:38:29', '2024-02-24 13:38:29'),
(1280, 629, 'en', 'Strawberry Shake', '.', '2024-02-24 13:38:29', '2024-02-24 13:38:29'),
(1281, 630, 'ka', 'მანჰეტენი', '.ჯეკ დენიელსი, მარტინი როსო, კამპარი, ალუბალი', '2024-02-24 13:41:10', '2024-02-24 13:41:10'),
(1282, 630, 'en', 'Manhattan', '.Jack Daniels, Martini Rosso, Campari, Cherry', '2024-02-24 13:41:10', '2024-02-24 13:41:10'),
(1283, 631, 'ka', 'მოჰიტო მარწყვის', '.ლაიმი, პიტნა, მარწყვი ხილი, სპრაიტი, მონინი სიროფი, ლიმონი შაქარი', '2024-02-24 13:41:52', '2024-02-24 13:41:52'),
(1284, 631, 'en', 'Strawberry Mojito', '.', '2024-02-24 13:41:52', '2024-02-24 13:41:52'),
(1285, 632, 'ka', 'მანჰეტენი', '.ჯეკ დენიელსი, მარტინი როსო, კამპარი, ალუბალი', '2024-02-24 13:42:22', '2024-02-24 13:42:22'),
(1286, 632, 'en', 'Manhattan', '.Jack Daniels, Martini Rosso, Campari, Cherry', '2024-02-24 13:42:22', '2024-02-24 13:42:22'),
(1287, 633, 'ka', 'მოჰიტო უალკოჰოლო', '.ლაიმი პიტნა სპრაიტი მონინი სიროფი ლიმონი შაქარი', '2024-02-24 13:45:00', '2024-02-24 13:45:00'),
(1288, 633, 'en', 'Mojito Non-alcoholic', '.Lyme Mint Sprite Monin syrup Lemon Sugar', '2024-02-24 13:45:00', '2024-02-24 13:45:00'),
(1289, 634, 'ka', 'კაპიროსკა', '.სტალიჩნაია, ლაიმი, მარწყვი (კივი), შაქარი', '2024-02-24 13:49:38', '2024-02-24 13:49:38'),
(1290, 634, 'en', 'Caipiroska', '.Stalichnaya, lime, strawberry (), sugar', '2024-02-24 13:49:38', '2024-02-24 13:49:38'),
(1291, 635, 'ka', 'ხილის კაპიროსკა', '.სტალიჩნაია,', '2024-02-24 13:51:04', '2024-02-24 13:51:04'),
(1292, 635, 'en', 'Fruit kapiroska', '.', '2024-02-24 13:51:04', '2024-02-24 13:51:04'),
(1293, 636, 'ka', 'ჰიროსიმა', '.სამბუკა მონინი სიროფი ბეილისი აბსენტი', '2024-02-24 13:51:08', '2024-02-24 13:51:08'),
(1294, 636, 'en', 'Hiroshima', '.Sambuca Monin syrup Bayliss Absinthe', '2024-02-24 13:51:08', '2024-02-24 13:51:08'),
(1295, 637, 'ka', 'ხილის კაპიროსკა', '.სტალიჩნაია, ლაიმი, მარწყვი (კივი), შაქარი', '2024-02-24 13:53:35', '2024-02-24 13:53:35'),
(1296, 637, 'en', 'Fruit kapiroska', '.Stalichnaya, lime, strawberry (kiwi), sugar', '2024-02-24 13:53:35', '2024-02-24 13:53:35');
INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1297, 638, 'ka', 'ფიდელი', '.კალუა ლიმონი აბსენტი', '2024-02-24 13:55:03', '2024-02-24 13:55:03'),
(1298, 638, 'en', 'Fidel', '.Kalua Lemon Absinthe', '2024-02-24 13:55:03', '2024-02-24 13:55:03'),
(1299, 639, 'ka', 'კაიპირინია', '.ბაკარდი, ლაიმი, შაქარი', '2024-02-24 13:57:25', '2024-02-24 13:57:25'),
(1300, 639, 'en', 'Caipirinha', '.Bacardi, lime, sugar', '2024-02-24 13:57:25', '2024-02-24 13:57:25'),
(1301, 640, 'ka', 'ქლაუდს', '.მალიბუ კუანტრო ბაკარდი თეთრი მონინი ლიქიორი ბეილისი', '2024-02-24 13:59:16', '2024-02-24 13:59:16'),
(1302, 640, 'en', 'Clouds', '.Malibu Cointreau Bacardi White Monin Liqueur Bayliss', '2024-02-24 13:59:16', '2024-02-24 13:59:16'),
(1303, 641, 'ka', 'ბ-52', '.კალუა ბეილისი კუანტრო', '2024-02-24 14:01:29', '2024-02-24 14:01:29'),
(1304, 641, 'en', 'B-52', '.Kalua Bayliss Cointreau', '2024-02-24 14:01:29', '2024-02-24 14:01:29'),
(1305, 642, 'ka', 'ხილის კაიპირინია', '.ბაკარდი, ლაიმი, მარწყვი (კივი) შაქარი', '2024-02-24 14:01:33', '2024-02-24 14:01:33'),
(1306, 642, 'en', 'Fruit caipirinha', '.Bacardi, lime, strawberry (kiwi) sugar', '2024-02-24 14:01:33', '2024-02-24 14:01:33'),
(1307, 643, 'ka', 'ხილის კაიპირინია', '.ბაკარდი, ლაიმი, მარწყვი (კივი) შაქარი', '2024-02-24 14:01:56', '2024-02-24 14:01:56'),
(1308, 643, 'en', 'Fruit caipirinha', '.Bacardi, lime, strawberry (kiwi) sugar', '2024-02-24 14:01:56', '2024-02-24 14:01:56'),
(1309, 644, 'ka', 'აპეროლ სპრიცი', '.აპეროლი მარანი ნახ.მშრალი სოდა ვოთერი ფორთოხალი ხილი', '2024-02-24 14:03:54', '2024-02-24 14:03:54'),
(1310, 644, 'en', 'Aperol spritz', '.Aperol Cellar Fig. dry Soda water orange fruit', '2024-02-24 14:03:54', '2024-02-24 14:03:54'),
(1311, 645, 'ka', 'შავი რუსი', '.სტალიჩნაია, კალუა', '2024-02-24 14:04:33', '2024-02-24 14:04:33'),
(1312, 645, 'en', 'Black Russian', '.Stalichnaya, Kalua', '2024-02-24 14:04:33', '2024-02-24 14:04:33'),
(1313, 646, 'ka', 'რედ ბულ ვოდკა', '.ნემიროვსკაია რედ ბული ლიმონი', '2024-02-24 14:05:46', '2024-02-24 14:05:46'),
(1314, 646, 'en', 'Red Bull Vodka', '.Nemirovskaya Red Bull Lemon', '2024-02-24 14:05:46', '2024-02-24 14:05:46'),
(1315, 647, 'ka', 'თეთრი რუსი', '.სტალიჩნაია, კალუა, რძე', '2024-02-24 14:06:49', '2024-02-24 14:06:49'),
(1316, 647, 'en', 'White Russian', '.Stalichnaya, Kalua, milk', '2024-02-24 14:06:49', '2024-02-24 14:06:49'),
(1317, 648, 'ka', 'ოლდ ფეშენი', '.ჯეკ დენიელსი, ფორთოხალი, კამპარი', '2024-02-24 14:09:27', '2024-02-24 14:09:27'),
(1318, 648, 'en', 'Old Fashion', '.Jack Daniels, Orange, Campar', '2024-02-24 14:09:27', '2024-02-24 14:09:27'),
(1319, 649, 'ka', 'ვისკი საუერი', '.ჯეკ დენიელსი, ლიმონი, შაქარი, ფორთოხალი, ალუბალი', '2024-02-24 14:13:29', '2024-02-24 14:13:29'),
(1320, 649, 'en', 'Whiskey Sour', '.Jack Daniels, lemon, sugar, orange, cherry', '2024-02-24 14:13:29', '2024-02-24 14:13:29'),
(1321, 650, 'ka', 'მიწისთხილი', '.', '2024-02-24 14:22:22', '2024-02-24 14:22:22'),
(1322, 650, 'en', 'Peanut', '.', '2024-02-24 14:22:22', '2024-02-24 14:22:22'),
(1323, 651, 'ka', 'ქართული თხილი', '.', '2024-02-24 14:24:26', '2024-02-24 14:24:26'),
(1324, 651, 'en', 'Georgian nuts', '.', '2024-02-24 14:24:26', '2024-02-24 14:24:26'),
(1325, 652, 'ka', 'მიწისთხილი', '.', '2024-02-24 14:24:58', '2024-02-24 14:24:58'),
(1326, 652, 'en', 'Peanut', '.', '2024-02-24 14:24:58', '2024-02-24 14:24:58'),
(1327, 653, 'ka', 'ფისტაშკა', '.', '2024-02-24 14:26:29', '2024-02-24 14:26:29'),
(1328, 653, 'en', 'Pistachio', '.', '2024-02-24 14:26:29', '2024-02-24 14:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `svg` longtext DEFAULT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `image`, `svg`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(1, '20240124120836.jpg', 'm 207.90122,269.58162 0.31,-0.21 0.88,0.07 0.63,0.09 0.91,0.38 0.49,0.1 6.16,0.05 0.66,0.13 0.92,0.39 0.5,0.09 5.14,0.03 1.04,0.15 2.6,1.24 0.57,0.82 0.07,0.73 -0.07,3.03 0.09,0.44 0.28,0.35 0.45,0.12 0.8,0.03 3.21,-0.06 0.92,0.2 0.5,0.34 0.35,0.38 0.72,1.19 0.44,0.54 0.5,0.32 1.2,0.35 0.59,0.28 1.96,0.32 0.82,0.44 0.29,0.25 0.17,0.54 0.09,1.23 0.35,0.47 0.41,0.07 0.52,-0.16 3.16,-1.58 0.99,-0.22 1.2,-0.45 0.5,-0.06 4.1,0.03 0.83,0.03 0.48,0.14 2.52,1.19 0.59,0.6 0.64,1.2 0.54,1.52 1.39,-0.41 0.9,-0.39 2.26,-0.24 0.76,-0.32 0.85,-0.2 6.04,0.1 2.84,-2.72 2.3,-1.17 1.74,-1.46 0.44,-0.15 0.47,-0.05 2.61,0.01 0.79,0.09 0.42,0.2 1.73,1.65 0.47,0.62 1.46,3.01 0.48,0.49 0.42,0.16 0.47,0.05 4.09,0.03 0,0 0.28,1.16 1.63,3.21 0.12,0.45 0.03,0.65 0.02,3.42 -0.11,0.81 -0.39,0.64 -1.7,1.68 -0.33,0.68 -0.05,1.5 0.14,0.58 0.41,0.85 0.18,0.83 1.38,2.77 1.51,1.73 0.47,0.85 0.42,0.35 1.92,0.91 0.85,0.75 1.24,2.39 2.22,2.21 0.38,0.47 0.24,0.56 0.19,1.45 0.35,0.72 0.48,1.31 0.82,2.69 0,0 -0.61,0.35 -0.5,0.65 -0.22,0.69 0.08,1.79 -0.14,0.94 -1.46,2.99 0.36,0.5 0.15,1.76 -0.79,0.33 -0.75,0.68 -0.89,1.73 -1.54,-0.13 -0.5,0.43 -0.14,0.83 -0.47,0.46 -0.86,0.3 -0.36,0.36 -0.71,1.65 1.27,2.15 0.29,1.25 -0.03,0.58 -0.32,0.5 -0.79,0.04 -1.08,-0.89 -0.93,0.04 -2.98,0.91 -2.87,-0.16 -0.9,-0.39 -1.15,-1.14 -1.77,-1.1 -0.83,-1.47 -2.62,0.05 -1.68,0.27 -1.05,-0.61 -1.19,-0.71 -1.36,0.12 -0.79,0.18 -1.04,-0.42 -0.87,-1.07 -0.87,-0.53 -0.86,-0.28 -1.7,-1.32 -0.83,-0.17 -2.08,0.34 -1.69,-0.64 -4.77,0.22 -0.65,0.33 -0.66,-1.93 -0.36,-0.36 -0.61,-0.21 -0.73,-0.78 -1.47,-0.06 -2.29,0.88 -0.76,0.01 -1,0.15 -0.9,0.3 -1.07,0.08 -0.23,-1.11 -0.79,-0.14 -1.14,0.7 -1.77,-0.38 -0.96,0.37 -3,2.18 -0.64,0.15 -0.8,-0.24 -2.71,-1.48 -0.97,-0.13 -1.58,0.02 -0.5,-0.07 -0.37,-0.64 -0.04,-0.86 -1.42,-1.43 -2.58,0.11 -0.92,1.26 -2.89,2.01 -0.57,0.23 -1.25,0.3 -0.49,1.37 -0.82,0.73 -0.06,1.22 -1.23,1.44 -0.81,1.42 -3.15,1.01 -0.24,0.83 -1.01,1.44 -1.61,0.89 -0.54,-0.02 -0.95,-1.25 -0.48,-0.96 -1.3,-0.59 -1.15,-0.31 -0.3,-1.11 -0.76,-0.42 -1.59,-0.7 -1.63,-0.8 -3.01,0.11 -1.52,-0.33 -0.25,-0.5 0.27,-0.76 0.57,-0.44 0.1,-0.61 -0.33,-0.71 -1.16,-0.53 -3.89,1.71 -1.43,0.35 -1.04,0.16 -1.05,-0.45 -2.97,-1.97 -1.53,-1.41 -2.97,-1.1 -0.48,-0.79 -0.9,-0.34 -1.58,-0.12 -1.12,-0.52 0.1,-1.17 0.13,-0.22 0.23,-0.26 0.06,-0.57 0.2,-0.18 0.26,-0.04 0.23,-0.17 0.4,-0.35 0.23,-1.01 0.16,-1.35 0.1,-1.83 -0.03,-1.53 0.32,-1.84 0.59,-1.74 0.63,-0.88 0.42,-0.39 0.2,-0.35 0.29,-0.61 0.56,-0.74 0.49,-0.4 0.66,-0.87 0.23,-0.44 1.02,-1.27 1.14,-1.09 1.08,-0.96 0.5,-0.31 0.19,-0.08 0.43,0 0.39,0.17 0,0.44 0.13,0.39 0.27,0.66 0.68,-0.13 0.43,0.13 -0.06,-0.31 0.06,-0.3 0.3,-0.27 0.19,0.35 0.53,0.05 0.52,-0.35 0.17,-0.13 0.36,-0.48 0.29,-0.31 0.53,-0.88 0.65,-0.69 0.72,-1.05 0.69,-1.23 0.49,-0.87 0.27,-0.48 0.16,-0.57 0.23,-0.18 0.39,-0.04 0.26,-0.57 0.46,-0.66 0.43,-1.18 0.43,-1 1.21,-3.37 0.82,-2.98 0.46,-0.26 0.23,-0.27 0.32,-0.79 0.53,-0.74 0.75,-2.01 0.14,-0.66 0.81,-2.24 0.23,-0.96 0.56,-3.86 0.13,-2.15 0.17,-2.45 -0.1,-0.92 -0.63,-2.72 -0.03,-0.84 -0.13,-0.65 z', 1, 1, '2024-01-24 08:08:36', '2024-01-24 08:08:36'),
(2, '20240124120915.jpg', 'm 206.09122,233.21162 0.59,-0.37 0.42,-0.12 1.35,-0.2 0.9,-0.35 0.63,-0.09 8.01,0.07 0.61,-0.07 1.41,-0.42 2.21,-0.25 0.91,-0.35 1.77,-0.31 1.85,-0.85 0.66,-0.2 5.67,0.01 0.67,-0.12 0.76,-0.33 2.42,-0.41 1.45,0.79 1.68,0.25 0.92,0.38 1.63,0.26 0.89,0.38 1.07,0.28 0.82,0.65 2.88,2.9 0.92,0.6 1.63,0.23 0.76,0.35 0.47,0.09 5.26,0.06 1.11,0.13 0.9,0.42 0.97,0.22 1.09,0.6 0.3,0.42 0.35,0.95 0,0 -0.98,0.53 -0.74,0.54 -0.91,0.97 -0.17,0.28 -0.11,0.44 -0.06,1.48 0.16,0.47 1.26,2.5 0.58,0.58 1.12,0.56 0.45,0.13 3.21,0.06 0.81,0.13 1.39,0.71 1.11,0.84 0.61,0.2 0.49,0.05 0.64,0 0.7,-0.22 0.58,-0.86 0.38,-0.89 0.47,-0.78 0.17,-0.19 0.42,-0.17 0.98,-0.05 2.95,0.08 0.49,0.11 0.89,0.38 1.04,0.19 0.67,0.23 1.74,3.5 0.24,1.59 0.39,0.89 0.28,1.14 0.66,1.39 0.63,0.97 0.69,0.2 1.96,0 0.78,0.09 2.81,1.34 1.53,0.84 2.59,2.45 0.43,0.21 0.87,0.19 0.91,0.38 1.26,0.36 0.62,0.48 1.37,1.34 0.67,0.4 0.94,0.11 5.69,-0.04 0.84,0.06 0.62,0.21 0.48,0.47 1.13,1.7 0.2,0.65 0.04,8.48 0.18,0.98 0.36,0.91 0.14,2.12 0,0 -3.19,-0.03 -0.61,0.13 -0.57,0.35 -0.81,0.77 -0.49,0.64 -0.59,1.26 -0.18,1.44 -0.13,0.44 -0.54,0.87 -0.35,0.22 -1.23,0.19 -1.06,0.41 -0.73,0 -0.71,-0.31 -1.45,-1.28 -0.46,-0.18 -0.5,-0.06 -2.22,0 -0.65,0.14 -0.74,0.34 -0.31,0.05 -2.31,0.1 0,0 -4.09,-0.03 -0.47,-0.05 -0.42,-0.16 -0.48,-0.49 -1.46,-3.01 -0.47,-0.62 -1.73,-1.65 -0.42,-0.2 -0.79,-0.09 -2.61,-0.01 -0.47,0.05 -0.44,0.15 -1.74,1.46 -2.3,1.17 -2.84,2.72 -6.04,-0.1 -0.85,0.2 -0.76,0.32 -2.26,0.24 -0.9,0.39 -1.39,0.41 -0.54,-1.52 -0.64,-1.2 -0.59,-0.6 -2.52,-1.19 -0.48,-0.14 -0.83,-0.03 -4.1,-0.03 -0.5,0.06 -1.2,0.45 -0.99,0.22 -3.16,1.58 -0.52,0.16 -0.41,-0.07 -0.35,-0.47 -0.09,-1.23 -0.17,-0.54 -0.29,-0.25 -0.82,-0.44 -1.96,-0.32 -0.59,-0.28 -1.2,-0.35 -0.5,-0.32 -0.44,-0.54 -0.72,-1.19 -0.35,-0.38 -0.5,-0.34 -0.92,-0.2 -3.21,0.06 -0.8,-0.03 -0.45,-0.12 -0.28,-0.35 -0.09,-0.44 0.07,-3.03 -0.07,-0.73 -0.57,-0.82 -2.6,-1.24 -1.04,-0.15 -5.14,-0.03 -0.5,-0.09 -0.92,-0.39 -0.66,-0.13 -6.16,-0.05 -0.49,-0.1 -0.91,-0.38 -0.63,-0.09 -0.88,-0.07 -0.31,0.21 0,0 -0.07,-0.85 -0.19,-0.97 -0.17,-0.39 -0.23,-3.43 -0.19,-3.12 -0.46,-3.82 -0.04,-2.29 0.07,-0.83 -0.3,-0.66 -0.36,-1.58 0.04,-0.57 0.19,-0.22 0.2,-1.23 -0.13,-0.05 -0.26,0.62 -0.1,0.7 -0.23,0.09 -0.62,-0.97 -0.2,-0.7 -0.56,-0.18 -0.23,-0.57 -0.42,-0.62 -0.2,-0.44 -0.82,-1.89 -0.26,-1.1 -1.08,-1.89 -0.27,-0.48 -0.06,-0.44 -0.36,-0.57 -0.17,-0.45 -0.39,-0.48 0,-0.26 0.16,-0.31 0.27,0 0.23,0.04 -0.07,-0.44 0.03,-0.13 0.17,-0.13 0.16,0 0,0.44 0.33,0.83 0.1,0.31 0,0.53 0.23,0.31 0.16,0.44 0,0.22 -0.13,0.17 -0.1,0.49 0.43,0.26 0.23,0.05 0.09,-0.22 0.37,0.08 0.29,0.75 0.13,0 0.23,-0.39 0.13,-0.14 0,-0.3 -0.19,-0.36 -0.07,-0.17 0,-0.22 0.13,-0.27 0.23,0.05 0.13,-0.13 -0.1,-0.22 -0.26,-0.05 -0.03,-0.13 0.13,-0.17 0.39,-0.23 0.13,-0.13 0,-0.13 -0.13,-0.22 -0.46,0.04 -0.19,-0.08 -0.13,-0.44 -0.13,-0.44 -0.66,-0.14 -0.13,-0.3 -0.4,-0.09 -0.09,-0.35 -0.27,0.08 -0.13,-0.3 0.2,-0.36 0.2,0 0.16,0 0.43,0.18 0.32,0.13 0.37,-0.17 0.19,-0.09 0.23,-0.09 0.89,-0.31 0.65,-0.31 0.56,0 0.33,-0.04 0.23,-0.13 0.23,-0.31 0.16,-0.44 -0.13,-0.62 0,-0.75 0.13,-0.26 0.3,-0.09 0.23,-0.09 0.39,-0.13 0.29,-0.13 0,-0.18 -0.32,-0.26 -0.27,-0.09 -0.39,-0.09 -0.16,-0.04 -0.23,-0.18 z', 2, 2, '2024-01-24 08:09:15', '2024-01-29 10:43:33'),
(3, '20240124124007.jpg', 'm 191.70122,221.17162 0.52,0.18 0.1,0.22 0.33,0.18 0,-0.22 0.52,0 0.36,0.35 0,0.22 -0.03,0.18 0.23,0.44 0,0.09 -0.2,0.13 -0.46,1.1 -0.62,0.57 -0.36,-0.04 -0.03,-0.09 0,-1.06 -0.13,-0.53 0,-0.4 -0.13,-0.31 -0.16,-0.31 -0.1,-0.35 0,-0.26 0.16,-0.09 z m 96.81,-163.060004 -0.31,0.53 -0.14,0.67 0.19,0.7 0.37,0.4 0.55,0.22 0.96,0.18 1.03,0.07 2.37,0.99 2.4,0.76 2,1.02 1.85,1.21 1.92,0.84 1.41,0.81 1.26,1.14 1.11,0.59 1.81,0.44 1.48,0.62 1.26,1.1 3.58,1.72 1.99,0.51 0.37,-0.26 0.15,-0.67 -0.15,-0.85 -1.45,-3.21 0.22,-0.78 0.52,-0.19 1.66,0.29 0.92,0.03 1.48,-0.6 1.14,-0.11 4.87,-1.45 1.74,-0.04 1.33,0.26 0.74,0.55 0.78,0.41 0.67,0.63 1.03,0.15 2.62,-0.63 2.62,0.92 3.51,0.22 0.33,0.66 0.11,1.33 0.33,0.92 0.48,0.48 0.81,0.44 1.55,0.63 0.88,0.66 0.11,0.78 -0.37,1.73 -0.41,1.18 1.44,0 1.33,0.15 2.36,0.33 1.99,0.41 1.92,0.85 1.84,1.18 1.73,0.67 0.77,0.41 0.11,0.59 -0.59,1.18 -0.59,0.85 -0.63,1.18 0.07,1.58 0.22,1.18 1.1,1.84 0.77,1.07 2.06,1.95 6.28,4.32 6.46,5.870004 1.14,1.18 0.95,1.66 0.32,0.28 0,0 -0.94,-0.48 -0.69,-0.51 -1.08,0.99 -1.24,0.7 -1.82,1.72 -1.02,0.55 -0.7,0.6 -0.37,0.5 -0.55,1.15 -0.37,1.4 -0.64,0.99 -2.55,0.86 -0.22,0.15 -0.2,0.4 -0.05,0.47 0.06,6.02 -0.15,1.06 -0.57,0.78 -0.98,0.86 -0.42,0.21 -1,0.25 -0.87,0.39 -0.7,0 -0.42,-0.32 -0.53,-1.08 -0.12,-1.36 -0.12,-0.42 -0.54,-0.91 -0.51,-0.26 -0.95,0.02 -1.22,0.48 -0.68,0.1 -6.15,0.01 -1.56,0.51 -2.23,0.11 -0.48,0.11 -0.88,0.38 -0.74,0.03 -0.44,-0.15 -0.4,-0.29 -1.98,-2 -0.73,-0.57 -1.27,-0.61 -1.64,-0.24 -0.9,-0.39 -1.15,-0.29 -2.99,-1.54 -0.54,-0.13 -0.56,0.17 -0.96,0.75 -0.78,0.42 -1.75,1.49 -2.79,1.36 -0.89,-0.01 -0.88,-0.4 -0.76,-0.14 -4.21,-0.05 -0.74,-0.18 -3.12,-1.62 -1.42,-0.65 -1.98,-0.18 -1.03,-0.42 -0.59,-0.12 -4.5,-0.04 -0.98,-0.1 -4.68,-2.33 -0.81,-0.14 -2.53,-0.05 -0.59,0.09 -0.25,0.15 -0.22,0.53 -0.15,1.08 -0.35,0.92 -0.26,1.62 -1.29,2 -0.41,0.37 -0.59,0.18 -1.78,0.12 -0.9,0.37 -0.48,0.1 -4.46,0 -0.64,0.14 -0.35,0.24 -0.33,0.45 -2.67,5.42 -0.74,1.21 1.05,0.96 0.69,1.23 0.69,0.73 2.28,1.16 1.12,0.88 0.89,0.46 2.57,2.39 1.73,1.02 1.64,0.24 0.89,0.39 1.28,0.33 1.26,0.64 1.24,0.96 3.31,1.65 0.81,0.82 0.55,1.02 1.32,1.5 0.64,1.12 1.09,1.05 -1.26,0.9 -1.15,0.62 -0.46,0.43 -0.35,0.52 -0.14,1.08 0.01,4.02 0.09,0.93 0.74,1.54 1.51,1.73 0.4,0.78 0.85,1.1 0.41,0.78 0.86,1.1 1.03,2.05 0.94,1.23 1.24,2.52 0.29,1.77 0.81,1.46 0,0 -1.71,-0.17 -1.43,0.07 -0.56,0.24 -0.98,0.73 -0.78,0.21 -4.6,-0.05 -0.96,0.15 -0.34,0.24 -0.26,0.32 -0.84,1.77 -0.36,0.5 -0.58,0.52 -1.18,0.64 -0.73,0.8 -0.19,0.61 0.01,3.01 -0.15,0.79 -0.24,0.34 -0.32,0.25 -1.9,0.88 -0.38,0.39 -0.16,0.41 -0.06,0.77 0.05,6.69 -0.06,0.61 -0.16,0.43 -0.38,0.49 -1.57,1.58 -0.67,1.15 -0.74,0.82 -2.19,2.13 -0.49,0.38 -1.04,0.56 -1.3,1.3 -2.92,5.76 -0.94,1.22 -1.03,2.02 -1.06,1.34 -1.03,1.58 -1.07,2.02 0.21,0.75 0.08,1.02 -0.01,0.99 -0.16,0.57 -0.34,0.27 -1.37,0.2 -1.49,0.48 -0.34,0.29 -0.09,0.6 0.47,1.18 0.12,0.86 0.01,11.22 -0.11,1.21 -0.45,1.23 -0.1,1.54 -0.13,0.49 -0.18,0.28 -0.37,0.32 -0.64,0.35 -0.95,0.69 -0.47,0.2 -0.84,-0.01 -0.9,-0.38 -0.49,-0.11 -0.69,-0.01 -0.9,0.15 0,0 -0.35,-0.95 -0.3,-0.42 -1.05,-0.58 -1,-0.24 -0.9,-0.42 -1.11,-0.13 -5.27,-0.07 -0.47,-0.09 -0.76,-0.35 -1.63,-0.23 -0.92,-0.6 -2.89,-2.9 -0.82,-0.65 -1.07,-0.28 -0.89,-0.38 -1.63,-0.26 -0.92,-0.38 -1.68,-0.25 -1.45,-0.79 -2.42,0.41 -0.76,0.33 -0.67,0.12 -5.67,-0.01 -0.66,0.2 -1.84,0.86 -1.77,0.31 -0.92,0.35 -2.2,0.25 -1.41,0.41 -0.59,0.07 -8.03,-0.07 -0.63,0.1 -0.9,0.35 -1.35,0.19 -0.42,0.13 -0.58,0.36 0,0 -0.2,-0.49 -0.36,-0.26 -0.66,-0.31 -0.46,-0.18 -0.16,-0.09 -0.82,-0.13 -0.1,0.04 -0.39,0.04 -0.56,0.13 -0.56,0 -0.26,0 -0.69,0.09 -0.3,-0.04 -0.49,-0.18 -0.13,-0.18 -0.2,-0.04 -0.1,0.13 -0.33,0.09 -0.46,0 -0.16,0.13 0.07,0.57 0.26,0.13 0.49,0.79 0.2,0 0.03,0.44 -0.16,0.22 0.2,0.75 0.16,0.79 0.13,0.88 0.33,0.79 0.29,0.53 0.13,0.26 0.03,0.4 -0.2,0.44 -0.23,0.22 -0.13,0.13 -0.13,0.09 -0.39,0.13 -0.23,0 -0.13,-0.09 -0.26,-0.35 -0.07,-0.22 -1.15,-1.58 -0.59,-0.53 -0.26,-0.7 -0.43,-0.44 -0.72,-1.06 -0.2,-0.31 -0.49,-0.66 -0.36,-0.31 -0.23,-0.44 -0.16,-1.72 -0.23,-0.44 -0.13,-0.09 -0.69,-0.13 0.16,-0.18 0.13,-0.26 0.18,-0.13 0.25,-0.04 -0.03,-0.22 -0.43,0.09 0.07,-0.22 0.23,-0.22 0.36,-0.04 0.1,-0.13 -0.07,-0.26 -0.43,-0.13 0.07,-0.79 -0.29,-0.75 -0.33,-0.57 -0.69,-0.97 0.07,-0.44 0.33,-0.79 0.52,-0.62 0.13,-0.4 0.33,-0.44 0.23,-0.13 0.13,0.09 0.2,0 0.1,-0.09 0.36,0.04 0.03,-0.13 -0.95,-0.31 -0.59,-0.75 -0.62,-0.31 -0.52,-0.04 -0.2,-0.26 -0.16,-0.18 -0.43,-0.26 -0.2,-0.13 0,-0.31 0.26,-0.09 0.43,-0.62 0.46,-1.37 0.16,-2.52 -0.46,-3.31 -0.17,-0.75 -0.65,-1.94 -0.46,-1.99 -0.43,-1.63 -0.69,-2.12 -0.66,-1.86 -0.39,-1.5 -0.59,-1.64 -0.13,-0.62 -0.2,-0.62 -0.36,-0.53 -0.49,-1.19 -0.29,-1.02 -0.56,-0.22 -0.89,-0.88 -0.92,-0.44 -0.59,-0.49 -0.52,-0.27 -0.36,-0.18 0.13,-0.62 0,-0.49 0.2,-0.49 0.16,-0.53 0.39,-0.04 0.36,-0.09 0.85,0 0.36,-0.09 0.36,-0.13 -0.07,-0.35 -0.2,0.04 -0.23,0.04 -0.23,0.22 -0.23,0.09 -0.75,-0.09 -0.2,0 -0.59,0.31 -0.26,0.75 -0.16,0.22 -0.1,0.44 0.07,0.53 -0.13,0 -0.07,-0.09 -0.16,-0.44 -0.03,-0.4 -0.43,-1.51 0,0 2.45,-1.33 3.07,-1.43 2.9,-1.47 0.75,-0.86 0.33,-0.67 0.33,-0.45 2.25,-2.3 0.8,-1.3 0.5,-0.54 0.45,-0.32 1.42,-0.63 0.89,-0.19 0.87,-0.35 1.87,-0.29 7.51,-3.66 1.04,-0.8 1.02,-0.55 1.75,-1.47 0.99,-0.54 1.02,-0.77 0.9,-0.48 1.74,-1.72 0.85,-1.37 2.44,-2.5 0.56,-1.02 1.56,-1.81 0.89,-1.82 1.11,-1.37 2,-0.67 1.12,-0.59 0.6,-0.67 0.26,-1.01 0.37,-0.9 0.26,-1.63 0.38,-0.96 0.08,-0.57 0.02,-2.54 -0.1,-0.72 -0.3,-0.63 -0.66,-0.85 -0.52,-0.94 -2.36,-2.43 -0.4,-0.67 -0.26,-1.03 -0.39,-0.89 -0.1,-1.16 -0.03,-6.92 -0.09,-0.48 -0.35,-0.73 -0.09,-0.49 -0.12,-2.88 -0.57,-1.6 0,-0.65 -1.44,-1.44 -0.17,-0.48 0.17,-0.45 0.65,-0.84 0.41,-0.76 0.71,-0.74 1.63,-0.81 1.04,-0.39 0.66,-0.9 0.68,-1.47 0.07,-0.67 -0.17,-0.51 -0.87,-0.9 -0.17,-0.58 -0.08,-1.79 -0.15,-0.46 -0.4,-0.48 -0.59,-0.29 -0.41,-0.42 -0.28,-0.68 0,-3.78 0.14,-0.64 0.4,-0.91 0.09,-0.63 -0.16,-0.74 -0.46,-0.27 -1.86,-0.04 -0.42,-0.1 -0.22,-0.17 -0.59,-1.03 -0.18,-1.31 -0.39,-1.060004 -0.06,-0.55 0.21,-0.43 0.35,-0.32 2.46,-1.14 0.55,-0.13 1.81,-0.14 1.05,-0.39 1.76,-0.32 3.29,-1.58 1.96,-0.17 1.54,-0.5 2.22,-0.05 0.85,-0.1 0.95,-0.34 1.2,-0.17 0.41,-0.18 0.24,-0.28 0.47,-0.94 0.14,-1.2 0.17,-0.61 0.54,-1.13 0.33,-0.48 0.52,-0.48 1.13,-0.64 0.94,-0.8 1.66,-1.71 0.25,-0.39 1.91,-3.93 0.2,-0.89 1,-2.07 0.27,-1.69 0.47,-1.15 -0.09,-0.96 -1.11,-2.26 0.01,-4.02 0.13,-0.62 1.02,-2.16 0.26,-1 0.97,-2 0.3,-1.17 0.34,-0.76 0,0 0.05,-0.18 3.04,0.47 0.74,-0.15 3.01,-1.91 0.96,-0.01 1.22,0.25 1.11,0.4 0.93,0.69 1.79,1.87 1.11,0.18 1.77,0.1 0.99,-0.49 1.65,-1.75 0.85,-0.67 0.78,-0.01 1.89,0.28 0.66,-0.19 0.37,-0.48 0.33,-1 0.37,-0.63 0.44,-0.3 0.85,-0.23 3.29,-0.32 1.33,-0.38 2.47,-1.2 1.22,-0.04 0.7,0.29 1.63,1.1 1,0.88 0.19,0.78 -0.74,0.48 -0.63,0.56 -0.16,0.27 z', 3, 1, '2024-01-24 08:40:07', '2024-01-24 08:40:07'),
(4, '20240124182837.jpg', 'm 307.52122,170.92162 1.28,1.52 0.28,0.75 -0.01,1.47 -0.12,0.46 -0.44,1.04 -0.08,1.78 0.17,0.94 0.9,1.23 0.19,0.6 0.03,2.93 -0.12,1.42 1.27,0.16 1.19,-0.09 0.89,-0.38 1.14,-0.29 0.75,-0.33 1.15,-0.27 1.14,-0.53 0.63,-0.53 1.07,-2.1 0.31,-0.28 0.42,-0.17 1.21,0.03 1.17,0.49 1.5,0.21 0.52,0.3 1.27,1.16 0.23,0.16 0.62,0.17 0.99,0 1.23,-0.45 1.07,-0.16 0.26,-0.11 0.22,-0.25 0.31,-1.59 0.42,-1.23 0.2,-0.36 0.49,-0.16 0.42,0.03 2.23,0.9 0.19,0.18 0.55,0.98 0.66,0.68 0.27,0.17 1.51,0.28 0.17,0.1 0.06,0.16 1.42,0.44 1.27,0.91 1.03,0.59 5.31,5.22 0.55,0.75 0.29,1.13 0.38,0.89 0.17,2.75 0.38,0.88 0.21,0.77 0.15,0.22 0.36,0.18 0.42,0.05 2.82,-0.01 0.72,0.17 2.53,1.28 1.5,1.32 1.15,0.67 1.1,1.03 0.46,0.28 0.28,0 0.24,-0.11 1.19,-1.09 0.53,-0.29 1.98,-0.15 1.03,-0.42 0.59,-0.11 1.09,0.02 0.91,0.25 1.21,-0.75 1.79,-0.26 1.39,-0.67 1.13,-0.86 0.9,-0.47 1.57,-1.45 0.64,-0.81 0.86,-1.77 0.35,-0.41 4.23,-2.13 1.02,-0.96 0.09,-0.44 0.13,-0.21 0.57,-0.25 1.82,-0.01 1.95,0.13 1.4,-0.16 1.04,-0.41 0.64,-0.11 6.03,0.01 0.81,0.14 0.75,0.35 1,0.25 1.04,0.43 1.95,0.19 1.22,0.47 1.3,0.11 0.81,-0.09 0.9,-0.39 1.14,-0.29 0.76,-0.33 1.62,-0.25 1.06,-0.43 1.15,-0.06 0.62,0.16 5.67,2.85 1.62,0.26 1.19,0.46 1.6,0.15 0,0 1.78,1.76 0.77,0.54 1.63,0.26 0.89,0.38 0.46,0.1 2.93,0.13 1.03,0.43 0.59,0.1 0.72,-0.13 2.39,-1.19 1.86,-1.56 1.55,-0.73 0.97,-0.1 1.49,0.05 0.59,0.16 0.82,0.46 0.29,0.26 0.62,1.03 0.6,1.26 0.09,0.59 -0.1,0.58 -0.35,0.73 -0.29,1.13 -0.36,0.74 -0.28,1.13 -0.95,1.85 -0.14,0.41 -0.04,0.75 0.08,0.6 0.41,0.88 0.34,1.04 -1.26,0.24 -1.05,0.41 -1.62,0.24 -1.27,0.61 -1.1,0.82 -0.43,0.2 -0.82,0.1 -2.72,-0.03 -0.77,0.19 -0.52,0.38 -0.69,0.7 -0.4,0.5 -0.49,0.93 -1,1.06 -0.65,0.47 -1.79,0.83 -0.51,0.46 -0.69,1.35 -0.24,1 -0.4,0.87 -0.08,0.43 0.08,0.73 0.36,0.73 0.3,1.12 0.4,0.89 0.09,0.77 -0.02,3.36 -0.13,0.6 -0.42,1.02 -0.13,1.69 -2.41,1.17 -0.59,0.57 -0.61,1.24 -0.27,1.14 -0.35,0.73 -0.23,1.62 -0.39,0.88 -0.33,1.25 -0.64,1.25 -1.42,1.59 -0.73,1.22 -0.87,0.73 -4.33,2.06 -0.69,0.5 -0.11,1.04 -0.38,0.88 -0.13,0.79 0.02,8.55 -0.1,0.96 -0.4,0.57 -1.13,0.66 -1.98,1.77 -0.93,0.5 -0.52,0.39 -1.21,1.16 -0.61,0.76 -0.63,1.24 -0.13,0.95 0.07,1.13 0.47,1.18 0.11,1.05 0,0 -1.07,0.09 -1.03,0.41 -1.35,0.15 -0.42,0.12 -1.4,0.71 -1.74,1.63 -0.64,0.43 -1.64,0.24 -1.03,0.4 -1.35,0.15 -0.42,0.12 -1.4,0.7 -1.61,1.4 -2.54,1.23 -0.42,0.12 -1.49,0.19 -0.75,0.34 -1.15,0.27 -0.75,0.34 -1.15,0.27 -0.75,0.34 -1.01,0.22 -0.89,0.39 -1.14,0.26 -7.06,3.43 -1.58,0.68 -1.49,-0.69 -1.29,-0.73 -0.69,0.15 -1.49,0.13 -1.55,0.5 -3.98,0.05 -1.7,0.53 -3.21,0.05 -0.63,0.11 -1.07,0.39 -1.78,0.13 -0.46,0.15 -0.4,0.27 -1.32,1.31 -1.42,0.06 -1.01,-0.1 -0.27,-0.09 -3.01,-1.52 -0.44,-0.13 -0.83,-0.08 -3.12,0.03 -0.84,-0.06 -0.62,-0.16 -2.02,-0.98 -0.67,-0.1 -2.22,0 -0.7,0.15 -3.75,1.79 -0.65,0.49 -1.56,1.49 -0.42,0.25 -1.32,0.16 -1.21,-0.02 -1.01,-0.14 -2.3,-1.06 -0.75,-0.09 -1.29,0.02 -0.64,-0.47 -0.71,-1.21 -2.03,-2.08 0,0 -0.14,-2.12 -0.36,-0.91 -0.18,-0.98 -0.04,-8.48 -0.2,-0.65 -1.13,-1.7 -0.48,-0.47 -0.62,-0.21 -0.84,-0.06 -5.69,0.04 -0.94,-0.11 -0.67,-0.4 -1.37,-1.34 -0.62,-0.48 -1.26,-0.36 -0.91,-0.38 -0.87,-0.19 -0.43,-0.21 -2.59,-2.45 -1.53,-0.84 -2.81,-1.34 -0.78,-0.09 -1.96,0 -0.69,-0.2 -0.63,-0.97 -0.66,-1.39 -0.28,-1.14 -0.39,-0.89 -0.24,-1.59 -1.74,-3.5 -0.67,-0.23 -1.04,-0.19 -0.89,-0.38 -0.49,-0.11 -2.95,-0.08 -0.98,0.05 -0.42,0.17 -0.17,0.19 -0.47,0.78 -0.38,0.89 -0.58,0.86 -0.7,0.22 -0.64,0 -0.49,-0.05 -0.61,-0.2 -1.11,-0.84 -1.39,-0.71 -0.81,-0.13 -3.21,-0.06 -0.45,-0.13 -1.12,-0.56 -0.58,-0.58 -1.26,-2.5 -0.16,-0.47 0.06,-1.48 0.11,-0.44 0.17,-0.28 0.91,-0.97 0.74,-0.54 0.98,-0.53 0,0 0.9,-0.15 0.69,0.02 0.49,0.1 0.9,0.38 0.84,0.01 0.47,-0.2 0.95,-0.69 0.64,-0.35 0.36,-0.32 0.18,-0.28 0.13,-0.49 0.1,-1.53 0.45,-1.23 0.11,-1.21 -0.01,-11.22 -0.12,-0.85 -0.47,-1.18 0.09,-0.6 0.33,-0.29 1.5,-0.48 1.37,-0.2 0.34,-0.27 0.16,-0.57 0.01,-0.99 -0.09,-1.02 -0.21,-0.76 1.08,-2.02 1.03,-1.57 1.11,-1.38 1.03,-2.03 0.94,-1.21 2.93,-5.77 1.3,-1.29 1.04,-0.56 0.49,-0.38 2.2,-2.13 0.74,-0.82 0.67,-1.15 1.57,-1.59 0.38,-0.49 0.15,-0.43 0.06,-0.61 -0.04,-6.69 0.05,-0.77 0.16,-0.41 0.39,-0.39 1.89,-0.88 0.33,-0.25 0.24,-0.34 0.15,-0.79 -0.01,-3.01 0.18,-0.61 0.74,-0.79 1.17,-0.64 0.58,-0.52 0.37,-0.5 0.84,-1.76 0.26,-0.32 0.34,-0.24 0.97,-0.15 4.6,0.05 0.77,-0.21 0.98,-0.73 0.55,-0.24 1.43,-0.07 z', 4, 1, '2024-01-24 14:28:37', '2024-01-24 14:28:37'),
(5, '20240124183116.jpg', 'm 395.16122,112.44162 0.35,0.02 1.51,-0.4 1.21,-0.51 2.35,-0.13 3.05,0.24 4.3,0.57 2.85,1.24 0.95,0.92 1.06,0.74 1.32,0.38 3.09,0.21 0.99,0.15 1.13,0.34 1.9,1.08 2.41,1.97 0.76,0.74 0.44,0.88 0.46,1.66 0.51,0.74 0.94,0.74 0.95,0.93 1.45,1.88 0.58,0.26 0.66,0.15 1.77,-0.49 1.13,0.23 1.06,0.41 1.24,1 1.05,1.48 1.67,1.23 6.1,2.48 1.97,1.23 0.97,1.26 0.54,1.1 0.17,1.1 -0.16,1.61 -4.35,8.68 -1.36,1.19 -0.78,0.51 -0.77,0.28 -0.56,0.87 -0.52,0.62 -0.26,0.51 -0.08,0.59 0.14,1.28 3.53,5.27 1.05,1.1 0.69,0.05 0.59,-0.07 2.27,-0.89 0.73,-0.1 0.77,0.12 1.69,2.21 0.91,0.3 0.88,-0.28 0.97,-0.94 0.84,-0.21 0.73,0.26 1.41,1.48 0.73,0.12 1.28,0.01 1.84,0.77 0,0 0.12,0.95 0.38,0.89 0.26,0.99 0.39,0.87 0.08,0.44 -0.08,0.73 -0.42,1.01 -0.18,1.34 -0.37,0.89 -0.3,1.12 -0.44,0.51 -2.03,1 -1.25,0.92 -3.19,1.52 -1.02,0.61 -0.67,1.14 -0.18,1.49 -0.12,0.42 -0.45,0.81 -0.26,0.29 -1.06,0.57 -1.65,0.21 -0.89,0.38 -1.01,0.24 -1.22,0.46 -3.47,0.08 -0.51,0.1 -0.92,0.37 -0.7,0.09 -7.43,0.01 -0.44,0.09 -0.91,0.37 -1.62,0.25 -0.75,0.33 -1,0.24 -1.06,0.41 -1.63,0.22 -0.92,0.5 -0.33,0.43 -0.19,1.22 -0.37,0.9 -0.1,0.47 0.01,2.06 0,0 -1.6,-0.15 -1.19,-0.46 -1.62,-0.26 -5.67,-2.85 -0.62,-0.16 -1.15,0.06 -1.06,0.43 -1.62,0.25 -0.76,0.33 -1.14,0.29 -0.9,0.39 -0.81,0.09 -1.3,-0.11 -1.22,-0.47 -1.95,-0.19 -1.04,-0.43 -1,-0.25 -0.75,-0.35 -0.81,-0.14 -6.03,-0.01 -0.64,0.11 -1.04,0.41 -1.4,0.16 -1.95,-0.13 -1.82,0.01 -0.57,0.25 -0.13,0.21 -0.09,0.44 -1.02,0.96 -4.23,2.13 -0.35,0.41 -0.86,1.77 -0.64,0.81 -1.57,1.45 -0.9,0.47 -1.13,0.86 -1.39,0.67 -1.79,0.26 -1.21,0.75 -0.91,-0.25 -1.09,-0.02 -0.59,0.11 -1.03,0.42 -1.98,0.15 -0.53,0.29 -1.19,1.09 -0.24,0.11 -0.28,0 -0.46,-0.28 -1.1,-1.03 -1.15,-0.67 -1.5,-1.32 -2.53,-1.28 -0.72,-0.17 -2.82,0.01 -0.42,-0.05 -0.36,-0.18 -0.15,-0.22 -0.21,-0.77 -0.38,-0.88 -0.17,-2.75 -0.38,-0.89 -0.29,-1.13 -0.55,-0.75 -5.31,-5.22 -1.03,-0.59 -1.27,-0.91 -1.42,-0.44 -0.06,-0.16 -0.17,-0.1 -1.51,-0.28 -0.27,-0.17 -0.66,-0.68 -0.55,-0.98 -0.19,-0.18 -2.23,-0.9 -0.42,-0.03 -0.49,0.16 -0.2,0.36 -0.42,1.23 -0.31,1.59 -0.22,0.25 -0.26,0.11 -1.07,0.16 -1.23,0.45 -0.99,0 -0.62,-0.17 -0.23,-0.16 -1.27,-1.16 -0.52,-0.3 -1.5,-0.21 -1.17,-0.49 -1.21,-0.03 -0.42,0.17 -0.31,0.28 -1.07,2.1 -0.63,0.53 -1.14,0.53 -1.15,0.27 -0.75,0.33 -1.14,0.29 -0.89,0.38 -1.19,0.09 -1.27,-0.16 0.12,-1.42 -0.03,-2.93 -0.19,-0.6 -0.9,-1.23 -0.17,-0.94 0.08,-1.78 0.44,-1.04 0.12,-0.46 0.01,-1.47 -0.28,-0.75 -1.28,-1.52 0,0 -0.82,-1.45 -0.28,-1.77 -1.25,-2.52 -0.94,-1.23 -1.03,-2.05 -0.86,-1.1 -0.41,-0.79 -0.86,-1.1 -0.4,-0.78 -1.52,-1.74 -0.74,-1.53 -0.09,-0.94 -0.01,-4.02 0.15,-1.08 0.34,-0.52 0.46,-0.43 1.15,-0.62 1.26,-0.9 -1.09,-1.05 -0.63,-1.12 -1.32,-1.5 -0.55,-1.02 -0.81,-0.81 -3.31,-1.65 -1.24,-0.96 -1.26,-0.64 -1.28,-0.34 -0.9,-0.39 -1.64,-0.24 -1.73,-1.02 -2.56,-2.38 -0.89,-0.47 -1.13,-0.88 -2.28,-1.16 -0.69,-0.74 -0.7,-1.23 -1.05,-0.95 0.74,-1.21 2.67,-5.42 0.33,-0.45 0.34,-0.24 0.64,-0.13 4.46,0 0.48,-0.1 0.9,-0.37 1.78,-0.12 0.59,-0.19 0.4,-0.36 1.29,-2 0.26,-1.62 0.36,-0.91 0.15,-1.08 0.22,-0.53 0.24,-0.15 0.6,-0.1 2.52,0.06 0.81,0.14 4.69,2.33 0.98,0.1 4.49,0.04 0.59,0.12 1.04,0.42 1.98,0.18 1.42,0.65 3.13,1.62 0.74,0.18 4.21,0.04 0.76,0.15 0.88,0.39 0.89,0.02 2.8,-1.36 1.74,-1.5 0.78,-0.41 0.96,-0.75 0.56,-0.17 0.53,0.13 3,1.54 1.14,0.29 0.9,0.38 1.64,0.25 1.27,0.61 0.73,0.57 1.98,2 0.4,0.29 0.44,0.15 0.74,-0.03 0.88,-0.37 0.49,-0.11 2.23,-0.11 1.56,-0.51 6.16,-0.02 0.67,-0.09 1.22,-0.48 0.95,-0.02 0.51,0.26 0.54,0.91 0.11,0.43 0.12,1.36 0.53,1.08 0.43,0.31 0.69,0.01 0.88,-0.39 1,-0.25 0.42,-0.2 0.98,-0.87 0.57,-0.78 0.14,-1.06 -0.05,-6.02 0.05,-0.47 0.2,-0.4 0.22,-0.14 2.54,-0.86 0.64,-0.99 0.37,-1.4 0.55,-1.15 0.37,-0.5 0.7,-0.6 1.02,-0.55 1.82,-1.72 1.23,-0.69 1.08,-1 0.68,0.51 0.94,0.48 0,0 0.45,0.39 1.44,0.41 6.79,1.6 6.93,3.27 1.06,1.11 1.61,0.74 z', 5, 2, '2024-01-24 14:31:16', '2024-01-29 10:43:08'),
(6, NULL, 'm 403.33122,267.39162 1.06,-0.11 1.21,-0.46 0.66,-0.04 0.66,0.08 2.31,1.09 2.27,0.11 0.63,0.14 0.53,0.35 1.08,0.98 0.41,0.25 0.47,0.12 1.3,0.07 0.64,0.11 2.53,1.21 0.41,0.36 0.25,0.54 0.01,2.5 0.14,0.8 0.25,0.4 0.43,0.44 1.43,0.83 0.73,0.8 0.15,0.45 0.16,1.28 0.35,0.91 0.18,1.2 0.19,0.38 0.39,0.2 0.45,0.05 5.99,-0.01 -0.07,1.14 0.06,0.99 0.43,1.21 0.16,1.04 0.1,0.26 0.2,0.2 0.51,0.14 2.14,0.09 1.41,0.64 0.64,0.48 2.22,2.16 0.71,0.34 2.92,0.07 0.8,-0.06 0.43,-0.13 2.09,-1.05 4.66,0.02 1.34,0.15 0.89,0.38 1,0.26 0.76,0.33 1.14,0.29 1.44,0.65 0.86,0.54 0.17,0.22 0.15,0.75 -0.14,2.64 0,0 -0.89,1.09 -0.46,0.87 -0.5,0.6 -4.81,4.72 -0.59,0.48 -0.27,0.13 -0.43,0.03 -1,-0.39 -1.5,-0.22 -0.89,-0.39 -1.14,-0.29 -0.75,-0.34 -1.64,-0.26 -1.18,-0.46 -1.08,-0.09 -1.56,0.08 -0.39,0.15 -0.88,0.56 -0.63,1.61 -0.15,0.56 -0.07,5.79 -0.1,0.46 -0.37,0.89 -0.23,1.42 -0.38,0.88 -0.13,0.63 0.08,0.98 0.45,1.03 0.09,0.67 0.02,4.52 -0.09,1.03 -0.4,1.05 -0.19,1.41 -0.26,0.53 -0.42,0.36 -1.87,0.87 -0.45,0.5 -0.17,0.94 0.07,2.09 9.55,0.02 1.53,-0.5 1.96,-0.15 2.16,-0.99 1.14,-0.3 0.74,-0.33 0.74,-0.07 0.7,0.19 4.67,2.29 0.62,0.53 0.2,0.59 0.01,0.49 -0.1,0.63 -0.42,0.87 -0.12,0.47 -0.03,0.64 0.14,0.63 0.45,0.52 0.75,0.39 1.12,0.82 1.64,0.73 -0.26,0.91 -0.04,1.04 0.11,1 0.38,0.9 0.14,0.81 0.02,8.39 0.21,0.39 0.26,0.15 2.08,0.1 0.29,0.09 0.32,0.26 0.55,0.88 0.57,1.26 0.26,1.58 0.45,1.21 0.08,3.78 -0.07,1.01 -0.18,0.46 -0.81,1.05 -0.65,1.22 -0.37,1.25 -0.33,0.73 -0.16,1.16 0.07,1.52 0.42,1.03 0.38,1.23 0.83,1.09 0.51,0.9 1.41,1.55 0.7,1.37 0.14,0.93 0.02,4.05 0.11,0.45 0.38,0.86 0.18,1.02 0.77,3.02 0,0 -0.43,0.06 -1.28,-0.23 -2.27,-1.21 -5.51,0.11 -1.57,0.13 -3.89,-0.37 -1.04,0.13 -2.55,1.12 -3.99,2.74 -1.43,0.56 -0.83,0.67 -0.55,0.85 -1.73,2.16 -0.68,0.31 -1.78,-0.34 -1.57,-0.83 -1.2,-0.44 -1.67,-1.45 -1.95,-1.09 -1,0.1 -1.73,1.16 -1.86,0.74 -2.75,-0.03 -1.49,-1.01 -1.35,-1.26 -1.74,-1.16 -1.06,-0.29 -1.43,-0.08 -1.43,0.16 -4.48,2.19 -1.54,0.84 -0.65,0.1 -1.63,-0.1 -0.96,-1.84 -0.38,-1.76 -0.49,-1.32 -0.53,-0.97 -1.63,-1.9 -1.53,-0.62 -2.25,-0.76 -0.82,-0.51 -1.67,-1.26 -1.11,-0.36 -1.1,-0.08 -1.18,0.17 -4.44,1.3 -5.12,1.77 -3.11,0.66 -2.54,0.21 0.83,-1.75 -0.21,-0.86 -3.97,-8.56 -0.71,-0.72 -0.79,-0.25 -1.11,-0.15 -0.89,0.32 -1.79,1.1 -2.58,-0.65 -0.89,-0.68 0.5,-0.54 1.47,-0.85 1.22,-0.53 1,-0.29 1.83,-1.07 1.54,-1.57 1.01,-0.67 0.07,-0.47 0.47,-0.36 0.22,-0.42 -0.07,-0.47 -0.4,-0.5 -0.89,-0.47 -0.79,-0.29 -1.14,-0.18 -1,0.06 -0.79,-0.21 -0.57,-0.79 -3.01,-0.37 -0.6,-0.97 -2.18,-4.05 -0.53,-0.72 -4.16,-2.23 -2.25,-0.15 -1.26,-0.82 -1.39,-0.51 -0.97,-1.43 -0.82,-1.55 -1.9,-1.54 -0.46,-0.83 0.03,-0.93 -0.68,-1.33 -0.86,-0.64 -0.39,-0.43 0,-1.98 -0.46,-0.82 -2.91,-1.05 -1.61,-2.26 -3.16,-1.29 -0.25,-0.61 0.1,-1.15 -0.14,-1.12 -0.79,-0.71 -2.3,0.14 -1.15,0.58 -0.57,2.37 -0.61,1.36 -0.5,0.4 -0.58,0.03 -0.68,-0.53 -0.65,-0.72 -0.61,-0.43 -0.93,-0.22 -1.55,-1.25 0.04,-0.9 -0.32,-0.75 -1.52,-1.44 -0.1,-0.65 0.5,-1.36 0.82,-0.58 0.87,-0.29 1.04,-0.82 -0.29,-3.42 0.25,-0.43 1.4,-0.72 0.75,-0.9 -0.29,-1.91 -0.82,-0.79 -4.25,-0.1 -0.49,0.6 -0.26,0.51 -0.4,0.51 -0.43,-0.11 -0.86,-0.61 -1.15,-0.25 -2.7,-1.54 -0.79,-0.03 -1.41,-0.43 -1.54,-0.14 -3.59,0.11 -4.07,1.2 -0.61,0.08 -1.19,0.4 -0.79,0.36 -1.68,-0.24 -0.58,0.32 -0.64,1.18 -0.9,0.6 0,0 -0.82,-2.69 -0.48,-1.31 -0.35,-0.72 -0.19,-1.45 -0.24,-0.56 -0.38,-0.47 -2.22,-2.21 -1.24,-2.39 -0.85,-0.75 -1.92,-0.91 -0.42,-0.35 -0.47,-0.85 -1.51,-1.73 -1.38,-2.77 -0.18,-0.83 -0.41,-0.85 -0.14,-0.58 0.05,-1.5 0.33,-0.68 1.7,-1.68 0.39,-0.64 0.11,-0.81 -0.02,-3.42 -0.03,-0.65 -0.12,-0.45 -1.63,-3.21 -0.28,-1.16 0,0 2.31,-0.1 0.31,-0.05 0.74,-0.34 0.65,-0.14 2.22,0 0.5,0.06 0.46,0.18 1.45,1.28 0.71,0.31 0.73,0 1.06,-0.41 1.23,-0.19 0.35,-0.22 0.54,-0.87 0.13,-0.44 0.18,-1.44 0.59,-1.26 0.49,-0.64 0.81,-0.77 0.57,-0.35 0.61,-0.13 3.19,0.03 0,0 2.03,2.08 0.71,1.21 0.64,0.47 1.29,-0.02 0.75,0.09 2.3,1.06 1.01,0.14 1.21,0.02 1.32,-0.16 0.42,-0.25 1.56,-1.49 0.65,-0.49 3.75,-1.79 0.7,-0.15 2.22,0 0.67,0.1 2.02,0.98 0.62,0.16 0.84,0.06 3.12,-0.03 0.83,0.08 0.44,0.13 3.01,1.52 0.27,0.09 1.01,0.1 1.42,-0.06 1.32,-1.31 0.4,-0.27 0.46,-0.15 1.78,-0.13 1.07,-0.39 0.63,-0.11 3.21,-0.05 1.7,-0.53 3.98,-0.05 1.55,-0.5 1.49,-0.13 0.69,-0.15 1.29,0.73 1.49,0.69 1.58,-0.68 7.06,-3.43 1.14,-0.26 0.89,-0.39 1.01,-0.22 0.75,-0.34 1.15,-0.27 0.75,-0.34 1.15,-0.27 0.75,-0.34 1.49,-0.19 0.42,-0.12 2.54,-1.23 1.61,-1.4 1.4,-0.7 0.42,-0.12 1.35,-0.15 1.03,-0.4 1.64,-0.24 0.64,-0.43 1.74,-1.63 1.4,-0.71 0.42,-0.12 1.35,-0.15 1.03,-0.41 z', 6, 2, '2024-01-24 14:32:13', '2024-01-29 08:19:11'),
(7, '20240124183304.jpg', 'm 493.22122,155.10162 0.48,1.26 0.24,1.63 1.24,2.52 0.34,0.48 1.98,2.03 0.78,0.57 0.78,0.14 2.61,0.06 1.71,0.58 0.34,0.2 0.2,0.52 0.08,2.22 0.74,1.55 0.77,0.98 0.49,0.87 0.29,0.29 0.37,0.2 1.13,0.28 1.03,0.61 0.66,1.15 0.33,1.26 0.72,1.11 -1.06,0.85 -1,0.95 -0.57,0.7 -0.14,0.42 -0.06,1.67 -0.18,0.55 -0.38,0.39 -1.08,0.62 -0.62,0.76 -0.41,1.22 -0.42,0.88 -0.08,0.87 0.14,0.53 0.19,0.18 1.14,0.36 0.68,0.38 0.28,0.29 0.13,0.57 0.06,1.91 0.41,1.06 0.1,0.46 0.04,1.75 0.21,0.69 0.86,0.58 1.92,0.89 0.45,0.32 0.26,0.33 0.59,1.11 0.71,1.54 0.11,1.3 -0.17,0.93 -0.35,0.42 -1.03,0.63 -0.34,0.62 -0.07,0.79 0.03,3.8 0.12,0.62 0.62,1.26 0.94,1.22 0.43,0.77 0.67,0.84 0.23,0.4 0.14,0.63 0.02,2.51 -0.07,0.82 -0.45,1.19 -0.25,1.37 -0.27,0.28 -0.8,0.45 -1.28,0.3 -1.16,0.64 -0.62,1.01 -0.37,1.39 -0.6,1.26 -0.48,0.79 -0.37,0.35 -1.73,0.91 -0.58,0.51 -0.37,0.5 -1.24,2.48 -0.06,0.88 0.46,1.14 0.04,0.73 -0.12,0.41 -0.95,1.83 -0.15,1.28 0.04,2.98 0.13,0.61 0.43,1.02 0.03,1.05 -0.16,0.56 -0.95,1.84 -0.29,1.12 -0.39,0.89 -0.11,0.99 -0.04,1.75 0.09,0.92 0.17,0.24 0.23,0.1 0.39,-0.04 0.85,-0.34 0.89,-0.11 1.06,0.01 0.6,0.24 0.21,0.41 0.05,0.49 -0.05,4.22 1.2,-0.78 0.78,-0.35 1.01,-0.62 0.64,-0.99 0.9,-1.88 0.37,-0.4 0.37,-0.2 0.98,-0.24 1.07,-0.4 0.98,-0.06 0.82,0.08 1.21,0.46 2.11,0.23 1.06,0.42 1.46,0.22 0.91,0.38 0.47,0.1 2.36,0.06 2,-0.07 3.09,2.93 0.42,0.44 0.33,0.51 0.14,0.73 -0.02,5.66 0.06,0.65 0.13,0.44 1.83,3.61 0.83,1 2.87,2.83 0.41,0.51 0.51,0.9 1.38,1.58 0.17,0.46 0.07,1.66 -0.08,1.33 -0.72,1.7 -0.65,0.95 -0.52,0.15 -0.42,-0.04 -1.01,-0.44 -1,-0.12 -3.6,-0.05 -0.44,0.08 -0.34,0.25 -0.66,1.74 -0.1,1.12 0.08,1.44 0.43,1.03 0.12,0.62 0.06,2.96 -0.06,0.76 -0.17,0.39 -0.2,0.17 -2.49,1.29 -0.27,0.49 -0.03,0.47 0.08,0.63 0.45,1.04 0.2,1.19 0.22,0.33 0,0 0.66,1.74 0.03,0.24 -0.13,0.37 -0.61,0.81 -0.33,0.62 -0.37,0.4 -0.39,0.2 -0.97,0.09 -8.4,-0.05 -0.97,-0.11 -0.56,-0.28 -0.82,-0.75 -1.07,-1.18 -0.48,-0.91 -0.5,-0.64 -0.68,-0.65 -0.53,-0.24 -0.37,0.08 -0.85,0.38 -1.22,0.94 -1.28,0.62 -1.4,0.37 -5.55,2.7 -1.03,0.19 -1.23,-0.08 -1.47,-0.54 -1.92,-0.03 -0.79,-0.53 -1.15,-0.56 -0.92,-0.18 -2.41,-0.08 -3.76,1.77 -0.68,0.12 -1.43,0.02 -1.41,-0.13 -0.91,-0.38 -0.5,-0.11 -3.49,-0.12 -1.07,-0.41 -0.68,-0.13 -9.92,-0.09 -0.68,-0.13 -1.85,-0.91 -0.48,-0.15 -0.88,-0.07 -4.54,-0.05 0,0 0.14,-2.64 -0.15,-0.75 -0.17,-0.22 -0.86,-0.54 -1.44,-0.65 -1.14,-0.29 -0.76,-0.33 -1,-0.26 -0.89,-0.38 -1.34,-0.15 -4.66,-0.02 -2.09,1.05 -0.43,0.13 -0.8,0.06 -2.92,-0.07 -0.71,-0.34 -2.22,-2.16 -0.64,-0.48 -1.41,-0.64 -2.14,-0.09 -0.51,-0.14 -0.2,-0.2 -0.1,-0.26 -0.16,-1.04 -0.43,-1.21 -0.06,-0.99 0.07,-1.14 -5.99,0.01 -0.45,-0.05 -0.39,-0.2 -0.19,-0.38 -0.18,-1.2 -0.35,-0.91 -0.16,-1.28 -0.15,-0.45 -0.73,-0.8 -1.43,-0.83 -0.43,-0.44 -0.25,-0.4 -0.14,-0.8 -0.01,-2.5 -0.25,-0.54 -0.41,-0.36 -2.53,-1.21 -0.64,-0.11 -1.3,-0.07 -0.47,-0.12 -0.41,-0.25 -1.08,-0.98 -0.53,-0.35 -0.63,-0.14 -2.27,-0.11 -2.31,-1.09 -0.66,-0.08 -0.66,0.04 -1.21,0.46 -1.06,0.11 0,0 -0.11,-1.05 -0.47,-1.18 -0.07,-1.13 0.13,-0.95 0.63,-1.24 0.61,-0.76 1.21,-1.16 0.52,-0.39 0.93,-0.5 1.98,-1.77 1.13,-0.66 0.4,-0.57 0.1,-0.96 -0.02,-8.55 0.13,-0.79 0.38,-0.88 0.11,-1.04 0.69,-0.5 4.33,-2.06 0.87,-0.73 0.73,-1.22 1.42,-1.59 0.64,-1.25 0.33,-1.25 0.39,-0.88 0.23,-1.62 0.35,-0.73 0.27,-1.14 0.61,-1.24 0.59,-0.57 2.41,-1.17 0.13,-1.69 0.42,-1.02 0.13,-0.6 0.02,-3.36 -0.09,-0.77 -0.4,-0.89 -0.3,-1.12 -0.36,-0.73 -0.08,-0.73 0.08,-0.43 0.4,-0.87 0.24,-1 0.69,-1.35 0.51,-0.46 1.79,-0.83 0.65,-0.47 1,-1.06 0.49,-0.93 0.4,-0.5 0.69,-0.7 0.52,-0.38 0.77,-0.19 2.72,0.03 0.82,-0.1 0.43,-0.2 1.1,-0.82 1.27,-0.61 1.62,-0.24 1.05,-0.41 1.26,-0.24 -0.34,-1.04 -0.41,-0.88 -0.08,-0.6 0.04,-0.75 0.14,-0.41 0.95,-1.85 0.28,-1.13 0.36,-0.74 0.29,-1.13 0.35,-0.73 0.1,-0.58 -0.09,-0.59 -0.6,-1.26 -0.62,-1.03 -0.29,-0.26 -0.82,-0.46 -0.59,-0.16 -1.49,-0.05 -0.97,0.1 -1.55,0.73 -1.86,1.56 -2.39,1.19 -0.72,0.13 -0.59,-0.1 -1.03,-0.43 -2.93,-0.13 -0.46,-0.1 -0.89,-0.38 -1.63,-0.26 -0.77,-0.54 -1.78,-1.76 0,0 -0.01,-2.06 0.1,-0.47 0.37,-0.9 0.19,-1.22 0.33,-0.43 0.92,-0.5 1.63,-0.22 1.06,-0.41 1,-0.24 0.75,-0.33 1.62,-0.25 0.91,-0.37 0.44,-0.09 7.43,-0.01 0.7,-0.09 0.92,-0.37 0.51,-0.1 3.47,-0.08 1.22,-0.46 1.01,-0.24 0.89,-0.38 1.65,-0.21 1.06,-0.57 0.26,-0.29 0.45,-0.81 0.12,-0.42 0.18,-1.49 0.67,-1.14 1.02,-0.61 3.19,-1.52 1.25,-0.92 2.03,-1 0.44,-0.51 0.3,-1.12 0.37,-0.89 0.18,-1.34 0.42,-1.01 0.08,-0.73 -0.08,-0.44 -0.39,-0.87 -0.26,-0.99 -0.38,-0.89 -0.12,-0.95 0,0 2.67,0.82 1.99,1.02 0.92,0.01 1.8,-0.53 1.14,-1.04 1.08,-1.27 3.11,-3.1 1.15,-1.01 1.03,-0.5 2.99,0.37 3.16,-0.98 2.03,-0.82 1.1,-0.16 0.77,0.04 1.74,0.69 1.69,-0.16 1.14,-0.38 1.29,-0.86 0.7,-0.32 z', 7, 2, '2024-01-24 14:33:05', '2024-01-29 10:42:41'),
(8, NULL, 'm 576.36122,290.57162 0.38,-0.12 0.59,-0.43 1.71,-1.63 0.58,-0.7 0.19,-0.72 0.01,-2.3 0.17,-0.87 0.65,-1.24 0.87,-1.07 0.41,-0.77 0.83,-1.1 0.38,-0.74 0.4,-0.36 0.41,-0.1 0.41,0.08 0.73,0.33 1,0.26 2.16,1.04 0.79,0.09 3.09,0.07 2.11,0.92 0.39,-0.06 1.07,-0.76 1.21,-0.51 0,0 0.91,0.66 1.34,1.38 1.74,3.4 0.85,1.09 0.51,0.91 1.4,1.58 0.92,1.89 0.36,0.41 0.38,0.2 0.59,0.05 0.44,-0.09 0.73,-0.35 0.45,-0.11 2.61,-0.07 0.88,0.1 0.24,0.14 0.15,0.22 0.21,0.76 0.33,0.74 0.27,1.13 1.68,3.36 0.09,0.77 0.05,3.02 0.47,1.17 0.25,1.6 0.34,0.73 0.29,1.12 0.39,0.88 0.22,1.46 0.32,0.72 0.08,0.41 -0.07,0.4 -0.63,1.22 -1.43,1.57 -0.78,1.25 -1.68,1.67 -0.29,0.53 -0.05,0.59 0.09,0.43 1.62,3.05 0.11,0.41 -0.03,0.72 -0.41,0.85 -0.11,0.43 -0.02,0.75 0.11,0.58 1.24,2.47 0.26,0.31 0.35,0.24 0.58,0.12 1.53,0.09 1.5,0.51 2.93,0.11 1.04,0.42 1.01,0.23 0.75,0.46 1.87,1.79 0.42,0.54 0.05,0.37 -0.85,1.74 -0.01,0.56 2.21,4.28 0.33,1.22 0,0 -1.51,-0.83 -1.22,-0.22 -0.87,0.26 -1.25,0.94 -0.89,-0.06 -0.91,0.26 -1.54,0.02 -0.78,0.88 -0.98,2.85 -0.98,0.44 -1.65,1.17 -0.86,1.02 -1.14,1.01 -3.28,0.66 -0.77,0.45 -1.71,2.1 -1.54,1.32 -1.57,2.54 -2.21,3.24 -1.11,1.26 -1.42,0.86 -1.62,0.46 -0.98,0.37 -2.67,1.98 -2.57,1.08 -1.7,0.56 -0.74,0.45 -0.98,-0.06 -0.91,0.44 -3.66,3.24 -0.41,0.6 -0.22,1.32 -0.67,1.16 -1.11,0.12 -1.25,-0.06 -2.67,-0.71 -0.54,-0.02 -0.93,0.3 -0.54,0.03 -0.81,-0.56 -1.54,-1.36 -0.5,-0.12 -0.61,0.02 -0.86,-0.13 -2.09,-0.94 -1.5,-2.83 -0.39,-0.4 -0.47,0.06 -0.36,0.21 -0.68,1.77 -0.17,0.75 0.49,0.62 0.13,0.54 -0.91,0.8 -0.23,2.07 2.07,3.52 0.84,0.42 2.24,0.58 1.73,0.98 0.74,0.48 0.49,0.58 -0.16,0.68 -2.29,0.19 -1.18,-0.13 -2.86,-1.39 -1.11,-0.28 -0.86,0.09 -0.9,0.48 -0.96,-0.38 -2.31,0.77 -1.64,0 -0.93,0.16 -1.1,0.94 -1.29,0.37 -0.64,-0.34 -0.11,-1.32 -0.35,-0.37 -0.53,-0.22 -1.11,0.04 -1.19,0.41 -0.68,-0.05 -0.68,-0.2 -0.66,-0.83 -0.34,-0.9 -0.6,-0.3 -3.58,0.07 -1.28,-0.39 -0.78,-0.12 -0.36,0.24 -0.9,2.02 -0.36,1.75 -0.26,2.03 -0.15,0.57 -0.44,0.56 -0.4,0.25 -0.83,0.3 0.01,-2.18 -0.38,-0.65 -0.57,0.06 -1.84,0.57 -2.64,1.38 -0.43,0.06 -0.74,-0.26 -2.67,-0.56 -0.79,0.06 -1.55,0.44 -2.34,1.17 -0.86,0.13 -0.79,-0.02 -1.42,-0.53 -3.53,-2.38 -2.21,-2.08 -4.07,-2.51 -0.68,-0.22 -0.57,0.06 -0.69,0.38 -0.37,0.68 -0.16,1.46 0.02,0.54 -0.3,0.71 -0.47,0.27 -0.78,-0.19 -2.31,-1 -2.28,-0.22 -2.4,0.32 -1.32,-0.31 -0.39,-0.33 -0.46,-2.54 -0.59,-0.8 -0.74,-0.55 -0.4,-0.15 -1.34,1.45 -0.5,0.1 -0.97,-0.02 -0.82,-0.22 -1.44,-1.32 -0.68,0.03 -0.48,0.53 -0.19,0.5 0.1,0.71 0.76,1.59 0.14,0.58 -1.3,3.09 -0.58,0.56 -0.8,0.52 -1.51,0.45 -1.11,0.09 -4.89,-0.18 -2.28,-0.22 -1,0.06 -1.11,0.23 -1.91,1.01 -1.22,0.38 -1.14,0.13 -1.47,0.51 -1.16,0.85 -1.92,2.26 -0.25,0.04 0,0 -0.77,-3.02 -0.18,-1.02 -0.38,-0.86 -0.11,-0.45 -0.02,-4.05 -0.14,-0.93 -0.7,-1.37 -1.41,-1.55 -0.51,-0.9 -0.83,-1.09 -0.38,-1.23 -0.42,-1.03 -0.07,-1.52 0.16,-1.16 0.33,-0.73 0.37,-1.25 0.65,-1.22 0.81,-1.05 0.18,-0.46 0.07,-1.01 -0.08,-3.78 -0.45,-1.21 -0.26,-1.58 -0.57,-1.26 -0.55,-0.88 -0.32,-0.26 -0.29,-0.09 -2.08,-0.1 -0.26,-0.15 -0.21,-0.39 -0.02,-8.39 -0.14,-0.81 -0.38,-0.9 -0.11,-1 0.04,-1.04 0.26,-0.91 -1.64,-0.73 -1.12,-0.82 -0.75,-0.39 -0.45,-0.52 -0.14,-0.63 0.03,-0.64 0.12,-0.47 0.42,-0.87 0.1,-0.63 -0.01,-0.49 -0.2,-0.59 -0.62,-0.53 -4.67,-2.29 -0.7,-0.19 -0.74,0.07 -0.74,0.33 -1.14,0.3 -2.16,0.99 -1.96,0.15 -1.53,0.5 -9.55,-0.02 -0.07,-2.09 0.17,-0.94 0.45,-0.5 1.87,-0.87 0.42,-0.36 0.26,-0.53 0.19,-1.41 0.4,-1.05 0.09,-1.03 -0.02,-4.52 -0.09,-0.67 -0.45,-1.03 -0.08,-0.98 0.13,-0.63 0.38,-0.88 0.23,-1.42 0.37,-0.89 0.1,-0.46 0.07,-5.79 0.15,-0.56 0.63,-1.61 0.88,-0.56 0.39,-0.15 1.56,-0.08 1.08,0.09 1.18,0.46 1.64,0.26 0.75,0.34 1.14,0.29 0.89,0.39 1.5,0.22 1,0.39 0.43,-0.03 0.27,-0.13 0.59,-0.48 4.81,-4.72 0.5,-0.6 0.46,-0.87 0.89,-1.09 0,0 4.54,0.05 0.88,0.07 0.48,0.15 1.85,0.91 0.68,0.13 9.92,0.09 0.68,0.13 1.07,0.41 3.49,0.12 0.5,0.11 0.91,0.38 1.41,0.13 1.43,-0.02 0.68,-0.12 3.76,-1.77 2.41,0.08 0.92,0.18 1.15,0.56 0.79,0.53 1.92,0.03 1.47,0.54 1.23,0.08 1.03,-0.19 5.55,-2.7 1.4,-0.37 1.28,-0.62 1.22,-0.94 0.85,-0.38 0.37,-0.08 0.53,0.24 0.68,0.65 0.5,0.64 0.48,0.91 1.07,1.18 0.82,0.75 0.56,0.28 0.97,0.11 8.4,0.05 0.97,-0.09 0.39,-0.2 0.37,-0.4 0.33,-0.62 0.61,-0.81 0.13,-0.37 -0.03,-0.24 -0.66,-1.74 0,0 1.89,0.2 1.03,0.42 0.46,0.1 2.44,0.14 0.9,0.39 1.15,0.29 0.75,0.34 1.15,0.27 0.95,0.51 0.29,0.26 0.55,0.9 1.7,3.39 1.1,1.16 1.34,1.2 0.97,-0.07 0.84,0.04 0.48,0.11 0.9,0.39 0.64,0.11 0.82,0.02 0.64,-0.1 0.59,-0.39 0.66,-1.08 1.02,-1.38 0.53,-0.53 0,0 0.76,0.14 1.06,0.32 0.79,0.45 0.27,0.24 0.09,0.24 -0.05,0.37 -0.94,2.29 0.03,0.37 0.31,0.27 0.58,0.08 4.62,-0.01 0.6,0.12 1.03,0.42 1.98,0.16 0.77,0.47 2.25,2.18 1.05,0.6 1.25,0.89 0.79,0.15 3.03,0 0.98,0.1 6.1,2.97 0.81,0.1 0.99,-0.04 1.52,-0.52 2.12,-0.07 0.76,-0.16 2.54,-1.2 0.91,-0.54 0.26,-0.28 0.55,-0.9 0.59,-1.25 0.24,-1.61 0.42,-1.01 0.24,-1.46 0.37,-0.78 -0.02,-0.37 -0.3,-0.27 -0.57,-0.08 -1.46,0.03 -0.75,0.21 -0.47,0.48 -0.84,1.75 -0.55,0.72 -1.02,0.91 -0.42,0.19 -0.47,0.08 -2.13,-0.01 -0.94,-0.14 -2.53,-1.24 -1.13,-0.83 -0.99,-0.56 -0.34,-0.43 -0.12,-0.44 0,-2.23 -0.09,-0.78 -1.28,-2.64 -0.37,-0.49 -0.58,-0.52 -1.84,-0.95 -0.17,-0.21 -0.1,-0.39 0.09,-0.56 0.36,-0.5 0.59,-0.5 0.93,-0.46 0.74,-0.58 1.36,-1.35 z', 8, 2, '2024-01-24 14:37:48', '2024-01-29 08:19:20'),
(9, '20240124183826.jpg', 'm 782.44122,394.45162 -2.41,-0.06 -0.95,0.81 -1.34,-0.14 -1.88,-2.15 -2.7,-1.08 -2.82,-0.67 -2.29,1.62 -3.36,4.84 -1.62,3.1 -1.61,0.4 -2.69,-3.57 -0.54,-3.36 -2.69,-1.08 -2.56,1.35 -2.15,0 -3.69,-4.65 -1.7,-2.48 -3.76,-4.58 -3.5,-3.23 -6.87,-0.27 -4.71,0.54 -2.69,-1.34 -1.88,0 -0.61,0.72 -2.21,0.59 -0.83,3.05 -1.61,0.9 -1.9,-0.71 -1.46,-0.27 -3.04,0.17 -2.64,-0.28 -1.09,0.32 -2.33,0.38 -3.82,-0.25 -3.05,-1.72 -2.49,-2.24 -2.74,-1.46 -2,-0.93 -1.42,-0.37 -2.83,0.11 -1.74,-0.34 -2.19,-0.83 -2.41,-1.87 -2.56,-1.28 -3.32,-2.26 -3.11,-4.38 -1.24,-1.83 -0.47,-0.85 0.03,-0.53 0.35,-0.68 0.64,-0.14 0.61,-0.89 0.57,-1.29 0.74,-0.57 0.49,-0.67 0.52,-0.24 0.61,-0.13 1.82,-0.06 0.62,-0.2 0.27,-0.42 -0.16,-0.48 -1.81,-1.78 -0.72,-0.84 -0.68,-0.05 -2.48,1.54 -0.87,-0.09 -1.17,-0.4 -3.16,-1.91 -1.32,-0.32 -2.09,0.18 -2.14,0.62 -1.97,-0.77 -0.66,-0.5 -0.63,-0.75 -0.4,-2.34 -0.56,-1.3 -1.58,-0.73 -3.93,-0.96 -2.27,-0.79 -1.06,-0.64 -0.66,-0.63 -1.97,-2.36 -0.85,-0.46 -0.93,-0.13 -0.93,0 -0.54,-0.12 -1.86,2.28 -0.96,0.9 -0.7,0.45 -0.9,0.12 -0.9,-0.07 -2.96,-1.85 -2.56,-1.87 -1.78,-1.88 0,0 -0.33,-1.22 -2.21,-4.28 0.01,-0.56 0.85,-1.74 -0.05,-0.37 -0.42,-0.54 -1.87,-1.79 -0.75,-0.46 -1.01,-0.23 -1.04,-0.42 -2.93,-0.11 -1.5,-0.51 -1.53,-0.09 -0.58,-0.12 -0.35,-0.24 -0.26,-0.31 -1.24,-2.47 -0.11,-0.58 0.02,-0.75 0.11,-0.43 0.41,-0.85 0.03,-0.72 -0.11,-0.41 -1.62,-3.05 -0.09,-0.43 0.05,-0.59 0.29,-0.53 1.68,-1.67 0.78,-1.25 1.43,-1.57 0.63,-1.22 0.07,-0.4 -0.08,-0.41 -0.32,-0.72 -0.22,-1.46 -0.39,-0.88 -0.29,-1.12 -0.34,-0.73 -0.25,-1.6 -0.47,-1.17 -0.05,-3.02 -0.09,-0.77 -1.68,-3.36 -0.27,-1.13 -0.33,-0.74 -0.21,-0.76 -0.15,-0.22 -0.24,-0.14 -0.88,-0.1 -2.61,0.07 -0.45,0.11 -0.73,0.35 -0.44,0.09 -0.59,-0.05 -0.38,-0.2 -0.36,-0.41 -0.92,-1.89 -1.4,-1.58 -0.51,-0.91 -0.85,-1.09 -1.74,-3.4 -1.34,-1.38 -0.91,-0.66 0,0 0,-1.79 -0.08,-0.74 -0.82,-1.65 -0.79,-0.76 -0.92,-0.49 -1.11,-0.84 -1.58,-0.61 5.7,-5.51 0.26,-0.12 0.44,-0.04 1.38,0.63 0.82,0.66 1.73,1.73 0.7,0.54 1.28,0.6 1.64,0.25 1.01,0.4 0.55,-0.07 2,-0.96 1.99,-0.14 1.17,-0.45 1.94,-0.24 -0.35,-1.04 -0.8,-1.51 -1.93,-1.99 -1.01,-0.78 -1.14,-0.3 -1.04,-0.41 -2.32,-0.12 -1.48,-0.51 -1.98,-0.18 -1.04,-0.42 -1.65,-0.25 -0.74,-0.33 -0.78,-0.22 -0.3,-0.25 -0.25,-1.35 -0.38,-0.88 -0.1,-0.44 -0.05,-0.91 0.07,-0.76 0.24,-0.55 0.76,-0.95 0.51,-0.88 1.33,-1.44 0.13,-0.26 0.04,-0.43 -1.01,-2.08 -0.28,-1.14 -0.61,-1.25 -0.48,-0.63 -1.38,-1.34 -0.27,-0.47 0.06,-0.47 1.2,-2.39 0.08,-0.47 -0.45,-1.09 -1.58,-2.93 -0.13,-0.54 0.05,-0.28 0.22,-0.39 1.69,-1.66 0.39,-0.66 0.15,-2.58 0.42,-1.01 0.13,-0.6 0.08,-3.36 0.46,-1.17 0.21,-1.47 0.37,-0.88 0.3,-1.12 0.56,-0.76 1.99,-1.93 0.4,-0.67 0.1,-0.93 -0.04,-3.68 0.05,-0.46 0.16,-0.44 0.49,-0.61 3.36,-3.31 0.59,-1.03 0.84,-1.1 0.58,-0.95 0.48,-0.29 0.99,-0.23 0.75,-0.32 1.65,-0.22 0.9,-0.37 1.13,-0.28 0.52,-0.43 1.27,-2.47 0.17,-0.72 0,-0.61 -0.08,-0.44 -0.39,-0.89 -0.24,-1.39 -0.45,-0.91 -0.23,-0.7 -0.95,-1.86 -0.13,-0.42 -0.08,-3.53 0.09,-0.94 0.3,-0.54 0.32,-0.34 0.49,-0.37 1.05,-0.56 1.89,-1.72 1.11,-0.64 0.39,-0.57 0.11,-0.9 -0.05,-5.11 -0.12,-0.63 -0.35,-0.74 -0.26,-0.99 -0.43,-1.01 -0.01,-0.89 1.95,-3.88 0.93,-1.22 1.02,-2.03 1.45,-1.61 0.45,-0.88 0.57,-0.67 0,0 1.02,2.21 1.27,1.5 1.07,0.91 1.01,0.43 1.16,0.15 1.29,-0.3 1.33,-0.54 2.43,-0.7 0.82,-0.41 0.77,-0.16 2.97,-0.2 2.95,0.34 3.69,0.12 3,-0.16 3.15,-1.33 2.01,-0.05 1.53,0.27 0.9,0.43 1.66,1.77 1.24,1.1 3.3,1.9 3.57,1.47 5.72,3.45 0.44,0.12 3.4,-0.29 1.21,0.05 1.1,0.76 0.84,1.09 0.5,1.33 0.35,1.55 -0.06,1.68 -0.2,1.49 -0.78,1.54 -4.13,6.5 -0.4,1.15 -0.19,1.02 0.56,3.04 -0.05,1.42 -0.73,2.09 0.35,0.48 1.45,1.26 0.45,0.59 0.19,1.76 -0.42,0.64 -0.79,0.63 -2.51,1.08 -1.32,0.25 -0.77,0.3 -1.46,-0.01 -1.26,0.61 -0.8,-0.03 -0.67,-0.68 -0.71,-0.38 -0.91,-0.11 -0.7,0.23 -0.39,0.76 -1.62,5.22 -1.2,3.24 -0.87,1.97 0.27,0.7 0.49,0.49 0.87,0.21 0.61,0.27 2.03,2.18 2.7,0.85 3.05,2.03 1.01,0.43 0.77,0.68 2.56,1.65 1.48,1.29 0.53,1.61 0.68,0.17 0.78,0.54 0.88,0.9 0.48,0.78 1.78,0.97 1.3,0.22 0.95,0.8 0.72,0.32 1.12,0.14 2.23,-0.53 1.52,0.09 2.62,0.92 1.38,0.78 2.64,2.27 0.15,1.02 -0.03,1.82 0.17,1.27 0.47,1.11 1.35,1.61 0.3,1.75 0.49,0.49 1.06,0.69 0.79,0.17 0.85,-0.54 2.14,-1.85 0.77,-0.11 1,0.39 1.22,0.3 0.89,-0.54 1.17,-0.29 0.5,0.2 0.34,0.67 0.23,1.46 0.2,0.51 0.57,0.24 0.73,-0.11 0.67,-0.34 0.71,-0.66 1.37,-1.77 0.9,0.33 0.63,0.6 0.26,2.55 0.28,1.1 0.57,1.18 1.18,1.32 1.32,0.74 0.66,-0.2 0.27,-0.53 0.28,-2.56 0.54,-0.85 0.48,-0.2 0.61,0.2 0.67,0.43 3.79,4.1 1.33,0.23 1.78,-0.07 1.35,-0.38 2.72,-1.82 1.14,-0.24 0.64,0.17 0.52,0.57 0.43,1.17 1.16,1.57 3.6,3.34 0.7,1.33 1.04,0.3 0.45,0.45 0.2,0.48 -0.14,0.75 0.06,0.29 1.88,0.15 0.48,-0.41 0.25,-0.71 0.13,-1.38 0.43,-0.63 0.65,-0.05 0.57,0.28 0.78,1.16 0.67,0.39 0.56,-0.38 1.16,-1.65 0.52,-0.34 0.54,0.02 0.24,0.37 0.23,1.5 -0.14,1.51 0.41,2.16 0.33,0.81 3.18,1.94 -0.41,4.4 -0.59,1.93 -1.27,2.58 -0.69,0.95 -1.93,1.98 -1.84,0.94 -2.57,1.73 -5.14,4.63 -5.92,1.23 -5.26,1.92 -3.11,4.06 1.68,8.62 1.67,5.02 0.24,7.42 2.15,2.63 3.35,-3.35 2.05,0.3 -0.07,0.23 3.48,1.51 0.92,1.83 -0.51,1.34 0.28,1.7 0.82,1.77 1.37,1.72 0.31,0.54 1.56,2.17 0.26,1.38 -0.31,2.25 0.51,0.91 1.14,0.99 3.99,1.47 3.04,1.34 0.19,0.66 0.05,1.44 0.31,0.23 2.65,0.14 0.74,0.39 1.07,1.09 0.96,1.8 0.9,0.73 2.27,1.57 1.73,0.57 6.81,2.67 0.12,0.09 0.17,0.64 0.88,0.35 2.66,0.79 0.15,0.41 0.48,0.34 0.09,-0.4 0.34,-0.65 0.4,0.02 0.4,0.49 -0.1,0.57 -0.26,0.64 0.07,0.65 0.65,0.01 0.49,-0.39 0.32,0.41 0.22,0.58 0.57,0.17 0.43,-1.12 0.64,0.34 0.39,0.74 -0.6,1.28 -0.58,0.23 -0.56,0.07 -0.34,0.47 -0.09,0.41 0.88,0.18 0.57,0.02 0.63,0.66 0.34,-0.32 0.25,-0.56 -0.06,-0.65 0.1,-0.8 0.17,-0.32 0.56,0.17 0.3,0.9 -0.03,1.46 -0.42,0.64 0.32,0.17 0.65,-0.15 0.32,0.25 0.06,0.65 -0.18,0.73 0.07,0.4 0.81,0.18 1.22,-0.37 0.56,0.18 0.15,0.41 -0.41,0.39 0.14,0.65 0.31,0.58 -0.27,0.96 0.47,0.82 0.79,0.75 0.15,0.49 -0.26,0.64 0.32,0.13 2.77,0.23 0.64,0.85 0.04,0.69 -0.57,0.61 -1.13,0.6 -1.2,1.73 -0.67,0.65 -0.11,3.19 -2.07,2.09 -0.44,1.16 -0.83,0.93 -1.24,1.88 0.26,1.55 0.66,1.06 0.35,0.88 -0.43,0.4 0,1.83 -0.77,0.41 -0.39,1.22 0.23,4.68 -0.84,1.32 -0.08,1.12 z', 9, 2, '2024-01-24 14:38:27', '2024-01-29 10:41:49'),
(10, '20240124184934.jpg', 'm 594.45122,143.06162 4.42,0.63 2.44,-0.71 3.17,-0.72 3.03,0.3 1.3,0.62 1.11,1.13 1.19,1.94 2.39,2.37 2.85,3.93 2.93,3.71 1,1.01 2.93,2.35 0.8,1.23 0.66,3.68 0.19,0.42 0,0 -0.57,0.67 -0.45,0.88 -1.45,1.61 -1.02,2.03 -0.93,1.22 -1.95,3.88 0.01,0.89 0.43,1.01 0.26,0.99 0.35,0.74 0.12,0.63 0.05,5.11 -0.11,0.9 -0.39,0.57 -1.11,0.64 -1.89,1.72 -1.05,0.56 -0.49,0.37 -0.32,0.34 -0.3,0.54 -0.09,0.94 0.08,3.53 0.13,0.42 0.95,1.86 0.23,0.7 0.45,0.91 0.24,1.39 0.39,0.89 0.08,0.44 0,0.61 -0.17,0.72 -1.27,2.47 -0.52,0.43 -1.13,0.28 -0.9,0.37 -1.65,0.22 -0.75,0.32 -0.99,0.23 -0.48,0.29 -0.58,0.95 -0.84,1.1 -0.59,1.03 -3.36,3.31 -0.49,0.61 -0.16,0.44 -0.05,0.46 0.04,3.68 -0.1,0.93 -0.4,0.67 -1.99,1.93 -0.56,0.76 -0.3,1.12 -0.37,0.88 -0.21,1.47 -0.46,1.17 -0.08,3.36 -0.13,0.6 -0.42,1.01 -0.15,2.58 -0.39,0.66 -1.69,1.66 -0.22,0.39 -0.05,0.28 0.13,0.54 1.58,2.93 0.45,1.09 -0.08,0.47 -1.2,2.39 -0.06,0.47 0.27,0.47 1.38,1.34 0.48,0.63 0.61,1.25 0.28,1.14 1.01,2.08 -0.04,0.43 -0.13,0.26 -1.33,1.44 -0.51,0.88 -0.76,0.95 -0.24,0.55 -0.07,0.76 0.05,0.91 0.1,0.44 0.38,0.88 0.25,1.35 0.3,0.25 0.78,0.22 0.74,0.33 1.65,0.25 1.04,0.42 1.98,0.18 1.48,0.51 2.32,0.12 1.04,0.41 1.14,0.3 1.01,0.78 1.93,1.99 0.8,1.51 0.35,1.04 -1.94,0.24 -1.17,0.45 -1.99,0.14 -2,0.96 -0.55,0.07 -1.01,-0.4 -1.64,-0.25 -1.28,-0.6 -0.7,-0.54 -1.73,-1.73 -0.82,-0.66 -1.38,-0.63 -0.44,0.04 -0.26,0.12 -5.7,5.51 1.58,0.61 1.11,0.84 0.92,0.49 0.79,0.76 0.82,1.65 0.08,0.74 0,1.79 0,0 -1.21,0.51 -1.07,0.76 -0.39,0.06 -2.11,-0.92 -3.09,-0.07 -0.79,-0.09 -2.16,-1.04 -1,-0.26 -0.73,-0.33 -0.41,-0.08 -0.41,0.1 -0.4,0.36 -0.38,0.74 -0.83,1.1 -0.41,0.77 -0.87,1.07 -0.65,1.24 -0.17,0.87 -0.01,2.3 -0.19,0.72 -0.58,0.7 -1.71,1.63 -0.59,0.43 -0.38,0.12 0,0 -1.16,-0.43 -1.37,-0.15 -0.42,-0.12 -1.39,-0.71 -1.78,-1.69 -0.59,-0.44 -1.28,-0.61 -1.01,-0.25 -0.82,-0.37 -0.38,0.01 -0.29,0.23 -0.52,0.89 -0.58,1.26 -0.26,1.13 -0.69,1.35 -0.39,0.38 -0.87,0.46 -1.01,0.78 -0.99,0.45 -0.35,0.08 -0.36,-0.1 -1.59,-0.78 -0.74,-0.11 -0.57,0.12 -0.91,0.53 -0.22,0.36 -0.06,0.61 0.1,0.63 0.42,0.87 0.12,0.47 0.02,0.62 -0.12,0.43 -0.27,0.3 -0.69,0.38 -1.41,0.35 -1.16,0.61 -0.7,0.76 -0.67,1.82 0,0 -0.53,0.53 -1.02,1.38 -0.66,1.08 -0.59,0.39 -0.64,0.1 -0.82,-0.02 -0.64,-0.11 -0.9,-0.39 -0.48,-0.11 -0.84,-0.04 -0.97,0.07 -1.34,-1.2 -1.1,-1.16 -1.7,-3.39 -0.55,-0.9 -0.29,-0.26 -0.95,-0.51 -1.15,-0.27 -0.75,-0.34 -1.15,-0.29 -0.9,-0.39 -2.44,-0.14 -0.46,-0.1 -1.03,-0.42 -1.89,-0.2 0,0 -0.22,-0.33 -0.2,-1.19 -0.45,-1.04 -0.08,-0.63 0.03,-0.47 0.27,-0.49 2.49,-1.29 0.2,-0.17 0.17,-0.39 0.06,-0.76 -0.06,-2.96 -0.12,-0.62 -0.43,-1.03 -0.08,-1.44 0.1,-1.12 0.66,-1.74 0.34,-0.25 0.44,-0.08 3.6,0.05 1,0.12 1.01,0.44 0.42,0.04 0.52,-0.15 0.65,-0.95 0.72,-1.7 0.08,-1.33 -0.07,-1.66 -0.17,-0.46 -1.38,-1.58 -0.51,-0.9 -0.41,-0.51 -2.87,-2.83 -0.83,-1 -1.83,-3.61 -0.13,-0.44 -0.06,-0.65 0.02,-5.66 -0.14,-0.73 -0.33,-0.51 -0.42,-0.44 -3.09,-2.93 -2,0.07 -2.36,-0.06 -0.47,-0.1 -0.91,-0.38 -1.46,-0.22 -1.06,-0.42 -2.11,-0.23 -1.21,-0.46 -0.82,-0.08 -0.98,0.06 -1.07,0.4 -0.98,0.24 -0.37,0.2 -0.37,0.4 -0.9,1.88 -0.64,0.99 -1.01,0.62 -0.78,0.35 -1.2,0.78 0.05,-4.22 -0.05,-0.49 -0.21,-0.41 -0.6,-0.24 -1.06,-0.01 -0.89,0.11 -0.85,0.34 -0.39,0.04 -0.23,-0.1 -0.17,-0.24 -0.09,-0.92 0.04,-1.75 0.11,-0.99 0.39,-0.89 0.29,-1.12 0.95,-1.84 0.16,-0.56 -0.03,-1.05 -0.43,-1.02 -0.13,-0.61 -0.04,-2.98 0.15,-1.28 0.95,-1.83 0.12,-0.41 -0.04,-0.73 -0.46,-1.14 0.06,-0.88 1.24,-2.48 0.37,-0.5 0.58,-0.51 1.73,-0.91 0.37,-0.35 0.48,-0.79 0.6,-1.26 0.37,-1.39 0.62,-1.01 1.16,-0.64 1.28,-0.3 0.8,-0.45 0.27,-0.28 0.25,-1.37 0.45,-1.19 0.07,-0.82 -0.02,-2.51 -0.14,-0.63 -0.23,-0.4 -0.67,-0.84 -0.43,-0.77 -0.94,-1.22 -0.62,-1.26 -0.12,-0.62 -0.03,-3.8 0.07,-0.79 0.34,-0.62 1.03,-0.63 0.35,-0.42 0.17,-0.93 -0.11,-1.3 -0.71,-1.54 -0.59,-1.11 -0.26,-0.33 -0.45,-0.32 -1.92,-0.89 -0.86,-0.58 -0.21,-0.69 -0.04,-1.75 -0.1,-0.46 -0.41,-1.06 -0.06,-1.91 -0.13,-0.57 -0.28,-0.29 -0.68,-0.38 -1.14,-0.36 -0.19,-0.18 -0.14,-0.53 0.08,-0.87 0.42,-0.88 0.41,-1.22 0.62,-0.76 1.08,-0.62 0.38,-0.39 0.18,-0.55 0.06,-1.67 0.14,-0.42 0.57,-0.7 1,-0.95 1.06,-0.85 -0.72,-1.11 -0.33,-1.26 -0.66,-1.15 -1.03,-0.61 -1.13,-0.28 -0.37,-0.2 -0.29,-0.29 -0.49,-0.87 -0.77,-0.98 -0.74,-1.55 -0.08,-2.22 -0.2,-0.52 -0.34,-0.2 -1.71,-0.58 -2.61,-0.06 -0.78,-0.14 -0.78,-0.57 -1.98,-2.03 -0.34,-0.48 -1.24,-2.52 -0.24,-1.63 -0.48,-1.26 0,0 2.5,-0.56 0.97,-0.65 0.48,-0.46 1.01,-3.58 1.13,-2.1 1.13,-1.85 0.9,-1.27 2.63,-1.83 2.44,-1.09 2.76,-1.02 2.5,-0.43 1.76,0.03 3.88,0.54 1.53,0.07 0.96,-0.28 1.33,-0.6 1.3,-0.78 2.49,-2.04 2.08,-1.36 2.04,-0.91 1.76,-0.37 2.02,0.07 9.36,1.18 3.09,-0.31 1.95,-0.5 1.99,-0.22 2.95,0.69 1.2,0.57 1.12,0.69 0.71,0.93 0.93,0.9 0.79,0.97 2.25,12.25 0.77,1.7 0.64,0.56 1.12,0.69 1.13,0.13 0.7,-0.09 1.74,-1.03 2.33,-5.62 1.67,-5.56 2.25,-3.73 1.06,-1.48 1.06,-1.18 1.08,-0.86 1.59,-0.47 1.69,-0.33 2.54,-0.12 3.24,0.67 1.9,0.63 2.91,2.35 4.64,4.59 z', 10, 2, '2024-01-24 14:48:46', '2024-01-29 10:41:57'),
(11, '20240124185029.jpg', 'm 551.40122,300.69162 0.67,-1.82 0.7,-0.76 1.16,-0.61 1.41,-0.35 0.69,-0.38 0.27,-0.3 0.12,-0.43 -0.02,-0.62 -0.12,-0.47 -0.42,-0.87 -0.1,-0.63 0.06,-0.61 0.22,-0.36 0.91,-0.53 0.57,-0.12 0.74,0.11 1.59,0.78 0.36,0.1 0.35,-0.08 0.99,-0.45 1.01,-0.78 0.87,-0.46 0.39,-0.38 0.69,-1.35 0.26,-1.13 0.58,-1.26 0.52,-0.89 0.29,-0.23 0.38,-0.01 0.82,0.37 1.01,0.25 1.28,0.61 0.59,0.44 1.78,1.69 1.39,0.71 0.42,0.12 1.37,0.15 1.16,0.43 0,0 -0.7,1.06 -1.36,1.35 -0.74,0.58 -0.93,0.46 -0.59,0.5 -0.36,0.5 -0.09,0.56 0.1,0.39 0.17,0.21 1.84,0.95 0.58,0.52 0.37,0.49 1.28,2.64 0.09,0.78 0,2.23 0.12,0.44 0.34,0.43 0.99,0.56 1.13,0.83 2.53,1.24 0.94,0.14 2.13,0.01 0.47,-0.08 0.42,-0.19 1.02,-0.91 0.55,-0.72 0.84,-1.75 0.47,-0.48 0.75,-0.21 1.46,-0.03 0.57,0.08 0.3,0.27 0.02,0.37 -0.37,0.78 -0.24,1.46 -0.42,1.01 -0.24,1.61 -0.59,1.25 -0.55,0.9 -0.26,0.28 -0.91,0.54 -2.54,1.2 -0.76,0.16 -2.12,0.07 -1.52,0.52 -0.99,0.04 -0.81,-0.1 -6.1,-2.97 -0.98,-0.1 -3.03,0 -0.79,-0.15 -1.25,-0.89 -1.05,-0.6 -2.25,-2.18 -0.77,-0.47 -1.98,-0.16 -1.03,-0.42 -0.6,-0.12 -4.62,0.01 -0.58,-0.08 -0.31,-0.27 -0.03,-0.37 0.94,-2.29 0.05,-0.37 -0.09,-0.24 -0.27,-0.24 -0.79,-0.45 -1.06,-0.32 z', 11, 1, '2024-01-24 14:50:29', '2024-01-24 14:50:29');
INSERT INTO `regions` (`id`, `image`, `svg`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(12, NULL, 'm 32.241216,1.8516165 1.25,1.14 1.6,-0.26 0.82,0.35 2.6,2.34 2.4,-0.45 0.98,0.31 1.28,0.75 0.82,0.16 1.23,-0.01 0.74,0.09 1.91,0.32 1.11,-0.04 0.84,-0.54 0.85,-0.7 0.57,-0.33 2.28,1.46 2.38,0.31 1.14,0.71 1,1.42 1.21,0.52 1.27,0.45 2.09,0.3799995 2.89,1.04 0.94,0.08 1.8,-0.99 2.93,-3.5299995 0.95,-0.63 1.05,-0.21 0.77,-0.28 0.81,-0.48 1.18,-0.91 1.25,0.02 0.71,0.17 1.01,0.91 0.64,1.03 0.61,1.25 0.67,0.57 1.07,0.43 0.98,0.23 2.03,0.09 1.39,0.65 1.77,0.9699995 1.18,0.84 1.07,1.07 1.43,0.78 2.41,1.07 1.42,0.78 1.55,1.14 4.160004,-0.07 1.42,0.13 1.53,0.94 0.61,0.61 0.15,0.82 -0.42,1.52 0.07,0.48 0.51,0.63 1.06,0.38 1.08,0.68 0.88,0.84 1.21,2.75 1.57,0.55 1.85,-0.15 1.06,-0.36 0.67,-0.88 0.49,-0.38 0.73,-0.12 0.87,0.34 1.27,1.05 1.33,0.86 1.35,0.65 0.76,1.02 0.62,1.08 0.12,1.98 0.27,0.25 1.87,1.11 3.39,0.81 1.33,-0.06 0.59,-0.52 0.37,-0.91 0.54,-0.75 0.67,-0.62 0.74,-0.06 1.56,0.12 1.49,0.49 1.46,0.75 1.75,0.52 2.63,1.01 2.12,0.68 1.94,1 2.03,1.49 3.68,0.71 0.93,0.42 1.1,1 1.25,1.74 1.45,-0.08 0.89,0.06 -0.03,0.22 0.26,-0.51 1.04,-0.61 0.95,-0.91 1.3,-2.1 0.83,-0.54 0.52,0.14 0.68,0.36 0.44,0 1.23,-0.55 1.02,-0.13 0.74,0.21 1.47,1.35 0.31,7.04 0.31,0.61 0.59,0.32 0.85,0.19 2.79,0.45 0.79,-0.05 1.26,0.53 0.6,0.66 0.41,0.66 0.83,0.87 1.12,0.84 2.58,1.28 2.32,1.51 0.64,0.79 0.42,1.15 2.24,0.85 1.09,1.32 1.96,0.34 2.81,1.42 0.91,0.25 1.19,-0.16 1.09,-0.91 0.89,-0.09 0.51,0.19 3.09,1.65 0.46,0.33 0.92,0.22 0.9,0.04 0.98,-0.52 0.8,-0.91 0.6,-1.21 0.43,-0.25 0.57,0.03 1.42,0.93 1.76,1.83 2.22,0.64 1.42,0.13 2.48,1.15 0.63,-0.01 1.25,-0.28 2.55,-0.85 1.3,-0.79 0.55,-1.15 -0.69,-1.52 -0.14,-0.78 0.24,-0.8 0.39,-0.59 0.67,-0.2 0.74,0.14 1.46,1.5 3.12,1.37 2.37,0.22 0.66,0.27 0.46,0.53 0.91,1.53 0.59,0.45 0.92,-0.08 1.52,-0.76 2.46,-0.14 1.99,0.21 1.47,1.32 1.01,1.52 1.13,0.35 1.11,0.1 2.76,-1.67 2.7,-0.15 1.06,-0.35 2.82,-2.13 1.02,-0.07 1.14,0.37 0,0 -0.34,0.77 -0.29,1.16 -0.98,2 -0.26,1.01 -1.01,2.15 -0.13,0.62 -0.01,4.03 1.11,2.26 0.1,0.96 -0.47,1.16 -0.28,1.68 -1,2.07 -0.2,0.89 -1.91,3.93 -0.25,0.39 -1.66,1.71 -0.94,0.79 -1.13,0.65 -0.52,0.48 -0.33,0.48 -0.54,1.13 -0.17,0.61 -0.14,1.2 -0.46,0.95 -0.24,0.28 -0.41,0.18 -1.2,0.17 -0.95,0.34 -0.85,0.1 -2.22,0.05 -1.53,0.5 -1.96,0.17 -3.29,1.58 -1.76,0.31 -1.05,0.39 -1.8,0.14 -0.56,0.14 -2.45,1.14 -0.35,0.32 -0.21,0.43 0.05,0.55 0.4,1.060004 0.17,1.31 0.6,1.03 0.22,0.17 0.42,0.1 1.86,0.04 0.46,0.27 0.16,0.75 -0.1,0.63 -0.4,0.91 -0.14,0.65 0,3.78 0.28,0.68 0.41,0.41 0.59,0.29 0.4,0.48 0.15,0.46 0.08,1.8 0.17,0.57 0.87,0.9 0.16,0.51 -0.07,0.68 -0.68,1.47 -0.66,0.9 -1.03,0.39 -1.64,0.81 -0.7,0.74 -0.41,0.75 -0.66,0.84 -0.16,0.45 0.17,0.48 1.44,1.44 0,0.65 0.56,1.6 0.12,2.88 0.09,0.48 0.36,0.74 0.08,0.48 0.04,6.92 0.1,1.16 0.39,0.89 0.26,1.02 0.4,0.68 2.36,2.42 0.52,0.94 0.66,0.86 0.3,0.62 0.1,0.73 -0.02,2.54 -0.08,0.56 -0.39,0.96 -0.26,1.62 -0.37,0.91 -0.26,1.01 -0.6,0.67 -1.12,0.58 -2,0.68 -1.11,1.36 -0.89,1.83 -1.56,1.81 -0.57,1.02 -2.43,2.5 -0.85,1.37 -1.74,1.72 -0.9,0.48 -1.02,0.77 -0.99,0.54 -1.75,1.47 -1.01,0.54 -1.04,0.8 -7.51,3.66 -1.86,0.29 -0.87,0.35 -0.9,0.2 -1.42,0.63 -0.44,0.32 -0.5,0.55 -0.8,1.3 -2.25,2.3 -0.33,0.44 -0.33,0.67 -0.75,0.86 -2.9,1.47 -3.07,1.43 -2.46,1.33 0,0 -0.29,-1.1 -0.13,-1.33 -0.3,-1.46 -0.26,-1.68 -0.3,-2.08 -0.45,-4.03 -0.07,-1.29 -0.23,-1.46 -0.16,-2.13 -0.13,-1.06 -0.99,-6.29 -0.19,-0.98 -0.3,-1.15 -0.2,-0.49 -0.26,-1.46 -0.16,-0.76 -0.13,-0.85 -0.43,-0.97 -0.3,-1.02 -0.68,-2.44 -0.27,-2 -2.88,-8.62 -0.79,-2.31 -0.92,-1.86 -0.26,-0.58 -0.2,-0.62 -0.39,-0.76 -0.92,-1.56 -0.95,-1.06 -0.46,-0.05 -1.21,0.27 -0.1,0.04 -0.29,-0.71 -0.4,-0.31 -0.39,-0.67 -0.75,-0.93 -1.41,-0.85 -1.81,-0.58 -0.88,0.05 -0.53,0 -0.72,-0.22 -0.52,-0.14 -0.59,-0.13 -0.4,-0.27 -0.95,-0.4 -0.49,-0.13 -0.52,-0.14 -0.53,-0.04 -0.33,0.13 -0.32,0 -0.79,-0.13 -0.52,-0.22 -0.73,-0.54 -0.59,-0.53 -1.05,-0.8 -0.91,-0.22 -0.66,-0.27 -0.82,-0.27 -0.59,-0.13 -1.7,-0.45 -0.69,-0.22 -0.69,-0.18 -0.62,-0.4 -1.25,-0.35 -1.74,-0.09 -1.14,0.35 -0.3,0.14 -0.56,0.44 -0.62,0.54 -0.59,0.31 -0.56,0 -0.46,-0.12 -0.52,-0.11 -0.79,-0.26 -0.95,-0.14 -0.36,-0.08 -0.52,-0.54 -0.1,-0.22 -0.36,-0.94 -0.07,-0.71 -0.19,-0.27 -0.3,-0.17 -0.43,-0.58 -0.36,-0.45 -0.75,-0.53 -0.16,-0.27 -0.07,-0.53 -0.79,-0.98 -0.69,-0.5 -0.29,-0.53 -0.43,-1.34 -0.06,-1.07 -0.2,-1.24 -0.29,-1.07 -0.23,-1.56 -0.23,-1.92 -0.72,-4.06 -0.37,-1.83 -0.42,-2.01 -0.43,-1.11 -0.52,-1.16 -0.23,-0.89 -0.23,-0.5 -0.43,-0.890004 -0.23,-0.4 -0.36,-0.54 -0.36,-0.58 -0.23,-0.8 -0.36,-0.58 -0.85,-0.81 -0.56,-0.53 -1.15,-0.45 -0.91,0.05 -0.2,0.35 -0.75,0.27 -1.48,-0.22 -0.95,0.04 -0.66,0.72 -0.23,0.22 -0.46,0.49 -0.29,0.32 -0.49,0.49 -0.66,0.18 -0.56,-0.23 -0.22,-0.18 -0.2,-0.22 -0.36,-1.16 -0.59,-0.63 -0.89,-0.98 -0.29,-0.36 -0.92,-0.44 -0.13,-0.18 -0.33,-0.9 -0.29,-0.76 -0.17,-0.35 -1.08,-1.39 -0.49,-0.45 -1.12,-0.66 -0.39,-0.76 -0.52,-0.23 -0.27,-0.71 -0.26,-0.45 -0.39,-0.63 -0.63,-1.07 -0.72,-0.89 -0.36,-0.41 -1.41,-1.2 -0.69,-0.23 -1.670004,-0.09 -1.15,-0.58 -1.57,-0.36 -1.44,-0.04 -0.33,-0.18 -0.43,0 -0.45,0.13 -0.56,0.32 -0.33,0 -0.39,-0.14 -0.23,-0.22 -0.89,-0.22 -2.95,-0.41 -2.23,0.05 -0.65,0.22 -0.89,0.09 -0.39,0 -1.38,-0.18 -0.56,-0.13 -0.46,0 -0.36,0.18 -0.72,-0.05 -0.78,-0.13 -1.74,-0.76 -1.22,-0.99 -1.14,-0.26 -0.43,-0.18 -0.36,0 -1.25,0.62 -2.39,0.67 -1.44,0.32 -1.31,0.09 -0.76,-0.05 -0.36,-0.13 -0.49,-0.32 -1.38,-1.65 -0.59,-1.16 -0.49,-0.63 -0.88,-1.16 -0.23,-0.54 -0.43,-0.67 -0.33,-0.27 -0.75,-0.49 -0.39,-0.41 -0.37,-0.4 -0.52,-0.36 -0.75,-0.31 -0.53,-0.05 -0.59,0 -0.46,0.05 -0.26,0.22 -0.52,0 -0.89,-0.04 -0.39,-0.18 -0.33,0 -0.33,0.09 -0.33,0.27 -0.26,0.18 -0.26,0.13 -0.49,-0.54 -0.2,-0.49 -0.43,-0.36 -0.79,-0.45 -0.32,-0.18 -0.3,-0.13 -0.45,0 -0.27,0.13 -0.85,-0.35 -0.36,-0.27 -0.52,-0.58 -0.43,-0.23 -0.26,-0.04 -0.46,-0.18 -0.63,-0.54 -0.22,-0.36 -0.4,-0.27 -1.28,-0.67 -1.05,-0.09 -1.44,0.36 -1.08,0.63 -0.43,0.36 -0.42,0.4 -0.59,0.81 -0.33,0.4 -0.59,0.54 0.06,0.4 0.04,0.27 -0.17,0.31 -0.13,0.14 -0.39,-0.09 -0.66,-0.54 -0.46,-0.72 -0.55,-0.36 -0.63,-0.58 -0.45,-0.4 -0.89,-1.3 -0.39,-0.31 -0.79,0 -0.36,-0.18 -0.76,-0.81 -0.39,-0.45 -0.26,-0.22 -0.76,-0.72 -0.16,-0.36 -0.43,-2.24 -0.39,-5.94 -0.46,-3.97 -0.66,-3.14 -0.52,-1.97 -0.49,-1.48 -0.49,-1.04 -0.46,-0.67 -0.33,-0.31 -0.75,-0.45 -1.02,-0.41 -0.49,-0.09 -0.26,-0.04 -0.3,-0.23 -0.29,-0.36 -0.63,-0.31 -0.52,-0.27 -1.94,-0.31 -0.65,-0.27 -1.51,-0.36 -1.15,-0.54 -1.08,-0.72 -2.36,-1.93 -0.72,-0.36 -1.18,0.04 -0.13,-0.13 -0.03,-0.18 -1.54,-1.04 -0.79,-0.49 -0.17,-0.09 -1.5700001,-1.03 -0.82,-0.23 -1.47,0 -1.48,-0.09 -1.93,-0.45 -1.09,-0.31 -0.64999997,-0.23 -0.64,0.05 -0.1,-2.24 0.57,-2.59 -0.15,-1.26 0.26,-0.88 0.56999997,-0.77 2.03,-3.86 0.33,-1.17 0.52,-2.91 0.71,-0.82 1.34,-1.78 0.12,-0.94 0.38,-0.85 0.78,-0.67 2.5000001,-2.5999995 0.4,-0.95 -0.04,-0.71 -0.6200001,-1.68 0.03,-1.2 0.4000001,-1.04 0.58,-0.71 0.57,-0.13 2.12,0.48 1.18,-0.19 1.47,-0.57 1.72,-0.8 1.7,-0.39 0.78,0.01 1.16,0.44 2.31,-0.04 0.86,-0.33 0.86,-0.69 1.13,-0.41 1.45,-0.12 1.72,0.27 z', 12, 2, '2024-01-24 14:51:35', '2024-01-29 08:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `region_restaurant`
--

CREATE TABLE `region_restaurant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region_restaurant`
--

INSERT INTO `region_restaurant` (`id`, `region_id`, `restaurant_id`) VALUES
(1, 1, 4),
(2, 1, 6),
(3, 1, 7),
(4, 1, 10),
(6, 4, 31),
(7, 4, 32),
(8, 3, 33),
(9, 11, 34);

-- --------------------------------------------------------

--
-- Table structure for table `region_translations`
--

CREATE TABLE `region_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region_translations`
--

INSERT INTO `region_translations` (`id`, `region_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'ka', 'აჭარა', '2024-01-24 08:08:36', '2024-01-24 08:08:36'),
(2, 1, 'en', 'Adjara', '2024-01-24 08:08:36', '2024-01-24 08:08:36'),
(3, 2, 'ka', 'გურია', '2024-01-24 08:09:15', '2024-01-24 08:09:15'),
(4, 2, 'en', 'Guria', '2024-01-24 08:09:15', '2024-01-24 08:09:15'),
(5, 3, 'ka', 'სამეგრელო', '2024-01-24 08:40:07', '2024-01-24 08:40:07'),
(6, 3, 'en', 'Samegrelo', '2024-01-24 08:40:07', '2024-01-24 08:40:07'),
(7, 4, 'ka', 'იმერეთი', '2024-01-24 14:28:37', '2024-01-24 14:28:37'),
(8, 4, 'en', 'Imereti', '2024-01-24 14:28:37', '2024-01-24 14:28:37'),
(9, 5, 'ka', 'რაჭა-ლეჩხუმი', '2024-01-24 14:31:16', '2024-01-24 14:31:16'),
(10, 5, 'en', 'Racha-Lechkhumi', '2024-01-24 14:31:16', '2024-01-24 14:31:16'),
(11, 6, 'ka', 'სამცხე ჯავახეთი', '2024-01-24 14:32:13', '2024-01-24 14:32:13'),
(12, 6, 'en', 'სამცხე ჯავახეთი', '2024-01-24 14:32:13', '2024-01-24 14:32:13'),
(13, 7, 'ka', 'შიდა ქართლი', '2024-01-24 14:33:05', '2024-01-24 14:33:05'),
(14, 7, 'en', 'შიდა ქართლი', '2024-01-24 14:33:05', '2024-01-24 14:33:05'),
(15, 8, 'ka', 'ქვემო ქართლი', '2024-01-24 14:37:48', '2024-01-24 14:37:48'),
(16, 8, 'en', 'ქვემო ქართლი', '2024-01-24 14:37:48', '2024-01-24 14:37:48'),
(17, 9, 'ka', 'კახეთი', '2024-01-24 14:38:27', '2024-01-24 14:38:27'),
(18, 9, 'en', 'კახეთი', '2024-01-24 14:38:27', '2024-01-24 14:38:27'),
(19, 10, 'ka', 'მცხეთა მთიანეთი', '2024-01-24 14:48:46', '2024-01-24 14:48:46'),
(20, 10, 'en', 'მცხეთა მთიანეთი', '2024-01-24 14:48:46', '2024-01-24 14:48:46'),
(21, 11, 'ka', 'თბილისი', '2024-01-24 14:50:29', '2024-01-24 14:50:29'),
(22, 11, 'en', 'Tbilisi', '2024-01-24 14:50:29', '2024-01-24 14:50:29'),
(23, 12, 'ka', 'აფხაზეთი', '2024-01-24 14:51:35', '2024-01-24 14:51:35'),
(24, 12, 'en', 'Abkhazia', '2024-01-24 14:51:35', '2024-01-24 14:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `person` int(11) NOT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `restaurant_id` int(10) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `event` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `date`, `time`, `person`, `place_id`, `table_id`, `restaurant_id`, `message`, `event`, `country`, `status`, `created_at`, `updated_at`) VALUES
(397, 'sBrrUbdTbo', 'addkw@wjul.com', '461451', '2024-02-15', '17:57:00', 6, 36, 34, 4, NULL, '4x4sNURkVq', NULL, 2, '2024-02-14 14:57:14', '2024-02-14 14:57:14'),
(398, 'prqvkpHhKJ', '1zxxo@4xhy.com', '850411', '2024-02-15', '17:57:00', 4, 36, 38, 4, NULL, '1nRTFsLnuM', NULL, 2, '2024-02-14 15:00:51', '2024-02-14 15:00:51'),
(399, 'დავით გახოკია', 'david.gakhokia@gmail.com', '514756688', '2024-02-17', '15:00:00', 6, 36, 35, 4, NULL, 'დაბადებიდღე', NULL, 2, '2024-02-15 13:48:43', '2024-02-15 13:48:43'),
(400, 'დავით გახოკია', 'david.gakhokia@gmail.com', '514756688', '2024-02-21', '00:30:00', 6, 43, 79, 11, NULL, 'დაბადებიდღე', NULL, 2, '2024-02-20 11:58:46', '2024-02-20 11:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_id` int(10) UNSIGNED DEFAULT NULL,
  `logo` longtext DEFAULT NULL,
  `cover` longtext DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `video_link` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `map_iframe` longtext DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `status_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `slide_id`, `logo`, `cover`, `phone`, `email`, `website`, `video_link`, `instagram`, `facebook`, `start_time`, `end_time`, `map_link`, `map_iframe`, `latitude`, `longitude`, `rank`, `status`, `status_type`, `created_at`, `updated_at`) VALUES
(4, 33, '20231215165326.png', '202312032053.jpg', 514082200, 'info@exodus.ge', NULL, 'https://www.youtube.com/embed/pz-eWteo4Rw?si=YrvTt55p9AUtJF-l', NULL, NULL, '09:00', '3:00', 'https://maps.app.goo.gl/nnpVtm5TBdwhaKYX9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28978697.826078452!2d18.49043837121392!3d27.548892232987846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406787193beaf967%3A0x75f44586c0ed0c08!2sEXODUS!5e0!3m2!1ska!2sge!4v1704409030659!5m2!1ska!2sge', '41.6407458', '41.6108394', 1, 1, 1, '2023-10-25 07:26:31', '2023-12-18 01:01:24'),
(6, NULL, '20231112203943.jpg', '202312191524.jpg', 550008008, 'info@nbngroup.ge', 'https://rustaveli.ofoodo.com/', 'https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2FRustaveli.NBN%2Fvideos%2F540106984756489%2F&show_text=false&width=560&t=0', NULL, NULL, NULL, NULL, 'https://maps.app.goo.gl/uQM2W5grp1S4x5JX7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.636450990088!2d41.63352308976025!3d41.641988997187305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40678748e32992ff%3A0x89a5aecdaf0c002f!2sRustaveli%20Restaurant!5e0!3m2!1sen!2sge!4v1699807043275!5m2!1sen!2sge', '41.641989', '41.6335231', 7, 1, 0, '2023-11-12 16:39:43', '2023-12-20 20:58:09'),
(7, NULL, '20231114184248.png', '202312112156.jpg', 591620005, 'bernrestaurant@gmail.com', 'https://bernbatumi.ofoodo.com/', 'https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2FBern.Batumi%2Fvideos%2F261976185514324%2F&show_text=false&width=560&t=0', 'https://www.instagram.com/bern_restaurant/', 'https://www.facebook.com/Bern.Batumi', '10:00', '24:00', 'https://maps.app.goo.gl/JUs8hVFZXwEMsFhJ9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.2000762647817!2d41.631546076581635!3d41.65141897957538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067864055127e7d%3A0x9668148fb09ebe3d!2sBERN%20Batumi%20Restaurant!5e0!3m2!1sen!2sge!4v1699972194000!5m2!1sen!2sge', '41.651419', '41.6315461', 6, 1, 3, '2023-11-14 14:42:48', '2023-12-20 21:04:34'),
(8, NULL, '20231115171021.jpg', '202312071815.jpg', 555774488, 'restaurant@ambassadori.com', 'https://restaurantambassadori.ofoodo.com/', 'https://www.youtube.com/embed/3aMCc66yJ3s?si=3kunQArcIAVZs7f7', 'https://www.instagram.com/restaurant_ambassadori/', 'https://www.facebook.com/RestaurantAmbassadoriBatumi', NULL, NULL, 'https://maps.app.goo.gl/fVBfP8UzcRnznHyy5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.026929335611!2d41.63269827589293!3d41.65516017126701!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406787ed9d3c3a4f%3A0x43f6850bdfba8b6b!2sRestaurant%20Ambassadori!5e0!3m2!1sen!2sge!4v1704883330953!5m2!1sen!2sge', '41.6266569', '41.2951045', 444, 0, 0, '2023-11-15 13:10:22', '2024-02-05 14:35:28'),
(10, NULL, '20231116171830.jpg', '202312032056.jpg', 555000285, 'tangerinemangal.22@gmail.com', NULL, 'https://www.youtube.com/embed/0sW_43zxGTo?si=3TIOJIj7BWEN8ktf', 'https://www.instagram.com/tangerine_mangal', 'https://www.facebook.com/profile.php?id=100083564492392', '10:00', '01:00', 'https://maps.app.goo.gl/kLBuJy8q6QV257wJ9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.1425585550633!2d41.63611528505595!3d41.652661797182546!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406787550385c717%3A0x2cf88af8f6a91bee!2sTangerine%20Mangal!5e0!3m2!1sen!2sge!4v1704882584015!5m2!1sen!2sge', '41.6526659', '41.6384113', 3, 1, 1, '2023-11-16 13:18:30', '2024-01-10 14:38:14'),
(11, NULL, '20231209161041.jpg', '202312091611.jpg', 514000901, 'info@hotelmonarch.ge', NULL, 'https://www.youtube.com/embed/ecRf0DqQDc8?si=N6MoeK9c83wrWlqI', 'https://www.instagram.com/terrace.monarch/', 'https://www.facebook.com/terracemonarch', '15:00', '24:00', 'https://maps.app.goo.gl/wu635xAC8MFwXm2i7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.251177947008!2d41.63488547607299!3d41.650314771267674!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067871fa5f83a5d%3A0xc5d75f9aa86320fc!2zVGVycmFjZSBNb25hcmNoIOKAoiDhg6Lhg5Thg6Dhg5Dhg6Hhg5Ag4YOb4YOd4YOc4YOQ4YOg4YOl4YOY!5e0!3m2!1ska!2sge!4v1704409762238!5m2!1ska!2sge', '41.6503143', '41.6271821', 2, 1, 1, '2023-12-09 16:10:41', '2023-12-18 11:58:06'),
(12, NULL, '20231215165238.png', '202312131755.jpg', 322472233, 'info@hoteloasis.ge', 'https://skyviewlounge.ofoodo.com/ka/groups', 'https://www.youtube.com/embed/gJOEftzWrM8?si=PCH0MhpHoJwcSOvM', 'https://www.facebook.com/dreamlandoasishotel', 'https://www.facebook.com/dreamlandoasishotel', '13:00', '24:00', 'https://maps.app.goo.gl/a4jHHNyyjbxViwNc9', 'https://maps.app.goo.gl/a4jHHNyyjbxViwNc9', '41.7214499', '41.7256129', 9, 0, 0, '2023-12-13 13:50:34', '2024-01-09 17:57:14'),
(14, NULL, '20231218001908.jpg', '202312180019.jpg', 422222299, 'batumi.info@hilton.com', NULL, NULL, NULL, NULL, '09:00', '22:00', 'https://maps.app.goo.gl/cF4gg1V1agtVPMQE6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.3175853615553!2d41.625641800000004!3d41.648879799999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067866bd00fe543%3A0x9181082a37c1173f!2sTandila%20Caf%C3%A9%20and%20Bar!5e0!3m2!1sen!2sge!4v1704884602797!5m2!1sen!2sge', '41.6488798', '41.6230669', 19, 1, 0, '2023-12-18 00:19:08', '2024-01-10 15:03:55'),
(15, NULL, '20231218021957.jpg', '202312180108.jpg', 598424242, 'ledersalo@yahoo.com', 'https://www.instagram.com/stories/highlights/17917442543698438/', 'https://www.youtube.com/embed/Av9t96g3hNs', 'https://www.instagram.com/panorama_batumi/', 'https://www.facebook.com/panoramarestbatumi', '11:00', '24:00', 'https://maps.app.goo.gl/BFVgD8rMxTbQdkuY9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d47738.882373627916!2d41.57607368588313!3d41.59780179582594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406785484f95d8a3%3A0x262f1d7b619d5313!2sPanorama%20Restaurant!5e0!3m2!1sen!2sge!4v1704883437003!5m2!1sen!2sge', '41.6325063', '41.5350152', 555, 1, 0, '2023-12-18 01:08:46', '2024-01-22 21:35:42'),
(16, NULL, '20231219130115.jpg', '202312191307.jpg', 577008875, 'restaurantdeliria@gmail.com', 'https://deliria.emenu.ge/', NULL, 'https://www.instagram.com/deliria_restaurant/', 'https://www.facebook.com/RestaurantDeliria/', '11:00', '24:00', 'https://maps.app.goo.gl/byZuFqJ1daqzCsee6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5014.295383954801!2d41.63074989265522!3d41.64455160544162!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406786147b2f1e15%3A0x2bc76f937d5ca2a7!2sDeliria!5e0!3m2!1sen!2sge!4v1704883716394!5m2!1sen!2sge', '41.6449351', '41.6303488', 8, 1, 0, '2023-12-19 13:00:43', '2024-01-10 14:49:10'),
(17, NULL, '20231219145154.jpg', '202312191451.jpg', 514811313, 'bkgeopro@gmail.com', 'https://bkbatumi.ofoodo.com/', 'https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2Fbkbatumi%2Fvideos%2F1107404302730306%2F&show_text=false&width=560&t=0', NULL, NULL, '09:00', '24:00', 'https://maps.app.goo.gl/LZbSNjT1NrsuaErQ9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.2191252247817!2d41.63495757589264!3d41.65100737126751!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40678640983ecb63%3A0x5b4891b913ec0b56!2sBK!5e0!3m2!1sen!2sge!4v1704883773268!5m2!1sen!2sge', '41.6510074', '41.6184781', 10, 1, 0, '2023-12-19 14:51:54', '2024-01-10 14:50:01'),
(18, NULL, '20231219154115.jpg', '202312191546.jpg', 514152255, 'alphbtower@gmail.com', NULL, 'https://www.youtube.com/embed/4vBmArgWsYI?si=gUFBCpsLh4_PgWGY\"', 'https://www.facebook.com/atmospherebatumi', 'https://www.facebook.com/atmospherebatumi', '11:00', '21:00', 'https://maps.app.goo.gl/kHD9RfWj6myDtNZD7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4215.722878320346!2d41.63623340227989!3d41.656471533823044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406787551e0e0b9b%3A0x6da2efec59da33c7!2sAtmosphere%20Batumi!5e0!3m2!1sen!2sge!4v1704883894157!5m2!1sen!2sge', '41.6560532', '41.6368,17', 11, 1, 0, '2023-12-19 15:41:15', '2024-01-10 14:51:58'),
(19, NULL, '20231220151753.png', '202312201520.jpg', 557075555, 'ter.askaneli@gmail.com', 'https://go.avantmenu.com/DAAE80NKKDTWJMFW', NULL, 'https://www.instagram.com/terrassa_askaneli/', 'https://www.facebook.com/TerrassaAskaneli/', '11:00', '23:00', 'https://maps.app.goo.gl/m2pYwvzd3puY1NvH9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.2996680839547!2d41.62311097589259!3d41.64926697126786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067866bc38eeaed%3A0x6b7c634560f9e38c!2sAskaneli%20Restaurant%20Terrassa%20Wine%20Club!5e0!3m2!1sen!2sge!4v1704883946061!5m2!1sen!2sge', '41.649267', '41.623111', 13, 1, 0, '2023-12-20 15:17:53', '2024-01-10 14:52:53'),
(20, NULL, '20231220174147.jpg', '202312201743.jpg', 422222299, 'batumi.nephele@hilton.com', 'https://hiltonbatumi.wi-q.com/', 'https://www.facebook.com/plugins/video.php?height=311&href=https%3A%2F%2Fwww.facebook.com%2FNepheleSkyBar%2Fvideos%2F932457033574260%2F&show_text=false&width=560&t=0', NULL, 'https://www.facebook.com/NepheleSkyBar/', '12:00', '24:00', 'https://maps.app.goo.gl/2ehkMDNhJgjgPQT19', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.3058229928088!2d41.62316447589263!3d41.64913397126782!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067876482ca8fcf%3A0x5feff8e6e41b7a99!2sNephele%20Sky%20Bar!5e0!3m2!1sen!2sge!4v1704884018374!5m2!1sen!2sge', '41.649134', '41.6257394', 14, 1, 0, '2023-12-20 17:41:47', '2024-01-19 18:02:24'),
(22, NULL, '20231221140959.jpg', '202312211409.jpg', 422210011, 'info@verandaacropoli.ofoodo.com', 'https://verandaacropoli.ofoodo.com/', NULL, 'https://www.instagram.com/veranda_acropoli/', 'https://www.facebook.com/veranda.ge/', '09:00', '02:00', 'https://maps.app.goo.gl/2idKWF6N67k2zee1A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.767575817518!2d41.60751177589202!3d41.63915507126903!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406786758eafcbb9%3A0xe93586d1d7eed579!2sVeranda%20Acropoli%20by%20Chef%20Konstantin%20Tedeluri!5e0!3m2!1sen!2sge!4v1704884449631!5m2!1sen!2sge', '41.6391551', '41.6075118,17', 5, 1, 3, '2023-12-21 14:09:59', '2024-01-29 22:08:12'),
(24, NULL, '20231225010636.jpg', '202312250106.jpg', 577012948, 'info@piatto.ge', 'https://www.instagram.com/stories/highlights/17968429936714309/', NULL, 'https://www.instagram.com/cafe_piatto/', 'https://www.facebook.com/piatto.ge', '9:30', '23:00', 'https://maps.app.goo.gl/xH2uxTDyC6ZDx8Yb9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1490.653204693348!2d41.630029398394775!3d41.649121300000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067871bd6d6a729%3A0xd5e78aab630a2b0f!2sCafe%20Piatto!5e0!3m2!1sen!2sge!4v1704884558941!5m2!1sen!2sge', '41.6500768', '39.196215', 21, 0, 0, '2023-12-25 01:06:36', '2024-02-15 17:34:57'),
(25, NULL, '20231227180324.jpg', '202312271803.jpg', 558820101, 'tokyohousebatumi@gmail.com', 'https://tokyohousebatumi.com/', NULL, 'https://www.facebook.com/SushiBarBatumi/', 'https://www.facebook.com/SushiBarBatumi/', '12:00', '22:00', 'https://maps.app.goo.gl/ELw3uqPvDZhqcY829', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.557665308113!2d41.61601167589243!3d41.64369167126863!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067864011a77799%3A0xa94daef6cbd7417f!2sTokyo%20House!5e0!3m2!1sen!2sge!4v1704884675987!5m2!1sen!2sge', NULL, NULL, 32, 1, 0, '2023-12-27 18:03:24', '2024-01-10 15:05:09'),
(26, NULL, '20240104182029.jpg', '202401041820.jpg', 500050303, 'reservation@arenapub.ge', 'https://arenapub.ofoodo.com/', NULL, NULL, NULL, '17:00', '03:00', 'https://maps.app.goo.gl/KH6NdGVoEJy2gW1o6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.9501160407053!2d41.61633497655523!3d41.63520967126955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406787a91ebb52cd%3A0xb85ee515e1e4f8a6!2sArena%20Pub!5e0!3m2!1ska!2sge!4v1704410572130!5m2!1ska!2sge', '41.6352097', '41.616335', 88, 1, 0, '2024-01-04 18:20:29', '2024-01-04 18:33:14'),
(27, NULL, '20240104185415.jpg', '202401041854.jpg', 577202265, 'info@creatoria.ge', 'https://qr-menu.ge/ge/creatoriapub', NULL, 'https://www.instagram.com/creatoria_pub/', 'https://www.facebook.com/creatoriasportpub', '12:00', '24:00', 'https://maps.app.goo.gl/gCHJ5Wp6ncRgPTdN7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.95039825599!2d41.61927387589189!3d41.63520357126947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067879f1851b005%3A0x72611e1d177c14b7!2sCreatoria%20Pub%20-%20Bar%20in%20Batumi!5e0!3m2!1sen!2sge!4v1704884837128!5m2!1sen!2sge', '41.6352036', '41.6218488', 89, 1, 0, '2024-01-04 18:54:15', '2024-01-10 15:07:44'),
(28, NULL, '20240110152541.jpg', '202401101525.jpg', 550000080, 'marketingsenate@gmail.com', 'https://senate.ofoodo.com/ka/groups', 'https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F61551157647966%2Fvideos%2F2678832625748613%2F&show_text=false&width=560&t=0', 'https://www.instagram.com/senate_restaurant_lounge/', 'https://www.facebook.com/profile.php?id=61551157647966', '10:00', '24:00', 'https://maps.app.goo.gl/urHZS2c7rx8sJkNY6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.8045103819322!2d41.605375285050656!3d41.63835679718849!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406785b5519737b1%3A0xdf48e3e2bf308d99!2sSENATE!5e0!3m2!1sen!2sge!4v1704885684258!5m2!1sen!2sge', '41.6352097', '41.616335', 67, 1, 0, '2024-01-10 15:25:41', '2024-01-10 15:25:41'),
(30, NULL, '20240123011516.png', '202401230115.jpg', 596858000, 'operation@newwavehotels.com', 'https://www.facebook.com/RestaurantAtlantisBatumi/menu', 'https://www.facebook.com/plugins/video.php?height=476&href=https%3A%2F%2Fwww.facebook.com%2FRestaurantAtlantisBatumi%2Fvideos%2F2503609843130863%2F&show_text=false&width=267&t=0', 'https://www.instagram.com/restaurant_atlantis/', 'https://www.facebook.com/RestaurantAtlantisBatumi', '08:00', '00:00', 'https://maps.app.goo.gl/7MtXMa5Scrbf1PVFA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.794998930749!2d41.61522967655542!3d41.63856237126907!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406787a3400b86f1%3A0x1d39f4818fc1ea3d!2zUmVzdGF1cmFudCBBdGxhbnRpcyAtIOGDoOGDlOGDoeGDouGDneGDoOGDkOGDnOGDmCDhg5Dhg6Lhg5rhg5Dhg5zhg6Lhg5jhg6Hhg5g!5e0!3m2!1ska!2sge!4v1705955860093!5m2!1ska!2sge', NULL, NULL, 4, 1, 3, '2024-01-23 00:31:54', '2024-01-22 21:45:15'),
(31, NULL, '20240129130033.jpg', '202401291300.jpg', 431243380, 'barpalaty@yahoo.com', 'https://bar-restaurant-palaty.business.site/', NULL, NULL, 'https://www.facebook.com/palatyrestaurant/', '10:00', '23:45', 'https://maps.app.goo.gl/ceXHkb7pvHjVzZWy7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d94513.12500821242!2d42.512251396759716!3d42.24574292804202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405c8cf0038eac39%3A0xb36a065ad983ab1b!2z4YOe4YOQ4YOa4YOQ4YOi4YOY!5e0!3m2!1ska!2sge!4v1706518652220!5m2!1ska!2sge', '42.2457429', '42.5122514', 54, 1, NULL, '2024-01-29 09:00:33', '2024-01-29 09:00:47'),
(32, NULL, '20240129131941.jpg', '202401291319.jpg', 431244275, 'group.mgv@gmail.com', 'https://allmenu.ge/ka/whitestones', NULL, NULL, NULL, '11:00', '24:00', 'https://maps.app.goo.gl/hPjLQvoNNAhCQ4bR6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d859.213836044446!2d42.6998384!3d42.2685678!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405c8cefeab68c67%3A0x8013b7bd9f4134fd!2z4YOX4YOU4YOX4YOg4YOYIOGDpeGDleGDlOGDkeGDmCAtIFdoaXRlIFN0b25lcw!5e1!3m2!1ska!2sge!4v1706519884130!5m2!1ska!2sge', '42.2685678', '42.6998384', 57, 1, NULL, '2024-01-29 09:19:42', '2024-01-29 09:19:42'),
(33, NULL, '20240129142841.jpg', '202401291428.jpg', 415221122, 'diaroni.ge@gmail.com', 'http://www.diaroni.ge/?menuid=1', NULL, NULL, NULL, '10:00', '23:00', 'https://maps.app.goo.gl/ZvDi5PoFpPao6HdU6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d54780.36491304647!2d41.78035729157242!3d42.507970038701465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405c2494db5b59f3%3A0x37588cbc13300a07!2z4YOT4YOY4YOQ4YOg4YOd4YOc4YOY!5e1!3m2!1ska!2sge!4v1706524036753!5m2!1ska!2sge', NULL, NULL, 90, 1, NULL, '2024-01-29 10:28:42', '2024-01-29 22:07:33'),
(34, NULL, '20240129145631.png', '202401291456.jpg', 599987700, 'Sormoni@gmail.com', 'https://menu.spacem.ge/SORMONI/geo/main?fbclid=IwAR1qX_UlEiSdBvWiyYBiSKH17RaKl1NWkXQAnF2kemky-oqgJGI4NkK-MOY', NULL, NULL, 'https://www.facebook.com/SormoniTbilisi/', '11:00', '01:00', 'https://maps.app.goo.gl/57PNhQYgjGsEWc7o8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2977.847643802415!2d44.73682577655907!3d41.723806371259194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4044731035c34d71%3A0x94fd5a6c4bf82b8a!2z4YOh4YOd4YOg4YOb4YOd4YOc4YOY!5e0!3m2!1ska!2sge!4v1706525713985!5m2!1ska!2sge', '41.7238064', '44.7368258', 91, 1, NULL, '2024-01-29 10:56:32', '2024-01-29 22:07:44'),
(35, NULL, '20240217144038.jpg', '202402171440.jpg', 555555555, 'foodly.portal@gmail.com', 'http://chaikhana.foodly.space/menu', NULL, NULL, NULL, '11:00', '24:00', 'https://maps.app.goo.gl/UtJUCeWFSWSu92DVA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.1918620192882!2d41.626229576555986!3d41.651596471267645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4067864203c6728d%3A0xb7203c8ba2281cd9!2z4YOp4YOQ4YOY4YOu4YOQ4YOc4YOQ!5e0!3m2!1ska!2sge!4v1708166347184!5m2!1ska!2sge', NULL, NULL, 888, 1, NULL, '2024-02-17 14:40:38', '2024-02-17 14:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_translations`
--

CREATE TABLE `restaurant_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_translations`
--

INSERT INTO `restaurant_translations` (`id`, `restaurant_id`, `locale`, `name`, `description`, `address`, `created_at`, `updated_at`) VALUES
(5, 4, 'en', 'EXODUS', '<p>Restaurant Exodus is an ideal place to taste world excellencies, whether it’s for breakfast, business lunch or dinner. You will find dizzying selections of Sushi and international cuisine, such as: Georgian, Israelian, Asian and European<br></p>', '8 Khimshiashvili Street, Batumi', '2023-10-25 07:26:31', '2023-11-16 13:37:22'),
(6, 4, 'ka', 'ექსოდუსი', '<p>რესტორანი Exodus იდეალური ადგილია მსოფლიო ბრწყინვალების დასაგემოვნებლად, იქნება ეს საუზმე, საქმიანი ლანჩი თუ ვახშამი. თქვენ ნახავთ სუშის და საერთაშორისო სამზარეულოს თავბრუდამხვევ არჩევანს, როგორიცაა: ქართული, ისრაელური, აზიური და ევროპული.<br></p>', 'ბათუმი , ხიმშიაშვილის 8', '2023-10-25 07:26:31', '2023-12-01 20:42:23'),
(9, 6, 'en', 'Rustaveli', '<p>42 Giorgi Brtskinvale St, Batumi 6000<br></p>', '42 Giorgi Brtskinvale St, Batumi', '2023-11-12 16:39:43', '2023-11-12 16:39:43'),
(10, 6, 'ka', 'რუსთაველი', '<p>42 Giorgi Brtskinvale St, Batumi 6000<br></p>', 'ბათუმი, გიორგი ბრწყინვალეს N42', '2023-11-12 16:39:43', '2023-11-12 16:39:43'),
(11, 7, 'en', 'BERN', '<p>Bernie Restaurant is a place where your safety is the main priority.<br></p>', 'Rustaveli st. 17, Batumi, Georgia', '2023-11-14 14:42:48', '2023-11-14 14:42:48'),
(12, 7, 'ka', 'ბერნი', '<p>რესტორანი ბერნი ადგილი სადაც თქვენი უსაფრთხოება მთავარი პრიორიტეტია</p>', 'რუსთაველის ქ. 17 , ბათუმი', '2023-11-14 14:42:48', '2023-11-14 14:42:48'),
(13, 8, 'en', 'Ambassadori', '<p>The beautiful interior of Restaurant Ambassadori and views over Batumi boulevard provide the perfect setting for cherished gatherings with friends.<br></p>', 'Old Boulvard Batumi, Georgia', '2023-11-15 13:10:22', '2023-12-07 18:17:02'),
(14, 8, 'ka', 'ამბასადორი', '<p>რესტორან ამბასადორის დახვეწილი ინტერიერი და ხედი ბათუმის ბულვარზე სასიამოვნო ატმოსფეროს ქმნის მეგობრული თუ საქმიანი შეხვედრებისთვის.<br></p>', 'ძველი ვულვარი, ბათუმი, საქართველო', '2023-11-15 13:10:22', '2023-12-07 18:17:02'),
(15, 10, 'en', 'Tangerine', '<p>CAUCASIAN AND EUROPEAN CUISINE</p><div><br></div>', '1/2 Gogebashvili St, Batumi', '2023-11-16 13:18:30', '2023-12-04 13:31:53'),
(16, 10, 'ka', 'თენჯერინი', '<p>კავკასიური და ევროპული სამზარეულო</p><div><br></div>', 'ბათუმი, გოგებაშვილის 1/2', '2023-11-16 13:18:30', '2023-12-04 13:31:53'),
(17, 11, 'en', 'Terrace Monarch', '<p>Terrace Monarch is located in the centre of Batumi<br></p>', '37 Akhmed Melashvili St, Batumi', '2023-12-09 16:10:41', '2023-12-09 16:10:41'),
(18, 11, 'ka', 'ტერასა მონარქი', '<p>დააგემოვნეთ ჩვენი შემოქმედება ბათუმის ულამაზესი ხედების ფონზე</p><div><br></div>', 'ახმედ მელაშვილის 37, ბათუმი', '2023-12-09 16:10:41', '2023-12-09 16:10:41'),
(19, 12, 'en', 'Sky Lounge', '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\">Sky Lounge is an extraordinary place in the Dreamland Oasis paradise </span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"🙌\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t56/1.5/16/1f64c.png\" style=\"border: 0px; object-fit: fill;\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"💙\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc5/1.5/16/1f499.png\" style=\"border: 0px; object-fit: fill;\"></span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"> It represents a panoramic bar of the nineteenth floor. Here guests have the opportunity to taste delicious dishes and cocktails, enjoy the views of nature and the gradation of wonderful colors </span><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><a tabindex=\"-1\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit;\"></a></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"🤩\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb1/1.5/16/1f929.png\" style=\"border: 0px; object-fit: fill;\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"😊\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td8/1.5/16/1f60a.png\" style=\"border: 0px; object-fit: fill;\"></span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"> </span><br></p>', '16 Batumi str., Ch\'ak\'vi, Georgia', '2023-12-13 13:50:34', '2023-12-13 13:50:34'),
(20, 12, 'ka', 'სქაი ლაუნჯი', '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\">სქაი ლაუნჯი მეცხრამეტე სართულის პანორამულ ბარს წარმოადგენს </span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"🙌\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t56/1.5/16/1f64c.png\" style=\"border: 0px; object-fit: fill;\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"💙\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc5/1.5/16/1f499.png\" style=\"border: 0px; object-fit: fill;\"></span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\">  უგემრიელესი კერძებისა და კოქტეილების დაგემოვნებასთან ერთად, შეგიძლიათ დატკბეთ აჭარის ულამაზესი მთებისა და ჩვენი სუბტროპიკული ოაზისის ხედებით </span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"🤩\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb1/1.5/16/1f929.png\" style=\"border: 0px; object-fit: fill;\"></span><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\" style=\"margin: 0px 1px; height: 16px; display: inline-flex; vertical-align: middle; width: 16px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space-collapse: preserve;\"><img height=\"16\" width=\"16\" alt=\"😊\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td8/1.5/16/1f60a.png\" style=\"border: 0px; object-fit: fill;\"></span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"> </span><br></p>', '16 Batumi str., Ch\'ak\'vi, Georgia', '2023-12-13 13:50:34', '2023-12-18 01:25:18'),
(21, 14, 'en', 'Tandila Lobby Bar', '<p>Tandila Lobby Bar<br></p>', '40 Rustaveli street, Batumi, Georgia', '2023-12-18 00:19:08', '2023-12-18 00:19:08'),
(22, 14, 'ka', 'ლობი კაფე თანდილა', '<p>ლობი კაფე თანდილა<br></p>', 'ბათუმი, რუსთაველის ქ. 40', '2023-12-18 00:19:08', '2023-12-18 00:20:35'),
(23, 15, 'en', 'Panorama Restaurant', 'Panorama is the largest restaurant complex in Batumi, Georgia with panoramic sea and mountain view.', '15b Sherif Khimshiashvili St, Batumi', '2023-12-18 01:08:46', '2023-12-18 01:08:46'),
(24, 15, 'ka', 'პანორამა ბათუმი', '<p>პანორამა არის ყველაზე დიდი სარესტორნო კომპლექსი ბათუმში, საქართველოში, ზღვისა და მთის პანორამული ხედით.<br></p>', 'ბათუმი, შერიფ ხიმშიაშვილის 15ბ', '2023-12-18 01:08:46', '2023-12-18 01:08:46'),
(25, 16, 'en', 'Deliria', '<p style=\"overflow-wrap: break-word; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 20px; color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">Restaurant Deliria is distinguished by diverse, individual and different spaces, where guests can find a pleasant environment and receive exceptionally good service, taste Georgian and European dishes.</p><p style=\"overflow-wrap: break-word; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 20px; color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">Deliria environment with natural greenery, design, music style, talented artists creates a unique atmosphere and mood. In addition, Deliria is located in a historical building of Batumi and forms part of the history of the city, both interior and exterior.</p><p style=\"overflow-wrap: break-word; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 20px; color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">The visitor can look at the courtyard, antiques and hear a lot of interesting and almost museum-like stories.</p>', 'Batumi, Kazbegi str 8', '2023-12-19 13:00:43', '2023-12-19 13:00:43'),
(26, 16, 'ka', 'დელირია', '<p style=\"overflow-wrap: break-word; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 20px; color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">რესტორანი დელირია გამოირჩევა მრავალფეროვანი, ინდივიდუალური და განსხვავებული სივრცეებით, სადაც სტუმარს შეუძლია იპოვოს მისთვის სასიამოვნო გარემო და მიიღოს გამორჩეულად კარგი მომსახურება, დააგემოვნოს ქართული და ევროპული კერძები.</p><p style=\"overflow-wrap: break-word; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 20px; color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">დელირიას გარემო ბუნებრივუ გამწვანებით, დიზაინით, მუსიკის სტილით, უნიჭიერესი არტისტებით ქმნის განუმეორებელ ატმოსფეროს და განწყობას. ამასთანავე, დელირია არის ბათუმის ისტორიულ შენობაში და ქმნის ქალაქის ისტორიის ნაწილს როგორც ინტერიერით, ასევე ექსტერიერით.</p><p style=\"overflow-wrap: break-word; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 20px; color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">სტუმარს შეუძლია დაათვალიეროს ეზო-კარი, ანტიკვარული ნივთები და მოისმინოს უამრავი საინტერესო და თითქმის სამუზეუმო ამბავი.</p>', 'ბათუმი, ყაზბეგის 8', '2023-12-19 13:00:43', '2023-12-19 13:00:43'),
(27, 17, 'en', 'BK', '<p>კაფე BK-ში გელოდებათ თბილი და მყუდრო ატმოსფერო, ყურადღებიანი პერსონალი და უგემრიელესი კერძები.<br></p>', '25 Memed Abashidze St, Batumi', '2023-12-19 14:51:54', '2023-12-19 14:51:54'),
(28, 17, 'ka', 'BK', '<span style=\"color: rgb(33, 37, 41); font-family: &quot;BPG Mrgvlovani&quot;, sans-serif;\">კაფე BK-ში გელოდებათ თბილი და მყუდრო ატმოსფერო, ყურადღებიანი პერსონალი და უგემრიელესი კერძები.</span>', 'ბათუმი, მემედ აბაშიძის 25', '2023-12-19 14:51:54', '2023-12-19 14:51:54'),
(29, 18, 'en', 'Atmosphere', '<p><span style=\"color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">Restaurant atmosphere - a great place with its exotic interior, modern dishes, branded and fashionable cocktails will suit even the most sophisticated gourmets. Considering that the restaurant rotates 360 degrees, it is an amazing opportunity to enjoy the beauty of the city, the sunset and the delicious food.</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">We are waiting for you as a guest</span><br></p>', 'Tengiz Abuladze, 4, Batumi', '2023-12-19 15:41:15', '2023-12-19 15:41:15'),
(30, 18, 'ka', 'ატმოსფერო', '<p><span style=\"color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">რესტორანი ატმოსფერო - შესანიშნავი ადგილი თავისი ეგზოტიკური ინტერიერით, თანამედროვე კერძებით, ბრენდირებული და მოდური კოქტეილები ყველაზე დახვეწილ გურმანებსაც კი მოერგება. იმის გათვალისწინებით, რომ რესტორანი ბრუნავს 360 გრადუსით, არის საოცარი შესაძლებლობა, დატკბეთ ქალაქის სილამაზით, მზის ჩასვლითა და უგემრიელესი კერძებით.</span><br style=\"color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\"><span style=\"color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">გელოდებით, როგორც სტუმარი</span><br></p>', 'ბათუმი. აბულაძის  ქ.4', '2023-12-19 15:41:15', '2023-12-19 15:41:15'),
(31, 19, 'en', 'Terrace Askaneli', '<p><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: 15px; text-align: center;\">About the Restaurant</span><br style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: 15px; text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: 15px; text-align: center;\">The story originated with&nbsp;</span><span style=\"font-family: verdana; font-size: 15px; text-align: center; color: rgb(128, 0, 0);\">Askaneli Brothers</span><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: 15px; text-align: center;\">&nbsp;now spreads to the coastal city of Batumi where the Restaurant called «Terrassa Askaneli» was launched by Green Invest LLC (ID: 445450850). More than&nbsp;</span><span style=\"font-family: verdana; font-size: 15px; text-align: center; color: rgb(128, 0, 0);\">35</span><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: 15px; text-align: center;\">&nbsp;countries around the globe are supplied by the branded Chacha, fruit distillates, brandy, and wine, produced as a result of symbiosis between the new technology and deep-rooted traditions of winemaking. One may taste the terrassa pitcher system made wines in nearly all around Europe, along with the&nbsp;</span><span style=\"font-family: verdana; font-size: 15px; text-align: center; color: rgb(128, 0, 0);\">United States, Canada and many countries in Asia.</span><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: 15px; text-align: center;\">&nbsp;“Terrassa Askaneli” offers its guests in Batumi three different spaces, each of them intensifying the certain mood. The restaurant, terrassa and wine club will leave you with the most multifarious impressions. Our chefs will provide you with the most delicious dishes from both Georgian and global culinary worlds, with a pinch of individuality in all of them. Another pleasant reason for visiting “Askaneli” is the diversity of live music evenings and professional master classes in wine-tasting. Visit us to find out more!</span><br></p>', '#40, Rustaveli street, Batumi', '2023-12-20 15:17:53', '2023-12-20 15:17:53'),
(32, 19, 'ka', 'ტერასა ასკანელი', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: &quot;BPG Phone Sans&quot;; font-size: 15px; color: rgb(0, 0, 0);\">ზღვისპირა ბათუმის ულამაზეს სივრცეში „ასკანელი ძმების“ მიერ დაწყებული ისტორია გრძელდება. აქ&nbsp;<span style=\"color: rgb(128, 0, 0);\"><span style=\"font-weight: 700;\">„რესტორანი-ტერასა ასკანელია“</span></span>. ახალი ტექნოლოგიებითა და ძველი მეთოდების შერწყმით დამზადებული ღვინოები, ბრენდული ჭაჭა, სხვადასხვა ხილის დისტილატები და კონიაკი დღეს&nbsp;<span style=\"color: rgb(128, 0, 0);\">35-ზე მეტ ქვეყანას მიეწოდება</span>. ქვევრების ტერასული სისტემით შექმნილ ღვინოებს დააგემოვნებთ&nbsp;<span style=\"color: rgb(128, 0, 0);\">ევროპის</span>&nbsp;თითქმის ყველა ქვეყანაში,&nbsp;<span style=\"color: rgb(128, 0, 0);\">ამერიკის შეერთებულ შტატებში, კანადაში, აზიაში.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: &quot;BPG Phone Sans&quot;; font-size: 15px; color: rgb(0, 0, 0);\">ბათუმის სტუმრებს კი „ტერასა-ასკანელი“ სამ განსხვავებულ სივრცეს სთავაზობს, განწყობის შესაბამისად. რესტორანი, ტერასა და ღვინის კლუბი მრავალფეროვან შთაბეჭდილებებს შეგიქმნით.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: &quot;BPG Phone Sans&quot;; font-size: 15px; color: rgb(0, 0, 0);\">ჩვენი მზარეულები კი ქართული და მსოფლიო კულინარიიდან უგემრიელეს კერძებს საავტორო იდეებით შემოგთავაზებთ. „ასკანელში“ სტუმრობის კიდევ ერთი სასიამოვნო მიზეზი მრავალფეროვანი ჟანრის ცოცხალი მუსიკის საღამოები და ღვინის დეგუსტაციის პროფესიონალური მასტერკლასებია.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: &quot;BPG Phone Sans&quot;; font-size: 15px; color: rgb(0, 0, 0);\"><span style=\"color: rgb(128, 0, 0); text-align: center;\">გვეწვიეთ და აღმოაჩინეთ ჩვენთან უფრო მეტი!</span></p>', 'რუსთაველის ქ. #40, ბათუმი', '2023-12-20 15:17:53', '2023-12-20 15:17:53'),
(33, 20, 'en', 'Nephele Sky Bar', '<p><span style=\"color: rgb(18, 18, 18); font-family: &quot;Proxima Nova&quot;, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium;\">Somewhere to hang and be a part of the crowd, Nephele Sky Bar is also known as the “Window of Adjara”; mountains, Batumi skyline and the sea. It’s somewhere in between a modern bar and your local’s favorite cocktail, Sushi and Khachapuri hangout. You won’t experience NSB the right way unless you visit this bar and these people. And most importantly, be nice, this is the BEST service staff you’ve ever met.</span><br></p>', '#40, Rustaveli street, Batumi', '2023-12-20 17:41:47', '2023-12-20 17:57:45'),
(34, 20, 'ka', 'სქაი ბარი ნეფელე', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">Sky Bar Nephele</span><span style=\"color: rgb(51, 51, 51); font-family: Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-indent: 0.25px;\">&nbsp;მდებარეობს შავი ზღვის საკურორტო ქალაქ ბათუმში, სასტუმრო ჰილტონ ბათუმის მე-20 სართულზე. ლაუნჯ ბარის სახელი ბერძნული მითოლოგიის მიხედვით მომდინარეობს სიტყვიდან νεφος (ნეფოს), რაც ღრუბელთა განმასახიერებელ ქალღმერთს&nbsp; ნიშნავს. ლეგენდის თანახმად ზევსმა ნეფელე შექმნა ღრუბლისგან და დაამსგავსა თავის მეუღლეს, ჰერას, რათა მოეტყუებინა იქსიონი, რომელსაც ჰერას ხელში ჩაგდება სურდა. იქსიონთან შეუღლებულმა ნეფელემ, რომელიც ასევე იყო ათამასის&nbsp; მეუღლე და ფრიქსოსისა და ჰელეს დედა, სათავე დაუდო კენტავრთა მოდგმას. ბერძნული მითოლოგიის თანახმად, ნეფელე&nbsp; სტუმართმოყვარეობის ქალღმერთიც გახლდათ. ჩვენი ფილოსოფია - \"ნეფელე\" სქაი ბარი წარმოაჩენს საუკეთესო აზიური და ევროპული სამზარეულოს ნაზავს, ქართული ტრადიციული კერძებისა და ღვინის ყველაზე ცნობილი ასორტიმენტით. კოქტეილის მოყვარულებს შეუძლიათ დატკბნენ ჩვენი ცნობილი მიქსოლოგის მიერ დამზადებული უჩვეულო კოქტეილებითა და შექმნილი დაუვიწყარი გარემოთი.&nbsp; მიმზიდველი კერძებისა და სასმელის გარდა, სტუმრებს შეუძლიათ ისიამოვნონ ტერასის თვალწარმტაცი, 360 გრადუსიანი ხედებით შავ ზღვაზე, აჭარის მთებსა და ნურიგელის ტბაზე.</span><br></p>', 'რუსთაველის ქ. #40, ბათუმი', '2023-12-20 17:41:47', '2023-12-20 17:41:47'),
(35, 22, 'ka', 'ვერანდა აკროპოლი', '<p>ვერანდა აკროპოლი - ულამაზესი ზღვისპირა რესტორანი ღია სივრცითა და დიდი ტერასით. <br>ცოცხალ მუსიკასა და საოცრად გემრიელ კერძებთან ერთად თქვენ დაგხვდებათ კოქტეილების მრავალფეროვანი არჩევანიც გვესტუმრეთ სასიამოვნო საღამოს გასატარებლად!<br></p>', '12b Sherif Khimshiashvili St, Batumi 6010', '2023-12-21 14:09:59', '2023-12-25 00:40:04'),
(36, 22, 'en', 'Veranda Acropoli', '<p>Veranda Acropoli - a beautiful seaside restaurant with open space and a large terrace.  Visit us and spend a pleasant evening - Along with live music and amazingly delicious dishes you can choose your favorite drink from a wide selection of cocktails<br></p>', '12b Sherif Khimshiashvili St, Batumi', '2023-12-21 14:09:59', '2023-12-25 00:39:48'),
(37, 24, 'ka', 'პიატო', '<p>\"ჭამა და კითხვა არის ორი სიამოვნება, რომლებიც შესანიშნავად ერწყმის ერთმანეთს.<br>&nbsp;ერთ სივრცეში \"საჭმელი, ღვინო, წიგნების და სასიამოვნო გარემოს\" კაფე პიატო.<br></p>', 'მემედ აბაშიძის გამზირი 52, ბათუმი', '2023-12-25 01:06:36', '2023-12-25 01:06:36'),
(38, 24, 'en', 'Piatto', '<p>\"Eating and reading are two pleasures that combine admirably.\" FOOD, WINE, BOOK-CROSSING.<br></p>', '52, Memed Abashidze Avenue, Batumi', '2023-12-25 01:06:36', '2023-12-25 01:06:36'),
(39, 25, 'ka', 'Tokyo House', '<span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\">Bar. Japanese restaurant</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\">Welcome in TOKYO HOUSE.</span>', 'შერიფ ხიმშიაშვილი 1, Batumi, Georgia', '2023-12-27 18:03:24', '2023-12-27 18:03:24'),
(40, 25, 'en', 'Tokyo House', '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\">Bar. Japanese restaurant</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\">Welcome in TOKYO HOUSE.</span><br></p>', '1 Sherif Khimshiashvili St, Batumi', '2023-12-27 18:03:24', '2023-12-27 18:03:24'),
(41, 26, 'ka', 'არენა პაბი', '<p><span style=\"color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">არენა პაბი – ადგილი ლუდის მოყვარულებისთვის, სპეციალურად მორგებული კერძების მენიუთი, ბარის დიდი არჩევანით, კომფორტული სავარძლებითა და ყურადღებიანი პერსონალით.</span><br></p>', 'საქართველო, ბათუმი, ჟიული შარტავას ქუჩა 13', '2024-01-04 18:20:29', '2024-01-04 18:31:26'),
(42, 26, 'en', 'Arena Pub', '<p>Arena Pub - A place for beer lovers, with a specially tailored food menu, a large bar selection, comfortable seats and attentive staff.<br></p>', 'Football Stadium, 13 Zhiuli Shartava street, Batumi 6010', '2024-01-04 18:20:29', '2024-01-04 18:20:29'),
(43, 27, 'ka', 'კრეატორია პაბი', '<h1 class=\"x1heor9g x1qlqyl8 x1pd3egz x1a2a7pz\" style=\"color: rgb(5, 5, 5); font-size: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;\">კრეატორია პაბი&nbsp;</h1>', 'ჟიული შარტავას ქ. 22, ბათუმი', '2024-01-04 18:54:15', '2024-01-04 18:54:15'),
(44, 27, 'en', 'Creatoria Pub', '<h1 class=\"x1heor9g x1qlqyl8 x1pd3egz x1a2a7pz\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: inherit; font-size: inherit; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); padding: 0px; outline: none;\">Creatoria Pub</h1>', '#22 Jiuli Shartava, Batumi, Georgia', '2024-01-04 18:54:15', '2024-01-04 18:54:15'),
(45, 28, 'ka', 'სენატი', '<p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">რესტორანი და ლაუნჯი სენატი 2023 წლის 8 დეკემებერს სატესტოდ გაიხსნა.</p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">რესტორანი „სენატი“ გამორჩეულია უნიკალური კონცეფციით, რომლის მსგავსი დასავლეთ საქართველოში არ არსებობს.</p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">სამი გასხვავებული კონცეფცია ერთ სივრცეში<br style=\"text-rendering: geometricprecision;\">პირველი სართული, კლასიკური და მშვიდი მუსიკის მოყვარულთათვის, სადაც პიანინოსა და საქსაფონის ფონზე შეგეძლებათ ისიამოვნოთ 150 -მდე დასახელების ღვინითა და სპეცილურად „სენატისთვის“ შექმნილი მენიუთი.</p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">მეორე სართული,ცოცხალი მუსიკისა და აქტიური გართობისთვის, სადაც ყოველ დღე იმართება ივენთები მოწვეული და ადგილობრივი ბენდების შესრულებით.&nbsp; დარბაზი მასპინძლობს 150-200 პერსონას.</p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">და მესამე სართული, კლუბის&nbsp; სივრცე, რაც უნიკალურს ქმნის რესტორანის კონცეფციას.<br style=\"text-rendering: geometricprecision;\">აქ ღამის ცხოვრების მოყვარულებს კოქტეილების დიდი არჩევანი და DJ დაგხვდებათ დილის საათამდე.</p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">მთავარი ხიბლი კი არის ის, რომ 12 საათის შემდეგ სტუმრებს სხვაგან გართობის გასაგრძელებლად არ მოუწევთ წასვლა და ადგილზე , რესტორნის მესამე სართულზე, კლუბში&nbsp; შეძლებენ გართობის გაგრძელებას.</p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">ცალკე აღსანიშნავია რესტორნის მენიუ, რომელიც მოწვეული შეფ-მზარეულის მიერაა შექმნილი, სადაც ერთიანდება&nbsp; ქართული, ევროპული და აზიური სამზარეულოს კერძები.</p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\">ამავდროულად, რესტორანს&nbsp; საკონდიტრო სივრცე აქვს, რაც დესერტების მრავალფეროვნების გარდა , სტუმრებს საშუალებას აძლევს ტორტის შეკვეთაც ადგილზე შეძლონ.</p>', 'შერიფ ხიმშიაშვილის 14', '2024-01-10 15:25:41', '2024-01-10 15:25:41'),
(46, 28, 'en', 'Senate Restaurant & Lounge', '<p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_87\" data-source=\"1\" data-orig=\"რესტორანი და ლაუნჯი სენატი 2023 წლის 8 დეკემებერს სატესტოდ გაიხსნა.\" style=\"text-rendering: geometricprecision;\">Senate restaurant and lounge was opened for testing on December 8, 2023.</span></p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_88\" data-source=\"1\" data-orig=\"რესტორანი „სენატი“ გამორჩეულია უნიკალური კონცეფციით, რომლის მსგავსი დასავლეთ საქართველოში არ არსებობს.\" style=\"text-rendering: geometricprecision;\">Restaurant \"Senati\" is distinguished by a unique concept, the like of which does not exist in Western Georgia.</span></p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_89\" data-source=\"1\" data-orig=\"სამი გასხვავებული კონცეფცია ერთ სივრცეში\" style=\"text-rendering: geometricprecision;\">Three different concepts in one space</span><br style=\"text-rendering: geometricprecision;\"><span class=\"tr_\" id=\"tr_90\" data-source=\"1\" data-orig=\"პირველი სართული, კლასიკური და მშვიდი მუსიკის მოყვარულთათვის, სადაც პიანინოსა და საქსაფონის ფონზე შეგეძლებათ ისიამოვნოთ 150 -მდე დასახელების ღვინითა და სპეცილურად „სენატისთვის“ შექმნილი მენიუთი.\" style=\"text-rendering: geometricprecision;\">The first floor, for lovers of classical and quiet music, where you can enjoy up to 150 names of wines and a menu specially created for the \"Senate\" in the background of the piano and saxophone.</span></p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_91\" data-source=\"1\" data-orig=\"მეორე სართული,ცოცხალი მუსიკისა და აქტიური გართობისთვის, სადაც ყოველ დღე იმართება ივენთები მოწვეული და ადგილობრივი ბენდების შესრულებით.  დარბაზი მასპინძლობს 150-200 პერსონას.\" style=\"text-rendering: geometricprecision;\">The second floor is for live music and active entertainment, where events are held every day with guest and local bands. The hall hosts 150-200 people.</span></p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_92\" data-source=\"1\" data-orig=\"და მესამე სართული, კლუბის  სივრცე, რაც უნიკალურს ქმნის რესტორანის კონცეფციას.\" style=\"text-rendering: geometricprecision;\">and the third floor, the club space, which makes the restaurant concept unique.</span><br style=\"text-rendering: geometricprecision;\"><span class=\"tr_\" id=\"tr_93\" data-source=\"1\" data-orig=\"აქ ღამის ცხოვრების მოყვარულებს კოქტეილების დიდი არჩევანი და DJ დაგხვდებათ დილის საათამდე.\" style=\"text-rendering: geometricprecision;\">Here, night life lovers will find a wide selection of cocktails and a DJ until the wee hours of the morning.</span></p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_94\" data-source=\"1\" data-orig=\"მთავარი ხიბლი კი არის ის, რომ 12 საათის შემდეგ სტუმრებს სხვაგან გართობის გასაგრძელებლად არ მოუწევთ წასვლა და ადგილზე , რესტორნის მესამე სართულზე, კლუბში  შეძლებენ გართობის გაგრძელებას.\" style=\"text-rendering: geometricprecision;\">The main charm is that after 12 o\'clock the guests will not have to go anywhere else to continue the fun and they will be able to continue the fun in the club on the third floor of the restaurant.</span></p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_95\" data-source=\"1\" data-orig=\"ცალკე აღსანიშნავია რესტორნის მენიუ, რომელიც მოწვეული შეფ-მზარეულის მიერაა შექმნილი, სადაც ერთიანდება  ქართული, ევროპული და აზიური სამზარეულოს კერძები.\" style=\"text-rendering: geometricprecision;\">The menu of the restaurant, which was created by the guest chef, is worth noting. It combines dishes from Georgian, European and Asian cuisine.</span></p><p style=\"text-rendering: geometricprecision; margin-block: 0px 0.9rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(28, 29, 32); font-family: Questrial, sans-serif; font-size: 15px;\"><span class=\"tr_\" id=\"tr_96\" data-source=\"1\" data-orig=\"ამავდროულად, რესტორანს  საკონდიტრო სივრცე აქვს, რაც დესერტების მრავალფეროვნების გარდა , სტუმრებს საშუალებას აძლევს ტორტის შეკვეთაც ადგილზე შეძლონ.\" style=\"text-rendering: geometricprecision;\">At the same time, the restaurant has a pastry shop, which, in addition to a variety of desserts, allows guests to order a cake on the spot.</span></p>', 'Sherif Khimshiashvili 14', '2024-01-10 15:25:41', '2024-01-10 15:25:41'),
(47, 30, 'ka', 'ატლანტისი', 'ქალაქ ბათუმის ერთ-ერთ ელიტარულ უბანში, ზღვასთან ახლოს, რესტორანი \"ატლანტისი\" წარმოგიდგენთ ქართულ-ევროპულ სამზარეულოს, თანამედროვე ინტერიერითა და ცოცხალი მუსიკის საღამოებით.', 'ქალაქი ბათუმი, ჟიული შარტავას N10', '2024-01-23 00:31:54', '2024-02-01 11:43:03'),
(48, 30, 'en', 'Atlantis', '<p>Restaurant \"Atlantis\" presents Georgian-European cuisine with appetizing dishes, modern interior and live music performances by the music duet \"Holiday\"<br></p>', 'Batumi City, Zhiuli Shartava N10', '2024-01-23 00:31:54', '2024-02-01 11:43:03'),
(49, 31, 'ka', 'პალატი', '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\">სტუმართმოყვარე სახლი,უგემრიელესი კერძებით და ჯადოსნური ატმოსფეროთი. #პალატიჩვენისახლია</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\"></p>', 'საქართველო, ქუთაისი, პუშკინის ქ. № 1', '2024-01-29 09:00:33', '2024-01-29 09:00:33'),
(50, 31, 'en', 'Palaty', '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: center;\">სტუმართმოყვარე სახლი,უგემრიელესი კერძებით და ჯადოსნური ატმოსფეროთი. #პალატიჩვენისახლია</span><br></p>', 'Pushkini Street № 1, Kutaisi, Georgia', '2024-01-29 09:00:33', '2024-01-29 09:00:33'),
(51, 32, 'ka', 'თეთრი ქვები', '<p>თეთრი ქვები<br></p>', 'საქართველო, ქუთაისი, გრიშაშვილის ქ.#3', '2024-01-29 09:19:42', '2024-01-29 09:19:42'),
(52, 32, 'en', 'White Stones', '<p>თეთრი ქვები<br></p>', 'Grishasvili Str. #3, Kutaisi, Georgia', '2024-01-29 09:19:42', '2024-01-29 09:19:42'),
(53, 33, 'ka', 'დორანი', '<p>არონი მეგრული სიტყვაა და საქეიფო, პურის საჭმელ ადგილს ნიშნავს. ერთ-ერთ ძველ მეგრულ ლექსში ნათქვამია:<br style=\"\">„მუ ჯგირი რე აბრაგალა,<br style=\"\">გუმაშინე კინოხონი<br style=\"\">მუსხი მაფუ კუბეც ნარჩვი<br style=\"\">დუქანი დო დიარონი“<br></p>', 'ზუგდიდი. მეუნარგიას #9', '2024-01-29 10:28:43', '2024-01-29 10:28:43'),
(54, 33, 'en', 'Diaroni', '<p>არონი მეგრული სიტყვაა და საქეიფო, პურის საჭმელ ადგილს ნიშნავს. ერთ-ერთ ძველ მეგრულ ლექსში ნათქვამია:<br style=\"\">„მუ ჯგირი რე აბრაგალა,<br style=\"\">გუმაშინე კინოხონი<br style=\"\">მუსხი მაფუ კუბეც ნარჩვი<br style=\"\">დუქანი დო დიარონი“<br></p>', 'diaroni.ge@gmail.com', '2024-01-29 10:28:43', '2024-01-29 10:28:43'),
(55, 34, 'ka', 'სორმონი', '<p>სორმონი ბუნებით მეგობრული და მდგრადია. ბაღის ხეების მოჭრის ნაცვლად ინტერიერში ჩავრთეთ და ადგილი უფრო ლამაზი და ავთენტური გავხადეთ<br></p>', 'თბილისი, ყაზბეგის გამზირი 57', '2024-01-29 10:56:32', '2024-01-29 10:56:32'),
(56, 34, 'en', 'Sormoni', '<span style=\"text-align: center;\">Sormoni is nature friendly and sustainable. Instead of cutting of the trees in the garden, we incorporated them in the interior and made the place more beautiful and authentic</span>', '57 Kazbegi Avenue, Tbilisi', '2024-01-29 10:56:32', '2024-01-29 10:56:32'),
(57, 35, 'ka', 'ჩაიხანა ბათუმი', '<p>ჩაიხანა ბათუმი&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'ბათუმის ბულვარი', '2024-02-17 14:40:38', '2024-02-17 14:40:38'),
(58, 35, 'en', 'Caikhana Batumi', '<p>Chaikhana Batumi</p>', 'Batumi, Boulevard', '2024-02-17 14:40:38', '2024-02-17 14:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-12-26 04:11:31', '2021-12-26 04:11:31'),
(2, 'manager', 'web', '2022-01-12 08:06:40', '2024-02-21 21:48:43'),
(3, 'API_Users', 'web', '2022-01-31 07:59:23', '2022-01-31 07:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(23, 1),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(31, 1),
(32, 1),
(32, 2),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(41, 3),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(55, 1),
(55, 2),
(56, 1),
(57, 1),
(58, 1),
(58, 2),
(59, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `phone`, `email`, `logo`, `image`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(11, '(+995) 514 756688', 'info@foodly.com.ge', '20240118124004.png', '20240117161656.png', '10:00:00', '12:00:00', '2022-01-21 07:02:44', '2024-01-18 12:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `start_time_text` varchar(255) DEFAULT NULL,
  `end_time_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `name`, `title`, `description`, `address`, `start_time_text`, `end_time_text`, `created_at`, `updated_at`) VALUES
(26, 11, 'en', 'Restaurant Reservation Portal - Foodly®', 'Foodly®', 'Restaurant Reservation Portal - Foodly®', 'Sandro Akhmeteli Street, 7A . Batumi', 'Monday', 'Saturday', '2022-01-21 07:02:44', '2023-12-02 19:50:55'),
(27, 11, 'ka', 'რესტორნის რეზერვაციის პორტალი - Foodly®', 'ფუდლი®', 'რესტორნის რეზერვაციის პორტალი - Foodly®', 'ახმეტელის ქუჩა #7ა,  ბათუმი', 'ორშაბათი', 'შაბათი', '2022-01-21 07:02:44', '2023-12-18 22:45:34'),
(28, 11, 'zh-CN', '中餐', 'ARGO Restaurant', 'Создайте свое цифровое меню вместе с нами   Kerdzebi.ge®', 'Gogebashvili street 6010,  Batumi, Georgia', 'Monday', 'Saturday', '2022-01-21 07:02:44', '2022-06-06 08:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `image`, `category_id`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(33, '20240210021420.png', 86, 1, 1, '2023-10-16 09:50:01', '2024-02-10 02:14:20'),
(34, '20240210021431.png', 83, 2, 1, '2023-10-16 09:50:48', '2024-02-10 02:14:31'),
(35, '20240210021445.png', 85, 3, 1, '2023-10-16 09:51:13', '2024-02-10 02:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `slide_restaurant`
--

CREATE TABLE `slide_restaurant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide_restaurant`
--

INSERT INTO `slide_restaurant` (`id`, `slide_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 33, 4, NULL, NULL),
(2, 33, 11, NULL, NULL),
(3, 35, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide_translations`
--

CREATE TABLE `slide_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide_translations`
--

INSERT INTO `slide_translations` (`id`, `slide_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(85, 29, 'en', 'banner1', 'banner1', '2023-03-22 11:55:45', '2023-03-22 11:55:45'),
(86, 29, 'ka', 'ბანერ1', 'ბანერ1', '2023-03-22 11:55:45', '2023-03-22 11:55:45'),
(87, 30, 'en', 'banner2', 'banner2', '2023-03-22 11:56:14', '2023-03-22 11:56:14'),
(88, 30, 'ka', 'ბანერ2', 'ბანერ2', '2023-03-22 11:56:14', '2023-03-22 11:56:14'),
(89, 31, 'en', 'soups', 'soups', '2023-05-05 01:37:42', '2023-05-05 01:37:42'),
(90, 31, 'ka', 'წვნიანები', 'წვნიანები', '2023-05-05 01:37:42', '2023-05-05 01:37:42'),
(91, 32, 'en', 'banner1', 'banner1', '2023-05-20 19:03:52', '2023-05-20 19:03:52'),
(92, 32, 'ka', 'ბანერ1', 'banner1', '2023-05-20 19:03:52', '2023-05-20 19:03:52'),
(93, 33, 'en', 'Space', 'groups', '2023-10-16 09:50:01', '2024-02-09 20:52:35'),
(94, 33, 'ka', 'გარემო', 'groups', '2023-10-16 09:50:01', '2024-02-09 20:52:35'),
(95, 34, 'en', 'Kitchen', 'cuisines', '2023-10-16 09:50:48', '2024-02-09 20:54:00'),
(96, 34, 'ka', 'სამზარეულო', 'cuisines', '2023-10-16 09:50:48', '2024-02-09 20:54:00'),
(97, 35, 'en', 'Location', 'regions', '2023-10-16 09:51:13', '2024-02-09 20:54:50'),
(98, 35, 'ka', 'მდებარეობა', 'regions', '2023-10-16 09:51:13', '2024-02-09 20:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `icon` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `person` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `restaurant_id`, `place_id`, `icon`, `image`, `person`, `latitude`, `longitude`, `rank`, `status`, `created_at`, `updated_at`) VALUES
(34, 4, 36, '202312041938.png', '20231204184407.png', 6, NULL, NULL, 1, 1, '2023-12-04 18:39:50', '2023-12-04 19:38:37'),
(35, 4, 36, '202312041939.png', '20231204184354.png', 6, NULL, NULL, 2, 1, '2023-12-04 18:40:46', '2023-12-04 19:39:02'),
(36, 4, 36, '202312041939.png', '20231204185959.png', 6, NULL, NULL, 3, 1, '2023-12-04 18:59:59', '2023-12-04 19:39:11'),
(37, 4, 36, '202312041943.png', '20231204191559.png', 6, NULL, NULL, 4, 1, '2023-12-04 19:15:59', '2023-12-04 19:43:01'),
(38, 4, 36, '202312041935.png', '20231204192834.png', 4, NULL, NULL, 5, 1, '2023-12-04 19:28:34', '2023-12-04 19:35:11'),
(39, 4, 38, '202312041946.png', '20231204195705.png', 4, NULL, NULL, 1, 1, '2023-12-04 19:46:06', '2023-12-04 19:57:05'),
(40, 4, 38, '202312041946.png', '20231204195714.png', 8, NULL, NULL, 2, 1, '2023-12-04 19:46:53', '2023-12-04 19:57:14'),
(41, 4, 38, '202312041948.png', '20231204195722.png', 8, NULL, NULL, 3, 1, '2023-12-04 19:48:03', '2023-12-04 19:57:22'),
(42, 4, 38, '202312041957.png', '20231204195752.png', 6, NULL, NULL, 4, 1, '2023-12-04 19:57:52', '2023-12-04 19:57:52'),
(43, 10, 40, '202312050239.png', NULL, 4, NULL, NULL, 1, 1, '2023-12-05 02:39:35', '2023-12-05 02:39:35'),
(44, 10, 40, '202312050239.png', NULL, 4, NULL, NULL, 2, 1, '2023-12-05 02:39:58', '2023-12-05 02:39:58'),
(45, 10, 40, '202312050240.png', NULL, 4, NULL, NULL, 3, 1, '2023-12-05 02:40:27', '2023-12-05 02:40:27'),
(46, 10, 40, '202312050240.png', NULL, 4, NULL, NULL, 4, 1, '2023-12-05 02:40:40', '2023-12-05 02:40:40'),
(47, 10, 40, '202312050240.png', NULL, 4, NULL, NULL, 5, 1, '2023-12-05 02:40:55', '2023-12-05 02:40:55'),
(48, 10, 35, '202312050241.png', NULL, 4, NULL, NULL, 1, 1, '2023-12-05 02:41:54', '2023-12-05 02:41:54'),
(49, 10, 35, '202312050242.png', NULL, 4, NULL, NULL, 2, 1, '2023-12-05 02:42:09', '2023-12-05 02:42:09'),
(50, 10, 35, '202312050242.png', NULL, 4, NULL, NULL, 3, 1, '2023-12-05 02:42:24', '2023-12-05 02:42:24'),
(51, 10, 35, '202312050242.png', NULL, 4, NULL, NULL, 4, 1, '2023-12-05 02:42:45', '2023-12-05 02:42:45'),
(52, 10, 35, '202312050243.png', NULL, 4, NULL, NULL, 5, 1, '2023-12-05 02:43:02', '2023-12-05 02:43:02'),
(53, 4, 26, '202312060229.png', NULL, 6, NULL, NULL, 1, 1, '2023-12-06 02:29:09', '2023-12-06 02:29:09'),
(54, 4, 26, '202312060229.png', NULL, 6, NULL, NULL, 2, 1, '2023-12-06 02:29:27', '2023-12-06 02:29:27'),
(55, 4, 26, '202312060229.png', NULL, 6, NULL, NULL, 3, 1, '2023-12-06 02:29:44', '2023-12-06 02:29:44'),
(56, 4, 26, '202312060230.png', NULL, 8, NULL, NULL, 4, 1, '2023-12-06 02:30:02', '2023-12-06 02:30:02'),
(57, 4, 26, '202312060230.png', NULL, 8, NULL, NULL, 5, 1, '2023-12-06 02:30:35', '2023-12-06 02:30:35'),
(58, 4, 26, '202312060230.png', NULL, 8, NULL, NULL, 6, 1, '2023-12-06 02:30:52', '2023-12-06 02:30:52'),
(59, 4, 39, '202312060233.png', NULL, 6, NULL, NULL, 1, 1, '2023-12-06 02:33:25', '2023-12-06 02:33:25'),
(60, 4, 39, '202312060233.png', NULL, 6, NULL, NULL, 2, 1, '2023-12-06 02:33:46', '2023-12-06 02:33:46'),
(61, 4, 39, '202312060234.png', NULL, 4, NULL, NULL, 3, 1, '2023-12-06 02:34:06', '2023-12-06 02:34:06'),
(62, 4, 39, '202312060234.png', NULL, 4, NULL, NULL, 4, 1, '2023-12-06 02:34:19', '2023-12-06 02:34:19'),
(63, 11, 41, '202312091819.png', NULL, 6, NULL, NULL, 1, 1, '2023-12-09 18:19:52', '2023-12-09 18:19:52'),
(64, 11, 41, '202312091820.png', NULL, 6, NULL, NULL, 2, 1, '2023-12-09 18:20:10', '2023-12-09 18:20:10'),
(65, 11, 41, '202312091821.png', NULL, 6, NULL, NULL, 3, 1, '2023-12-09 18:21:08', '2023-12-09 18:21:08'),
(66, 11, 41, '202312091822.png', NULL, 6, NULL, NULL, 4, 1, '2023-12-09 18:22:19', '2023-12-09 18:22:19'),
(69, 11, 42, '202312091825.png', NULL, 6, NULL, NULL, 7, 1, '2023-12-09 18:25:13', '2023-12-09 18:25:13'),
(70, 11, 42, '202312091825.png', NULL, 6, NULL, NULL, 8, 1, '2023-12-09 18:25:36', '2023-12-09 18:25:36'),
(71, 11, 42, '202312091825.png', NULL, 6, NULL, NULL, 9, 1, '2023-12-09 18:25:59', '2023-12-09 18:25:59'),
(72, 11, 42, '202312091826.png', NULL, 6, NULL, NULL, 10, 1, '2023-12-09 18:26:30', '2023-12-09 18:26:30'),
(77, 11, 43, '202312091835.png', NULL, 6, NULL, NULL, 1, 1, '2023-12-09 18:35:21', '2023-12-09 18:35:21'),
(78, 11, 43, '202312091835.png', NULL, 6, NULL, NULL, 2, 1, '2023-12-09 18:35:49', '2023-12-09 18:35:49'),
(79, 11, 43, '202312091836.png', NULL, 6, NULL, NULL, 3, 1, '2023-12-09 18:36:54', '2023-12-09 18:36:54'),
(80, 11, 43, '202312091837.png', NULL, 6, NULL, NULL, 4, 1, '2023-12-09 18:37:19', '2023-12-09 18:37:19'),
(81, 11, 43, '202312091837.png', NULL, 6, NULL, NULL, 5, 1, '2023-12-09 18:37:44', '2023-12-09 18:37:44'),
(82, 11, 43, '202312091838.png', NULL, 6, NULL, NULL, 6, 1, '2023-12-09 18:38:26', '2023-12-09 18:38:26'),
(83, 11, 43, '202312091838.png', NULL, 6, NULL, NULL, 7, 1, '2023-12-09 18:38:47', '2023-12-09 18:38:47'),
(84, 7, 44, '202312112203.png', NULL, 4, NULL, NULL, 1, 1, '2023-12-11 22:01:47', '2023-12-11 22:03:42'),
(85, 7, 44, '202312112204.png', NULL, 4, NULL, NULL, 2, 1, '2023-12-11 22:02:08', '2023-12-11 22:04:28'),
(86, 7, 45, '202312171845.png', NULL, 4, NULL, NULL, 1, 1, '2023-12-17 18:45:10', '2023-12-17 18:45:10'),
(87, 7, 45, '202312171846.png', NULL, 4, NULL, NULL, 2, 1, '2023-12-17 18:46:18', '2023-12-17 18:46:18'),
(88, 7, 45, '202312171846.png', NULL, 4, NULL, NULL, 3, 1, '2023-12-17 18:46:39', '2023-12-17 18:46:39'),
(89, 7, 45, '202312171847.png', NULL, 4, NULL, NULL, 4, 1, '2023-12-17 18:47:45', '2023-12-17 18:47:45'),
(90, 17, 46, '202312210148.png', NULL, 2, NULL, NULL, 1, 1, '2023-12-21 01:48:28', '2023-12-21 01:48:28'),
(91, 17, 46, '202312210150.png', NULL, 2, NULL, NULL, 2, 1, '2023-12-21 01:50:12', '2023-12-21 01:50:12'),
(92, 17, 46, '202312210150.png', NULL, 4, NULL, NULL, 3, 1, '2023-12-21 01:50:28', '2023-12-21 01:50:28'),
(93, 17, 46, '202312210150.png', NULL, 4, NULL, NULL, 4, 1, '2023-12-21 01:50:42', '2023-12-21 01:50:42'),
(94, 17, 47, '202312210202.png', NULL, 2, NULL, NULL, 1, 1, '2023-12-21 02:02:03', '2023-12-21 02:02:03'),
(95, 17, 47, '202312210202.png', NULL, 2, NULL, NULL, 2, 1, '2023-12-21 02:02:23', '2023-12-21 02:04:00'),
(96, 17, 47, '202312210202.png', NULL, 4, NULL, NULL, 3, 1, '2023-12-21 02:02:41', '2023-12-21 02:02:41'),
(97, 17, 47, '202312210202.png', NULL, 4, NULL, NULL, 4, 1, '2023-12-21 02:02:58', '2023-12-21 02:04:38'),
(98, 17, 47, '202312210203.png', NULL, 6, NULL, NULL, 5, 1, '2023-12-21 02:03:11', '2023-12-21 02:03:11'),
(99, 17, 47, '202312210204.png', NULL, 6, NULL, NULL, 6, 1, '2023-12-21 02:04:59', '2023-12-21 02:04:59'),
(100, 17, 47, '202312210205.png', NULL, 8, NULL, NULL, 7, 1, '2023-12-21 02:05:17', '2023-12-21 02:05:17'),
(101, 17, 47, '202312210205.png', NULL, 8, NULL, NULL, 8, 1, '2023-12-21 02:05:29', '2023-12-21 02:05:29'),
(102, 35, 48, NULL, NULL, 6, NULL, NULL, 1, 1, '2024-02-21 19:45:52', '2024-02-21 19:45:52'),
(103, 35, 48, NULL, NULL, 6, NULL, NULL, 2, 1, '2024-02-21 19:46:12', '2024-02-21 19:46:12'),
(104, 35, 48, NULL, NULL, 6, NULL, NULL, 3, 1, '2024-02-21 19:46:23', '2024-02-21 19:46:23'),
(105, 35, 48, NULL, NULL, 6, NULL, NULL, 4, 1, '2024-02-21 19:46:36', '2024-02-21 19:46:36'),
(106, 35, 48, NULL, NULL, 4, NULL, NULL, 5, 1, '2024-02-21 19:47:00', '2024-02-23 03:01:06'),
(107, 35, 48, NULL, NULL, 4, NULL, NULL, 6, 1, '2024-02-21 19:50:41', '2024-02-21 19:56:03'),
(108, 35, 48, NULL, NULL, 4, NULL, NULL, 7, 1, '2024-02-21 19:50:58', '2024-02-21 19:55:55'),
(109, 35, 48, NULL, NULL, 4, NULL, NULL, 8, 1, '2024-02-21 19:53:26', '2024-02-21 19:55:46'),
(110, 35, 48, NULL, NULL, 4, NULL, NULL, 9, 1, '2024-02-21 19:53:44', '2024-02-21 19:55:37'),
(111, 35, 48, NULL, NULL, 4, NULL, NULL, 10, 1, '2024-02-21 19:54:15', '2024-02-21 19:55:27'),
(112, 35, 54, NULL, NULL, 6, NULL, NULL, 1, 1, '2024-02-21 20:18:47', '2024-02-21 20:18:47'),
(113, 35, 54, NULL, NULL, 6, NULL, NULL, 2, 1, '2024-02-21 20:19:03', '2024-02-21 20:19:03'),
(114, 35, 54, NULL, NULL, 6, NULL, NULL, 3, 1, '2024-02-21 20:19:24', '2024-02-21 20:19:24'),
(115, 35, 54, NULL, NULL, 6, NULL, NULL, 4, 1, '2024-02-21 20:19:55', '2024-02-21 20:19:55'),
(116, 35, 54, NULL, NULL, 6, NULL, NULL, 5, 1, '2024-02-21 20:20:07', '2024-02-21 20:20:07'),
(117, 35, 54, NULL, NULL, 6, NULL, NULL, 6, 1, '2024-02-21 20:20:19', '2024-02-21 20:20:19'),
(119, 35, 50, NULL, NULL, 6, NULL, NULL, 1, 1, '2024-02-23 03:01:46', '2024-02-23 03:01:46'),
(120, 35, 50, NULL, NULL, 6, NULL, NULL, 2, 1, '2024-02-23 03:02:00', '2024-02-23 03:02:00'),
(121, 35, 50, NULL, NULL, 5, NULL, NULL, 3, 1, '2024-02-23 03:05:12', '2024-02-23 03:05:12'),
(122, 35, 50, NULL, NULL, 5, NULL, NULL, 4, 0, '2024-02-23 03:05:26', '2024-02-23 21:27:49'),
(123, 35, 50, NULL, NULL, 2, NULL, NULL, 5, 0, '2024-02-23 03:05:46', '2024-02-23 03:19:19'),
(124, 35, 50, NULL, NULL, 2, NULL, NULL, 6, 1, '2024-02-23 03:08:47', '2024-02-23 03:08:47'),
(125, 35, 50, NULL, NULL, 4, NULL, NULL, 7, 1, '2024-02-23 03:09:09', '2024-02-23 03:09:09'),
(126, 35, 50, NULL, NULL, 4, NULL, NULL, 8, 1, '2024-02-23 03:09:20', '2024-02-23 03:09:20'),
(127, 35, 50, NULL, NULL, 4, NULL, NULL, 9, 1, '2024-02-23 03:09:32', '2024-02-23 03:09:32'),
(128, 35, 50, NULL, NULL, 4, NULL, NULL, 10, 1, '2024-02-23 03:09:54', '2024-02-23 03:09:54'),
(129, 35, 50, NULL, NULL, 4, NULL, NULL, 11, 1, '2024-02-23 03:11:09', '2024-02-23 03:11:09'),
(130, 35, 50, NULL, NULL, 4, NULL, NULL, 12, 1, '2024-02-23 03:11:20', '2024-02-23 03:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `table_translations`
--

CREATE TABLE `table_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_translations`
--

INSERT INTO `table_translations` (`id`, `table_id`, `locale`, `name`, `description`, `created_at`, `updated_at`) VALUES
(34, 34, 'en', '1', NULL, '2023-12-04 18:39:50', '2023-12-04 18:39:50'),
(35, 34, 'ka', '1', NULL, '2023-12-04 18:39:50', '2023-12-04 18:39:50'),
(36, 35, 'en', '2', NULL, '2023-12-04 18:40:46', '2023-12-04 18:40:46'),
(37, 35, 'ka', '2', NULL, '2023-12-04 18:40:46', '2023-12-04 18:40:46'),
(38, 36, 'en', '3', NULL, '2023-12-04 18:59:59', '2023-12-04 18:59:59'),
(39, 36, 'ka', '3', NULL, '2023-12-04 18:59:59', '2023-12-04 18:59:59'),
(40, 37, 'en', '4', NULL, '2023-12-04 19:15:59', '2023-12-04 19:15:59'),
(41, 37, 'ka', '4', NULL, '2023-12-04 19:15:59', '2023-12-04 19:15:59'),
(42, 38, 'en', '5', NULL, '2023-12-04 19:28:34', '2023-12-04 19:28:34'),
(43, 38, 'ka', '5', NULL, '2023-12-04 19:28:34', '2023-12-04 19:28:34'),
(44, 39, 'en', '1', NULL, '2023-12-04 19:46:06', '2023-12-04 19:46:06'),
(45, 39, 'ka', '1', NULL, '2023-12-04 19:46:06', '2023-12-04 19:46:06'),
(46, 40, 'en', '2', NULL, '2023-12-04 19:46:53', '2023-12-04 19:46:53'),
(47, 40, 'ka', '2', NULL, '2023-12-04 19:46:53', '2023-12-04 19:46:53'),
(48, 41, 'en', '3', NULL, '2023-12-04 19:48:03', '2023-12-04 19:48:03'),
(49, 41, 'ka', '3', NULL, '2023-12-04 19:48:03', '2023-12-04 19:48:03'),
(50, 42, 'en', '4', NULL, '2023-12-04 19:57:52', '2023-12-04 19:57:52'),
(51, 42, 'ka', '4', NULL, '2023-12-04 19:57:52', '2023-12-04 19:57:52'),
(52, 43, 'en', '1', NULL, '2023-12-05 02:39:35', '2023-12-05 02:39:35'),
(53, 43, 'ka', '1', NULL, '2023-12-05 02:39:35', '2023-12-05 02:39:35'),
(54, 44, 'en', '2', NULL, '2023-12-05 02:39:58', '2023-12-05 02:39:58'),
(55, 44, 'ka', '2', NULL, '2023-12-05 02:39:58', '2023-12-05 02:39:58'),
(56, 45, 'en', '3', NULL, '2023-12-05 02:40:27', '2023-12-05 02:40:27'),
(57, 45, 'ka', '3', NULL, '2023-12-05 02:40:27', '2023-12-05 02:40:27'),
(58, 46, 'en', '4', NULL, '2023-12-05 02:40:40', '2023-12-05 02:40:40'),
(59, 46, 'ka', '4', NULL, '2023-12-05 02:40:40', '2023-12-05 02:40:40'),
(60, 47, 'en', '5', NULL, '2023-12-05 02:40:55', '2023-12-05 02:40:55'),
(61, 47, 'ka', '5', NULL, '2023-12-05 02:40:55', '2023-12-05 02:40:55'),
(62, 48, 'en', '1', NULL, '2023-12-05 02:41:54', '2023-12-05 02:41:54'),
(63, 48, 'ka', '1', NULL, '2023-12-05 02:41:54', '2023-12-05 02:41:54'),
(64, 49, 'en', '2', NULL, '2023-12-05 02:42:09', '2023-12-05 02:42:09'),
(65, 49, 'ka', '2', NULL, '2023-12-05 02:42:09', '2023-12-05 02:42:09'),
(66, 50, 'en', '3', NULL, '2023-12-05 02:42:24', '2023-12-05 02:42:24'),
(67, 50, 'ka', '3', NULL, '2023-12-05 02:42:24', '2023-12-05 02:42:24'),
(68, 51, 'en', '4', NULL, '2023-12-05 02:42:45', '2023-12-05 02:42:45'),
(69, 51, 'ka', '4', NULL, '2023-12-05 02:42:45', '2023-12-05 02:42:45'),
(70, 52, 'en', '5', NULL, '2023-12-05 02:43:02', '2023-12-05 02:43:02'),
(71, 52, 'ka', '5', NULL, '2023-12-05 02:43:02', '2023-12-05 02:43:02'),
(72, 53, 'en', '1', NULL, '2023-12-06 02:29:09', '2023-12-06 02:29:09'),
(73, 53, 'ka', '1', NULL, '2023-12-06 02:29:09', '2023-12-06 02:29:09'),
(74, 54, 'en', '2', NULL, '2023-12-06 02:29:27', '2023-12-06 02:29:27'),
(75, 54, 'ka', '2', NULL, '2023-12-06 02:29:27', '2023-12-06 02:29:27'),
(76, 55, 'en', '3', NULL, '2023-12-06 02:29:44', '2023-12-06 02:29:44'),
(77, 55, 'ka', '3', NULL, '2023-12-06 02:29:44', '2023-12-06 02:29:44'),
(78, 56, 'en', '4', NULL, '2023-12-06 02:30:02', '2023-12-06 02:30:02'),
(79, 56, 'ka', '4', NULL, '2023-12-06 02:30:02', '2023-12-06 02:30:02'),
(80, 57, 'en', '5', NULL, '2023-12-06 02:30:35', '2023-12-06 02:30:35'),
(81, 57, 'ka', '5', NULL, '2023-12-06 02:30:35', '2023-12-06 02:30:35'),
(82, 58, 'en', '6', NULL, '2023-12-06 02:30:52', '2023-12-06 02:30:52'),
(83, 58, 'ka', '6', NULL, '2023-12-06 02:30:52', '2023-12-06 02:30:52'),
(84, 59, 'en', '1', NULL, '2023-12-06 02:33:25', '2023-12-06 02:33:25'),
(85, 59, 'ka', '1', NULL, '2023-12-06 02:33:25', '2023-12-06 02:33:25'),
(86, 60, 'en', '2', NULL, '2023-12-06 02:33:46', '2023-12-06 02:33:46'),
(87, 60, 'ka', '2', NULL, '2023-12-06 02:33:46', '2023-12-06 02:33:46'),
(88, 61, 'en', '3', NULL, '2023-12-06 02:34:06', '2023-12-06 02:34:06'),
(89, 61, 'ka', '3', NULL, '2023-12-06 02:34:06', '2023-12-06 02:34:06'),
(90, 62, 'en', '4', NULL, '2023-12-06 02:34:19', '2023-12-06 02:34:19'),
(91, 62, 'ka', '4', NULL, '2023-12-06 02:34:19', '2023-12-06 02:34:19'),
(92, 63, 'en', '1', NULL, '2023-12-09 18:19:52', '2023-12-09 18:19:52'),
(93, 63, 'ka', '1', NULL, '2023-12-09 18:19:52', '2023-12-09 18:19:52'),
(94, 64, 'en', '2', NULL, '2023-12-09 18:20:10', '2023-12-09 18:20:10'),
(95, 64, 'ka', '2', NULL, '2023-12-09 18:20:10', '2023-12-09 18:20:10'),
(96, 65, 'en', '3', NULL, '2023-12-09 18:21:08', '2023-12-09 18:21:08'),
(97, 65, 'ka', '3', NULL, '2023-12-09 18:21:08', '2023-12-09 18:21:08'),
(98, 66, 'en', '4', NULL, '2023-12-09 18:22:19', '2023-12-09 18:22:19'),
(99, 66, 'ka', '4', NULL, '2023-12-09 18:22:19', '2023-12-09 18:22:19'),
(104, 69, 'en', '7', NULL, '2023-12-09 18:25:13', '2023-12-09 18:25:13'),
(105, 69, 'ka', '7', NULL, '2023-12-09 18:25:13', '2023-12-09 18:25:13'),
(106, 70, 'en', '8', NULL, '2023-12-09 18:25:36', '2023-12-09 18:25:36'),
(107, 70, 'ka', '8', NULL, '2023-12-09 18:25:36', '2023-12-09 18:25:36'),
(108, 71, 'en', '9', NULL, '2023-12-09 18:25:59', '2023-12-09 18:25:59'),
(109, 71, 'ka', '9', NULL, '2023-12-09 18:25:59', '2023-12-09 18:25:59'),
(110, 72, 'en', '10', NULL, '2023-12-09 18:26:30', '2023-12-09 18:26:30'),
(111, 72, 'ka', '10', NULL, '2023-12-09 18:26:30', '2023-12-09 18:26:30'),
(120, 77, 'en', '1', NULL, '2023-12-09 18:35:21', '2023-12-09 18:35:21'),
(121, 77, 'ka', '2', NULL, '2023-12-09 18:35:21', '2023-12-09 18:35:21'),
(122, 78, 'en', '2', NULL, '2023-12-09 18:35:49', '2023-12-09 18:35:49'),
(123, 78, 'ka', '2', NULL, '2023-12-09 18:35:49', '2023-12-09 18:35:49'),
(124, 79, 'en', '3', NULL, '2023-12-09 18:36:54', '2023-12-09 18:36:54'),
(125, 79, 'ka', '3', NULL, '2023-12-09 18:36:54', '2023-12-09 18:36:54'),
(126, 80, 'en', '4', NULL, '2023-12-09 18:37:19', '2023-12-09 18:37:19'),
(127, 80, 'ka', '4', NULL, '2023-12-09 18:37:19', '2023-12-09 18:37:19'),
(128, 81, 'en', '5', NULL, '2023-12-09 18:37:44', '2023-12-09 18:37:44'),
(129, 81, 'ka', '5', NULL, '2023-12-09 18:37:44', '2023-12-09 18:37:44'),
(130, 82, 'en', '6', NULL, '2023-12-09 18:38:26', '2023-12-09 18:38:26'),
(131, 82, 'ka', '6', NULL, '2023-12-09 18:38:26', '2023-12-09 18:38:26'),
(132, 83, 'en', '7', NULL, '2023-12-09 18:38:47', '2023-12-09 18:38:47'),
(133, 83, 'ka', '7', NULL, '2023-12-09 18:38:47', '2023-12-09 18:38:47'),
(134, 84, 'en', '1', NULL, '2023-12-11 22:01:47', '2023-12-11 22:01:47'),
(135, 84, 'ka', '1', NULL, '2023-12-11 22:01:47', '2023-12-11 22:01:47'),
(136, 85, 'en', '2', NULL, '2023-12-11 22:02:08', '2023-12-11 22:02:08'),
(137, 85, 'ka', '2', NULL, '2023-12-11 22:02:08', '2023-12-11 22:02:08'),
(138, 86, 'en', '1', NULL, '2023-12-17 18:45:10', '2023-12-17 18:45:10'),
(139, 86, 'ka', '1', NULL, '2023-12-17 18:45:10', '2023-12-17 18:45:10'),
(140, 87, 'en', '2', NULL, '2023-12-17 18:46:18', '2023-12-17 18:46:18'),
(141, 87, 'ka', '2', NULL, '2023-12-17 18:46:18', '2023-12-17 18:46:18'),
(142, 88, 'en', '3', NULL, '2023-12-17 18:46:39', '2023-12-17 18:46:39'),
(143, 88, 'ka', '3', NULL, '2023-12-17 18:46:39', '2023-12-17 18:46:39'),
(144, 89, 'en', '4', NULL, '2023-12-17 18:47:45', '2023-12-17 18:47:45'),
(145, 89, 'ka', '4', NULL, '2023-12-17 18:47:45', '2023-12-17 18:47:45'),
(146, 90, 'ka', '1', NULL, '2023-12-21 01:48:28', '2023-12-21 01:48:28'),
(147, 90, 'en', '1', NULL, '2023-12-21 01:48:28', '2023-12-21 01:48:28'),
(148, 91, 'ka', '2', NULL, '2023-12-21 01:50:12', '2023-12-21 01:50:12'),
(149, 91, 'en', '2', NULL, '2023-12-21 01:50:12', '2023-12-21 01:50:12'),
(150, 92, 'ka', '3', NULL, '2023-12-21 01:50:28', '2023-12-21 01:50:28'),
(151, 92, 'en', '3', NULL, '2023-12-21 01:50:28', '2023-12-21 01:50:28'),
(152, 93, 'ka', '4', NULL, '2023-12-21 01:50:42', '2023-12-21 01:50:42'),
(153, 93, 'en', '4', NULL, '2023-12-21 01:50:42', '2023-12-21 01:50:42'),
(154, 94, 'ka', '1', NULL, '2023-12-21 02:02:03', '2023-12-21 02:02:03'),
(155, 94, 'en', '1', NULL, '2023-12-21 02:02:03', '2023-12-21 02:02:03'),
(156, 95, 'ka', '2', NULL, '2023-12-21 02:02:23', '2023-12-21 02:02:23'),
(157, 95, 'en', '2', NULL, '2023-12-21 02:02:23', '2023-12-21 02:02:23'),
(158, 96, 'ka', '3', NULL, '2023-12-21 02:02:41', '2023-12-21 02:02:41'),
(159, 96, 'en', '3', NULL, '2023-12-21 02:02:41', '2023-12-21 02:02:41'),
(160, 97, 'ka', '4', NULL, '2023-12-21 02:02:58', '2023-12-21 02:02:58'),
(161, 97, 'en', '4', NULL, '2023-12-21 02:02:58', '2023-12-21 02:02:58'),
(162, 98, 'ka', '5', NULL, '2023-12-21 02:03:11', '2023-12-21 02:03:11'),
(163, 98, 'en', '5', NULL, '2023-12-21 02:03:11', '2023-12-21 02:03:11'),
(164, 99, 'ka', '6', NULL, '2023-12-21 02:04:59', '2023-12-21 02:04:59'),
(165, 99, 'en', '6', NULL, '2023-12-21 02:04:59', '2023-12-21 02:04:59'),
(166, 100, 'ka', '7', NULL, '2023-12-21 02:05:17', '2023-12-21 02:05:17'),
(167, 100, 'en', '7', NULL, '2023-12-21 02:05:17', '2023-12-21 02:05:17'),
(168, 101, 'ka', '8', NULL, '2023-12-21 02:05:29', '2023-12-21 02:05:29'),
(169, 101, 'en', '8', NULL, '2023-12-21 02:05:29', '2023-12-21 02:05:29'),
(170, 102, 'ka', '1', NULL, '2024-02-21 19:45:52', '2024-02-21 19:45:52'),
(171, 102, 'en', '1', NULL, '2024-02-21 19:45:52', '2024-02-21 19:45:52'),
(172, 103, 'ka', '2', NULL, '2024-02-21 19:46:12', '2024-02-21 19:46:12'),
(173, 103, 'en', '2', NULL, '2024-02-21 19:46:12', '2024-02-21 19:46:12'),
(174, 104, 'ka', '3', NULL, '2024-02-21 19:46:23', '2024-02-21 19:46:23'),
(175, 104, 'en', '3', NULL, '2024-02-21 19:46:23', '2024-02-21 19:46:23'),
(176, 105, 'ka', '4', NULL, '2024-02-21 19:46:36', '2024-02-21 19:46:36'),
(177, 105, 'en', '4', NULL, '2024-02-21 19:46:36', '2024-02-21 19:46:36'),
(178, 106, 'ka', '5', NULL, '2024-02-21 19:47:00', '2024-02-21 19:52:16'),
(179, 106, 'en', '5', NULL, '2024-02-21 19:47:00', '2024-02-21 19:52:16'),
(180, 107, 'ka', '6', NULL, '2024-02-21 19:50:41', '2024-02-21 19:52:32'),
(181, 107, 'en', '6', NULL, '2024-02-21 19:50:41', '2024-02-21 19:52:32'),
(182, 108, 'ka', '7', NULL, '2024-02-21 19:50:58', '2024-02-21 19:52:58'),
(183, 108, 'en', '7', NULL, '2024-02-21 19:50:58', '2024-02-21 19:52:58'),
(184, 109, 'ka', '8', NULL, '2024-02-21 19:53:26', '2024-02-21 19:53:26'),
(185, 109, 'en', '8', NULL, '2024-02-21 19:53:26', '2024-02-21 19:53:26'),
(186, 110, 'ka', '9', NULL, '2024-02-21 19:53:44', '2024-02-21 19:53:44'),
(187, 110, 'en', '9', NULL, '2024-02-21 19:53:44', '2024-02-21 19:53:44'),
(188, 111, 'ka', '10', NULL, '2024-02-21 19:54:15', '2024-02-21 19:54:15'),
(189, 111, 'en', '10', NULL, '2024-02-21 19:54:15', '2024-02-21 19:54:15'),
(190, 112, 'ka', '1', NULL, '2024-02-21 20:18:47', '2024-02-21 20:18:47'),
(191, 112, 'en', '1', NULL, '2024-02-21 20:18:47', '2024-02-21 20:18:47'),
(192, 113, 'ka', '2', NULL, '2024-02-21 20:19:03', '2024-02-21 20:19:03'),
(193, 113, 'en', '2', NULL, '2024-02-21 20:19:03', '2024-02-21 20:19:03'),
(194, 114, 'ka', '3', NULL, '2024-02-21 20:19:24', '2024-02-21 20:19:24'),
(195, 114, 'en', '3', NULL, '2024-02-21 20:19:24', '2024-02-21 20:19:24'),
(196, 115, 'ka', '4', NULL, '2024-02-21 20:19:55', '2024-02-21 20:19:55'),
(197, 115, 'en', '4', NULL, '2024-02-21 20:19:55', '2024-02-21 20:19:55'),
(198, 116, 'ka', '5', NULL, '2024-02-21 20:20:07', '2024-02-21 20:20:07'),
(199, 116, 'en', '5', NULL, '2024-02-21 20:20:07', '2024-02-21 20:20:07'),
(200, 117, 'ka', '6', NULL, '2024-02-21 20:20:19', '2024-02-21 20:20:19'),
(201, 117, 'en', '6', NULL, '2024-02-21 20:20:19', '2024-02-21 20:20:19'),
(204, 119, 'ka', '1', NULL, '2024-02-23 03:01:46', '2024-02-23 03:01:46'),
(205, 119, 'en', '1', NULL, '2024-02-23 03:01:46', '2024-02-23 03:01:46'),
(206, 120, 'ka', '2', NULL, '2024-02-23 03:02:00', '2024-02-23 03:02:00'),
(207, 120, 'en', '2', NULL, '2024-02-23 03:02:00', '2024-02-23 03:02:00'),
(208, 121, 'ka', '3', NULL, '2024-02-23 03:05:12', '2024-02-23 03:05:12'),
(209, 121, 'en', '3', NULL, '2024-02-23 03:05:12', '2024-02-23 03:05:12'),
(210, 122, 'ka', '4', NULL, '2024-02-23 03:05:26', '2024-02-23 03:05:26'),
(211, 122, 'en', '4', NULL, '2024-02-23 03:05:26', '2024-02-23 03:05:26'),
(212, 123, 'ka', '5', NULL, '2024-02-23 03:05:46', '2024-02-23 03:05:46'),
(213, 123, 'en', '5', NULL, '2024-02-23 03:05:46', '2024-02-23 03:05:46'),
(214, 124, 'ka', '6', NULL, '2024-02-23 03:08:47', '2024-02-23 03:08:47'),
(215, 124, 'en', '6', NULL, '2024-02-23 03:08:47', '2024-02-23 03:08:47'),
(216, 125, 'ka', '7', NULL, '2024-02-23 03:09:09', '2024-02-23 03:09:09'),
(217, 125, 'en', '7', NULL, '2024-02-23 03:09:09', '2024-02-23 03:09:09'),
(218, 126, 'ka', '8', NULL, '2024-02-23 03:09:20', '2024-02-23 03:09:20'),
(219, 126, 'en', '8', NULL, '2024-02-23 03:09:20', '2024-02-23 03:09:20'),
(220, 127, 'ka', '9', NULL, '2024-02-23 03:09:32', '2024-02-23 03:09:32'),
(221, 127, 'en', '9', NULL, '2024-02-23 03:09:32', '2024-02-23 03:09:32'),
(222, 128, 'ka', '10', NULL, '2024-02-23 03:09:54', '2024-02-23 03:09:54'),
(223, 128, 'en', '10', NULL, '2024-02-23 03:09:54', '2024-02-23 03:09:54'),
(224, 129, 'ka', '11', NULL, '2024-02-23 03:11:09', '2024-02-23 03:11:09'),
(225, 129, 'en', '11', NULL, '2024-02-23 03:11:09', '2024-02-23 03:11:09'),
(226, 130, 'ka', '12', NULL, '2024-02-23 03:11:20', '2024-02-23 03:11:20'),
(227, 130, 'en', '12', NULL, '2024-02-23 03:11:20', '2024-02-23 03:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_services`
--

CREATE TABLE `terms_of_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_of_services`
--

INSERT INTO `terms_of_services` (`id`, `cover`, `created_at`, `updated_at`) VALUES
(2, NULL, '2023-01-26 12:31:16', '2023-01-26 12:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_service_translations`
--

CREATE TABLE `terms_of_service_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_of_service_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_of_service_translations`
--

INSERT INTO `terms_of_service_translations` (`id`, `terms_of_service_id`, `locale`, `title`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 2, 'en', 'Terms of service', 'Terms of service', '<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\">წესები და პირობები<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b>1. შესავალი</b></p>\r\n\r\n<p class=\"MsoNormal\">კეთილი იყოს თქვენი მობრძანება foodly.space-ის ონლაინ პლატფორმა\r\n(\"კომპანია\", \"ჩვენს\", \"ჩვენი\", \"ჩვენ\")!&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\">აღნიშნული მომსახურების წესები და პირობები (\"პირობები\",\r\n\"მომსახურების პირობები\") არეგულირებს თქვენს მიერ ჩვენი ვებ-გვერდის გამოყენებას,\r\nრომელიც განთავსებულია მისამართზე - https://foodly.store (ერთად ან ცალკე \"სერვისი\"),\r\nრომელსაც ოპერირებს&nbsp; foodly.space-ის მიერ.</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენი კონფიდენციალურობის პოლიტიკა, განსაზღვრავს ჩვენი სერვისის\r\nგამოყენებას და განმარტავს, თუ როგორ ვაგროვებთ, ვიცავთ და გავცემთ ინფორმაციას, რომელსაც\r\nვიღებთ თქვენს მიერ ჩვენი ვებ-გვერდების გამოყენების შედეგად.</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენსა და თქვენს შორის შეთანხმება (კონტრაქტი) მოიცავს აღნიშნულ\r\nწესებს და პირობებს და ჩვენი კონფიდენციალურობის პოლიტიკას (”შეთანხმებები”). თქვენ\r\nაცნობიერებთ, რომ წაიკითხეთ და გესმით შეთანხმებები და ეთანხმებით მათ.</p>\r\n\r\n<p class=\"MsoNormal\">თუ არ ეთანხმებით შეთანხმებებს (ან ვერ შეასრულებთ), შეგიძლიათ\r\nარ ისარგებლოთ ჩვენი მომსახურებით, მაგრამ გთხოვთ, შეგვატყობინოთ ელ. ფოსტაზე\r\ninfo@cofi.ge იმისათვის, რომ ჩვენ შევძლოთ არსებული სიტუაციიდან გამოსავლის მოძიება.\r\nეს პირობები ვრცელდება ყველა ვიზიტორზე, მომხმარებელზე და სხვა სერვისებზე წვდომის\r\nმსურველზე.</p>\r\n\r\n<p class=\"MsoNormal\"><b>2. კომუნიკაცია</b></p>\r\n\r\n<p class=\"MsoNormal\">ჩვენი სერვისის გამოყენებით, თქვენ თანხმობას აცხადებთ სიახლეების,\r\nმარკეტინგული ან სარეკლამო მასალების და სხვა ინფორმაციის მიღებაზე, რომელიც შეიძლება\r\nჩვენგან იქნას გამოგზავნილი. ამასთან, თქვენ შეიძლება უარი თქვათ ზემოთ აღნიშული ინფორმაციის\r\nმიღებაზე ჩვენს ელ. ფოსტაზე info@cofi.ge გამოწერის გაუქმების თაობაზე შეტყობინებით.</p>\r\n\r\n<p class=\"MsoNormal\"><b>3. შეძენა/ყიდვ</b>ა</p>\r\n\r\n<p class=\"MsoNormal\">თუ გსურთ შეიძინოთ პროდუქტი ან მომსახურება, რაც ხელმისაწვდომია\r\nმომსახურების საშუალებით (”შესყიდვა”), ამისათვის შეიძლება საჭირო გახდეს თქვენი შესყიდვისთვის\r\nშესაბამისი ინფორმაციის მიწოდება, მათ შორის და არა მარტო საკრედიტო ან სადებეტო ბარათის\r\nნომერი, თქვენი ბარათის ვადის გასვლის თარიღი, თქვენი რეგისტრაციის მისამართი და მიწოდებისთვის\r\nსაჭირო ინფორმაცია.</p>\r\n\r\n<p class=\"MsoNormal\">თქვენ წარმოადგენთ და გარანტიას იძლევით, რომ: თქვენ გაქვთ იურიდიული\r\nუფლება გამოიყენოთ ნებისმიერი ბარათი(ებ)ი ან გადახდის სხვა მეთოდი(ებ)ი ნებისმიერი\r\nშეძენასთან დაკავშირებით; და რომ თქვენს მიერ მოწოდებული ინფორმაცია არის ნამდვილი,\r\nსწორი და სრულყოფილი.</p>\r\n\r\n<p class=\"MsoNormal\">გადახდისა და შესყიდვების განხორციელებისათვის, შესაძლოა საჭირო\r\nგახდეს ჩვენი მხრიდან მესამე მხარის სერვისის გამოყენება. თქვენი ინფორმაციის მოწოდებით,\r\nთქვენ გვაძლევთ უფლებას, რომ მივაწოდოთ ეს ინფორმაცია მესამე მხარეს, რომელიც ექვემდებარება\r\nჩვენი კონფიდენციალურობის პოლიტიკას.</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას ნებისმიერ დროს უარი ვთქვათ ან გავაუქმოთ\r\nთქვენი შეკვეთა&nbsp; გარკვეული მიზეზების გამო,\r\nმათ შორის მაგრამ არა მარტო: პროდუქტის ან მომსახურების ხელმისაწვდომობა, პროდუქტისა\r\nთუ მომსახურების აღწერილობაში ან ფასში შეცდომების არსებობა, შეცდომები თქვენს შეკვეთაში\r\nან სხვა მიზეზები.</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას უარი ვთქვათ ან გავაუქმოთ თქვენი შეკვეთა,\r\nთაღლითობის ან უნებართვო, ან უკანონო ტრანზაქციაზე ეჭვის არსებობის შემთხვევაში.</p><p class=\"MsoNormal\">&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><b>4. შეკვეთის გაუქმება /თანხის დაბრუნება/ანაზღაურება</b></p>\r\n\r\n<p class=\"MsoNormal\">შეკვეთის გაუქმება შესაძლებელია შეკვეთის განთავსებიდან 24 საათში.\r\nთანხის დაბრუნება/ ანაზღაურება ხორციელდება შეკვეთის განხორციელების თავდაპირველი თარიღიდან\r\n5 დღის ფარგლებში.</p><p class=\"MsoNormal\"><br></p>\r\n\r\n<p class=\"MsoNormal\"><b>5. შემადგენლობა/კონტენტი</b>&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\">ნებისმიერი ვიზუალური და ტექსტური მასალა, რომელი განთავსებულია\r\nჩვენს ვებ-გვერდზე, წარმოადგენს foodly.store-ის საკუთრებას ან აქვს გამოყენების ნებართვა.\r\nთქვენ არ გაქვთ უფლება გაავრცელოთ, შევცვალოთ, გადაუგზავნოთ, გადმოწეროთ, დააკოპიროთ\r\nან გამოიყენოთ აღნიშნული კონტენტი სრულად ან ნაწილობრივ პირადი კომერციული მიზნებისთვის\r\nან წინასწარ წერილობითი ნებართვის მიღების გარეშე.</p>\r\n\r\n<p class=\"MsoNormal\"><b>6. აკრძალული გამოყენება</b></p>\r\n\r\n<p class=\"MsoNormal\">თქვენ შეგიძლიათ გამოიყენოთ სერვისი მხოლოდ კანონიერი მიზნებით\r\nდა პირობების შესაბამისად.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><br></p>\r\n\r\n<p class=\"MsoNormal\"><b>7. ანალიტიკა</b></p>\r\n\r\n<p class=\"MsoNormal\">ჩვენ შესაძლოა გამოვიყენოთ მესამე მხარის მომსახურება, ჩვენი სერვისის\r\nგამოყენების მონიტორინგისა და ანალიზისთვის.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>8. ანგარიშები</b></p>\r\n\r\n<p class=\"MsoNormal\">როდესაც თქვენ ქმნით ანგარიშს ჩვენს ვებ-გვერდზე, თქვენ ადასტურებთ,\r\nრომ თქვენს მიერ მოწოდებული ინფორმაცია ზუსტი, სრულყოფილი და აქტუალურია ნებისმიერი\r\nდროისთვის. არასწორმა, არასრულმა ან მოძველებულმა ინფორმაციამ შესაძლოა გამოიწვიოს\r\nთქვენი ანგარიშის დაუყოვნებლივი გაუქმება.</p>\r\n\r\n<p class=\"MsoNormal\">თქვენ ხართ პასუხისმგებელი თქვენი ანგარიშისა და პაროლის კონფიდენციალურობის\r\nშენარჩუნებაზე. თქვენ ეთანხმებით პასუხისმგებლობის აღებას თქვენს ანგარიშთან ან/და\r\nპაროლთან დაკავშირებულ ნებისმიერ და ყველა აქტივობასა თუ ქმედებაზე. თქვენ დაუყოვნებლივ\r\nუნდა გვაცნობოთ თქვენი ინფორმაციას უსაფრთხოების დარღვევის ან თქვენი ანგარიშის უნებართვოდ\r\nგამოყენების შესახებ.</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას უარი ვთქვათ მომსახურებაზე, შევადგინოთ ანგარიშები,\r\nამოვიღოთ ან შეცვალოთ შინაარსი, ან შევაჩეროთ შეკვეთები ჩვენი შეხედულებისამებრ.</p><p class=\"MsoNormal\"><br></p>\r\n\r\n<p class=\"MsoNormal\"><b>9. შეწყვეტა<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">ჩვენ შეგვიძლია შევწყვიტოთ ან შევაჩეროთ თქვენი ანგარიში და სერვისზე\r\nწვდომა დაუყოვნებლივ, წინასწარი შეტყობინების გარეშე ან პასუხისმგებლობის გარეშე, ჩვენი\r\nშეხედულებისამებრ, რაიმე მიზეზის გამო და შეზღუდვის გარეშე, მათ შორის, მაგრამ არ მხოლოდ\r\nპირობების დარღვევის შემთხვევაში.&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\">თუ გსურთ ანგარიშის შეწყვეტა, შეგიძლიათ უბრალოდ შეწყვიტოთ მისი\r\nგამოყენება.</p>\r\n\r\n<p class=\"MsoNormal\"><b>10. მარეგულირებელი კანონი</b></p>\r\n\r\n<p class=\"MsoNormal\">წესები და პირობები რეგულირდება და ინტერპრეტაცია ხორციელდება საქართველოს\r\nკანონმდებლობის შესაბამისად, შესაბამისი მარეგულირებელი კანონის ფარგებში, მასთან კონფლიქტში\r\nმყოფი დებულებების გათვალისწინების გარეშე.</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენს მიერ ამ პირობების რაიმე უფლების ან დებულებების შეუსრულებლობა,\r\nარ განიხილება ამ უფლებების უგულებელყოფად. თუ ამ პირობების რომელიმე დებულება სასამართლოს\r\nმიერ ბათილად ან კანონიერი ძალის არმქონედ ჩაითვლება, ამ პირობების დარჩენილი დებულებები\r\nრჩება მოქმედად.&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><b>11. ცვლილებები სერვისში</b>&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას, შევიტანოთ ცვლილებები ჩვენს მომსახურებაში,\r\nჩვენი შეხედულებისამებრ. პერიოდულად, ჩვენ შეიძლება შევზღუდოთ წვდომა მომსახურების\r\nზოგიერთი ნაწილზე ან მთლიან სერვისზე, მომხმარებლებზე, მათ შორის რეგისტრირებულ მომხმარებლებზე.&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><b>12. დასტური/თანხმობა</b>&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\">ჩვენი სერვისით ან ჩვენს მიერ მოწოდებული სხვა სერვისის გამოყენებით,\r\nადასტურებთ, რომ წაიკითხეთ და გაეცანით ამ წესებსა და პირობებს და ეთანხმებით მათ.&nbsp;</p>\r\n\r\n<p class=\"MsoNormal\"><b>13. დაგვიკავშირდით<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">გთხოვთ, თქვენი გამოხმაურება, კომენტარები, ტექნიკური დახმარების\r\nმოთხოვნა გამოაგზავნოთ ელ. ფოსტაზე: info@foodly.com.ge<o:p></o:p></p>', '2023-01-26 12:31:16', '2024-02-04 13:17:27'),
(4, 2, 'ka', 'წესები და პირობები', 'წესები და პირობები', '<p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 17.12px;\">წესები და პირობები<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">1. შესავალი</span></p><p class=\"MsoNormal\">კეთილი იყოს თქვენი მობრძანება foodly.space-ის ონლაინ პლატფორმა (\"კომპანია\", \"შპს ფუდლი\")&nbsp;</p><p class=\"MsoNormal\">აღნიშნული მომსახურების წესები და პირობები (\"პირობები\", \"მომსახურების პირობები\") არეგულირებს თქვენს მიერ ჩვენი ვებ-გვერდის გამოყენებას, რომელიც განთავსებულია მისამართზე - https://foodly.store (ერთად ან ცალკე \"სერვისი\"), რომელსაც ოპერირებს&nbsp; foodly.space-ის მიერ.</p><p class=\"MsoNormal\">ჩვენი კონფიდენციალურობის პოლიტიკა, განსაზღვრავს ჩვენი სერვისის გამოყენებას და განმარტავს, თუ როგორ ვაგროვებთ, ვიცავთ და გავცემთ ინფორმაციას, რომელსაც ვიღებთ თქვენს მიერ ჩვენი ვებ-გვერდების გამოყენების შედეგად.</p><p class=\"MsoNormal\">ჩვენსა და თქვენს შორის შეთანხმება (კონტრაქტი) მოიცავს აღნიშნულ წესებს და პირობებს და ჩვენი კონფიდენციალურობის პოლიტიკას (”შეთანხმებები”). თქვენ აცნობიერებთ, რომ წაიკითხეთ და გესმით შეთანხმებები და ეთანხმებით მათ.</p><p class=\"MsoNormal\">თუ არ ეთანხმებით შეთანხმებებს (ან ვერ შეასრულებთ), შეგიძლიათ არ ისარგებლოთ ჩვენი მომსახურებით, მაგრამ გთხოვთ, შეგვატყობინოთ ელ. ფოსტაზე info@cofi.ge იმისათვის, რომ ჩვენ შევძლოთ არსებული სიტუაციიდან გამოსავლის მოძიება. ეს პირობები ვრცელდება ყველა ვიზიტორზე, მომხმარებელზე და სხვა სერვისებზე წვდომის მსურველზე.</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">2. კომუნიკაცია</span></p><p class=\"MsoNormal\">ჩვენი სერვისის გამოყენებით, თქვენ თანხმობას აცხადებთ სიახლეების, მარკეტინგული ან სარეკლამო მასალების და სხვა ინფორმაციის მიღებაზე, რომელიც შეიძლება ჩვენგან იქნას გამოგზავნილი. ამასთან, თქვენ შეიძლება უარი თქვათ ზემოთ აღნიშული ინფორმაციის მიღებაზე ჩვენს ელ. ფოსტაზე info@cofi.ge გამოწერის გაუქმების თაობაზე შეტყობინებით.</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">3. შეძენა/ყიდვ</span>ა</p><p class=\"MsoNormal\">თუ გსურთ შეიძინოთ პროდუქტი ან მომსახურება, რაც ხელმისაწვდომია მომსახურების საშუალებით (”შესყიდვა”), ამისათვის შეიძლება საჭირო გახდეს თქვენი შესყიდვისთვის შესაბამისი ინფორმაციის მიწოდება, მათ შორის და არა მარტო საკრედიტო ან სადებეტო ბარათის ნომერი, თქვენი ბარათის ვადის გასვლის თარიღი, თქვენი რეგისტრაციის მისამართი და მიწოდებისთვის საჭირო ინფორმაცია.</p><p class=\"MsoNormal\">თქვენ წარმოადგენთ და გარანტიას იძლევით, რომ: თქვენ გაქვთ იურიდიული უფლება გამოიყენოთ ნებისმიერი ბარათი(ებ)ი ან გადახდის სხვა მეთოდი(ებ)ი ნებისმიერი შეძენასთან დაკავშირებით; და რომ თქვენს მიერ მოწოდებული ინფორმაცია არის ნამდვილი, სწორი და სრულყოფილი.</p><p class=\"MsoNormal\">გადახდისა და შესყიდვების განხორციელებისათვის, შესაძლოა საჭირო გახდეს ჩვენი მხრიდან მესამე მხარის სერვისის გამოყენება. თქვენი ინფორმაციის მოწოდებით, თქვენ გვაძლევთ უფლებას, რომ მივაწოდოთ ეს ინფორმაცია მესამე მხარეს, რომელიც ექვემდებარება ჩვენი კონფიდენციალურობის პოლიტიკას.</p><p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას ნებისმიერ დროს უარი ვთქვათ ან გავაუქმოთ თქვენი შეკვეთა&nbsp; გარკვეული მიზეზების გამო, მათ შორის მაგრამ არა მარტო: პროდუქტის ან მომსახურების ხელმისაწვდომობა, პროდუქტისა თუ მომსახურების აღწერილობაში ან ფასში შეცდომების არსებობა, შეცდომები თქვენს შეკვეთაში ან სხვა მიზეზები.</p><p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას უარი ვთქვათ ან გავაუქმოთ თქვენი შეკვეთა, თაღლითობის ან უნებართვო, ან უკანონო ტრანზაქციაზე ეჭვის არსებობის შემთხვევაში.</p><p class=\"MsoNormal\">&nbsp;</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">4. შეკვეთის გაუქმება /თანხის დაბრუნება/ანაზღაურება</span></p><p class=\"MsoNormal\">შეკვეთის გაუქმება შესაძლებელია შეკვეთის განთავსებიდან 24 საათში. თანხის დაბრუნება/ ანაზღაურება ხორციელდება შეკვეთის განხორციელების თავდაპირველი თარიღიდან 5 დღის ფარგლებში.</p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">5. შემადგენლობა/კონტენტი</span>&nbsp;</p><p class=\"MsoNormal\">ნებისმიერი ვიზუალური და ტექსტური მასალა, რომელი განთავსებულია ჩვენს ვებ-გვერდზე, წარმოადგენს foodly.store-ის საკუთრებას ან აქვს გამოყენების ნებართვა. თქვენ არ გაქვთ უფლება გაავრცელოთ, შევცვალოთ, გადაუგზავნოთ, გადმოწეროთ, დააკოპიროთ ან გამოიყენოთ აღნიშნული კონტენტი სრულად ან ნაწილობრივ პირადი კომერციული მიზნებისთვის ან წინასწარ წერილობითი ნებართვის მიღების გარეშე.</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">6. აკრძალული გამოყენება</span></p><p class=\"MsoNormal\">თქვენ შეგიძლიათ გამოიყენოთ სერვისი მხოლოდ კანონიერი მიზნებით და პირობების შესაბამისად.<o:p></o:p></p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">7. ანალიტიკა</span></p><p class=\"MsoNormal\">ჩვენ შესაძლოა გამოვიყენოთ მესამე მხარის მომსახურება, ჩვენი სერვისის გამოყენების მონიტორინგისა და ანალიზისთვის.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">8. ანგარიშები</span></p><p class=\"MsoNormal\">როდესაც თქვენ ქმნით ანგარიშს ჩვენს ვებ-გვერდზე, თქვენ ადასტურებთ, რომ თქვენს მიერ მოწოდებული ინფორმაცია ზუსტი, სრულყოფილი და აქტუალურია ნებისმიერი დროისთვის. არასწორმა, არასრულმა ან მოძველებულმა ინფორმაციამ შესაძლოა გამოიწვიოს თქვენი ანგარიშის დაუყოვნებლივი გაუქმება.</p><p class=\"MsoNormal\">თქვენ ხართ პასუხისმგებელი თქვენი ანგარიშისა და პაროლის კონფიდენციალურობის შენარჩუნებაზე. თქვენ ეთანხმებით პასუხისმგებლობის აღებას თქვენს ანგარიშთან ან/და პაროლთან დაკავშირებულ ნებისმიერ და ყველა აქტივობასა თუ ქმედებაზე. თქვენ დაუყოვნებლივ უნდა გვაცნობოთ თქვენი ინფორმაციას უსაფრთხოების დარღვევის ან თქვენი ანგარიშის უნებართვოდ გამოყენების შესახებ.</p><p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას უარი ვთქვათ მომსახურებაზე, შევადგინოთ ანგარიშები, ამოვიღოთ ან შეცვალოთ შინაარსი, ან შევაჩეროთ შეკვეთები ჩვენი შეხედულებისამებრ.</p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">9. შეწყვეტა</span></p><p class=\"MsoNormal\">ჩვენ შეგვიძლია შევწყვიტოთ ან შევაჩეროთ თქვენი ანგარიში და სერვისზე წვდომა დაუყოვნებლივ, წინასწარი შეტყობინების გარეშე ან პასუხისმგებლობის გარეშე, ჩვენი შეხედულებისამებრ, რაიმე მიზეზის გამო და შეზღუდვის გარეშე, მათ შორის, მაგრამ არ მხოლოდ პირობების დარღვევის შემთხვევაში.&nbsp;</p><p class=\"MsoNormal\">თუ გსურთ ანგარიშის შეწყვეტა, შეგიძლიათ უბრალოდ შეწყვიტოთ მისი გამოყენება.</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">10. მარეგულირებელი კანონი</span></p><p class=\"MsoNormal\">წესები და პირობები რეგულირდება და ინტერპრეტაცია ხორციელდება საქართველოს კანონმდებლობის შესაბამისად, შესაბამისი მარეგულირებელი კანონის ფარგებში, მასთან კონფლიქტში მყოფი დებულებების გათვალისწინების გარეშე.</p><p class=\"MsoNormal\">ჩვენს მიერ ამ პირობების რაიმე უფლების ან დებულებების შეუსრულებლობა, არ განიხილება ამ უფლებების უგულებელყოფად. თუ ამ პირობების რომელიმე დებულება სასამართლოს მიერ ბათილად ან კანონიერი ძალის არმქონედ ჩაითვლება, ამ პირობების დარჩენილი დებულებები რჩება მოქმედად.&nbsp;</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">11. ცვლილებები სერვისში</span>&nbsp;</p><p class=\"MsoNormal\">ჩვენ ვიტოვებთ უფლებას, შევიტანოთ ცვლილებები ჩვენს მომსახურებაში, ჩვენი შეხედულებისამებრ. პერიოდულად, ჩვენ შეიძლება შევზღუდოთ წვდომა მომსახურების ზოგიერთი ნაწილზე ან მთლიან სერვისზე, მომხმარებლებზე, მათ შორის რეგისტრირებულ მომხმარებლებზე.&nbsp;</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">12. დასტური/თანხმობა</span>&nbsp;</p><p class=\"MsoNormal\">ჩვენი სერვისით ან ჩვენს მიერ მოწოდებული სხვა სერვისის გამოყენებით, ადასტურებთ, რომ წაიკითხეთ და გაეცანით ამ წესებსა და პირობებს და ეთანხმებით მათ.&nbsp;</p><p class=\"MsoNormal\"><span style=\"font-weight: bolder;\">13. დაგვიკავშირდით<o:p></o:p></span></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\">გთხოვთ, თქვენი გამოხმაურება, კომენტარები, ტექნიკური დახმარების მოთხოვნა გამოაგზავნოთ ელ. ფოსტაზე: info@foodly.com.ge</p>', '2023-01-26 12:31:16', '2024-02-04 13:17:27'),
(5, 2, 'ru', 'test', 'test3', '<p>test3test3test3<br></p>', '2023-01-26 12:31:16', '2023-01-26 12:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) DEFAULT NULL,
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `restaurant_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Davit Gakhokia', 'davit@cofi.ge', NULL, NULL, '$2y$10$kKLCoIQ1agyMND64EznmQO5WaTJLCRhAGCnYBXgJV/HnmEyf4YYIK', 'Gd0KbIEJXXbCUWrMpapmEr1ZjajLHg3DENlkOvSpZZIgkA0KG0Kq0hB66b7D', '2021-12-26 04:12:05', '2023-10-14 11:45:08'),
(2, 'FOODLY', 'admin@foodly.space', NULL, NULL, '$2y$10$7iKmGvMqqXxqTe6qOl7Pd.dxNV41UhZX31fE5WHI/cgFtVUEPhBdy', NULL, '2022-01-11 08:02:18', '2024-02-21 21:50:30'),
(5, 'API', 'api@kerdzebi.ge', NULL, NULL, '$2y$10$A083kTmc.sLZTp5iByxKGuMiqhCeIYhlUWCIx78TamXJTDp2PUqoO', NULL, '2022-01-31 08:00:07', '2022-01-31 20:47:49'),
(7, 'TEST', 'test@test.com', NULL, NULL, '$2y$10$RbDw.nXbSnUghk6WzoT1t.sWS8ykRuBT.VGQmmU/mjzXlBOkj1.5y', NULL, '2023-11-08 05:32:34', '2023-11-08 05:32:34'),
(8, 'Kristine', 'kristi@foodly.com.ge', NULL, NULL, '$2y$10$CL/Ft6lHJQlh/X8ZrGYh3eqDyBG.Oq9XsGb9YJqnXfCBrnFQd9BFi', 'VokVdNeiJylZq4f23H946TotByUhEjoBDO2E5AJXRj6m92bJTCIWNf2tmCrK', '2024-01-19 22:37:50', '2024-01-19 22:39:44'),
(9, 'Beka', 'chaihanabatumi@yahoo.com', 35, NULL, '$2y$10$TxcFqJ0PcRlYrt4U.foWZe/Qflmy2Cd/5HzLG6JnGxw0CizNtaWWO', 'KRSvdcQ5nOlXHzuz9H9itnGjwsu78G3FoMEDmzaxan9ZQls4xzRdWrcCtwov', '2024-02-21 19:22:54', '2024-02-21 19:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `video_url` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rank` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `user_id`, `product_id`, `video_url`, `status`, `rank`, `created_at`, `updated_at`) VALUES
(13, '1', NULL, 147, 'https://www.youtube.com/embed/BgHr3VK8F9Y', 1, NULL, '2023-07-20 16:06:19', '2023-10-15 09:53:52'),
(14, '2', NULL, 306, 'https://www.youtube.com/embed/bt-lrVEmNvY', 1, NULL, '2023-07-21 12:41:21', '2023-12-12 14:51:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_translations`
--
ALTER TABLE `about_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `about_translations_about_id_locale_unique` (`about_id`,`locale`),
  ADD KEY `about_translations_locale_index` (`locale`);

--
-- Indexes for table `advanceds`
--
ALTER TABLE `advanceds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advanced_translations`
--
ALTER TABLE `advanced_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `advanced_translations_advanced_id_locale_unique` (`advanced_id`,`locale`),
  ADD KEY `advanced_translations_locale_index` (`locale`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_translations`
--
ALTER TABLE `client_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_translations_client_id_locale_unique` (`client_id`,`locale`),
  ADD KEY `client_translations_locale_index` (`locale`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine_restaurant`
--
ALTER TABLE `cuisine_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_restaurant_cuisine_id_foreign` (`cuisine_id`),
  ADD KEY `cuisine_restaurant_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `cuisine_translations`
--
ALTER TABLE `cuisine_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cuisine_translations_cuisine_id_locale_unique` (`cuisine_id`,`locale`),
  ADD KEY `cuisine_translations_locale_index` (`locale`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_restaurant`
--
ALTER TABLE `group_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_restaurant_group_id_foreign` (`group_id`),
  ADD KEY `group_restaurant_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `group_translations`
--
ALTER TABLE `group_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_translations_group_id_locale_unique` (`group_id`,`locale`),
  ADD KEY `group_translations_locale_index` (`locale`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_translations`
--
ALTER TABLE `message_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `message_translations_message_id_locale_unique` (`message_id`,`locale`),
  ADD KEY `message_translations_locale_index` (`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_translations`
--
ALTER TABLE `place_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place_translations_place_id_locale_unique` (`place_id`,`locale`),
  ADD KEY `place_translations_locale_index` (`locale`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`),
  ADD KEY `post_translations_locale_index` (`locale`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policy_translations`
--
ALTER TABLE `privacy_policy_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `privacy_policy_translations_privacy_policy_id_locale_unique` (`privacy_policy_id`,`locale`),
  ADD KEY `privacy_policy_translations_locale_index` (`locale`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank` (`rank`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`),
  ADD KEY `product_translations_locale_index` (`locale`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region_restaurant`
--
ALTER TABLE `region_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_restaurant_region_id_foreign` (`region_id`),
  ADD KEY `region_restaurant_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `region_translations`
--
ALTER TABLE `region_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `region_translations_region_id_locale_unique` (`region_id`,`locale`),
  ADD KEY `region_translations_locale_index` (`locale`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_rank_unique` (`rank`);

--
-- Indexes for table `restaurant_translations`
--
ALTER TABLE `restaurant_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurant_translations_restaurant_id_locale_unique` (`restaurant_id`,`locale`),
  ADD KEY `restaurant_translations_locale_index` (`locale`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  ADD KEY `setting_translations_locale_index` (`locale`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_restaurant`
--
ALTER TABLE `slide_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_restaurant_slide_id_foreign` (`slide_id`),
  ADD KEY `slide_restaurant_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `slide_translations`
--
ALTER TABLE `slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slide_translations_slide_id_locale_unique` (`slide_id`,`locale`),
  ADD KEY `slide_translations_locale_index` (`locale`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_translations`
--
ALTER TABLE `table_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_translations_table_id_locale_unique` (`table_id`,`locale`),
  ADD KEY `table_translations_locale_index` (`locale`);

--
-- Indexes for table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_of_service_translations`
--
ALTER TABLE `terms_of_service_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `terms_of_service_translations_terms_of_service_id_locale_unique` (`terms_of_service_id`,`locale`),
  ADD KEY `terms_of_service_translations_locale_index` (`locale`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank` (`rank`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_translations`
--
ALTER TABLE `about_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `advanceds`
--
ALTER TABLE `advanceds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advanced_translations`
--
ALTER TABLE `advanced_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `client_translations`
--
ALTER TABLE `client_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cuisine_restaurant`
--
ALTER TABLE `cuisine_restaurant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cuisine_translations`
--
ALTER TABLE `cuisine_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `group_restaurant`
--
ALTER TABLE `group_restaurant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `group_translations`
--
ALTER TABLE `group_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message_translations`
--
ALTER TABLE `message_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `place_translations`
--
ALTER TABLE `place_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `privacy_policy_translations`
--
ALTER TABLE `privacy_policy_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1329;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `region_restaurant`
--
ALTER TABLE `region_restaurant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `region_translations`
--
ALTER TABLE `region_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `restaurant_translations`
--
ALTER TABLE `restaurant_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `slide_restaurant`
--
ALTER TABLE `slide_restaurant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide_translations`
--
ALTER TABLE `slide_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `table_translations`
--
ALTER TABLE `table_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms_of_service_translations`
--
ALTER TABLE `terms_of_service_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_translations`
--
ALTER TABLE `about_translations`
  ADD CONSTRAINT `about_translations_about_id_foreign` FOREIGN KEY (`about_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `advanced_translations`
--
ALTER TABLE `advanced_translations`
  ADD CONSTRAINT `advanced_translations_advanced_id_foreign` FOREIGN KEY (`advanced_id`) REFERENCES `advanceds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_translations`
--
ALTER TABLE `client_translations`
  ADD CONSTRAINT `client_translations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cuisine_restaurant`
--
ALTER TABLE `cuisine_restaurant`
  ADD CONSTRAINT `cuisine_restaurant_cuisine_id_foreign` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cuisine_restaurant_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cuisine_translations`
--
ALTER TABLE `cuisine_translations`
  ADD CONSTRAINT `cuisine_translations_cuisine_id_foreign` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisines` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_restaurant`
--
ALTER TABLE `group_restaurant`
  ADD CONSTRAINT `group_restaurant_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_restaurant_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_translations`
--
ALTER TABLE `group_translations`
  ADD CONSTRAINT `group_translations_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `message_translations`
--
ALTER TABLE `message_translations`
  ADD CONSTRAINT `message_translations_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `place_translations`
--
ALTER TABLE `place_translations`
  ADD CONSTRAINT `place_translations_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `privacy_policy_translations`
--
ALTER TABLE `privacy_policy_translations`
  ADD CONSTRAINT `privacy_policy_translations_privacy_policy_id_foreign` FOREIGN KEY (`privacy_policy_id`) REFERENCES `privacy_policies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `region_restaurant`
--
ALTER TABLE `region_restaurant`
  ADD CONSTRAINT `region_restaurant_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `region_restaurant_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `region_translations`
--
ALTER TABLE `region_translations`
  ADD CONSTRAINT `region_translations_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_translations`
--
ALTER TABLE `restaurant_translations`
  ADD CONSTRAINT `restaurant_translations_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slide_restaurant`
--
ALTER TABLE `slide_restaurant`
  ADD CONSTRAINT `slide_restaurant_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`),
  ADD CONSTRAINT `slide_restaurant_slide_id_foreign` FOREIGN KEY (`slide_id`) REFERENCES `slides` (`id`);

--
-- Constraints for table `table_translations`
--
ALTER TABLE `table_translations`
  ADD CONSTRAINT `table_translations_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `terms_of_service_translations`
--
ALTER TABLE `terms_of_service_translations`
  ADD CONSTRAINT `terms_of_service_translations_terms_of_service_id_foreign` FOREIGN KEY (`terms_of_service_id`) REFERENCES `terms_of_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
