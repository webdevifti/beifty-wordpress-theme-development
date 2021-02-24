-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 02:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beifti_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `be_1commentmeta`
--

CREATE TABLE `be_1commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `be_1comments`
--

CREATE TABLE `be_1comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1comments`
--

INSERT INTO `be_1comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-09 02:21:34', '2020-09-09 02:21:34', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 1, 'beifti', 'codingwithiftekhar@gmail.com', 'http://www.webdevifti.com/beifti', '::1', '2020-09-12 06:43:51', '2020-09-12 06:43:51', 'hi, this is a comment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'comment', 0, 1),
(3, 1, 'beifti', 'codingwithiftekhar@gmail.com', 'http://www.webdevifti.com/beifti', '::1', '2020-09-12 06:44:12', '2020-09-12 06:44:12', 'nice post and thanks', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'comment', 1, 1),
(4, 1, 'beifti', 'codingwithiftekhar@gmail.com', 'http://www.webdevifti.com/beifti', '::1', '2020-09-12 06:44:34', '2020-09-12 06:44:34', 'pretty awesome', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'comment', 3, 1),
(5, 1, 'firefox', 'aashraaf900@gmail.com', '', '::1', '2020-09-12 09:09:21', '2020-09-12 09:09:21', 'goood', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0', 'comment', 0, 0),
(6, 1, 'firefox', 'aashraaf900@gmail.com', '', '::1', '2020-09-12 09:15:02', '2020-09-12 09:15:02', 'nice', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `be_1links`
--

CREATE TABLE `be_1links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `be_1options`
--

CREATE TABLE `be_1options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1options`
--

INSERT INTO `be_1options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.webdevifti.com/beifti', 'yes'),
(2, 'home', 'http://www.webdevifti.com/beifti', 'yes'),
(3, 'blogname', 'Be IfTi name of development', 'yes'),
(4, 'blogdescription', 'Lorem ipsum dolor sit amet, consecteturadipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'codingwithiftekhar@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:166:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"course_feature/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"course_feature/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"course_feature/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"course_feature/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"course_feature/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"course_feature/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"course_feature/([^/]+)/embed/?$\";s:47:\"index.php?course_feature=$matches[1]&embed=true\";s:35:\"course_feature/([^/]+)/trackback/?$\";s:41:\"index.php?course_feature=$matches[1]&tb=1\";s:43:\"course_feature/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?course_feature=$matches[1]&paged=$matches[2]\";s:50:\"course_feature/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?course_feature=$matches[1]&cpage=$matches[2]\";s:39:\"course_feature/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?course_feature=$matches[1]&page=$matches[2]\";s:31:\"course_feature/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"course_feature/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"course_feature/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"course_feature/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"course_feature/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"course_feature/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"project_feature/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"project_feature/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"project_feature/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"project_feature/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"project_feature/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"project_feature/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"project_feature/([^/]+)/embed/?$\";s:48:\"index.php?project_feature=$matches[1]&embed=true\";s:36:\"project_feature/([^/]+)/trackback/?$\";s:42:\"index.php?project_feature=$matches[1]&tb=1\";s:44:\"project_feature/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?project_feature=$matches[1]&paged=$matches[2]\";s:51:\"project_feature/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?project_feature=$matches[1]&cpage=$matches[2]\";s:40:\"project_feature/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?project_feature=$matches[1]&page=$matches[2]\";s:32:\"project_feature/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"project_feature/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"project_feature/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"project_feature/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"project_feature/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"project_feature/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:32:\"testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:40:\"testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:47:\"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:36:\"testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:28:\"testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"resource/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"resource/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"resource/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"resource/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"resource/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"resource/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"resource/([^/]+)/embed/?$\";s:41:\"index.php?resource=$matches[1]&embed=true\";s:29:\"resource/([^/]+)/trackback/?$\";s:35:\"index.php?resource=$matches[1]&tb=1\";s:37:\"resource/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?resource=$matches[1]&paged=$matches[2]\";s:44:\"resource/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?resource=$matches[1]&cpage=$matches[2]\";s:33:\"resource/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?resource=$matches[1]&page=$matches[2]\";s:25:\"resource/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"resource/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"resource/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"resource/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"resource/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"resource/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'beifti', 'yes'),
(41, 'stylesheet', 'beifti', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'desc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '86', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1615170087', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'be_1user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:16:\"Public Comment\'s\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:9:\"searchbar\";a:1:{i:0;s:8:\"search-2\";}s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:17:\"recent-comments-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1599909698;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1599910043;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"a6d0b01ce9e57f6ba746a100ce2ee249\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:102;}}}}i:1599920498;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1599963696;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599963717;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599963718;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600309297;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', '?,4y!AxFxdUX)$y]mtw,K6c(bj}eLtMdduP =9/y}S#cc}U[}$G`:0wn:jxbdvVq', 'no'),
(112, 'nonce_salt', '*W9p1K!GVYk%zvsc//whY6X78f-|=6V]S=Srr92qmcs>j5eqk*LU 9Lk6VJe%+0}', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:1:{s:22:\"J4f6Hm2gohem4yPDGJSk8N\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BeXXmZ9ynY0irPNdb8AKcSyhUxP.G81\";s:10:\"created_at\";i:1599891421;}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:3:\"5.5\";s:12:\"last_checked\";i:1599902853;}', 'no'),
(120, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599618802;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1599906174;}', 'no'),
(124, 'auth_key', 'WKKejPaBV26 ICr#O{vUf.$c<6?j[gs#+pRL_Q~2)WqA%{ Ur,B+YC{Fl<p=b|F]', 'no'),
(125, 'auth_salt', 'iB8C=vAF)0 ]Qu(h[Pw1L%QQ%;.ARg[ed+TSo~rY/r}}J1fk=p!8bcxkj?xcA[AJ', 'no'),
(126, 'logged_in_key', '!  R(_XBEJCTNN:B)0/*afso:Juj6/|<]V3^;Z%5H1xJ6V$jg%?#T=|=jHfH<zx9', 'no'),
(127, 'logged_in_salt', 'xF:&FnGAtrXxF]A|O0`8gH|[qm.I1vQmH@[0:#E9c:Mwc_z[;LB;vm2|Te5O(`)S', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(134, 'finished_updating_comment_type', '1', 'yes'),
(135, 'current_theme', 'beifti', 'yes'),
(136, 'theme_mods_beifti', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(138, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(145, 'WPLANG', '', 'yes'),
(146, 'new_admin_email', 'codingwithiftekhar@gmail.com', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'acf_version', '5.9.1', 'yes'),
(161, 'cptui_new_install', 'false', 'yes'),
(165, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}', 'yes'),
(169, 'cptui_post_types', 'a:4:{s:14:\"course_feature\";a:30:{s:4:\"name\";s:14:\"course_feature\";s:5:\"label\";s:15:\"Course Features\";s:14:\"singular_label\";s:14:\"Course Feature\";s:11:\"description\";s:46:\"This is label for highlight you course feature\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:15:\"project_feature\";a:30:{s:4:\"name\";s:15:\"project_feature\";s:5:\"label\";s:16:\"Project Features\";s:14:\"singular_label\";s:15:\"Project Feature\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:11:\"testimonial\";a:30:{s:4:\"name\";s:11:\"testimonial\";s:5:\"label\";s:12:\"Testimonials\";s:14:\"singular_label\";s:11:\"Testimonial\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:8:\"resource\";a:30:{s:4:\"name\";s:8:\"resource\";s:5:\"label\";s:9:\"Resources\";s:14:\"singular_label\";s:8:\"Resource\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(177, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1599922123', 'no'),
(178, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(190, 'recovery_mode_email_last_sent', '1599891421', 'yes'),
(191, 'category_children', 'a:0:{}', 'yes'),
(208, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1599902858;}', 'no'),
(209, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1599902858;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(210, 'secret_key', '*)o?`6:EVW4egH0KRX_1@V/f@e$xg-rm)?Dq2&2qS!~Z)doQrljVy|9yIYLa.w9I', 'no'),
(211, '_site_transient_timeout_theme_roots', '1599907623', 'no'),
(212, '_site_transient_theme_roots', 'a:4:{s:6:\"beifti\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `be_1postmeta`
--

CREATE TABLE `be_1postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1postmeta`
--

INSERT INTO `be_1postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://www.webdevifti.com/beifti/'),
(24, 8, '_edit_lock', '1599621593:1'),
(25, 9, '_edit_lock', '1599621651:1'),
(26, 10, '_edit_lock', '1599883891:1'),
(27, 10, '_wp_page_template', 'page-home.php'),
(28, 10, '_edit_last', '1'),
(29, 10, 'pre_launce_price', '$149'),
(30, 10, 'launce_price', '$89'),
(31, 10, 'final_price', '$39'),
(32, 10, 'enroll_link', 'https://www.youtube.com/channel/UCDkI-JwWcD0iPyhjadRmX7Q'),
(33, 10, 'enroll_btn_text', 'Get now &raquo;'),
(34, 10, 'optin_text', '<strong>Subscribe to our mailing list</strong> We\'ll send somthing special as a thank you'),
(35, 10, 'optin_btn_text', 'Subscribe'),
(40, 16, '_edit_last', '1'),
(41, 16, '_edit_lock', '1599754983:1'),
(42, 27, '_wp_attached_file', '2020/09/Photolab-500004447.jpg'),
(43, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2020/09/Photolab-500004447.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Photolab-500004447-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Photolab-500004447-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Photolab-500004447-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 27, '_wp_attachment_image_alt', 'Boost Image'),
(45, 10, 'income_feature_image', '27'),
(46, 10, '_income_feature_image', 'field_5f5a4b2413ada'),
(47, 10, 'income_feature_title', 'How you can boost your income.'),
(48, 10, '_income_feature_title', 'field_5f5a4b8113adb'),
(49, 10, 'income_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(50, 10, '_income_section_description', 'field_5f5a4c0813adc'),
(51, 10, 'reason_1_title', 'Make money on the site.'),
(52, 10, '_reason_1_title', 'field_5f5a4c8d13add'),
(53, 10, 'reason_1_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(54, 10, '_reason_1_description', 'field_5f5a4cc113ade'),
(55, 10, 'reason_2_title', 'Create a full time income'),
(56, 10, '_reason_2_title', 'field_5f5a4ce713adf'),
(57, 10, 'reason_2_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(58, 10, '_reason_2_description', 'field_5f5a4d1b13ae0'),
(59, 28, 'income_feature_image', '27'),
(60, 28, '_income_feature_image', 'field_5f5a4b2413ada'),
(61, 28, 'income_feature_title', 'How you can boost your income.'),
(62, 28, '_income_feature_title', 'field_5f5a4b8113adb'),
(63, 28, 'income_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(64, 28, '_income_section_description', 'field_5f5a4c0813adc'),
(65, 28, 'reason_1_title', 'Make money on the site.'),
(66, 28, '_reason_1_title', 'field_5f5a4c8d13add'),
(67, 28, 'reason_1_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(68, 28, '_reason_1_description', 'field_5f5a4cc113ade'),
(69, 28, 'reason_2_title', 'Create a full time income'),
(70, 28, '_reason_2_title', 'field_5f5a4ce713adf'),
(71, 28, 'reason_2_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(72, 28, '_reason_2_description', 'field_5f5a4d1b13ae0'),
(73, 29, '_edit_last', '1'),
(74, 29, '_edit_lock', '1599755934:1'),
(75, 33, '_wp_attached_file', '2020/09/Photolab-698889805.jpg'),
(76, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2020/09/Photolab-698889805.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Photolab-698889805-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Photolab-698889805-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 33, '_wp_attachment_image_alt', 'An Image'),
(78, 10, 'section_image', '35'),
(79, 10, '_section_image', 'field_5f5a5485c9cb0'),
(80, 10, 'section_title', 'Who should take this course.'),
(81, 10, '_section_title', 'field_5f5a54d4c9cb1'),
(82, 10, 'section_body', '<h3>Graphics &amp; Web designers</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Enterprenuer</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Employees</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>'),
(83, 10, '_section_body', 'field_5f5a54ffc9cb2'),
(84, 34, 'income_feature_image', '27'),
(85, 34, '_income_feature_image', 'field_5f5a4b2413ada'),
(86, 34, 'income_feature_title', 'How you can boost your income.'),
(87, 34, '_income_feature_title', 'field_5f5a4b8113adb'),
(88, 34, 'income_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(89, 34, '_income_section_description', 'field_5f5a4c0813adc'),
(90, 34, 'reason_1_title', 'Make money on the site.'),
(91, 34, '_reason_1_title', 'field_5f5a4c8d13add'),
(92, 34, 'reason_1_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(93, 34, '_reason_1_description', 'field_5f5a4cc113ade'),
(94, 34, 'reason_2_title', 'Create a full time income'),
(95, 34, '_reason_2_title', 'field_5f5a4ce713adf'),
(96, 34, 'reason_2_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(97, 34, '_reason_2_description', 'field_5f5a4d1b13ae0'),
(98, 34, 'section_image', '33'),
(99, 34, '_section_image', 'field_5f5a5485c9cb0'),
(100, 34, 'section_title', 'Who should take this course.'),
(101, 34, '_section_title', 'field_5f5a54d4c9cb1'),
(102, 34, 'section_body', '<h3>Graphics &amp; Web designers</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Enterprenuer</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Employees</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>'),
(103, 34, '_section_body', 'field_5f5a54ffc9cb2'),
(104, 35, '_wp_attached_file', '2020/09/Photolab-8850086.jpeg'),
(105, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:29:\"2020/09/Photolab-8850086.jpeg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Photolab-8850086-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Photolab-8850086-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Photolab-8850086-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 35, '_wp_attachment_image_alt', 'Image'),
(107, 36, 'income_feature_image', '27'),
(108, 36, '_income_feature_image', 'field_5f5a4b2413ada'),
(109, 36, 'income_feature_title', 'How you can boost your income.'),
(110, 36, '_income_feature_title', 'field_5f5a4b8113adb'),
(111, 36, 'income_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(112, 36, '_income_section_description', 'field_5f5a4c0813adc'),
(113, 36, 'reason_1_title', 'Make money on the site.'),
(114, 36, '_reason_1_title', 'field_5f5a4c8d13add'),
(115, 36, 'reason_1_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(116, 36, '_reason_1_description', 'field_5f5a4cc113ade'),
(117, 36, 'reason_2_title', 'Create a full time income'),
(118, 36, '_reason_2_title', 'field_5f5a4ce713adf'),
(119, 36, 'reason_2_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(120, 36, '_reason_2_description', 'field_5f5a4d1b13ae0'),
(121, 36, 'section_image', '35'),
(122, 36, '_section_image', 'field_5f5a5485c9cb0'),
(123, 36, 'section_title', 'Who should take this course.'),
(124, 36, '_section_title', 'field_5f5a54d4c9cb1'),
(125, 36, 'section_body', '<h3>Graphics &amp; Web designers</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Enterprenuer</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Employees</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>'),
(126, 36, '_section_body', 'field_5f5a54ffc9cb2'),
(130, 39, '_edit_last', '1'),
(131, 39, '_edit_lock', '1599879478:1'),
(136, 42, '_edit_last', '1'),
(137, 42, '_edit_lock', '1599759537:1'),
(138, 10, 'feature_image', '33'),
(139, 10, '_feature_image', 'field_5f5a60497852b'),
(140, 10, 'title', 'Course Features'),
(141, 10, '_title', 'field_5f5a606a7852c'),
(142, 45, 'income_feature_image', '27'),
(143, 45, '_income_feature_image', 'field_5f5a4b2413ada'),
(144, 45, 'income_feature_title', 'How you can boost your income.'),
(145, 45, '_income_feature_title', 'field_5f5a4b8113adb'),
(146, 45, 'income_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(147, 45, '_income_section_description', 'field_5f5a4c0813adc'),
(148, 45, 'reason_1_title', 'Make money on the site.'),
(149, 45, '_reason_1_title', 'field_5f5a4c8d13add'),
(150, 45, 'reason_1_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(151, 45, '_reason_1_description', 'field_5f5a4cc113ade'),
(152, 45, 'reason_2_title', 'Create a full time income'),
(153, 45, '_reason_2_title', 'field_5f5a4ce713adf'),
(154, 45, 'reason_2_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(155, 45, '_reason_2_description', 'field_5f5a4d1b13ae0'),
(156, 45, 'section_image', '35'),
(157, 45, '_section_image', 'field_5f5a5485c9cb0'),
(158, 45, 'section_title', 'Who should take this course.'),
(159, 45, '_section_title', 'field_5f5a54d4c9cb1'),
(160, 45, 'section_body', '<h3>Graphics &amp; Web designers</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Enterprenuer</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Employees</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>'),
(161, 45, '_section_body', 'field_5f5a54ffc9cb2'),
(162, 45, 'feature_image', '33'),
(163, 45, '_feature_image', 'field_5f5a60497852b'),
(164, 45, 'title', 'Course Features'),
(165, 45, '_title', 'field_5f5a606a7852c'),
(204, 53, '_edit_last', '1'),
(205, 53, 'course_feature_icon', 'fa fa-desktop'),
(206, 53, '_course_feature_icon', 'field_5f5a5e613e02d'),
(207, 53, '_edit_lock', '1599879678:1'),
(208, 54, '_edit_last', '1'),
(209, 54, '_edit_lock', '1599879708:1'),
(210, 54, 'course_feature_icon', 'fa fa-clock-o'),
(211, 54, '_course_feature_icon', 'field_5f5a5e613e02d'),
(212, 55, '_edit_last', '1'),
(213, 55, '_edit_lock', '1599879738:1'),
(214, 55, 'course_feature_icon', 'fa fa-share'),
(215, 55, '_course_feature_icon', 'field_5f5a5e613e02d'),
(216, 56, '_edit_last', '1'),
(217, 56, '_edit_lock', '1599879780:1'),
(218, 56, 'course_feature_icon', 'fa fa-envelope'),
(219, 56, '_course_feature_icon', 'field_5f5a5e613e02d'),
(220, 57, '_edit_last', '1'),
(221, 57, 'course_feature_icon', 'fa fa-eye'),
(222, 57, '_course_feature_icon', 'field_5f5a5e613e02d'),
(223, 57, '_edit_lock', '1599879929:1'),
(224, 58, '_edit_last', '1'),
(225, 58, 'course_feature_icon', 'fa fa-mobile'),
(226, 58, '_course_feature_icon', 'field_5f5a5e613e02d'),
(227, 58, '_edit_lock', '1599879967:1'),
(228, 59, '_edit_last', '1'),
(229, 59, '_edit_lock', '1599884054:1'),
(230, 62, '_edit_lock', '1599880892:1'),
(231, 63, '_wp_attached_file', '2020/09/Photolab-422658603.jpg'),
(232, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2020/09/Photolab-422658603.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Photolab-422658603-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Photolab-422658603-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Photolab-422658603-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 63, '_wp_attachment_image_alt', 'Modern Design'),
(234, 62, '_thumbnail_id', '63'),
(235, 64, '_edit_lock', '1599880984:1'),
(236, 65, '_wp_attached_file', '2020/09/Photolab-871646389.jpg'),
(237, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2020/09/Photolab-871646389.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Photolab-871646389-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Photolab-871646389-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Photolab-871646389-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 65, '_wp_attachment_image_alt', 'Html and css'),
(239, 64, '_thumbnail_id', '65'),
(240, 66, '_edit_lock', '1599881041:1'),
(241, 67, '_wp_attached_file', '2020/09/Photolab-286117149.jpg'),
(242, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2020/09/Photolab-286117149.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Photolab-286117149-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Photolab-286117149-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 67, '_wp_attachment_image_alt', 'CMS'),
(244, 66, '_thumbnail_id', '67'),
(245, 10, 'project_feature_title', 'Final Project Features'),
(246, 10, '_project_feature_title', 'field_5f5c3d84b1791'),
(247, 10, 'project_feature_body', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident'),
(248, 10, '_project_feature_body', 'field_5f5c3db6b1792'),
(249, 68, 'income_feature_image', '27'),
(250, 68, '_income_feature_image', 'field_5f5a4b2413ada'),
(251, 68, 'income_feature_title', 'How you can boost your income.'),
(252, 68, '_income_feature_title', 'field_5f5a4b8113adb'),
(253, 68, 'income_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(254, 68, '_income_section_description', 'field_5f5a4c0813adc'),
(255, 68, 'reason_1_title', 'Make money on the site.'),
(256, 68, '_reason_1_title', 'field_5f5a4c8d13add'),
(257, 68, 'reason_1_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(258, 68, '_reason_1_description', 'field_5f5a4cc113ade'),
(259, 68, 'reason_2_title', 'Create a full time income'),
(260, 68, '_reason_2_title', 'field_5f5a4ce713adf'),
(261, 68, 'reason_2_description', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(262, 68, '_reason_2_description', 'field_5f5a4d1b13ae0'),
(263, 68, 'section_image', '35'),
(264, 68, '_section_image', 'field_5f5a5485c9cb0'),
(265, 68, 'section_title', 'Who should take this course.'),
(266, 68, '_section_title', 'field_5f5a54d4c9cb1'),
(267, 68, 'section_body', '<h3>Graphics &amp; Web designers</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Enterprenuer</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>\r\n<h3>Employees</h3>\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, <strong>sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>'),
(268, 68, '_section_body', 'field_5f5a54ffc9cb2'),
(269, 68, 'feature_image', '33'),
(270, 68, '_feature_image', 'field_5f5a60497852b'),
(271, 68, 'title', 'Course Features'),
(272, 68, '_title', 'field_5f5a606a7852c'),
(273, 68, 'project_feature_title', 'Final Project Features'),
(274, 68, '_project_feature_title', 'field_5f5c3d84b1791'),
(275, 68, 'project_feature_body', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident'),
(276, 68, '_project_feature_body', 'field_5f5c3db6b1792'),
(277, 69, '_edit_lock', '1599881860:1'),
(278, 69, '_thumbnail_id', '65'),
(279, 70, '_edit_lock', '1599881899:1'),
(280, 70, '_thumbnail_id', '63'),
(281, 71, '_edit_lock', '1599886692:1'),
(282, 72, '_menu_item_type', 'post_type'),
(283, 72, '_menu_item_menu_item_parent', '0'),
(284, 72, '_menu_item_object_id', '71'),
(285, 72, '_menu_item_object', 'page'),
(286, 72, '_menu_item_target', ''),
(287, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 72, '_menu_item_xfn', ''),
(289, 72, '_menu_item_url', ''),
(290, 71, '_wp_page_template', 'page-resources.php'),
(291, 74, '_wp_attached_file', '2020/09/My-Post.png'),
(292, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:19:\"2020/09/My-Post.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"My-Post-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"My-Post-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"My-Post-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"My-Post-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"My-Post-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"My-Post-2048x1152.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 71, '_thumbnail_id', '33'),
(295, 77, '_edit_last', '1'),
(296, 77, '_edit_lock', '1599888308:1'),
(297, 82, '_edit_lock', '1599887728:1'),
(298, 82, '_edit_last', '1'),
(299, 82, 'resource_image', '35'),
(300, 82, '_resource_image', 'field_5f5c567c9b3c5'),
(301, 82, 'resource_url', 'http://www.webdevifti.com/beifti/resources/#'),
(302, 82, '_resource_url', 'field_5f5c56d79b3c6'),
(303, 82, 'add_button', '1'),
(304, 82, '_add_button', 'field_5f5c57d29b3c7'),
(305, 82, 'button_text', 'Get started with be ifti'),
(306, 82, '_button_text', 'field_5f5c58279b3c8'),
(307, 83, '_edit_lock', '1599887870:1'),
(308, 84, '_edit_lock', '1599888566:1'),
(309, 84, '_edit_last', '1'),
(310, 84, 'resource_image', '27'),
(311, 84, '_resource_image', 'field_5f5c567c9b3c5'),
(312, 84, 'resource_url', 'http://www.webdevifti.com/beifti/resources/#'),
(313, 84, '_resource_url', 'field_5f5c56d79b3c6'),
(314, 84, 'add_button', '1'),
(315, 84, '_add_button', 'field_5f5c57d29b3c7'),
(316, 84, 'button_text', 'Check it out'),
(317, 84, '_button_text', 'field_5f5c58279b3c8'),
(318, 85, '_edit_lock', '1599888528:1'),
(319, 85, '_edit_last', '1'),
(320, 85, 'resource_image', '63'),
(321, 85, '_resource_image', 'field_5f5c567c9b3c5'),
(322, 85, 'resource_url', 'http://www.webdevifti.com/beifti/resources/#'),
(323, 85, '_resource_url', 'field_5f5c56d79b3c6'),
(324, 85, 'add_button', '1'),
(325, 85, '_add_button', 'field_5f5c57d29b3c7'),
(326, 85, 'button_text', 'Visit '),
(327, 85, '_button_text', 'field_5f5c58279b3c8'),
(328, 86, '_edit_lock', '1599888788:1'),
(329, 87, '_menu_item_type', 'post_type'),
(330, 87, '_menu_item_menu_item_parent', '0'),
(331, 87, '_menu_item_object_id', '86'),
(332, 87, '_menu_item_object', 'page'),
(333, 87, '_menu_item_target', ''),
(334, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 87, '_menu_item_xfn', ''),
(336, 87, '_menu_item_url', ''),
(337, 1, '_edit_lock', '1599895754:1'),
(340, 1, '_thumbnail_id', '74'),
(342, 90, '_menu_item_type', 'custom'),
(343, 90, '_menu_item_menu_item_parent', '0'),
(344, 90, '_menu_item_object_id', '90'),
(345, 90, '_menu_item_object', 'custom'),
(346, 90, '_menu_item_target', ''),
(347, 90, '_menu_item_classes', 'a:1:{i:0;s:11:\"signup-link\";}'),
(348, 90, '_menu_item_xfn', ''),
(349, 90, '_menu_item_url', 'http://www.webdevifti.com/beifti/signup/'),
(351, 91, '_menu_item_type', 'post_type'),
(352, 91, '_menu_item_menu_item_parent', '0'),
(353, 91, '_menu_item_object_id', '86'),
(354, 91, '_menu_item_object', 'page'),
(355, 91, '_menu_item_target', ''),
(356, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(357, 91, '_menu_item_xfn', ''),
(358, 91, '_menu_item_url', ''),
(360, 92, '_menu_item_type', 'post_type'),
(361, 92, '_menu_item_menu_item_parent', '0'),
(362, 92, '_menu_item_object_id', '71'),
(363, 92, '_menu_item_object', 'page'),
(364, 92, '_menu_item_target', ''),
(365, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(366, 92, '_menu_item_xfn', ''),
(367, 92, '_menu_item_url', ''),
(369, 93, '_menu_item_type', 'post_type'),
(370, 93, '_menu_item_menu_item_parent', '0'),
(371, 93, '_menu_item_object_id', '10'),
(372, 93, '_menu_item_object', 'page'),
(373, 93, '_menu_item_target', ''),
(374, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(375, 93, '_menu_item_xfn', ''),
(376, 93, '_menu_item_url', ''),
(378, 94, '_edit_lock', '1599897576:1'),
(379, 95, '_menu_item_type', 'post_type'),
(380, 95, '_menu_item_menu_item_parent', '0'),
(381, 95, '_menu_item_object_id', '94'),
(382, 95, '_menu_item_object', 'page'),
(383, 95, '_menu_item_target', ''),
(384, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(385, 95, '_menu_item_xfn', ''),
(386, 95, '_menu_item_url', ''),
(387, 94, '_wp_page_template', 'page-signup.php'),
(388, 97, '_edit_lock', '1599905444:1'),
(389, 98, '_menu_item_type', 'post_type'),
(390, 98, '_menu_item_menu_item_parent', '0'),
(391, 98, '_menu_item_object_id', '97'),
(392, 98, '_menu_item_object', 'page'),
(393, 98, '_menu_item_target', ''),
(394, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(395, 98, '_menu_item_xfn', ''),
(396, 98, '_menu_item_url', ''),
(397, 97, '_wp_page_template', 'page-contact.php'),
(398, 100, '_edit_lock', '1599901512:1'),
(399, 101, '_edit_lock', '1599901699:1'),
(402, 103, '_form', '<div class=\"row\">\n        <div class=\"col-sm-6\">\n            <div class=\"form-group\">\n                <label for=\"contact-name\" class=\"sr-only\">Name</label>\n                [text* your-name class:form-control class:input-lg id:contact-name placeholder \"Your Name\"]\n            </div>\n        </div>\n        <div class=\"col-sm-6\">\n            <div class=\"form-group\">\n                <label for=\"contact-email\" class=\"sr-only\">Email</label>\n                [email* your-email class:form-control class:input-lg id:contact-email placeholder \"Your Email\"]\n            </div>\n        </div>\n        <div class=\"col-sm-12\">\n            <div class=\"form-group\">\n                <label for=\"contact-subject\" class=\"sr-only\">Subject</label>\n                [text* your-subject class:form-control class:input-lg id:contact-subject placeholder \"Your Subject\"]\n            </div>\n        </div>\n        <div class=\"col-sm-6\">\n            <div class=\"form-group\">\n                <label for=\"contact-words\" class=\"sr-only\">Email</label>\n                [textarea* your-message class:form-control class:input-lg id:contact-words x3 placeholder \"Your Message\"]\n            </div>\n        </div>\n    </div>\n    [submit class:btn class:btn-info class:btn-lg \"Get In Touch\"]'),
(403, 103, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:44:\"Be IfTi name of development \"[your-subject]\"\";s:6:\"sender\";s:54:\"Be IfTi name of development <wordpress@webdevifti.com>\";s:9:\"recipient\";s:28:\"codingwithiftekhar@gmail.com\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(404, 103, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:44:\"Be IfTi name of development \"[your-subject]\"\";s:6:\"sender\";s:54:\"Be IfTi name of development <wordpress@webdevifti.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\";s:18:\"additional_headers\";s:38:\"Reply-To: codingwithiftekhar@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(405, 103, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(406, 103, '_additional_settings', ''),
(407, 103, '_locale', 'en_US'),
(421, 108, '_form', '<div class=\"row\">\n        <div class=\"col-sm-6\">\n            <div class=\"form-group\">\n                <label for=\"contact-name\" class=\"sr-only\">Name</label>\n                [text* your-name class:form-control class:input-lg id:contact-name placeholder \"Your Name\"]\n            </div>\n        </div>\n        <div class=\"col-sm-6\">\n            <div class=\"form-group\">\n                <label for=\"contact-email\" class=\"sr-only\">Email</label>\n                [email* your-email class:form-control class:input-lg id:contact-email placeholder \"Your Email\"]\n            </div>\n        </div>\n        <div class=\"col-sm-12\">\n            <div class=\"form-group\">\n                <label for=\"contact-subject\" class=\"sr-only\">Subject</label>\n                [text* your-subject class:form-control class:input-lg id:contact-subject placeholder \"Your Subject\"]\n            </div>\n        </div>\n        <div class=\"col-sm-12\">\n            <div class=\"form-group\">\n                <label for=\"contact-words\" class=\"sr-only\">Email</label>\n                [textarea* your-message class:form-control class:input-lg id:contact-words x3 placeholder \"Your Message\"]\n            </div>\n        </div>\n    </div>\n    [submit class:btn class:btn-info class:btn-lg \"Get In Touch\"]'),
(422, 108, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:44:\"Be IfTi name of development \"[your-subject]\"\";s:6:\"sender\";s:54:\"Be IfTi name of development <wordpress@webdevifti.com>\";s:9:\"recipient\";s:28:\"codingwithiftekhar@gmail.com\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(423, 108, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:44:\"Be IfTi name of development \"[your-subject]\"\";s:6:\"sender\";s:54:\"Be IfTi name of development <wordpress@webdevifti.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\";s:18:\"additional_headers\";s:38:\"Reply-To: codingwithiftekhar@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(424, 108, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(425, 108, '_additional_settings', ''),
(426, 108, '_locale', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `be_1posts`
--

CREATE TABLE `be_1posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1posts`
--

INSERT INTO `be_1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-09 02:21:34', '2020-09-09 02:21:34', '<!-- wp:paragraph -->\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui offic</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-12 06:26:56', '2020-09-12 06:26:56', '', 0, 'http://www.webdevifti.com/beifti/?p=1', 0, 'post', '', 6),
(4, 1, '2020-09-09 02:21:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-09 02:21:58', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?p=4', 0, 'post', '', 0),
(5, 1, '2020-09-09 02:41:55', '2020-09-09 02:41:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-12 04:20:55', '2020-09-12 04:20:55', '', 0, 'http://www.webdevifti.com/beifti/?p=5', 1, 'nav_menu_item', '', 0),
(8, 1, '2020-09-09 03:21:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-09 03:21:35', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-09-09 03:22:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-09 03:22:23', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-09-09 03:23:45', '2020-09-09 03:23:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-12 04:11:30', '2020-09-12 04:11:30', '', 0, 'http://www.webdevifti.com/beifti/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-09-09 03:23:45', '2020-09-09 03:23:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-09 03:23:45', '2020-09-09 03:23:45', '', 10, 'http://www.webdevifti.com/beifti/2020/09/09/10-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-09-09 04:43:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-09 04:43:19', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?post_type=acf-field-group&p=14', 0, 'acf-field-group', '', 0),
(16, 1, '2020-09-10 16:02:13', '2020-09-10 16:02:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Boost your income section', 'boost-your-income-section', 'publish', 'closed', 'closed', '', 'group_5f5a4a4a47663', '', '', '2020-09-10 16:09:35', '2020-09-10 16:09:35', '', 0, 'http://www.webdevifti.com/beifti/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2020-09-10 16:02:13', '2020-09-10 16:02:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:15:\"Upload an image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Income Feature Image', 'income_feature_image', 'publish', 'closed', 'closed', '', 'field_5f5a4b2413ada', '', '', '2020-09-10 16:02:13', '2020-09-10 16:02:13', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2020-09-10 16:02:14', '2020-09-10 16:02:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"Enter the title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Income feature title', 'income_feature_title', 'publish', 'closed', 'closed', '', 'field_5f5a4b8113adb', '', '', '2020-09-10 16:02:14', '2020-09-10 16:02:14', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2020-09-10 16:02:14', '2020-09-10 16:02:14', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:41:\"Enter some description about this section\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Income Section Description', 'income_section_description', 'publish', 'closed', 'closed', '', 'field_5f5a4c0813adc', '', '', '2020-09-10 16:02:14', '2020-09-10 16:02:14', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=19', 2, 'acf-field', '', 0),
(20, 1, '2020-09-10 16:02:14', '2020-09-10 16:02:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Enter Reason title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'reason_1_title', 'publish', 'closed', 'closed', '', 'field_5f5a4c8d13add', '', '', '2020-09-10 16:08:44', '2020-09-10 16:08:44', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&#038;p=20', 4, 'acf-field', '', 0),
(21, 1, '2020-09-10 16:02:14', '2020-09-10 16:02:14', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'reason_1_description', 'publish', 'closed', 'closed', '', 'field_5f5a4cc113ade', '', '', '2020-09-10 16:08:44', '2020-09-10 16:08:44', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&#038;p=21', 5, 'acf-field', '', 0),
(22, 1, '2020-09-10 16:02:14', '2020-09-10 16:02:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Enter Reason title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'reason_2_title', 'publish', 'closed', 'closed', '', 'field_5f5a4ce713adf', '', '', '2020-09-10 16:08:44', '2020-09-10 16:08:44', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&#038;p=22', 7, 'acf-field', '', 0),
(23, 1, '2020-09-10 16:02:14', '2020-09-10 16:02:14', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'reason_2_description', 'publish', 'closed', 'closed', '', 'field_5f5a4d1b13ae0', '', '', '2020-09-10 16:08:44', '2020-09-10 16:08:44', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&#038;p=23', 8, 'acf-field', '', 0),
(24, 1, '2020-09-10 16:08:44', '2020-09-10 16:08:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Reason #1', 'reason_#1', 'publish', 'closed', 'closed', '', 'field_5f5a4ee238e79', '', '', '2020-09-10 16:08:44', '2020-09-10 16:08:44', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=24', 3, 'acf-field', '', 0),
(25, 1, '2020-09-10 16:08:44', '2020-09-10 16:08:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Reason #2', 'reason_#2', 'publish', 'closed', 'closed', '', 'field_5f5a4f3e38e7a', '', '', '2020-09-10 16:08:44', '2020-09-10 16:08:44', '', 16, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=25', 6, 'acf-field', '', 0),
(27, 1, '2020-09-10 16:12:18', '2020-09-10 16:12:18', '', 'Booster', '', 'inherit', 'open', 'closed', '', 'photolab-500004447', '', '', '2020-09-10 16:12:51', '2020-09-10 16:12:51', '', 10, 'http://www.webdevifti.com/beifti/wp-content/uploads/2020/09/Photolab-500004447.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-09-10 16:14:11', '2020-09-10 16:14:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-10 16:14:11', '2020-09-10 16:14:11', '', 10, 'http://www.webdevifti.com/beifti/uncategorized/10-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-09-10 16:33:10', '2020-09-10 16:33:10', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Who Should Take This Course Section', 'who-should-take-this-course-section', 'publish', 'closed', 'closed', '', 'group_5f5a546d9356f', '', '', '2020-09-10 16:33:10', '2020-09-10 16:33:10', '', 0, 'http://www.webdevifti.com/beifti/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2020-09-10 16:33:10', '2020-09-10 16:33:10', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:32:\"Upload an Image for this section\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Section Image', 'section_image', 'publish', 'closed', 'closed', '', 'field_5f5a5485c9cb0', '', '', '2020-09-10 16:33:10', '2020-09-10 16:33:10', '', 29, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 1, '2020-09-10 16:33:10', '2020-09-10 16:33:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Enter the section title\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section Title', 'section_title', 'publish', 'closed', 'closed', '', 'field_5f5a54d4c9cb1', '', '', '2020-09-10 16:33:10', '2020-09-10 16:33:10', '', 29, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2020-09-10 16:33:10', '2020-09-10 16:33:10', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Section Body', 'section_body', 'publish', 'closed', 'closed', '', 'field_5f5a54ffc9cb2', '', '', '2020-09-10 16:33:10', '2020-09-10 16:33:10', '', 29, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 1, '2020-09-10 16:33:52', '2020-09-10 16:33:52', '', 'Who Should Take this course', '', 'inherit', 'open', 'closed', '', 'photolab-698889805', '', '', '2020-09-10 16:34:28', '2020-09-10 16:34:28', '', 10, 'http://www.webdevifti.com/beifti/wp-content/uploads/2020/09/Photolab-698889805.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-09-10 16:35:08', '2020-09-10 16:35:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-10 16:35:08', '2020-09-10 16:35:08', '', 10, 'http://www.webdevifti.com/beifti/uncategorized/10-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-09-10 16:40:23', '2020-09-10 16:40:23', '', 'Who should taje this course', '', 'inherit', 'open', 'closed', '', 'photolab-8850086', '', '', '2020-09-10 16:40:42', '2020-09-10 16:40:42', '', 10, 'http://www.webdevifti.com/beifti/wp-content/uploads/2020/09/Photolab-8850086.jpeg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-09-10 16:40:46', '2020-09-10 16:40:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-10 16:40:46', '2020-09-10 16:40:46', '', 10, 'http://www.webdevifti.com/beifti/uncategorized/10-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-09-10 17:10:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-10 17:10:00', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&p=38', 0, 'course_feature', '', 0),
(39, 1, '2020-09-10 17:17:03', '2020-09-10 17:17:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"course_feature\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Course Feature', 'course-feature', 'publish', 'closed', 'closed', '', 'group_5f5a5e56499e6', '', '', '2020-09-12 03:00:18', '2020-09-12 03:00:18', '', 0, 'http://www.webdevifti.com/beifti/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2020-09-10 17:17:03', '2020-09-10 17:17:03', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:62:\"Choose your icon which you would like to display in front page\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:13:\"fa fa-desktop\";s:13:\"fa fa-desktop\";s:13:\"fa fa-clock-o\";s:13:\"fa fa-clock-o\";s:11:\"fa fa-share\";s:11:\"fa fa-share\";s:14:\"fa fa-envelope\";s:14:\"fa fa-envelope\";s:12:\"fa fa-mobile\";s:12:\"fa fa-mobile\";s:9:\"fa fa-eye\";s:9:\"fa fa-eye\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Course Feature Icon', 'course_feature_icon', 'publish', 'closed', 'closed', '', 'field_5f5a5e613e02d', '', '', '2020-09-12 03:00:18', '2020-09-12 03:00:18', '', 39, 'http://www.webdevifti.com/beifti/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(42, 1, '2020-09-10 17:21:24', '2020-09-10 17:21:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Course Feature Section', 'course-feature-section', 'publish', 'closed', 'closed', '', 'group_5f5a603c52d01', '', '', '2020-09-10 17:21:24', '2020-09-10 17:21:24', '', 0, 'http://www.webdevifti.com/beifti/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2020-09-10 17:21:24', '2020-09-10 17:21:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Feature Image', 'feature_image', 'publish', 'closed', 'closed', '', 'field_5f5a60497852b', '', '', '2020-09-10 17:21:24', '2020-09-10 17:21:24', '', 42, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2020-09-10 17:21:24', '2020-09-10 17:21:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5f5a606a7852c', '', '', '2020-09-10 17:21:24', '2020-09-10 17:21:24', '', 42, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(45, 1, '2020-09-10 17:22:26', '2020-09-10 17:22:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-10 17:22:26', '2020-09-10 17:22:26', '', 10, 'http://www.webdevifti.com/beifti/uncategorized/10-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-09-10 17:44:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-10 17:44:42', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&p=51', 0, 'course_feature', '', 0),
(52, 1, '2020-09-10 17:46:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-10 17:46:33', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&p=52', 0, 'course_feature', '', 0),
(53, 1, '2020-09-12 03:03:29', '2020-09-12 03:03:29', '', 'Life time access to 80+ course', '', 'publish', 'closed', 'closed', '', 'life-time-access-to-80-course', '', '', '2020-09-12 03:03:29', '2020-09-12 03:03:29', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&#038;p=53', 0, 'course_feature', '', 0),
(54, 1, '2020-09-12 03:04:09', '2020-09-12 03:04:09', '', '10+ hours HD video content', '', 'publish', 'closed', 'closed', '', '10-hours-hd-video-content', '', '', '2020-09-12 03:04:09', '2020-09-12 03:04:09', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&#038;p=54', 0, 'course_feature', '', 0),
(55, 1, '2020-09-12 03:04:38', '2020-09-12 03:04:38', '', '30- day money back qurantee', '', 'publish', 'closed', 'closed', '', '30-day-money-back-qurantee', '', '', '2020-09-12 03:04:38', '2020-09-12 03:04:38', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&#038;p=55', 0, 'course_feature', '', 0),
(56, 1, '2020-09-12 03:05:22', '2020-09-12 03:05:22', '', 'Access to a community of like minded student', '', 'publish', 'closed', 'closed', '', 'access-to-a-community-of-like-minded-student', '', '', '2020-09-12 03:05:22', '2020-09-12 03:05:22', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&#038;p=56', 0, 'course_feature', '', 0),
(57, 1, '2020-09-12 03:05:51', '2020-09-12 03:05:51', '', 'Direct access to the instructor', '', 'publish', 'closed', 'closed', '', 'direct-access-to-the-instructor', '', '', '2020-09-12 03:07:28', '2020-09-12 03:07:28', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&#038;p=57', 0, 'course_feature', '', 0),
(58, 1, '2020-09-12 03:06:25', '2020-09-12 03:06:25', '', 'Accessible content for your mobile device', '', 'publish', 'closed', 'closed', '', 'accessible-content-for-your-mobile-device', '', '', '2020-09-12 03:08:01', '2020-09-12 03:08:01', '', 0, 'http://www.webdevifti.com/beifti/?post_type=course_feature&#038;p=58', 0, 'course_feature', '', 0),
(59, 1, '2020-09-12 03:17:59', '2020-09-12 03:17:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Final Project Feature Section', 'final-project-feature-section', 'publish', 'closed', 'closed', '', 'group_5f5c3d74270a1', '', '', '2020-09-12 04:12:11', '2020-09-12 04:12:11', '', 0, 'http://www.webdevifti.com/beifti/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2020-09-12 03:17:59', '2020-09-12 03:17:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:5:\"Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Project Feature Title', 'project_feature_title', 'publish', 'closed', 'closed', '', 'field_5f5c3d84b1791', '', '', '2020-09-12 03:17:59', '2020-09-12 03:17:59', '', 59, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2020-09-12 03:17:59', '2020-09-12 03:17:59', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Project Feature Body', 'project_feature_body', 'publish', 'closed', 'closed', '', 'field_5f5c3db6b1792', '', '', '2020-09-12 03:17:59', '2020-09-12 03:17:59', '', 59, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 1, '2020-09-12 03:23:10', '2020-09-12 03:23:10', '<!-- wp:paragraph -->\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat.</p>\n<!-- /wp:paragraph -->', 'Sexy and Modern Desgin', '', 'publish', 'closed', 'closed', '', 'sexy-and-modern-desgin', '', '', '2020-09-12 03:23:10', '2020-09-12 03:23:10', '', 0, 'http://www.webdevifti.com/beifti/?post_type=project_feature&#038;p=62', 0, 'project_feature', '', 0),
(63, 1, '2020-09-12 03:22:30', '2020-09-12 03:22:30', '', 'Design', '', 'inherit', 'open', 'closed', '', 'photolab-422658603', '', '', '2020-09-12 03:22:59', '2020-09-12 03:22:59', '', 62, 'http://www.webdevifti.com/beifti/wp-content/uploads/2020/09/Photolab-422658603.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-09-12 03:25:26', '2020-09-12 03:25:26', '<!-- wp:paragraph -->\n<p>Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Quality HTML 5 and CSS', '', 'publish', 'closed', 'closed', '', 'quality-html-5-and-css', '', '', '2020-09-12 03:25:26', '2020-09-12 03:25:26', '', 0, 'http://www.webdevifti.com/beifti/?post_type=project_feature&#038;p=64', 0, 'project_feature', '', 0),
(65, 1, '2020-09-12 03:24:51', '2020-09-12 03:24:51', '', 'Html and css', '', 'inherit', 'open', 'closed', '', 'photolab-871646389', '', '', '2020-09-12 03:25:21', '2020-09-12 03:25:21', '', 64, 'http://www.webdevifti.com/beifti/wp-content/uploads/2020/09/Photolab-871646389.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-09-12 03:26:22', '2020-09-12 03:26:22', '<!-- wp:paragraph -->\n<p>reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident</p>\n<!-- /wp:paragraph -->', 'Easy to use CMS', '', 'publish', 'closed', 'closed', '', 'easy-to-use-cms', '', '', '2020-09-12 03:26:22', '2020-09-12 03:26:22', '', 0, 'http://www.webdevifti.com/beifti/?post_type=project_feature&#038;p=66', 0, 'project_feature', '', 0),
(67, 1, '2020-09-12 03:26:09', '2020-09-12 03:26:09', '', 'Cms', '', 'inherit', 'open', 'closed', '', 'photolab-286117149', '', '', '2020-09-12 03:26:19', '2020-09-12 03:26:19', '', 66, 'http://www.webdevifti.com/beifti/wp-content/uploads/2020/09/Photolab-286117149.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-09-12 03:27:19', '2020-09-12 03:27:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-12 03:27:19', '2020-09-12 03:27:19', '', 10, 'http://www.webdevifti.com/beifti/uncategorized/10-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-09-12 03:39:59', '2020-09-12 03:39:59', '<!-- wp:paragraph -->\n<p><em>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em></p>\n<!-- /wp:paragraph -->', 'ea commodoconsequat. Duis aute irure', '', 'publish', 'closed', 'closed', '', 'ea-commodoconsequat-duis-aute-irure', '', '', '2020-09-12 03:39:59', '2020-09-12 03:39:59', '', 0, 'http://www.webdevifti.com/beifti/?post_type=testimonial&#038;p=69', 0, 'testimonial', '', 0),
(70, 1, '2020-09-12 03:40:40', '2020-09-12 03:40:40', '<!-- wp:paragraph -->\n<p><em>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em></p>\n<!-- /wp:paragraph -->', 'ea commodoconsequat. Duis aute irure', '', 'publish', 'closed', 'closed', '', 'ea-commodoconsequat-duis-aute-irure-2', '', '', '2020-09-12 03:40:40', '2020-09-12 03:40:40', '', 0, 'http://www.webdevifti.com/beifti/?post_type=testimonial&#038;p=70', 0, 'testimonial', '', 0),
(71, 1, '2020-09-12 04:23:58', '2020-09-12 04:23:58', '<!-- wp:paragraph -->\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu <strong>fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserun</strong>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu <strong>fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserun</strong></p>\n<!-- /wp:paragraph -->', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2020-09-12 04:55:40', '2020-09-12 04:55:40', '', 0, 'http://www.webdevifti.com/beifti/?page_id=71', 0, 'page', '', 0),
(72, 1, '2020-09-12 04:23:58', '2020-09-12 04:23:58', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2020-09-12 04:23:58', '2020-09-12 04:23:58', '', 0, 'http://www.webdevifti.com/beifti/uncategorized/72/', 2, 'nav_menu_item', '', 0),
(73, 1, '2020-09-12 04:23:58', '2020-09-12 04:23:58', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-09-12 04:23:58', '2020-09-12 04:23:58', '', 71, 'http://www.webdevifti.com/beifti/uncategorized/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-09-12 04:45:30', '2020-09-12 04:45:30', '', 'My Post', '', 'inherit', 'open', 'closed', '', 'my-post', '', '', '2020-09-12 04:45:30', '2020-09-12 04:45:30', '', 71, 'http://www.webdevifti.com/beifti/wp-content/uploads/2020/09/My-Post.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2020-09-12 04:53:04', '2020-09-12 04:53:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Resources', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-09-12 04:53:04', '2020-09-12 04:53:04', '', 71, 'http://www.webdevifti.com/beifti/uncategorized/71-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-09-12 04:55:40', '2020-09-12 04:55:40', '<!-- wp:paragraph -->\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu <strong>fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserun</strong>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu <strong>fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserun</strong></p>\n<!-- /wp:paragraph -->', 'Resources', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-09-12 04:55:40', '2020-09-12 04:55:40', '', 71, 'http://www.webdevifti.com/beifti/uncategorized/71-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-09-12 05:11:42', '2020-09-12 05:11:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"resource\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Page Resources', 'page-resources', 'publish', 'closed', 'closed', '', 'group_5f5c565e6c46e', '', '', '2020-09-12 05:11:43', '2020-09-12 05:11:43', '', 0, 'http://www.webdevifti.com/beifti/?post_type=acf-field-group&#038;p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2020-09-12 05:11:42', '2020-09-12 05:11:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:40:\"Please upload an image for your resource\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Resource Image', 'resource_image', 'publish', 'closed', 'closed', '', 'field_5f5c567c9b3c5', '', '', '2020-09-12 05:11:42', '2020-09-12 05:11:42', '', 77, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2020-09-12 05:11:43', '2020-09-12 05:11:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:18:\"Please enter a url\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:22:\"http://www.example.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Resource url', 'resource_url', 'publish', 'closed', 'closed', '', 'field_5f5c56d79b3c6', '', '', '2020-09-12 05:11:43', '2020-09-12 05:11:43', '', 77, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=79', 1, 'acf-field', '', 0),
(80, 1, '2020-09-12 05:11:43', '2020-09-12 05:11:43', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:30:\"Would you like to add a button\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Add Button?', 'add_button', 'publish', 'closed', 'closed', '', 'field_5f5c57d29b3c7', '', '', '2020-09-12 05:11:43', '2020-09-12 05:11:43', '', 77, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=80', 2, 'acf-field', '', 0),
(81, 1, '2020-09-12 05:11:43', '2020-09-12 05:11:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Enter the text you\'d like appear within the button\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f5c57d29b3c7\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5f5c58279b3c8', '', '', '2020-09-12 05:11:43', '2020-09-12 05:11:43', '', 77, 'http://www.webdevifti.com/beifti/?post_type=acf-field&p=81', 3, 'acf-field', '', 0),
(82, 1, '2020-09-12 05:15:26', '2020-09-12 05:15:26', '<!-- wp:paragraph -->\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. — Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sun ’ t in culpa qui officia deserunquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. — Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sun ’ t in culpa qui officia deserun</p>\n<!-- /wp:paragraph -->', 'Be Ifti', '', 'publish', 'closed', 'closed', '', 'be-ifti', '', '', '2020-09-12 05:15:27', '2020-09-12 05:15:27', '', 0, 'http://www.webdevifti.com/beifti/?post_type=resource&#038;p=82', 0, 'resource', '', 0),
(83, 1, '2020-09-12 05:15:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-12 05:15:35', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?post_type=resource&p=83', 0, 'resource', '', 0),
(84, 1, '2020-09-12 05:29:24', '2020-09-12 05:29:24', '<!-- wp:paragraph -->\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. — Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sun ’ t in culpa qui officia deserunquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. — Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sun ’ t in culpa qui officia deserun</p>\n<!-- /wp:paragraph -->', 'Google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2020-09-12 05:29:25', '2020-09-12 05:29:25', '', 0, 'http://www.webdevifti.com/beifti/?post_type=resource&#038;p=84', 0, 'resource', '', 0),
(85, 1, '2020-09-12 05:30:18', '2020-09-12 05:30:18', '<!-- wp:paragraph -->\n<p>uis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. — Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sun ’ t in culpa qui officia deserunquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. — Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sun ’ t in culpa qui officia</p>\n<!-- /wp:paragraph -->', 'Booster', '', 'publish', 'closed', 'closed', '', 'booster', '', '', '2020-09-12 05:30:19', '2020-09-12 05:30:19', '', 0, 'http://www.webdevifti.com/beifti/?post_type=resource&#038;p=85', 0, 'resource', '', 0),
(86, 1, '2020-09-12 05:35:12', '2020-09-12 05:35:12', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-09-12 05:35:12', '2020-09-12 05:35:12', '', 0, 'http://www.webdevifti.com/beifti/?page_id=86', 0, 'page', '', 0),
(87, 1, '2020-09-12 05:35:12', '2020-09-12 05:35:12', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2020-09-12 05:35:12', '2020-09-12 05:35:12', '', 0, 'http://www.webdevifti.com/beifti/uncategorized/87/', 3, 'nav_menu_item', '', 0),
(88, 1, '2020-09-12 05:35:12', '2020-09-12 05:35:12', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2020-09-12 05:35:12', '2020-09-12 05:35:12', '', 86, 'http://www.webdevifti.com/beifti/uncategorized/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-09-12 06:20:31', '2020-09-12 06:20:31', '<!-- wp:paragraph -->\n<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui offic</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-09-12 06:20:31', '2020-09-12 06:20:31', '', 1, 'http://www.webdevifti.com/beifti/uncategorized/1-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-09-12 07:52:46', '2020-09-12 07:52:46', '', 'Sign Up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2020-09-12 07:58:47', '2020-09-12 07:58:47', '', 0, 'http://www.webdevifti.com/beifti/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2020-09-12 07:52:46', '2020-09-12 07:52:46', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2020-09-12 07:58:47', '2020-09-12 07:58:47', '', 0, 'http://www.webdevifti.com/beifti/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2020-09-12 07:52:46', '2020-09-12 07:52:46', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2020-09-12 07:58:47', '2020-09-12 07:58:47', '', 0, 'http://www.webdevifti.com/beifti/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2020-09-12 07:55:46', '2020-09-12 07:55:46', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2020-09-12 07:58:47', '2020-09-12 07:58:47', '', 0, 'http://www.webdevifti.com/beifti/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2020-09-12 07:59:19', '2020-09-12 07:59:19', '', 'Sign Up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2020-09-12 08:00:37', '2020-09-12 08:00:37', '', 0, 'http://www.webdevifti.com/beifti/?page_id=94', 0, 'page', '', 0),
(95, 1, '2020-09-12 07:59:19', '2020-09-12 07:59:19', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2020-09-12 07:59:19', '2020-09-12 07:59:19', '', 0, 'http://www.webdevifti.com/beifti/uncategorized/95/', 4, 'nav_menu_item', '', 0),
(96, 1, '2020-09-12 07:59:19', '2020-09-12 07:59:19', '', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-09-12 07:59:19', '2020-09-12 07:59:19', '', 94, 'http://www.webdevifti.com/beifti/uncategorized/94-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2020-09-12 08:02:11', '2020-09-12 08:02:11', '<!-- wp:paragraph -->\n<p>Feel Free To Contact With Us.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"108\" title=\"Contact With Me\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-12 10:12:10', '2020-09-12 10:12:10', '', 0, 'http://www.webdevifti.com/beifti/?page_id=97', 0, 'page', '', 0),
(98, 1, '2020-09-12 08:02:12', '2020-09-12 08:02:12', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2020-09-12 08:02:12', '2020-09-12 08:02:12', '', 0, 'http://www.webdevifti.com/beifti/uncategorized/98/', 5, 'nav_menu_item', '', 0),
(99, 1, '2020-09-12 08:02:11', '2020-09-12 08:02:11', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-09-12 08:02:11', '2020-09-12 08:02:11', '', 97, 'http://www.webdevifti.com/beifti/uncategorized/97-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-09-12 08:33:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-12 08:33:56', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?page_id=100', 0, 'page', '', 0),
(101, 1, '2020-09-12 09:10:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-12 09:10:36', '0000-00-00 00:00:00', '', 0, 'http://www.webdevifti.com/beifti/?page_id=101', 0, 'page', '', 0),
(103, 1, '2020-09-12 09:27:37', '2020-09-12 09:27:37', '<div class=\"row\">\r\n        <div class=\"col-sm-6\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-name\" class=\"sr-only\">Name</label>\r\n                [text* your-name class:form-control class:input-lg id:contact-name placeholder \"Your Name\"]\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-6\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-email\" class=\"sr-only\">Email</label>\r\n                [email* your-email class:form-control class:input-lg id:contact-email placeholder \"Your Email\"]\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-12\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-subject\" class=\"sr-only\">Subject</label>\r\n                [text* your-subject class:form-control class:input-lg id:contact-subject placeholder \"Your Subject\"]\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-6\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-words\" class=\"sr-only\">Email</label>\r\n                [textarea* your-message class:form-control class:input-lg id:contact-words x3 placeholder \"Your Message\"]\r\n            </div>\r\n        </div>\r\n    </div>\r\n    [submit class:btn class:btn-info class:btn-lg \"Get In Touch\"]\n1\nBe IfTi name of development \"[your-subject]\"\nBe IfTi name of development <wordpress@webdevifti.com>\ncodingwithiftekhar@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\nReply-To: [your-email]\n\n\n\n\nBe IfTi name of development \"[your-subject]\"\nBe IfTi name of development <wordpress@webdevifti.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\nReply-To: codingwithiftekhar@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-12 09:52:16', '2020-09-12 09:52:16', '', 0, 'http://www.webdevifti.com/beifti/?post_type=wpcf7_contact_form&#038;p=103', 0, 'wpcf7_contact_form', '', 0),
(106, 1, '2020-09-12 09:52:47', '2020-09-12 09:52:47', '<!-- wp:shortcode -->\n[contact-form-7 id=\"103\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-09-12 09:52:47', '2020-09-12 09:52:47', '', 97, 'http://www.webdevifti.com/beifti/uncategorized/97-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-09-12 09:53:21', '2020-09-12 09:53:21', '<!-- wp:shortcode -->\n[contact-form-7 id=\"103\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-09-12 09:53:21', '2020-09-12 09:53:21', '', 97, 'http://www.webdevifti.com/beifti/uncategorized/97-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `be_1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2020-09-12 09:54:20', '2020-09-12 09:54:20', '<div class=\"row\">\r\n        <div class=\"col-sm-6\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-name\" class=\"sr-only\">Name</label>\r\n                [text* your-name class:form-control class:input-lg id:contact-name placeholder \"Your Name\"]\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-6\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-email\" class=\"sr-only\">Email</label>\r\n                [email* your-email class:form-control class:input-lg id:contact-email placeholder \"Your Email\"]\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-12\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-subject\" class=\"sr-only\">Subject</label>\r\n                [text* your-subject class:form-control class:input-lg id:contact-subject placeholder \"Your Subject\"]\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-12\">\r\n            <div class=\"form-group\">\r\n                <label for=\"contact-words\" class=\"sr-only\">Email</label>\r\n                [textarea* your-message class:form-control class:input-lg id:contact-words x3 placeholder \"Your Message\"]\r\n            </div>\r\n        </div>\r\n    </div>\r\n    [submit class:btn class:btn-info class:btn-lg \"Get In Touch\"]\n1\nBe IfTi name of development \"[your-subject]\"\nBe IfTi name of development <wordpress@webdevifti.com>\ncodingwithiftekhar@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\nReply-To: [your-email]\n\n\n\n\nBe IfTi name of development \"[your-subject]\"\nBe IfTi name of development <wordpress@webdevifti.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Be IfTi name of development (http://www.webdevifti.com/beifti)\nReply-To: codingwithiftekhar@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact With Me', '', 'publish', 'closed', 'closed', '', 'contact-with-me', '', '', '2020-09-12 10:13:29', '2020-09-12 10:13:29', '', 0, 'http://www.webdevifti.com/beifti/?post_type=wpcf7_contact_form&#038;p=108', 0, 'wpcf7_contact_form', '', 0),
(109, 1, '2020-09-12 09:55:00', '2020-09-12 09:55:00', '<!-- wp:shortcode -->\n[contact-form-7 id=\"108\" title=\"Contact With Me\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-09-12 09:55:00', '2020-09-12 09:55:00', '', 97, 'http://www.webdevifti.com/beifti/uncategorized/97-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-09-12 10:03:26', '2020-09-12 10:03:26', '<!-- wp:shortcode -->\n[contact-form-7 id=\"103\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-09-12 10:03:26', '2020-09-12 10:03:26', '', 97, 'http://www.webdevifti.com/beifti/uncategorized/97-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-09-12 10:09:43', '2020-09-12 10:09:43', '<!-- wp:shortcode -->\n[contact-form-7 id=\"108\" title=\"Contact With Me\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-09-12 10:09:43', '2020-09-12 10:09:43', '', 97, 'http://www.webdevifti.com/beifti/uncategorized/97-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-09-12 10:12:10', '2020-09-12 10:12:10', '<!-- wp:paragraph -->\n<p>Feel Free To Contact With Us.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"108\" title=\"Contact With Me\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-09-12 10:12:10', '2020-09-12 10:12:10', '', 97, 'http://www.webdevifti.com/beifti/uncategorized/97-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `be_1termmeta`
--

CREATE TABLE `be_1termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `be_1terms`
--

CREATE TABLE `be_1terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1terms`
--

INSERT INTO `be_1terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'lorem', 'lorem', 0),
(4, 'checkpost', 'checkpost', 0),
(5, 'wordpress', 'wordpress', 0),
(6, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `be_1term_relationships`
--

CREATE TABLE `be_1term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1term_relationships`
--

INSERT INTO `be_1term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(5, 2, 0),
(72, 2, 0),
(87, 2, 0),
(90, 6, 0),
(91, 6, 0),
(92, 6, 0),
(93, 6, 0),
(95, 2, 0),
(98, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `be_1term_taxonomy`
--

CREATE TABLE `be_1term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1term_taxonomy`
--

INSERT INTO `be_1term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `be_1usermeta`
--

CREATE TABLE `be_1usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1usermeta`
--

INSERT INTO `be_1usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'beifti'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'be_1capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'be_1user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"70762b4d0135c5a8851f57315c5b7fd534ae8661a7c164cb0815f804ac16472f\";a:4:{s:10:\"expiration\";i:1600827716;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1599618116;}}'),
(17, 1, 'be_1dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'enable_custom_fields', '1'),
(21, 1, 'closedpostboxes_page', 'a:4:{i:0;s:23:\"acf-group_5f5a603c52d01\";i:1;s:23:\"acf-group_5f5c3d74270a1\";i:2;s:23:\"acf-group_5f5a4a4a47663\";i:3;s:23:\"acf-group_5f5a546d9356f\";}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(24, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(25, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:62:\"dashboard_site_health,dashboard_quick_press,dashboard_activity\";s:4:\"side\";s:37:\"dashboard_primary,dashboard_right_now\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(26, 1, 'be_1user-settings', 'mfold=o&libraryContent=browse'),
(27, 1, 'be_1user-settings-time', '1599754449'),
(28, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:47:\"acf-group_5f5a4a4a47663,acf-group_5f5a546d9356f\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'nav_menu_recently_edited', '6');

-- --------------------------------------------------------

--
-- Table structure for table `be_1users`
--

CREATE TABLE `be_1users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `be_1users`
--

INSERT INTO `be_1users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'beifti', '$P$BWc9AClB5YDKX4yXG5lkRaBAICjniD1', 'beifti', 'codingwithiftekhar@gmail.com', 'http://www.webdevifti.com/beifti', '2020-09-09 02:21:33', '', 0, 'beifti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `be_1commentmeta`
--
ALTER TABLE `be_1commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `be_1comments`
--
ALTER TABLE `be_1comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `be_1links`
--
ALTER TABLE `be_1links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `be_1options`
--
ALTER TABLE `be_1options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `be_1postmeta`
--
ALTER TABLE `be_1postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `be_1posts`
--
ALTER TABLE `be_1posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `be_1termmeta`
--
ALTER TABLE `be_1termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `be_1terms`
--
ALTER TABLE `be_1terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `be_1term_relationships`
--
ALTER TABLE `be_1term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `be_1term_taxonomy`
--
ALTER TABLE `be_1term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `be_1usermeta`
--
ALTER TABLE `be_1usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `be_1users`
--
ALTER TABLE `be_1users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `be_1commentmeta`
--
ALTER TABLE `be_1commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `be_1comments`
--
ALTER TABLE `be_1comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `be_1links`
--
ALTER TABLE `be_1links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `be_1options`
--
ALTER TABLE `be_1options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `be_1postmeta`
--
ALTER TABLE `be_1postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `be_1posts`
--
ALTER TABLE `be_1posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `be_1termmeta`
--
ALTER TABLE `be_1termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `be_1terms`
--
ALTER TABLE `be_1terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `be_1term_taxonomy`
--
ALTER TABLE `be_1term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `be_1usermeta`
--
ALTER TABLE `be_1usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `be_1users`
--
ALTER TABLE `be_1users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
