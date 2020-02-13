-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 07 fév. 2020 à 06:51
-- Version du serveur :  10.3.18-MariaDB-0+deb10u1
-- Version de PHP :  7.3.11-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-07 07:16:06', '2020-02-07 06:16:06', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress', 'yes'),
(2, 'home', 'http://127.0.0.1/wordpress', 'yes'),
(3, 'blogname', 'ALCHEMIST Services ', 'yes'),
(4, 'blogdescription', 'Auto_Farm', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'd@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'screenr', 'yes'),
(41, 'stylesheet', 'screenr', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:17:\"Voila alchemistoo\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '9', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '32', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1596608166', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:6:\"text-2\";i:1;s:13:\"media_video-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1581059768;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581099369;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581142568;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581142605;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(111, 'nonce_key', '1)ega{g?hvRw1;($FpoIQiG@PYbgg/wtah`5aH72XT|w/ZF?C!Q+UX K%)^5s=CR', 'no'),
(112, 'nonce_salt', 'yJc*s,M^|K3RG{|M[v3AC(wmN7xl5[fb;1F#s-CN(<w.Z=-l0@d` `G^Ew?pRVGr', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'auth_key', 'Q&~[$.n&*C}YmY+Yz=f.L.CH}J}jo995yP=3$<isK$`f+ZzW|WE8Z7mhC`cB`)jY', 'no'),
(122, 'auth_salt', 'mi.x8038Q?w{OO|v,?wSMT+;T1Ev[}nal`T{Sj9/=:S~U`w/&38^yTnsZ;.MT^|H', 'no'),
(123, 'logged_in_key', '2nP1.meVQ#A<w&;:xg=-_7TqW<S6I-0$#_m*^_fGQ` =$pqk}=r4A9s{4;vV5.J;', 'no'),
(124, 'logged_in_salt', 'd,@ tZIz(F5#U+5vA_eZiv H<{Jim<rv}MHXwrfd[N@ pS|W3_z_Ne(Kh&/FVSC5', 'no'),
(125, '_site_transient_timeout_theme_roots', '1581058337', 'no'),
(126, '_site_transient_theme_roots', 'a:8:{s:7:\"busimax\";s:7:\"/themes\";s:10:\"businessup\";s:7:\"/themes\";s:15:\"hello-elementor\";s:7:\"/themes\";s:4:\"kawi\";s:7:\"/themes\";s:7:\"screenr\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(128, '_site_transient_timeout_browser_5b1e2e81368db6eee4a822e39b8763ab', '1581660971', 'no'),
(129, '_site_transient_browser_5b1e2e81368db6eee4a822e39b8763ab', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_bf85a432659c7385f4090d3b67e77210', '1581660971', 'no'),
(131, '_site_transient_php_check_bf85a432659c7385f4090d3b67e77210', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(132, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1581099372', 'no'),
(133, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li>Une erreur est survenue, le flux est probablement indisponible. Veuillez réessayer plus tard.</li></ul></div><div class=\"rss-widget\"><ul><li>Une erreur est survenue, le flux est probablement indisponible. Veuillez réessayer plus tard.</li></ul></div>', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(136, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1581099372', 'no'),
(137, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:2:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:17:\"WordCamp Chiclana\";s:3:\"url\";s:34:\"https://2020.chiclana.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-02-14 00:00:00\";s:8:\"end_date\";s:19:\"2020-02-16 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:23:\"Chiclana de la frontera\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:36.426949;s:9:\"longitude\";d:-6.1538556;}}i:1;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Málaga\";s:3:\"url\";s:32:\"https://2020.malaga.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-03-07 00:00:00\";s:8:\"end_date\";s:19:\"2020-03-08 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:7:\"Málaga\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:36.7151364;s:9:\"longitude\";d:-4.477648;}}}}', 'no'),
(143, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581056213;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(150, 'widget_businessup_slider-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'widget_businessup_service_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'theme_mods_busimax', 'a:13:{s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:29;s:16:\"background_color\";s:6:\"303030\";s:12:\"header_image\";s:104:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:36;s:3:\"url\";s:104:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\";s:13:\"thumbnail_url\";s:104:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\";s:6:\"height\";i:600;s:5:\"width\";i:1600;}s:16:\"background_image\";s:96:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\";s:17:\"background_preset\";s:4:\"fill\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581056471;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(153, 'current_theme', 'Screenr', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'theme_switched_via_customizer', '', 'yes'),
(156, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, 'customize_stashed_theme_mods', 'a:2:{s:12:\"twentytwenty\";a:3:{s:27:\"nav_menu_locations[primary]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-07 06:16:13\";}s:28:\"nav_menu_locations[expanded]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-07 06:16:13\";}s:26:\"nav_menu_locations[social]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-9;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-07 06:16:13\";}}s:4:\"kawi\";a:3:{s:16:\"background_image\";a:4:{s:5:\"value\";s:96:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\";s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-07 06:22:20\";}s:21:\"background_position_x\";a:4:{s:5:\"value\";s:6:\"center\";s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-07 06:22:20\";}s:21:\"background_position_y\";a:4:{s:5:\"value\";s:6:\"center\";s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-02-07 06:22:20\";}}}', 'no'),
(160, 'theme_mods_kawi', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_mods_hello-elementor', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581056584;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(169, 'theme_mods_screenr', 'a:28:{s:18:\"custom_css_post_id\";i:-1;s:22:\"screenr_hide_sitetitle\";i:0;s:11:\"retina_logo\";s:66:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download.png\";s:12:\"header_image\";s:106:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:50;s:3:\"url\";s:106:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg\";s:13:\"thumbnail_url\";s:106:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg\";s:6:\"height\";i:800;s:5:\"width\";i:1600;}s:20:\"page_header_bg_color\";s:6:\"000000\";s:22:\"page_header_bg_overlay\";s:20:\"rgba(232,37,37,0.03)\";s:16:\"background_image\";s:67:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/images-1.jpeg\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";s:15:\"background_size\";s:4:\"auto\";s:17:\"background_preset\";s:7:\"default\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_attachment\";s:6:\"scroll\";s:17:\"page_header_pdtop\";s:2:\"40\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:11:\"custom_logo\";i:55;s:12:\"slider_items\";a:1:{i:0;a:3:{s:16:\"content_layout_1\";s:266:\"<h1><strong>Votre entreprise, votre site</strong></h1>\r\n\r\nScreenr est une thème WordPress polyvalent plein écran\r\n\r\n<a class=\"btn btn-lg btn-theme-primary\" href=\"#features\">Commence</a> <a class=\"btn btn-lg btn-secondary-outline\" href=\"#contact\">Nous contacter</a>\";s:5:\"media\";a:2:{s:3:\"url\";s:74:\"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download-copy-1.jpeg\";s:2:\"id\";i:46;}s:8:\"position\";s:6:\"center\";}}s:20:\"slider_overlay_color\";s:21:\"rgba(191,191,191,0.3)\";s:13:\"header_layout\";s:11:\"transparent\";s:17:\"header_t_bg_color\";s:18:\"rgba(43,43,43,0.8)\";s:12:\"menu_t_color\";s:6:\"1824ad\";s:15:\"page_blog_title\";s:9:\"ALCHEMIST\";s:22:\"disable_featured_image\";i:1;s:15:\"layout_settings\";s:5:\"right\";s:18:\"menu_t_hover_color\";s:6:\"84711e\";s:25:\"menu_t_hover_border_color\";s:6:\"6d1156\";s:13:\"footer_layout\";s:1:\"0\";}', 'yes'),
(172, 'secure_auth_key', '@J+)[p~bE5WQyXC)K,@l^+Qj&N&N83<+Pfr`xb5A_ArlR4W/_WG|*+LS~SLQJ),o', 'no'),
(173, 'secure_auth_salt', 'Rv-?~y}U|_7kKJ;Y(TF>Us6]74xRjQ2`%N.Ypg;3pteCTxAq2ns$TG}l2%L,0b;d', 'no'),
(174, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581056722;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(175, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581056722;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(176, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581056723;s:7:\"checked\";a:8:{s:7:\"busimax\";s:5:\"1.2.8\";s:10:\"businessup\";s:5:\"2.1.8\";s:15:\"hello-elementor\";s:5:\"2.2.2\";s:4:\"kawi\";s:5:\"1.1.0\";s:7:\"screenr\";s:5:\"1.2.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(189, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/02/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/02/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(7, 6, '_thumbnail_id', '5'),
(9, 6, '_customize_changeset_uuid', 'c8123127-876a-4dee-88e2-6dfa2a3e43c7'),
(11, 7, '_customize_changeset_uuid', 'c8123127-876a-4dee-88e2-6dfa2a3e43c7'),
(13, 8, '_customize_changeset_uuid', 'c8123127-876a-4dee-88e2-6dfa2a3e43c7'),
(15, 9, '_customize_changeset_uuid', 'c8123127-876a-4dee-88e2-6dfa2a3e43c7'),
(16, 10, '_edit_lock', '1581056205:1'),
(17, 15, '_menu_item_type', 'custom'),
(18, 15, '_menu_item_menu_item_parent', '0'),
(19, 15, '_menu_item_object_id', '15'),
(20, 15, '_menu_item_object', 'custom'),
(21, 15, '_menu_item_target', ''),
(22, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 15, '_menu_item_xfn', ''),
(24, 15, '_menu_item_url', 'http://127.0.0.1/wordpress/'),
(25, 16, '_menu_item_type', 'post_type'),
(26, 16, '_menu_item_menu_item_parent', '0'),
(27, 16, '_menu_item_object_id', '7'),
(28, 16, '_menu_item_object', 'page'),
(29, 16, '_menu_item_target', ''),
(30, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 16, '_menu_item_xfn', ''),
(32, 16, '_menu_item_url', ''),
(33, 17, '_menu_item_type', 'post_type'),
(34, 17, '_menu_item_menu_item_parent', '0'),
(35, 17, '_menu_item_object_id', '9'),
(36, 17, '_menu_item_object', 'page'),
(37, 17, '_menu_item_target', ''),
(38, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 17, '_menu_item_xfn', ''),
(40, 17, '_menu_item_url', ''),
(41, 18, '_menu_item_type', 'post_type'),
(42, 18, '_menu_item_menu_item_parent', '0'),
(43, 18, '_menu_item_object_id', '8'),
(44, 18, '_menu_item_object', 'page'),
(45, 18, '_menu_item_target', ''),
(46, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 18, '_menu_item_xfn', ''),
(48, 18, '_menu_item_url', ''),
(81, 23, '_menu_item_type', 'custom'),
(82, 23, '_menu_item_menu_item_parent', '0'),
(83, 23, '_menu_item_object_id', '23'),
(84, 23, '_menu_item_object', 'custom'),
(85, 23, '_menu_item_target', ''),
(86, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 23, '_menu_item_xfn', ''),
(88, 23, '_menu_item_url', 'https://www.yelp.com'),
(89, 24, '_menu_item_type', 'custom'),
(90, 24, '_menu_item_menu_item_parent', '0'),
(91, 24, '_menu_item_object_id', '24'),
(92, 24, '_menu_item_object', 'custom'),
(93, 24, '_menu_item_target', ''),
(94, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 24, '_menu_item_xfn', ''),
(96, 24, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(97, 25, '_menu_item_type', 'custom'),
(98, 25, '_menu_item_menu_item_parent', '0'),
(99, 25, '_menu_item_object_id', '25'),
(100, 25, '_menu_item_object', 'custom'),
(101, 25, '_menu_item_target', ''),
(102, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 25, '_menu_item_xfn', ''),
(104, 25, '_menu_item_url', 'https://twitter.com/wordpress'),
(105, 26, '_menu_item_type', 'custom'),
(106, 26, '_menu_item_menu_item_parent', '0'),
(107, 26, '_menu_item_object_id', '26'),
(108, 26, '_menu_item_object', 'custom'),
(109, 26, '_menu_item_target', ''),
(110, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 26, '_menu_item_xfn', ''),
(112, 26, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(113, 27, '_menu_item_type', 'custom'),
(114, 27, '_menu_item_menu_item_parent', '0'),
(115, 27, '_menu_item_object_id', '27'),
(116, 27, '_menu_item_object', 'custom'),
(117, 27, '_menu_item_target', ''),
(118, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 27, '_menu_item_xfn', ''),
(120, 27, '_menu_item_url', 'mailto:wordpress@example.com'),
(121, 10, '_wp_trash_meta_status', 'publish'),
(122, 10, '_wp_trash_meta_time', '1581056213'),
(123, 28, '_wp_attached_file', '2020/02/download.png'),
(124, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/02/download.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 29, '_wp_attached_file', '2020/02/cropped-download.png'),
(126, 29, '_wp_attachment_context', 'custom-logo'),
(127, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:28:\"2020/02/cropped-download.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 30, '_edit_lock', '1581056283:1'),
(129, 31, '_wp_attached_file', '2020/02/download.jpeg'),
(130, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:21:\"2020/02/download.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"download-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 32, '_wp_attached_file', '2020/02/cropped-download.jpeg'),
(132, 32, '_wp_attachment_context', 'site-icon'),
(133, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2020/02/cropped-download.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-download-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-download-270x270.jpeg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-download-192x192.jpeg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-download-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-download-32x32.jpeg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 30, '_wp_trash_meta_status', 'publish'),
(135, 30, '_wp_trash_meta_time', '1581056301'),
(136, 33, '_wp_trash_meta_status', 'publish'),
(137, 33, '_wp_trash_meta_time', '1581056311'),
(138, 34, '_wp_trash_meta_status', 'publish'),
(139, 34, '_wp_trash_meta_time', '1581056317'),
(140, 35, '_wp_attached_file', '2020/02/WhatsApp-Image-2020-01-03-at-21.55.10.jpeg'),
(141, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:50:\"2020/02/WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2020-01-03-at-21.55.10-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2020-01-03-at-21.55.10-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2020-01-03-at-21.55.10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2020-01-03-at-21.55.10-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 36, '_wp_attached_file', '2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg'),
(143, 36, '_wp_attachment_context', 'custom-header'),
(144, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:600;s:4:\"file\";s:58:\"2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-300x113.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-1024x384.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-768x288.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:59:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-1536x576.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:35;}'),
(145, 36, '_wp_attachment_custom_header_last_used_busimax', '1581056360'),
(146, 36, '_wp_attachment_is_custom_header', 'busimax'),
(147, 37, '_edit_lock', '1581056343:1'),
(148, 35, '_wp_attachment_is_custom_background', 'screenr'),
(149, 37, '_wp_trash_meta_status', 'publish'),
(150, 37, '_wp_trash_meta_time', '1581056360'),
(151, 38, '_wp_trash_meta_status', 'publish'),
(152, 38, '_wp_trash_meta_time', '1581056370'),
(153, 39, '_edit_lock', '1581056429:1'),
(154, 39, '_customize_restore_dismissed', '1'),
(155, 40, '_wp_trash_meta_status', 'publish'),
(156, 40, '_wp_trash_meta_time', '1581056471'),
(157, 41, '_edit_lock', '1581056540:1'),
(158, 41, '_wp_trash_meta_status', 'publish'),
(159, 41, '_wp_trash_meta_time', '1581056584'),
(160, 42, '_wp_attached_file', '2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3.jpeg'),
(161, 42, '_wp_attachment_context', 'custom-header'),
(162, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:800;s:4:\"file\";s:60:\"2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3.jpeg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-300x150.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:61:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-1024x512.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-768x384.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:61:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-1536x768.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"screenr-blog-grid-small\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-350x200.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-grid\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-540x300.jpeg\";s:5:\"width\";i:540;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-list\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-790x400.jpeg\";s:5:\"width\";i:790;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"screenr-service-small\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3-538x280.jpeg\";s:5:\"width\";i:538;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:35;}'),
(165, 43, '_edit_lock', '1581056786:1'),
(166, 43, '_wp_trash_meta_status', 'publish'),
(167, 43, '_wp_trash_meta_time', '1581056796'),
(168, 44, '_wp_attached_file', '2020/02/download-2.jpeg'),
(169, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:23:\"2020/02/download-2.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"download-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 45, '_wp_attached_file', '2020/02/download-copy.jpeg'),
(171, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:317;s:6:\"height\";i:159;s:4:\"file\";s:26:\"2020/02/download-copy.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"download-copy-300x150.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"download-copy-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 46, '_wp_attached_file', '2020/02/download-copy-1.jpeg'),
(173, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:317;s:6:\"height\";i:159;s:4:\"file\";s:28:\"2020/02/download-copy-1.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"download-copy-1-300x150.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"download-copy-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 47, '_edit_lock', '1581057053:1'),
(175, 48, '_wp_attached_file', '2020/02/download-1.jpeg'),
(176, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:168;s:6:\"height\";i:299;s:4:\"file\";s:23:\"2020/02/download-1.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"download-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"screenr-blog-grid-small\";a:4:{s:4:\"file\";s:23:\"download-1-168x200.jpeg\";s:5:\"width\";i:168;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"screenr-service-small\";a:4:{s:4:\"file\";s:23:\"download-1-168x280.jpeg\";s:5:\"width\";i:168;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 48, '_wp_attachment_is_custom_background', 'screenr'),
(178, 49, '_wp_attached_file', '2020/02/images.jpeg'),
(179, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:177;s:4:\"file\";s:19:\"2020/02/images.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"images-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 49, '_wp_attachment_is_custom_background', 'screenr'),
(181, 50, '_wp_attached_file', '2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg'),
(182, 50, '_wp_attachment_context', 'custom-header'),
(183, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:800;s:4:\"file\";s:60:\"2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-300x150.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:61:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-1024x512.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-768x384.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:61:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-1536x768.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"screenr-blog-grid-small\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-350x200.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-grid\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-540x300.jpeg\";s:5:\"width\";i:540;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-list\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-790x400.jpeg\";s:5:\"width\";i:790;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"screenr-service-small\";a:4:{s:4:\"file\";s:60:\"cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4-538x280.jpeg\";s:5:\"width\";i:538;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:35;}'),
(184, 50, '_wp_attachment_custom_header_last_used_screenr', '1581057073'),
(185, 50, '_wp_attachment_is_custom_header', 'screenr'),
(186, 47, '_wp_trash_meta_status', 'publish'),
(187, 47, '_wp_trash_meta_time', '1581057073'),
(188, 51, '_edit_lock', '1581057113:1'),
(189, 52, '_wp_attached_file', '2020/02/images-1.jpeg'),
(190, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:168;s:4:\"file\";s:21:\"2020/02/images-1.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"images-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 52, '_wp_attachment_is_custom_background', 'screenr'),
(192, 51, '_wp_trash_meta_status', 'publish'),
(193, 51, '_wp_trash_meta_time', '1581057125'),
(194, 53, '_edit_lock', '1581057614:1'),
(195, 53, '_customize_restore_dismissed', '1'),
(196, 54, '_wp_trash_meta_status', 'publish'),
(197, 54, '_wp_trash_meta_time', '1581057668'),
(198, 55, '_wp_attached_file', '2020/02/cropped-download-1.png'),
(199, 55, '_wp_attachment_context', 'custom-logo'),
(200, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:57;s:4:\"file\";s:30:\"2020/02/cropped-download-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download-1-150x57.png\";s:5:\"width\";i:150;s:6:\"height\";i:57;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 56, '_edit_lock', '1581057711:1'),
(202, 56, '_wp_trash_meta_status', 'publish'),
(203, 56, '_wp_trash_meta_time', '1581057726'),
(204, 57, '_wp_trash_meta_status', 'publish'),
(205, 57, '_wp_trash_meta_time', '1581057758'),
(206, 58, '_edit_lock', '1581057860:1'),
(207, 58, '_wp_trash_meta_status', 'publish'),
(208, 58, '_wp_trash_meta_time', '1581057875'),
(209, 1, '_edit_lock', '1581057744:1'),
(210, 59, '_wp_trash_meta_status', 'publish'),
(211, 59, '_wp_trash_meta_time', '1581057980'),
(212, 60, '_wp_trash_meta_status', 'publish'),
(213, 60, '_wp_trash_meta_time', '1581057992'),
(214, 61, '_edit_lock', '1581058224:1'),
(215, 61, '_wp_trash_meta_status', 'publish'),
(216, 61, '_wp_trash_meta_time', '1581058228');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-07 07:16:06', '2020-02-07 06:16:06', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-02-07 07:16:06', '2020-02-07 06:16:06', '', 0, 'http://127.0.0.1/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-02-07 07:16:06', '2020-02-07 06:16:06', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://127.0.0.1/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2020-02-07 07:16:06', '2020-02-07 06:16:06', '', 0, 'http://127.0.0.1/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-07 07:16:06', '2020-02-07 06:16:06', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://127.0.0.1/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-02-07 07:16:06', '2020-02-07 06:16:06', '', 0, 'http://127.0.0.1/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-02-07 07:16:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-07 07:16:11', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Le nouveau E-Mucem ouvre ses portes', '', 'inherit', 'open', 'closed', '', 'le-nouveau-e-mucem-ouvre-ses-portes', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">La première destination pour l’art moderne dans le nord de la Suède. Ouvert de 10h à 18h tous les jours pendant les mois d’été.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Travaux et jours</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Théâtre des opérations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>La vie que je mérite</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>De Signac à Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">« Les cyborgs, comme l’a fait remarquer la philosophe Donna Haraway, ne sont pas respectueux. Ils ne se souviennent pas du cosmos. »</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">Avec ses sept étages d’architecture remarquable, le E-Mucem présente des expositions d’art contemporain international, parfois accompagnées de rétrospectives sur l’histoire de l’art. Les questions existentielles, politiques et philosophiques font partie intégrante de notre programme. En tant que visiteur, vous êtes invité à des visites guidées, des conférences, des projections de films et d’autres évènements avec entrée gratuite.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Les expositions sont produites par le E-Mucem en collaboration avec des artistes et des musées du monde entier et attirent souvent l’attention internationale. Le E-Mucem a reçu une mention spéciale du Musée européen de l’année et a été l’un des meilleurs candidats pour le Prix du Musée méditerranéen de l’année ainsi que pour le Prix du Musée du Conseil de l’Europe.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Devenez membre et obtenez des offres exclusives !</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Les adhérent·es ont accès à des expositions et des ventes exclusives. Notre abonnement coûtent $99.99 et est facturé annuellement.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Rejoignez le club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'Le nouveau E-Mucem ouvre ses portes', '', 'publish', 'closed', 'closed', '', 'le-nouveau-e-mucem-ouvre-ses-portes-2', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'publish', 'closed', 'closed', '', 'a-propos-de', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"36b2ac28680ed25a1d9ca68fa12594f6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b91b4e966abcfb15becd90a06f0e41c9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://127.0.0.1/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://127.0.0.1/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:53\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:13\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\"\n            ],\n            \"sidebar-2\": [\n                \"text-3\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:16:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c8123127-876a-4dee-88e2-6dfa2a3e43c7', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">La première destination pour l’art moderne dans le nord de la Suède. Ouvert de 10h à 18h tous les jours pendant les mois d’été.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Travaux et jours</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Théâtre des opérations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>La vie que je mérite</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er août au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>De Signac à Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1er octobre au 1er décembre</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Lire la suite</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">« Les cyborgs, comme l’a fait remarquer la philosophe Donna Haraway, ne sont pas respectueux. Ils ne se souviennent pas du cosmos. »</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">Avec ses sept étages d’architecture remarquable, le E-Mucem présente des expositions d’art contemporain international, parfois accompagnées de rétrospectives sur l’histoire de l’art. Les questions existentielles, politiques et philosophiques font partie intégrante de notre programme. En tant que visiteur, vous êtes invité à des visites guidées, des conférences, des projections de films et d’autres évènements avec entrée gratuite.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Les expositions sont produites par le E-Mucem en collaboration avec des artistes et des musées du monde entier et attirent souvent l’attention internationale. Le E-Mucem a reçu une mention spéciale du Musée européen de l’année et a été l’un des meilleurs candidats pour le Prix du Musée méditerranéen de l’année ainsi que pour le Prix du Musée du Conseil de l’Europe.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Devenez membre et obtenez des offres exclusives !</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Les adhérent·es ont accès à des expositions et des ventes exclusives. Notre abonnement coûtent $99.99 et est facturé annuellement.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Rejoignez le club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://127.0.0.1/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'Le nouveau E-Mucem ouvre ses portes', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 6, 'http://127.0.0.1/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 7, 'http://127.0.0.1/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 8, 'http://127.0.0.1/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 9, 'http://127.0.0.1/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=15', 0, 'nav_menu_item', '', 0),
(16, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', ' ', '', 'Alchemist', 'publish', 'closed', 'closed', '', '16', '', '', '2020-02-07 07:46:20', '2020-02-07 06:46:20', '', 0, 'http://127.0.0.1/wordpress/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=18', 3, 'nav_menu_item', '', 0),
(23, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=23', 0, 'nav_menu_item', '', 0),
(24, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2020-02-07 07:16:53', '2020-02-07 06:16:53', '', 0, 'http://127.0.0.1/wordpress/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2020-02-07 07:17:55', '2020-02-07 06:17:55', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2020-02-07 07:17:55', '2020-02-07 06:17:55', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-02-07 07:17:58', '2020-02-07 06:17:58', 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-download.png', 'cropped-download.png', '', 'inherit', 'open', 'closed', '', 'cropped-download-png', '', '', '2020-02-07 07:17:58', '2020-02-07 06:17:58', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-download.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2020-02-07 07:18:21', '2020-02-07 06:18:21', '{\n    \"blogname\": {\n        \"value\": \"ALCHEMIST Services \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:18:03\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Auto_Farm\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:18:03\"\n    },\n    \"busimax::custom_logo\": {\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:18:03\"\n    },\n    \"site_icon\": {\n        \"value\": 32,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:18:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a75bce08-7d22-4fd6-a926-def736639b86', '', '', '2020-02-07 07:18:21', '2020-02-07 06:18:21', '', 0, 'http://127.0.0.1/wordpress/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2020-02-07 07:18:14', '2020-02-07 06:18:14', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2020-02-07 07:18:14', '2020-02-07 06:18:14', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download.jpeg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-02-07 07:18:17', '2020-02-07 06:18:17', 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-download.jpeg', 'cropped-download.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-download-jpeg', '', '', '2020-02-07 07:18:17', '2020-02-07 06:18:17', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-download.jpeg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-02-07 07:18:31', '2020-02-07 06:18:31', '{\n    \"busimax::background_color\": {\n        \"value\": \"#c4c4c4\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:18:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3e398812-ed9c-493e-9ef9-67c33447a16a', '', '', '2020-02-07 07:18:31', '2020-02-07 06:18:31', '', 0, 'http://127.0.0.1/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2020-02-07 07:18:37', '2020-02-07 06:18:37', '{\n    \"busimax::background_color\": {\n        \"value\": \"#303030\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:18:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f67e4208-f18c-46ed-bb79-c39df455708f', '', '', '2020-02-07 07:18:37', '2020-02-07 06:18:37', '', 0, 'http://127.0.0.1/wordpress/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2020-02-07 07:18:45', '2020-02-07 06:18:45', '', 'WhatsApp Image 2020-01-03 at 21.55.10', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2020-01-03-at-21-55-10', '', '', '2020-02-07 07:18:45', '2020-02-07 06:18:45', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/WhatsApp-Image-2020-01-03-at-21.55.10.jpeg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(36, 1, '2020-02-07 07:18:51', '2020-02-07 06:18:51', '', 'cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-whatsapp-image-2020-01-03-at-21-55-10-jpeg', '', '', '2020-02-07 07:18:51', '2020-02-07 06:18:51', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-02-07 07:19:20', '2020-02-07 06:19:20', '{\n    \"busimax::header_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:20\"\n    },\n    \"busimax::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\",\n            \"thumbnail_url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\",\n            \"timestamp\": 1581056331984,\n            \"attachment_id\": 36,\n            \"width\": 1600,\n            \"height\": 600\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:20\"\n    },\n    \"busimax::background_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '31150d3c-0f2e-46cf-9e10-e92325abab75', '', '', '2020-02-07 07:19:20', '2020-02-07 06:19:20', '', 0, 'http://127.0.0.1/wordpress/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2020-02-07 07:19:30', '2020-02-07 06:19:30', '{\n    \"busimax::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:30\"\n    },\n    \"busimax::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:30\"\n    },\n    \"busimax::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:30\"\n    },\n    \"busimax::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:30\"\n    },\n    \"busimax::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:30\"\n    },\n    \"busimax::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:19:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '781efd78-cd11-472f-9c9b-ebcbf594fd30', '', '', '2020-02-07 07:19:30', '2020-02-07 06:19:30', '', 0, 'http://127.0.0.1/wordpress/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2020-02-07 07:20:03', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjE1OiJzYWx1dA0KDQombmJzcDsiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"22b6828f4fa77c0ef34ff0c3ea9424fa\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:20:03\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '83cdb96f-f7cb-4d86-bf0a-6fa379aaa3b6', '', '', '2020-02-07 07:20:03', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2020-02-07 07:21:11', '2020-02-07 06:21:11', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\"\n            ],\n            \"sidebar-2\": [\n                \"text-3\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:21:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14519682-4f61-4fe0-a25f-fa937871c10b', '', '', '2020-02-07 07:21:11', '2020-02-07 06:21:11', '', 0, 'http://127.0.0.1/wordpress/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2020-02-07 07:23:04', '2020-02-07 06:23:04', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\"\n            ],\n            \"sidebar-2\": [\n                \"text-3\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:22:20\"\n    },\n    \"kawi::background_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/WhatsApp-Image-2020-01-03-at-21.55.10.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:22:20\"\n    },\n    \"kawi::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:22:20\"\n    },\n    \"kawi::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:22:20\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:23:04\"\n    },\n    \"page_on_front\": {\n        \"value\": \"9\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:23:04\"\n    },\n    \"screenr::screenr_hide_sitetitle\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:23:04\"\n    },\n    \"screenr::retina_logo\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:23:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '56fb4af7-27a4-4c96-9cbe-5572fee1bd60', '', '', '2020-02-07 07:23:04', '2020-02-07 06:23:04', '', 0, 'http://127.0.0.1/wordpress/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2020-02-07 07:26:23', '2020-02-07 06:26:23', '', 'cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3.jpeg', '', 'inherit', 'closed', 'closed', '', 'cropped-whatsapp-image-2020-01-03-at-21-55-10-1-jpeg', '', '', '2020-02-07 07:26:23', '2020-02-07 06:26:23', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-02-07 07:26:36', '2020-02-07 06:26:36', '{\n    \"screenr::header_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:26:36\"\n    },\n    \"screenr::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3.jpeg\",\n            \"thumbnail_url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-3.jpeg\",\n            \"timestamp\": 1581056783722,\n            \"attachment_id\": 42,\n            \"width\": 1600,\n            \"height\": 800\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:26:36\"\n    },\n    \"screenr::page_header_bg_color\": {\n        \"value\": \"#4f4f4f\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:26:11\"\n    },\n    \"screenr::page_header_bg_overlay\": {\n        \"value\": \"#e8e8e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:26:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6fbbac1a-a9c1-48a6-9367-c7f1f632f288', '', '', '2020-02-07 07:26:36', '2020-02-07 06:26:36', '', 0, 'http://127.0.0.1/wordpress/?p=43', 0, 'customize_changeset', '', 0),
(44, 1, '2020-02-07 07:27:13', '2020-02-07 06:27:13', '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2-2', '', '', '2020-02-07 07:27:13', '2020-02-07 06:27:13', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-02-07 07:27:22', '2020-02-07 06:27:22', '', 'download copy', '', 'inherit', 'open', 'closed', '', 'download-copy', '', '', '2020-02-07 07:27:22', '2020-02-07 06:27:22', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download-copy.jpeg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-02-07 07:27:41', '2020-02-07 06:27:41', '', 'download copy', '', 'inherit', 'open', 'closed', '', 'download-copy-2', '', '', '2020-02-07 07:27:41', '2020-02-07 06:27:41', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download-copy-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-02-07 07:31:13', '2020-02-07 06:31:13', '{\n    \"screenr::background_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/images.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:29:50\"\n    },\n    \"screenr::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:29:50\"\n    },\n    \"screenr::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:29:50\"\n    },\n    \"screenr::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:28:50\"\n    },\n    \"screenr::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:29:50\"\n    },\n    \"screenr::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:29:50\"\n    },\n    \"screenr::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:29:50\"\n    },\n    \"screenr::header_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:30:50\"\n    },\n    \"screenr::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg\",\n            \"thumbnail_url\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg\",\n            \"timestamp\": 1581057027814,\n            \"attachment_id\": 50,\n            \"width\": 1600,\n            \"height\": 800\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:30:50\"\n    },\n    \"screenr::page_header_bg_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:30:50\"\n    },\n    \"screenr::page_header_bg_overlay\": {\n        \"value\": \"rgba(232,37,37,0.03)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:30:50\"\n    },\n    \"screenr::page_header_pdtop\": {\n        \"value\": \"40\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:31:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '06413dba-bd69-44f3-9438-fcd5b3fc3f43', '', '', '2020-02-07 07:31:13', '2020-02-07 06:31:13', '', 0, 'http://127.0.0.1/wordpress/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2020-02-07 07:28:37', '2020-02-07 06:28:37', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-3', '', '', '2020-02-07 07:28:37', '2020-02-07 06:28:37', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/download-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-02-07 07:29:23', '2020-02-07 06:29:23', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2020-02-07 07:29:23', '2020-02-07 06:29:23', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-02-07 07:30:27', '2020-02-07 06:30:27', '', 'cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-whatsapp-image-2020-01-03-at-21-55-10-4-jpeg', '', '', '2020-02-07 07:30:27', '2020-02-07 06:30:27', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-WhatsApp-Image-2020-01-03-at-21.55.10-4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-02-07 07:32:05', '2020-02-07 06:32:05', '{\n    \"screenr::background_image\": {\n        \"value\": \"http://127.0.0.1/wordpress/wp-content/uploads/2020/02/images-1.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:31:51\"\n    },\n    \"screenr::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:31:28\"\n    },\n    \"screenr::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:31:28\"\n    },\n    \"screenr::background_preset\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:32:05\"\n    },\n    \"screenr::background_size\": {\n        \"value\": \"auto\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:32:05\"\n    },\n    \"screenr::background_repeat\": {\n        \"value\": \"repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:32:05\"\n    },\n    \"screenr::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:32:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c3bb91e-b3c4-4b14-963a-6d9aa1fc582d', '', '', '2020-02-07 07:32:05', '2020-02-07 06:32:05', '', 0, 'http://127.0.0.1/wordpress/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2020-02-07 07:31:47', '2020-02-07 06:31:47', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2020-02-07 07:31:47', '2020-02-07 06:31:47', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/images-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-02-07 07:36:40', '0000-00-00 00:00:00', '{\n    \"screenr::nav_menu_locations[primary]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:33:51\"\n    },\n    \"nav_menu_item[24]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 24,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Lien personnalis\\u00e9\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/elmahdi_elaazmi\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 4,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:32:51\"\n    },\n    \"widget_text[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJ3YWl0IGEgbWludXRlIDoiO3M6NDoidGV4dCI7czoxNTU6IltnYWxsZXJ5IGlkcz0iNDYsMzEsNDQiXQ0KDQo8c3Ryb25nPuKAnFR3byB0aGluZ3MgYXJlIGluZmluaXRlOiB0aGUgdW5pdmVyc2UgYW5kIGh1bWFuIHN0dXBpZGl0eTthbmQgSSdtIG5vdCBzdXJlIGFib3V0IHRoZSB1bml2ZXJzZS7igJ0gRWluc3RlaW4gPC9zdHJvbmc+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"wait a minute :\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c7df575c39ffcaf7904ee70745b8ffe1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:36:40\"\n    },\n    \"nav_menu[4]\": {\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:33:51\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e622b03f-9901-4d91-a093-4f59edf32ead', '', '', '2020-02-07 07:36:40', '2020-02-07 06:36:40', '', 0, 'http://127.0.0.1/wordpress/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2020-02-07 07:41:08', '2020-02-07 06:41:08', '{\n    \"screenr::nav_menu_locations[primary]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:41:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77021987-9a0d-4e52-89d2-376bd996210a', '', '', '2020-02-07 07:41:08', '2020-02-07 06:41:08', '', 0, 'http://127.0.0.1/wordpress/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2020-02-07 07:41:27', '2020-02-07 06:41:27', 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-download-1.png', 'cropped-download-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-download-1-png', '', '', '2020-02-07 07:41:27', '2020-02-07 06:41:27', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2020/02/cropped-download-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-02-07 07:42:06', '2020-02-07 06:42:06', '{\n    \"screenr::custom_logo\": {\n        \"value\": 55,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:41:51\"\n    },\n    \"screenr::slider_items\": {\n        \"value\": \"\\\"_items%5B0%5D%5Bcontent_layout_1%5D=%3Ch1%3E%3Cstrong%3EVotre+entreprise%2C+votre+site%3C%2Fstrong%3E%3C%2Fh1%3E%0D%0A%0D%0AScreenr+est+une+th%C3%A8me+WordPress+polyvalent+plein+%C3%A9cran%0D%0A%0D%0A%3Ca+class%3D%22btn+btn-lg+btn-theme-primary%22+href%3D%22%23features%22%3ECommence%3C%2Fa%3E+%3Ca+class%3D%22btn+btn-lg+btn-secondary-outline%22+href%3D%22%23contact%22%3ENous+contacter%3C%2Fa%3E&_items%5B0%5D%5Bmedia%5D%5Burl%5D=http%3A%2F%2F127.0.0.1%2Fwordpress%2Fwp-content%2Fuploads%2F2020%2F02%2Fdownload-copy-1.jpeg&_items%5B0%5D%5Bmedia%5D%5Bid%5D=46&_items%5B0%5D%5Bposition%5D=left\\\"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:42:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e8b8e75-bb9c-4820-93b2-f14d3683aea7', '', '', '2020-02-07 07:42:06', '2020-02-07 06:42:06', '', 0, 'http://127.0.0.1/wordpress/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2020-02-07 07:42:38', '2020-02-07 06:42:38', '{\n    \"screenr::slider_items\": {\n        \"value\": \"\\\"_items%5B0%5D%5Bcontent_layout_1%5D=%3Ch1%3E%3Cstrong%3EVotre+entreprise%2C+votre+site%3C%2Fstrong%3E%3C%2Fh1%3E%0D%0A%0D%0AScreenr+est+une+th%C3%A8me+WordPress+polyvalent+plein+%C3%A9cran%0D%0A%0D%0A%3Ca+class%3D%22btn+btn-lg+btn-theme-primary%22+href%3D%22%23features%22%3ECommence%3C%2Fa%3E+%3Ca+class%3D%22btn+btn-lg+btn-secondary-outline%22+href%3D%22%23contact%22%3ENous+contacter%3C%2Fa%3E&_items%5B0%5D%5Bmedia%5D%5Burl%5D=http%3A%2F%2F127.0.0.1%2Fwordpress%2Fwp-content%2Fuploads%2F2020%2F02%2Fdownload-copy-1.jpeg&_items%5B0%5D%5Bmedia%5D%5Bid%5D=46&_items%5B0%5D%5Bposition%5D=center\\\"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:42:38\"\n    },\n    \"screenr::slider_overlay_color\": {\n        \"value\": \"rgba(191,191,191,0.3)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:42:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '352a190e-8d7f-4ee3-bdbe-4bb1d3d8a7bc', '', '', '2020-02-07 07:42:38', '2020-02-07 06:42:38', '', 0, 'http://127.0.0.1/wordpress/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2020-02-07 07:44:35', '2020-02-07 06:44:35', '{\n    \"screenr::header_layout\": {\n        \"value\": \"transparent\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:43:51\"\n    },\n    \"screenr::header_t_bg_color\": {\n        \"value\": \"rgba(43,43,43,0.8)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:43:51\"\n    },\n    \"screenr::menu_t_color\": {\n        \"value\": \"#1824ad\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:43:51\"\n    },\n    \"screenr::page_blog_title\": {\n        \"value\": \"ALCHEMIST\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:43:51\"\n    },\n    \"screenr::disable_featured_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:43:51\"\n    },\n    \"screenr::layout_settings\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:43:51\"\n    },\n    \"screenr::menu_t_hover_color\": {\n        \"value\": \"#84711e\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:44:35\"\n    },\n    \"screenr::menu_t_hover_border_color\": {\n        \"value\": \"#6d1156\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:44:35\"\n    },\n    \"screenr::footer_layout\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:44:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '656b0ef1-138c-47a1-b9e6-379549646a8e', '', '', '2020-02-07 07:44:35', '2020-02-07 06:44:35', '', 0, 'http://127.0.0.1/wordpress/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2020-02-07 07:46:20', '2020-02-07 06:46:20', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:46:20\"\n    },\n    \"nav_menu_item[16]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://127.0.0.1/wordpress/?page_id=7\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"Alchemist\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:46:20\"\n    },\n    \"nav_menu_item[20]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:46:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aa90fc25-ba42-4ac4-a811-596cce659bd7', '', '', '2020-02-07 07:46:20', '2020-02-07 06:46:20', '', 0, 'http://127.0.0.1/wordpress/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2020-02-07 07:46:31', '2020-02-07 06:46:31', '{\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:46:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '828c5c75-7007-4082-aed6-569f81371f81', '', '', '2020-02-07 07:46:31', '2020-02-07 06:46:31', '', 0, 'http://127.0.0.1/wordpress/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2020-02-07 07:50:28', '2020-02-07 06:50:28', '{\n    \"widget_text[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjE3OiJWb2lsYSBhbGNoZW1pc3RvbyI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6ec2304ff7c2ec0630bef121b8ee0434\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:47:34\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"text-2\",\n            \"media_video-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:50:10\"\n    },\n    \"widget_media_audio[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTowOnt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eeb9b8d8fae2f138382c31d4c9bb9bb5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:50:28\"\n    },\n    \"widget_media_video[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTowOnt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eeb9b8d8fae2f138382c31d4c9bb9bb5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:50:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd4151cf0-e171-4429-a14f-f3b0e1276c6c', '', '', '2020-02-07 07:50:28', '2020-02-07 06:50:28', '', 0, 'http://127.0.0.1/wordpress/?p=61', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Principal', 'principal', 0),
(4, 'Menu des liens de réseaux sociaux', 'menu-des-liens-de-reseaux-sociaux', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"9224d68348662a8b7ee1d30f1a59ea44930d292091a91bd63940a26d3ceff50d\";a:4:{s:10:\"expiration\";i:1581228969;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1581056169;}s:64:\"b0eaa2bb08b80392a47e9ff2715b052e925fb08f7e0d8cc96f6da2f4b2cffade\";a:4:{s:10:\"expiration\";i:1581229521;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1581056721;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1581057613');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BHOHEYkxCfm2aOhnqNqEowcJFLOwVp.', 'root', 'd@gmail.com', '', '2020-02-07 06:16:06', '', 0, 'root');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
