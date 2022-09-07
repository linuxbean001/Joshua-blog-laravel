-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 03:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE `blogposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `by_Category` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`id`, `title`, `desc`, `img_url`, `created_at`, `updated_at`, `by_Category`) VALUES
(1, 'Top Bookscribs 2921 Adaptation Recommendations', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', 'https://quickbooks.intuit.com/oidam/intuit/sbseg/en_us/Blog/Photography/Stock/AdobeStock_318175866.jpeg', '2022-09-06 12:35:24', NULL, 'BookScribe '),
(2, 'Top Bookscribs 2021 Adaptation Recommendations', 'There was a young boy whose father, a farmer, had asked him to take their herd of sheep grazing every day. One day, the boy was extremely bored as he watched over the sheep and so he cried: “Wolf! Wolf!” On hearing his cries, the villagers rushed to help ', 'https://getlucidity.com/wp-content/uploads/2021/04/top_10_leadership_blogs.webp', '2027-12-08 12:35:31', NULL, 'ReadBook'),
(3, 'Top Bookscribs 1825 Adaptation Recommendations', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', 'https://images.ctfassets.net/wgv5567aci3o/post_656_089a1b09b663/2322a92c12dcbdf97279ecc8a5605d72/post-656-089a1b09b663?w=1200&fl=progressive&q=80', '2017-12-14 12:35:38', NULL, 'ReadBook'),
(4, 'Top Bookscribs 1843 Adaptation Recommendations', 'Common topics for news reports include war, government, politics, education, health, the environment, economy, business, fashion, entertainment, and sport, as well as quirky or unusual events. Government proclamations, concerning royal ceremonies, laws, t', '', NULL, NULL, 'News'),
(5, 'Top Bookscribs 2221 Adaptation Recommenda', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', '', NULL, NULL, 'BookScribe '),
(6, 'Top Bookscribs 2021 Adaptation Recommendations', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', '', NULL, NULL, ''),
(7, 'Top Bookscribs 1823 Adaptation Recommendations', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', '', NULL, NULL, ''),
(8, 'Top Bookscribs 1825 Adaptation Recommendations', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', '', NULL, NULL, ''),
(9, 'Top Bookscribs 1833 Adaptation Recommendations', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', '', NULL, NULL, ''),
(10, 'Top Bookscribs 1823 Adaptation Recommendations', 'The importance and value of writing consistently—using consistent pronouns, punctuation, and following a specific style guide—is introduced in an academic setting. For years, we learn to follow grammatical best practices for writing the English language.', '', NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogposts`
--
ALTER TABLE `blogposts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogposts`
--
ALTER TABLE `blogposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
