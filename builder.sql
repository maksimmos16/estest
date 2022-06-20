-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 16 2022 г., 18:42
-- Версия сервера: 5.5.68-MariaDB
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `builder`
--

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_billing_plans`
--

CREATE TABLE `zxcv_billing_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `legacy_permissions` text COLLATE utf8mb4_unicode_ci,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `free` tinyint(1) NOT NULL DEFAULT '0',
  `show_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `features` text COLLATE utf8mb4_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_billing_plans`
--

INSERT INTO `zxcv_billing_plans` (`id`, `name`, `amount`, `currency`, `currency_symbol`, `interval`, `interval_count`, `parent_id`, `legacy_permissions`, `uuid`, `paypal_id`, `recommended`, `free`, `show_permissions`, `features`, `position`, `created_at`, `updated_at`, `available_space`, `hidden`) VALUES
(1, 'Basic', '10.00', 'USD', '$', 'month', 1, NULL, NULL, 'seaFn3XgOPqogVKB9lF9p8w1JVxGP77UNV2g', NULL, 0, 0, 0, '[\"Drag & Drop Builder\",\"500MB Storage\",\"Code Editors\",\"No Ads\",\"Free Subdomain\"]', 1, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(2, '6 months subscription', '54.00', 'USD', '$', 'month', 6, 1, NULL, 'ACzvJTt5Ainmgne1qG5QcVUJKQpJ15QrxTom', NULL, 0, 0, 0, NULL, 0, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(3, '1 year subscription', '96.00', 'USD', '$', 'month', 12, 1, NULL, 'neMaDTrokeJQoNERTUVZokecH8Sv3XDMTBIc', NULL, 0, 0, 0, NULL, 0, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(4, 'Standard', '15.00', 'USD', '$', 'month', 1, NULL, NULL, 'u6Lw5wKh96CWNVxwZEUy5TO0PdAZK6eOjdu5', NULL, 1, 0, 0, '[\"Drag & Drop Builder\",\"500MB Storage\",\"Code Editors\",\"No Ads\",\"Custom Domains\",\"Download Projects\"]', 2, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(5, '6 months subscription', '81.00', 'USD', '$', 'month', 6, 4, NULL, 'FHNM18gbzfVDGcveYhgPOppidoyinKcF2slw', NULL, 0, 0, 0, NULL, 0, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(6, '1 year subscription', '144.00', 'USD', '$', 'month', 12, 4, NULL, '03q1dKuc6GBMKMGOcD4YGGThVFB0HtOpXQcU', NULL, 0, 0, 0, NULL, 0, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(7, 'Pro', '25.00', 'USD', '$', 'month', 1, NULL, NULL, 'yKlQ7Le52vbLSlgVngnqBfn69OzTXecx4AAs', NULL, 0, 0, 0, '[\"Drag & Drop Builder\",\"2GB Storage\",\"Code Editors\",\"No Ads\",\"Custom Domains\",\"Download Projects\",\"Export Projects to FTP\",\"Priority Support\"]', 3, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(8, '6 months subscription', '135.00', 'USD', '$', 'month', 6, 7, NULL, 'zkXtLdtl2FOHGlBDrSeHhvegKiUjv6TCFhUx', NULL, 0, 0, 0, NULL, 0, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0),
(9, '1 year subscription', '240.00', 'USD', '$', 'month', 12, 7, NULL, 'haSZeO8yHg7ICsETK81b9eqDZh6LpgyCitJJ', NULL, 0, 0, 0, NULL, 0, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_builder_pages`
--

CREATE TABLE `zxcv_builder_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageable_id` int(11) NOT NULL,
  `pageable_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppProject',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_comments`
--

CREATE TABLE `zxcv_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_css_themes`
--

CREATE TABLE `zxcv_css_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_dark` tinyint(1) NOT NULL DEFAULT '0',
  `default_light` tinyint(1) NOT NULL DEFAULT '0',
  `default_dark` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_css_themes`
--

INSERT INTO `zxcv_css_themes` (`id`, `name`, `is_dark`, `default_light`, `default_dark`, `user_id`, `colors`, `created_at`, `updated_at`) VALUES
(1, 'Dark', 1, 0, 1, 1, '{\"--be-primary-lighter\":\"#3e4a66\",\"--be-primary-default\":\"#2B3346\",\"--be-primary-darker\":\"#181c26\",\"--be-accent-default\":\"#8AB2E0\",\"--be-accent-lighter\":\"#B9D1EC\",\"--be-accent-contrast\":\"rgba(255, 255, 255, 1)\",\"--be-accent-emphasis\":\"rgba(185, 209, 236, 0.1)\",\"--be-foreground-base\":\"#fff\",\"--be-text\":\"#fff\",\"--be-hint-text\":\"rgba(255, 255, 255, 0.5)\",\"--be-secondary-text\":\"rgba(255, 255, 255, 0.7)\",\"--be-label\":\"rgba(255, 255, 255, 0.7)\",\"--be-background\":\"#1D1D1D\",\"--be-background-alternative\":\"#121212\",\"--be-divider-lighter\":\"rgba(255, 255, 255, 0.06)\",\"--be-divider-default\":\"rgba(255, 255, 255, 0.12)\",\"--be-disabled-button-text\":\"rgba(255, 255, 255, 0.3)\",\"--be-disabled-toggle\":\"#000\",\"--be-chip\":\"#616161\",\"--be-hover\":\"rgba(255, 255, 255, 0.04)\",\"--be-selected-button\":\"#212121\",\"--be-disabled-button\":\"rgba(255, 255, 255, 0.12)\",\"--be-raised-button\":\"#424242\",\"--be-backdrop\":\"#BDBDBD\",\"--be-link\":\"#c5cae9\"}', '2022-06-07 10:22:43', '2022-06-07 10:22:43'),
(2, 'Light', 0, 1, 0, 1, '{\"--be-primary-lighter\":\"#3e4a66\",\"--be-primary-default\":\"#2B3346\",\"--be-primary-darker\":\"#181c26\",\"--be-accent-default\":\"#1565C0\",\"--be-accent-lighter\":\"#B9D1EC\",\"--be-accent-contrast\":\"rgba(255, 255, 255, 1)\",\"--be-accent-emphasis\":\"rgba(185, 209, 236, 0.1)\",\"--be-background\":\"rgb(255, 255, 255)\",\"--be-background-alternative\":\"rgb(250, 250, 250)\",\"--be-foreground-base\":\"black\",\"--be-text\":\"rgba(0, 0, 0, 0.87)\",\"--be-hint-text\":\"rgba(0, 0, 0, 0.38)\",\"--be-secondary-text\":\"rgba(0, 0, 0, 0.54)\",\"--be-label\":\"rgba(0, 0, 0, 0.87)\",\"--be-disabled-button-text\":\"rgba(0, 0, 0, 0.26)\",\"--be-divider-lighter\":\"rgba(0, 0, 0, 0.06)\",\"--be-divider-default\":\"rgba(0, 0, 0, 0.12)\",\"--be-hover\":\"rgba(0,0,0,0.04)\",\"--be-selected-button\":\"rgb(224, 224, 224)\",\"--be-chip\":\"#e0e0e0\",\"--be-link\":\"#3f51b5\",\"--be-backdrop\":\"black\",\"--be-raised-button\":\"#fff\",\"--be-disabled-toggle\":\"rgb(238, 238, 238)\",\"--be-disabled-button\":\"rgba(0, 0, 0, 0.12)\"}', '2022-06-07 10:22:43', '2022-06-07 10:22:43');

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_csv_exports`
--

CREATE TABLE `zxcv_csv_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cache_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `download_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_custom_domains`
--

CREATE TABLE `zxcv_custom_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT '0',
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_custom_pages`
--

CREATE TABLE `zxcv_custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hide_nav` tinyint(1) NOT NULL DEFAULT '0',
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_custom_pages`
--

INSERT INTO `zxcv_custom_pages` (`id`, `title`, `body`, `slug`, `meta`, `type`, `created_at`, `updated_at`, `user_id`, `hide_nav`, `workspace_id`) VALUES
(1, 'Privacy Policy', '<h1>Example Privacy Policy</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'privacy-policy', NULL, 'default', '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0, NULL),
(2, 'Terms of Service', '<h1>Example Terms of Service</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'terms-of-service', NULL, 'default', '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0, NULL),
(3, 'About Us', '<h1>Example About Us</h1><p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'about-us', NULL, 'default', '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_file_entries`
--

CREATE TABLE `zxcv_file_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `disk_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_token` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_file_entries`
--

INSERT INTO `zxcv_file_entries` (`id`, `name`, `file_name`, `file_size`, `mime`, `extension`, `user_id`, `created_at`, `updated_at`, `public`, `disk_prefix`, `parent_id`, `description`, `password`, `type`, `deleted_at`, `path`, `preview_token`, `thumbnail`, `owner_id`) VALUES
(1, 'dddd.png', 'vMaRgepEfVPhQQCX5D3pWBZmI9UxQXivXs2zNknH.png', 229993, 'image/png', 'png', NULL, '2022-06-07 14:30:55', '2022-06-07 14:30:55', 1, 'projects/5/ti1ypeQHGalAuEeb5akVAgNdw0IEZ0QrhL78/images', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_file_entry_models`
--

CREATE TABLE `zxcv_file_entry_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_entry_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_file_entry_models`
--

INSERT INTO `zxcv_file_entry_models` (`id`, `file_entry_id`, `model_id`, `model_type`, `created_at`, `updated_at`, `owner`, `permissions`) VALUES
(1, 1, 5, 'App\\User', '2022-06-07 14:30:55', '2022-06-07 14:30:55', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_invoices`
--

CREATE TABLE `zxcv_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `uuid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_jobs`
--

CREATE TABLE `zxcv_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_localizations`
--

CREATE TABLE `zxcv_localizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_localizations`
--

INSERT INTO `zxcv_localizations` (`id`, `name`, `created_at`, `updated_at`, `language`) VALUES
(1, 'english', '2022-06-07 10:22:43', '2022-06-07 10:28:05', 'en'),
(2, 'bemba', '2022-06-07 13:20:46', '2022-06-09 16:19:45', 'af');

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_migrations`
--

CREATE TABLE `zxcv_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_migrations`
--

INSERT INTO `zxcv_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_04_127_156842_create_social_profiles_table', 1),
(4, '2015_04_127_156842_create_users_oauth_table', 1),
(5, '2015_05_29_131549_create_settings_table', 1),
(6, '2016_05_12_190852_create_tags_table', 1),
(7, '2016_05_12_190958_create_taggables_table', 1),
(8, '2016_05_26_170044_create_uploads_table', 1),
(9, '2016_05_27_143158_create_uploadables_table', 1),
(10, '2016_07_14_153703_create_groups_table', 1),
(11, '2016_07_14_153921_create_user_group_table', 1),
(12, '2017_07_01_150551_rename_pages_table_to_builder_pages', 1),
(13, '2017_07_02_120142_create_pages_table', 1),
(14, '2017_07_02_151788_create_builder_pages_table', 1),
(15, '2017_07_11_122825_create_localizations_table', 1),
(16, '2017_08_26_131330_add_private_field_to_settings_table', 1),
(17, '2017_09_17_144728_add_columns_to_users_table', 1),
(18, '2017_09_17_152854_make_password_column_nullable', 1),
(19, '2017_09_30_152855_make_settings_value_column_nullable', 1),
(20, '2017_10_01_152897_add_public_column_to_uploads_table', 1),
(21, '2017_12_01_134322_upgrade_users_table_to_laravel', 1),
(22, '2017_12_04_132911_add_avatar_column_to_users_table', 1),
(23, '2017_12_05_145410_create_projects_table', 1),
(24, '2017_12_06_151747_add_columns_to_projects_table', 1),
(25, '2017_12_07_151787_create_users_projects_table', 1),
(26, '2018_01_10_140732_create_subscriptions_table', 1),
(27, '2018_01_10_140746_add_billing_to_users_table', 1),
(28, '2018_01_10_161706_create_billing_plans_table', 1),
(29, '2018_02_12_151757_add_default_and_guests_columns_to_groups_table', 1),
(30, '2018_07_24_113757_add_available_space_to_billing_plans_table', 1),
(31, '2018_07_24_124254_add_available_space_to_users_table', 1),
(32, '2018_07_26_142339_rename_groups_to_roles', 1),
(33, '2018_07_26_142842_rename_user_role_table_columns_to_roles', 1),
(34, '2018_08_07_124200_rename_uploads_to_file_entries', 1),
(35, '2018_08_07_124327_refactor_file_entries_columns', 1),
(36, '2018_08_07_130653_add_folder_path_column_to_file_entries_table', 1),
(37, '2018_08_07_140440_migrate_file_entry_users_to_many_to_many', 1),
(38, '2018_08_15_132225_move_uploads_into_subfolders', 1),
(39, '2018_08_31_104145_rename_uploadables_table', 1),
(40, '2018_08_31_104325_rename_file_entry_models_table_columns', 1),
(41, '2018_11_26_171703_add_type_and_title_columns_to_pages_table', 1),
(42, '2018_12_01_144233_change_unique_index_on_tags_table', 1),
(43, '2019_02_16_150049_delete_old_seo_settings', 1),
(44, '2019_02_24_141457_create_jobs_table', 1),
(45, '2019_03_11_162627_add_preview_token_to_file_entries_table', 1),
(46, '2019_03_12_160803_add_thumbnail_column_to_file_entries_table', 1),
(47, '2019_03_16_161836_add_paypal_id_column_to_billing_plans_table', 1),
(48, '2019_05_14_120930_index_description_column_in_file_entries_table', 1),
(49, '2019_06_08_120504_create_custom_domains_table', 1),
(50, '2019_06_13_140318_add_user_id_column_to_pages_table', 1),
(51, '2019_06_15_114320_rename_pages_table_to_custom_pages', 1),
(52, '2019_06_18_133933_create_permissions_table', 1),
(53, '2019_06_18_134203_create_permissionables_table', 1),
(54, '2019_06_18_135822_rename_permissions_columns', 1),
(55, '2019_06_25_133852_move_inline_permissions_to_separate_table', 1),
(56, '2019_07_08_122001_create_css_themes_table', 1),
(57, '2019_07_20_141752_create_invoices_table', 1),
(58, '2019_08_19_121112_add_global_column_to_custom_domains_table', 1),
(59, '2019_09_13_141123_change_plan_amount_to_float', 1),
(60, '2019_10_14_171943_add_index_to_username_column', 1),
(61, '2019_10_20_143522_create_comments_table', 1),
(62, '2019_10_23_134520_create_notifications_table', 1),
(63, '2019_11_21_144956_add_resource_id_and_type_to_custom_domains_table', 1),
(64, '2019_11_23_153905_add_slug_column_to_projects_table', 1),
(65, '2019_11_23_154003_add_slugs_to_legacy_projects', 1),
(66, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(67, '2019_12_14_194512_rename_public_path_column_to_disk_prefix', 1),
(68, '2019_12_24_165237_change_file_size_column_default_value_to_0', 1),
(69, '2019_12_28_190836_update_file_entry_models_table_to_v2', 1),
(70, '2019_12_28_191105_move_user_file_entry_table_records_to_file_entry_models', 1),
(71, '2020_01_26_143733_create_notification_subscriptions_table', 1),
(72, '2020_03_03_140720_add_language_col_to_localizations_table', 1),
(73, '2020_03_03_143142_add_lang_code_to_existing_localizations', 1),
(74, '2020_04_14_163347_add_hidden_column_to_plans_table', 1),
(75, '2020_06_27_180040_add_verified_at_column_to_users_table', 1),
(76, '2020_06_27_180253_move_confirmed_column_to_email_verified_at', 1),
(77, '2020_07_15_144024_fix_issues_with_migration_to_laravel_7', 1),
(78, '2020_07_22_165126_create_workspaces_table', 1),
(79, '2020_07_23_145652_create_workspace_invites_table', 1),
(80, '2020_07_23_164502_create_workspace_user_table', 1),
(81, '2020_07_26_165349_add_columns_to_roles_table', 1),
(82, '2020_07_29_141418_add_workspace_id_column_to_workspaceable_models', 1),
(83, '2020_07_30_152330_add_type_column_to_permissions_table', 1),
(84, '2020_08_29_165057_add_hide_nav_column_to_custom_pages_table', 1),
(85, '2021_04_22_172459_add_internal_columm_to_roles_table', 1),
(86, '2021_05_03_173446_add_deleted_column_to_comments_table', 1),
(87, '2021_05_12_164940_add_advanced_column_to_permissions_table', 1),
(88, '2021_06_04_143405_add_workspace_id_col_to_custom_domains_table', 1),
(89, '2021_06_04_143406_add_workspace_id_col_to_custom_pages_table', 1),
(90, '2021_06_05_182202_create_csv_exports_table', 1),
(91, '2021_06_18_161030_rename_gateway_col_in_subscriptions_table', 1),
(92, '2021_06_19_111939_add_owner_id_column_to_file_entries_table', 1),
(93, '2021_06_19_112035_materialize_owner_id_in_file_entries_table', 1),
(94, '2021_07_06_144837_migrate_landing_page_config_to_20', 1),
(95, '2021_07_17_093454_add_created_at_col_to_user_role_table', 1),
(96, '2021_08_12_160336_add_settings_column_to_projects_table', 1),
(97, '2021_09_30_123758_slugify_tag_name_column', 1),
(98, '2021_10_13_132915_add_token_cols_to_social_profiles_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_notifications`
--

CREATE TABLE `zxcv_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_notification_subscriptions`
--

CREATE TABLE `zxcv_notification_subscriptions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notif_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `channels` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_password_resets`
--

CREATE TABLE `zxcv_password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_permissionables`
--

CREATE TABLE `zxcv_permissionables` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `permissionable_id` int(11) NOT NULL,
  `permissionable_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_permissionables`
--

INSERT INTO `zxcv_permissionables` (`id`, `permission_id`, `permissionable_id`, `permissionable_type`, `restrictions`) VALUES
(1, 1, 1, 'App\\User', NULL),
(2, 10, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(3, 15, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(4, 19, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(5, 23, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(6, 27, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(7, 33, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(8, 38, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(9, 50, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(10, 53, 1, 'Common\\Auth\\Roles\\Role', '[{\"name\":\"count\",\"value\":8}]'),
(11, 56, 1, 'Common\\Auth\\Roles\\Role', '[]'),
(12, 10, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(13, 27, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(14, 33, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(15, 38, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(16, 23, 2, 'Common\\Auth\\Roles\\Role', '[]'),
(17, 50, 1, 'Common\\Billing\\BillingPlan', NULL),
(18, 50, 4, 'Common\\Billing\\BillingPlan', NULL),
(19, 51, 4, 'Common\\Billing\\BillingPlan', NULL),
(20, 50, 7, 'Common\\Billing\\BillingPlan', NULL),
(21, 51, 7, 'Common\\Billing\\BillingPlan', NULL),
(22, 49, 7, 'Common\\Billing\\BillingPlan', NULL),
(23, 1, 2, 'App\\User', '[]'),
(24, 2, 2, 'App\\User', '[]'),
(25, 3, 2, 'App\\User', '[]'),
(26, 4, 2, 'App\\User', '[]'),
(33, 27, 4, 'App\\User', '[]'),
(34, 28, 4, 'App\\User', '[]'),
(35, 29, 4, 'App\\User', '[]'),
(36, 30, 4, 'App\\User', '[]'),
(37, 2, 4, 'App\\User', '[]'),
(38, 1, 4, 'App\\User', '[]'),
(39, 3, 4, 'App\\User', '[]'),
(40, 4, 4, 'App\\User', '[]'),
(41, 1, 6, 'App\\User', '[]'),
(42, 2, 6, 'App\\User', '[]'),
(43, 3, 6, 'App\\User', '[]'),
(44, 4, 6, 'App\\User', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_permissions`
--

CREATE TABLE `zxcv_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `advanced` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_permissions`
--

INSERT INTO `zxcv_permissions` (`id`, `name`, `display_name`, `description`, `group`, `restrictions`, `created_at`, `updated_at`, `type`, `advanced`) VALUES
(1, 'admin', 'Super Admin', 'Give all permissions to user.', 'admin', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(2, 'admin.access', 'Access Admin', 'Required in order to access any admin area page.', 'admin', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(3, 'appearance.update', 'Update Appearance', 'Allows access to appearance editor.', 'admin', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(4, 'reports.view', 'View Reports', 'Allows access to analytics page in admin area.', 'admin', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(5, 'api.access', 'Access Api', 'Allow users to use the API and access API section in their account settings page.', 'api', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(6, 'roles.view', 'View Roles', 'Allow viewing ALL roles.', 'roles', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(7, 'roles.create', 'Create Roles', 'Allow creating new roles.', 'roles', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(8, 'roles.update', 'Update Roles', 'Allow updating ALL roles.', 'roles', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(9, 'roles.delete', 'Delete Roles', 'Allow deleting ALL roles.', 'roles', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(10, 'custom_pages.view', 'View Custom Pages', 'Allow viewing of all pages on the site, regardless of who created them. User can view their own pages without this permission.', 'custom_pages', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(11, 'custom_pages.create', 'Create Custom Pages', 'Allow creating new custom pages.', 'custom_pages', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of pages user will be able to create. Leave empty for unlimited.\"}]', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(12, 'custom_pages.update', 'Update Custom Pages', 'Allow editing of all pages on the site, regardless of who created them. User can edit their own pages without this permission.', 'custom_pages', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(13, 'custom_pages.delete', 'Delete Custom Pages', 'Allow deleting of all pages on the site, regardless of who created them. User can delete their own pages without this permission.', 'custom_pages', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(14, 'custom_domains.view', 'View Custom Domains', 'Allow viewing all domains on the site, regardless of who created them. User can view their own domains without this permission.', 'custom_domains', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(15, 'custom_domains.create', 'Create Custom Domains', 'Allow user to connect their own custom domains.', 'custom_domains', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of domains user will be able to create. Leave empty for unlimited.\"}]', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(16, 'custom_domains.update', 'Update Custom Domains', 'Allow editing all domains on the site, regardless of who created them. User can edit their own domains without this permission.', 'custom_domains', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(17, 'custom_domains.delete', 'Delete Custom Domains', 'Allow deleting all domains on the site, regardless of who created them. User can delete their own domains without this permission.', 'custom_domains', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(18, 'files.view', 'View Files', 'Allow viewing all uploaded files on the site. Users can view their own uploads without this permission.', 'files', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(19, 'files.create', 'Create Files', 'Allow uploading files on the site. This permission is used by any page where it is possible for user to upload files.', 'files', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(20, 'files.update', 'Update Files', 'Allow editing all uploaded files on the site. Users can edit their own uploads without this permission.', 'files', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(21, 'files.delete', 'Delete Files', 'Allow deleting all uploaded files on the site. Users can delete their own uploads (where applicable) without this permission.', 'files', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(22, 'files.download', 'Download Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(23, 'users.view', 'View Users', 'Allow viewing user profile pages on the site. User can view their own profile without this permission.', 'users', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(24, 'users.create', 'Create Users', 'Allow creating users from admin area. Users can register for new accounts without this permission. Registration can be disabled from settings page.', 'users', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(25, 'users.update', 'Update Users', 'Allow editing details of any user on the site. User can edit their own details without this permission.', 'users', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(26, 'users.delete', 'Delete Users', 'Allow deleting any user on the site. User can request deletion of their own account without this permission.', 'users', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(27, 'localizations.view', 'View Localizations', 'Allow viewing ALL localizations.', 'localizations', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(28, 'localizations.create', 'Create Localizations', 'Allow creating new localizations.', 'localizations', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(29, 'localizations.update', 'Update Localizations', 'Allow updating ALL localizations.', 'localizations', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(30, 'localizations.delete', 'Delete Localizations', 'Allow deleting ALL localizations.', 'localizations', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(31, 'settings.view', 'View Settings', 'Allow viewing ALL settings.', 'settings', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(32, 'settings.update', 'Update Settings', 'Allow updating ALL settings.', 'settings', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(33, 'plans.view', 'View Plans', 'Allow viewing ALL plans.', 'plans', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(34, 'plans.create', 'Create Plans', 'Allow creating new plans.', 'plans', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(35, 'plans.update', 'Update Plans', 'Allow updating ALL plans.', 'plans', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(36, 'plans.delete', 'Delete Plans', 'Allow deleting ALL plans.', 'plans', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(37, 'invoices.view', 'View Invoices', 'Allow viewing ALL invoices.', 'invoices', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(38, 'tags.view', 'View Tags', 'Allow viewing ALL tags.', 'tags', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(39, 'tags.create', 'Create Tags', 'Allow creating new tags.', 'tags', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(40, 'tags.update', 'Update Tags', 'Allow updating ALL tags.', 'tags', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(41, 'tags.delete', 'Delete Tags', 'Allow deleting ALL tags.', 'tags', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(42, 'workspaces.view', 'View Workspaces', 'Allow viewing ALL workspaces.', 'workspaces', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(43, 'workspaces.create', 'Create Workspaces', 'Allow creating new workspaces.', 'workspaces', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of workspaces user will be able to create. Leave empty for unlimited.\"},{\"name\":\"member_count\",\"type\":\"number\",\"description\":\"Maximum number of members workspace is allowed to have.\"}]', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(44, 'workspaces.update', 'Update Workspaces', 'Allow updating ALL workspaces.', 'workspaces', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(45, 'workspaces.delete', 'Delete Workspaces', 'Allow deleting ALL workspaces.', 'workspaces', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(46, 'workspace_members.invite', 'Invite Members', 'Allow user to invite new members into a workspace.', 'workspace_members', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'workspace', 0),
(47, 'workspace_members.update', 'Update Members', 'Allow user to change role of other members.', 'workspace_members', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'workspace', 0),
(48, 'workspace_members.delete', 'Delete Members', 'Allow user to remove members from workspace.', 'workspace_members', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'workspace', 0),
(49, 'projects.export', 'Export Projects', 'Allow user to export projects to their own FTP server.', 'builder', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(50, 'editors.enable', 'Enable Editors', 'Allow user to use html,css and js code editors.', 'builder', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(51, 'projects.download', 'Download Projects', 'Allow user to download their project .zip file.', 'builder', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(52, 'projects.view', 'View Projects', 'Allow viewing ALL projects.', 'projects', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(53, 'projects.create', 'Create Projects', 'Allow creating new projects.', 'projects', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of projects user will be able to create. Leave empty for unlimited.\"}]', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 0),
(54, 'projects.update', 'Update Projects', 'Allow updating ALL projects.', 'projects', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(55, 'projects.delete', 'Delete Projects', 'Allow deleting ALL projects.', 'projects', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(56, 'templates.view', 'View Templates', 'Allow viewing ALL templates.', 'templates', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(57, 'templates.create', 'Create Templates', 'Allow creating new templates.', 'templates', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(58, 'templates.update', 'Update Templates', 'Allow updating ALL templates.', 'templates', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1),
(59, 'templates.delete', 'Delete Templates', 'Allow deleting ALL templates.', 'templates', NULL, '2022-06-07 10:22:43', '2022-06-07 10:22:43', 'sitewide', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_personal_access_tokens`
--

CREATE TABLE `zxcv_personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_projects`
--

CREATE TABLE `zxcv_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_projects`
--

INSERT INTO `zxcv_projects` (`id`, `name`, `published`, `created_at`, `updated_at`, `uuid`, `template`, `slug`, `settings`) VALUES
(1, 'firs project', 1, '2022-06-07 13:49:57', '2022-06-07 13:49:57', 'ti1ypeQHGalAuEeb5akVAgNdw0IEZ0QrhL78', 'devcourse', 'firs-project', NULL),
(2, 'portfolio test', 1, '2022-06-13 13:05:08', '2022-06-13 13:05:08', 'glkEDn7P3km7yG6HoB2QwZlfm6Qge9zrvFnp', 'stylish-portfolio', 'portfolio-test', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_roles`
--

CREATE TABLE `zxcv_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legacy_permissions` text COLLATE utf8mb4_unicode_ci,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `guests` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `internal` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_roles`
--

INSERT INTO `zxcv_roles` (`id`, `name`, `legacy_permissions`, `default`, `guests`, `created_at`, `updated_at`, `description`, `type`, `internal`) VALUES
(1, 'users', NULL, 1, 0, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 'sitewide', 0),
(2, 'guests', NULL, 0, 1, '2022-06-07 10:22:43', '2022-06-07 10:22:43', NULL, 'sitewide', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_settings`
--

CREATE TABLE `zxcv_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_settings`
--

INSERT INTO `zxcv_settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `private`) VALUES
(1, 'dates.format', 'yyyy-MM-dd', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(2, 'dates.locale', 'en_US', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(3, 'social.google.enable', 'false', '2022-06-07 10:22:43', '2022-06-09 18:06:48', 0),
(4, 'social.twitter.enable', 'false', '2022-06-07 10:22:43', '2022-06-09 18:06:48', 0),
(5, 'social.facebook.enable', 'false', '2022-06-07 10:22:43', '2022-06-09 18:06:48', 0),
(6, 'realtime.enable', 'false', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(7, 'registration.disable', 'false', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(8, 'cache.report_minutes', '60', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(9, 'branding.favicon', 'client/favicon/icon-144x144.png', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(10, 'branding.logo_dark', 'client/assets/images/logo-dark.png', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(11, 'branding.logo_light', 'client/assets/images/logo-light.png', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(12, 'i18n.default_localization', 'en', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(13, 'i18n.enable', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(14, 'logging.sentry_public', '', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(15, 'realtime.pusher_key', '', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(16, 'homepage.type', 'default', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(17, 'themes.default_mode', 'light', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(18, 'themes.user_change', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(19, 'billing.enable', 'false', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(20, 'billing.paypal_test_mode', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(21, 'billing.stripe_test_mode', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(22, 'billing.stripe.enable', 'false', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(23, 'billing.paypal.enable', 'false', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(24, 'billing.accepted_cards', '[\"visa\",\"mastercard\",\"american-express\",\"discover\"]', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(25, 'custom_domains.default_host', '', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(26, 'uploads.chunk', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(27, 'uploads.chunk_size', '5242880', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(28, 'cookie_notice.enable', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(29, 'cookie_notice.position', 'bottom', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(30, 'menus', '[{\"position\":\"dashboard\",\"name\":\"Dashboard\",\"items\":[{\"type\":\"route\",\"order\":1,\"condition\":\"admin\",\"position\":0,\"label\":\"Admin Area\",\"action\":\"admin\"}]},{\"name\":\"footer\",\"position\":\"footer\",\"items\":[{\"type\":\"route\",\"position\":1,\"label\":\"Developers\",\"action\":\"\\/api-docs\",\"condition\":\"auth\"},{\"type\":\"route\",\"position\":2,\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/1\\/privacy-policy\"},{\"type\":\"route\",\"position\":3,\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/2\\/terms-of-service\"},{\"type\":\"route\",\"position\":4,\"label\":\"Contact Us\",\"action\":\"\\/contact\"}]},{\"name\":\"Footer Social\",\"position\":\"footer-secondary\",\"items\":[{\"type\":\"link\",\"position\":1,\"icon\":\"facebook-square\",\"action\":\"https:\\/\\/facebook.com\"},{\"type\":\"link\",\"position\":2,\"icon\":\"twitter\",\"action\":\"https:\\/\\/twitter.com\"},{\"type\":\"link\",\"position\":3,\"icon\":\"instagram\",\"action\":\"https:\\/\\/instagram.com\"},{\"type\":\"link\",\"position\":4,\"icon\":\"youtube\",\"action\":\"https:\\/\\/youtube.com\"}]}]', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(31, 'branding.site_name', 'Architect', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(32, 'builder.enable_subdomains', 'false', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(33, 'builder.enable_custom_domains', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(34, 'builder.googgle_fonts_api_key', 'AIzaSyDhc_8NKxXjtv69htFcUPe6A7oGSQ4om2o', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(35, 'builder.template_categories', '[\"Landing Page\",\"Blog\",\"Portfolio\"]', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(36, 'publish.allow_credential_change', 'true', '2022-06-07 10:22:43', '2022-06-07 10:22:43', 0),
(37, 'homepage.appearance', '{\"headerTitle\":\"The Freedom to Create the Websites You Want\",\"headerSubtitle\":\"Discover the platform that gives you the freedom to create, design, manage and develop your web presence exactly the way you want.\",\"headerImage\":\"client\\/assets\\/images\\/landing\\/landing-bg.svg\",\"headerImageOpacity\":1,\"headerOverlayColor1\":null,\"headerOverlayColor2\":null,\"footerTitle\":\"Build your website today\",\"footerSubtitle\":null,\"footerImage\":\"client\\/assets\\/images\\/landing\\/landing-bg.svg\",\"actions\":{\"inputText\":null,\"inputButton\":null,\"cta1\":\"Start Now\",\"cta2\":\"Learn More\"},\"primaryFeatures\":[{\"title\":\"Custom domains\",\"subtitle\":\"Attach your own custom domain or use on of the free architect subdomains.\",\"image\":\"custom-domain.svg\"},{\"title\":\"Eye-catching website designs\",\"subtitle\":\"Our easy-to-use builder helps you create and launch a beautiful website\\\\u2014fast.\",\"image\":\"website-builder.svg\"},{\"title\":\"Grow your business with powerful tools\",\"subtitle\":\"Design and build your own high-quality websites. Whatever the type of site\\\\u2014you can do it with Architect website builder.\",\"image\":\"pen-tool.svg\"}],\"secondaryFeatures\":[{\"title\":\"The Freedom to Create the Websites You Want\",\"subtitle\":\"AWARD-WINNING WEBSITE DESIGN\",\"image\":\"client\\/assets\\/images\\/landing\\/landing-feature-1.jpg\",\"description\":\"Our award-winning templates are the most beautiful way to present your ideas online. Stand out with a professional website, portfolio, or online store.\"},{\"title\":\"The Freedom to Create the Websites You Want\",\"subtitle\":\"Complete Freedom\",\"image\":\"client\\/assets\\/images\\/landing\\/landing-feature-2.jpg\",\"description\":\"Start from scratch or choose from large catalog of templates to make your own website. With the world\\\\u2019s most innovative drag and drop website builder, you can customize or change anything. With the Architect, you can create your own professional website that looks stunning.\"}],\"channelIds\":[]}', '2022-06-07 10:22:43', '2022-06-09 18:02:17', 0),
(38, 'uploads.resume', 'true', '2022-06-09 18:07:24', '2022-06-09 18:07:24', 0),
(39, 'uploads.allowed_extensions', '[]', '2022-06-09 18:07:24', '2022-06-09 18:07:24', 0),
(40, 'uploads.blocked_extensions', '[]', '2022-06-09 18:07:24', '2022-06-09 18:07:24', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_social_profiles`
--

CREATE TABLE `zxcv_social_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_service_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_subscriptions`
--

CREATE TABLE `zxcv_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `renews_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_taggables`
--

CREATE TABLE `zxcv_taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_tags`
--

CREATE TABLE `zxcv_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_users`
--

CREATE TABLE `zxcv_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_permissions` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_users`
--

INSERT INTO `zxcv_users` (`id`, `username`, `first_name`, `last_name`, `avatar_url`, `gender`, `legacy_permissions`, `email`, `password`, `card_brand`, `card_last_four`, `remember_token`, `created_at`, `updated_at`, `language`, `country`, `timezone`, `avatar`, `stripe_id`, `available_space`, `email_verified_at`) VALUES
(1, 'admin', NULL, NULL, NULL, NULL, NULL, 'roman@bsx.co.il', '$2y$10$HG7StyC04ZUitipl/55vjuinbKB4ssdkzuwF5A/RLyfzytMmMPYcu', NULL, NULL, 'OLXXKT8fz9TehuWdBbsM19kW64MjXGdQkzPHd5yqmQ2TToZsRUuUAhGY15jR', '2022-06-07 10:22:43', '2022-06-09 18:06:26', 'en', NULL, NULL, NULL, NULL, NULL, '2022-06-07 10:22:43'),
(2, NULL, 'Elia', 'Cohen', NULL, NULL, NULL, 'eliaghostchat@gmail.com', '$2y$10$Vk5TBQOso/8xXpHxIbXx2eWe8yX1TOLbCVm4JOXciJZP/ZNq/Mc1G', NULL, NULL, 'HTs1MGKouYjTa20QRQbtZzG4hL57hFpzOudwFG7iwhjBcC24G3GTiWvBeUde', '2022-06-07 11:46:44', '2022-06-09 18:06:26', 'en', NULL, NULL, 'https://www.gravatar.com/avatar/7e880eaec479a44f8e16f72d6bb3f4a3?s=&d=retro', NULL, NULL, '2022-06-07 11:47:08'),
(4, NULL, 'Denis', 'Beenzu', NULL, NULL, NULL, 'dbeenzu91@gmail.com', '$2y$10$97Iy8ikuG82RpqdeL67MJ.IOPyYMVPr9tE8BPy8JpE9CNLcQh3zWC', NULL, NULL, 'fCQcXHhWJgo08IkaGZUOjW8OrYbz1yfvRF0yldYvjGKwP8FwJ3bKbfJR7BVW', '2022-06-07 11:57:43', '2022-06-09 18:06:26', 'en', NULL, NULL, 'storage/avatars/OdZBDPQ1mvFwba9V7eCsZCkxfuCZWFL8K90DwdFA.jpg', NULL, NULL, '2022-06-07 13:16:50'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 'iavatars.tikichats@gmail.com', '$2y$10$1r9hCZh88fE1Lr.1Qz928.LQPriRsPCeL.uCUW7sBiM5w.kE.eNvG', NULL, NULL, NULL, '2022-06-07 13:49:29', '2022-06-09 18:06:26', 'en', NULL, NULL, NULL, NULL, NULL, '2022-06-07 13:49:29'),
(6, NULL, 'maxim', 'Mesheriakov', NULL, NULL, NULL, 'maksimmos1629@gmail.com', '$2y$10$SSA2mrHpmqwpmriKEsfRleTTq0CPUlIVpZkmEZSfvcy8z4ix5iL.W', NULL, NULL, NULL, '2022-06-13 12:02:38', '2022-06-13 12:02:38', 'en', NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 'funnydanceandmusic777@gmail.com', '$2y$10$fI0UY.1eXI2LuGmbfE38SeTW/0G6siHkdVYLeB85cGY1QvZ0alYMG', NULL, NULL, NULL, '2022-06-13 13:04:46', '2022-06-13 13:04:46', 'en', NULL, NULL, NULL, NULL, NULL, '2022-06-13 13:04:46');

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_users_oauth`
--

CREATE TABLE `zxcv_users_oauth` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_users_projects`
--

CREATE TABLE `zxcv_users_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_users_projects`
--

INSERT INTO `zxcv_users_projects` (`id`, `user_id`, `project_id`) VALUES
(1, 5, 1),
(2, 7, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_user_role`
--

CREATE TABLE `zxcv_user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zxcv_user_role`
--

INSERT INTO `zxcv_user_role` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 1, 1, '2022-06-07 10:22:43'),
(2, 2, 1, NULL),
(4, 4, 1, NULL),
(5, 5, 1, NULL),
(6, 6, 1, NULL),
(7, 7, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_workspaces`
--

CREATE TABLE `zxcv_workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_workspace_invites`
--

CREATE TABLE `zxcv_workspace_invites` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zxcv_workspace_user`
--

CREATE TABLE `zxcv_workspace_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `zxcv_billing_plans`
--
ALTER TABLE `zxcv_billing_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_billing_plans_hidden_index` (`hidden`);

--
-- Индексы таблицы `zxcv_builder_pages`
--
ALTER TABLE `zxcv_builder_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_builder_pages_name_pageable_type_pageable_id_unique` (`name`,`pageable_type`,`pageable_id`),
  ADD KEY `zxcv_builder_pages_pageable_id_index` (`pageable_id`);

--
-- Индексы таблицы `zxcv_comments`
--
ALTER TABLE `zxcv_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_comments_parent_id_index` (`parent_id`),
  ADD KEY `zxcv_comments_path_index` (`path`),
  ADD KEY `zxcv_comments_user_id_index` (`user_id`),
  ADD KEY `zxcv_comments_commentable_id_index` (`commentable_id`),
  ADD KEY `zxcv_comments_commentable_type_index` (`commentable_type`),
  ADD KEY `zxcv_comments_deleted_index` (`deleted`);

--
-- Индексы таблицы `zxcv_css_themes`
--
ALTER TABLE `zxcv_css_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_css_themes_name_unique` (`name`),
  ADD KEY `zxcv_css_themes_default_light_index` (`default_light`),
  ADD KEY `zxcv_css_themes_default_dark_index` (`default_dark`),
  ADD KEY `zxcv_css_themes_user_id_index` (`user_id`);

--
-- Индексы таблицы `zxcv_csv_exports`
--
ALTER TABLE `zxcv_csv_exports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_csv_exports_cache_name_unique` (`cache_name`),
  ADD KEY `zxcv_csv_exports_user_id_index` (`user_id`);

--
-- Индексы таблицы `zxcv_custom_domains`
--
ALTER TABLE `zxcv_custom_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_custom_domains_host_unique` (`host`),
  ADD KEY `zxcv_custom_domains_user_id_index` (`user_id`),
  ADD KEY `zxcv_custom_domains_created_at_index` (`created_at`),
  ADD KEY `zxcv_custom_domains_updated_at_index` (`updated_at`),
  ADD KEY `zxcv_custom_domains_global_index` (`global`),
  ADD KEY `zxcv_custom_domains_resource_id_index` (`resource_id`),
  ADD KEY `zxcv_custom_domains_resource_type_index` (`resource_type`),
  ADD KEY `zxcv_custom_domains_workspace_id_index` (`workspace_id`);

--
-- Индексы таблицы `zxcv_custom_pages`
--
ALTER TABLE `zxcv_custom_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_pages_slug_unique` (`slug`),
  ADD KEY `zxcv_pages_type_index` (`type`),
  ADD KEY `zxcv_pages_user_id_index` (`user_id`),
  ADD KEY `zxcv_custom_pages_workspace_id_index` (`workspace_id`);

--
-- Индексы таблицы `zxcv_file_entries`
--
ALTER TABLE `zxcv_file_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_uploads_file_name_unique` (`file_name`),
  ADD KEY `zxcv_uploads_name_index` (`name`),
  ADD KEY `zxcv_uploads_user_id_index` (`user_id`),
  ADD KEY `zxcv_uploads_public_index` (`public`),
  ADD KEY `zxcv_file_entries_updated_at_index` (`updated_at`),
  ADD KEY `zxcv_file_entries_parent_id_index` (`parent_id`),
  ADD KEY `zxcv_file_entries_type_index` (`type`),
  ADD KEY `zxcv_file_entries_deleted_at_index` (`deleted_at`),
  ADD KEY `zxcv_file_entries_user_id_index` (`user_id`),
  ADD KEY `zxcv_file_entries_path_index` (`path`),
  ADD KEY `zxcv_file_entries_description_index` (`description`),
  ADD KEY `zxcv_file_entries_owner_id_index` (`owner_id`);

--
-- Индексы таблицы `zxcv_file_entry_models`
--
ALTER TABLE `zxcv_file_entry_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_uploadables_upload_id_uploadable_id_uploadable_type_unique` (`file_entry_id`,`model_id`,`model_type`),
  ADD KEY `zxcv_file_entry_models_owner_index` (`owner`);

--
-- Индексы таблицы `zxcv_invoices`
--
ALTER TABLE `zxcv_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_invoices_subscription_id_index` (`subscription_id`),
  ADD KEY `zxcv_invoices_uuid_index` (`uuid`);

--
-- Индексы таблицы `zxcv_jobs`
--
ALTER TABLE `zxcv_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Индексы таблицы `zxcv_localizations`
--
ALTER TABLE `zxcv_localizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_localizations_name_index` (`name`),
  ADD KEY `zxcv_localizations_language_index` (`language`);

--
-- Индексы таблицы `zxcv_migrations`
--
ALTER TABLE `zxcv_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zxcv_notifications`
--
ALTER TABLE `zxcv_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Индексы таблицы `zxcv_notification_subscriptions`
--
ALTER TABLE `zxcv_notification_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_notification_subscriptions_notif_id_index` (`notif_id`),
  ADD KEY `zxcv_notification_subscriptions_user_id_index` (`user_id`);

--
-- Индексы таблицы `zxcv_password_resets`
--
ALTER TABLE `zxcv_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_password_resets_email_index` (`email`);

--
-- Индексы таблицы `zxcv_permissionables`
--
ALTER TABLE `zxcv_permissionables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissionable_unique` (`permission_id`,`permissionable_id`,`permissionable_type`),
  ADD KEY `zxcv_permissionables_permission_id_index` (`permission_id`),
  ADD KEY `zxcv_permissionables_permissionable_id_index` (`permissionable_id`),
  ADD KEY `zxcv_permissionables_permissionable_type_index` (`permissionable_type`);

--
-- Индексы таблицы `zxcv_permissions`
--
ALTER TABLE `zxcv_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_permissions_name_unique` (`name`),
  ADD KEY `zxcv_permissions_advanced_index` (`advanced`);

--
-- Индексы таблицы `zxcv_personal_access_tokens`
--
ALTER TABLE `zxcv_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_personal_access_tokens_token_unique` (`token`),
  ADD KEY `zxcv_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `zxcv_projects`
--
ALTER TABLE `zxcv_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_projects_name_index` (`name`),
  ADD KEY `zxcv_projects_slug_index` (`slug`);

--
-- Индексы таблицы `zxcv_roles`
--
ALTER TABLE `zxcv_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_groups_name_unique` (`name`),
  ADD KEY `zxcv_groups_default_index` (`default`),
  ADD KEY `zxcv_groups_guests_index` (`guests`),
  ADD KEY `zxcv_roles_internal_index` (`internal`);

--
-- Индексы таблицы `zxcv_settings`
--
ALTER TABLE `zxcv_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_settings_name_unique` (`name`),
  ADD KEY `zxcv_settings_private_index` (`private`);

--
-- Индексы таблицы `zxcv_social_profiles`
--
ALTER TABLE `zxcv_social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_social_profiles_user_id_service_name_unique` (`user_id`,`service_name`),
  ADD UNIQUE KEY `zxcv_social_profiles_service_name_user_service_id_unique` (`service_name`,`user_service_id`),
  ADD KEY `zxcv_social_profiles_user_id_index` (`user_id`);

--
-- Индексы таблицы `zxcv_subscriptions`
--
ALTER TABLE `zxcv_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_subscriptions_user_id_index` (`user_id`),
  ADD KEY `zxcv_subscriptions_plan_id_index` (`plan_id`),
  ADD KEY `zxcv_subscriptions_gateway_index` (`gateway_name`);

--
-- Индексы таблицы `zxcv_taggables`
--
ALTER TABLE `zxcv_taggables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_taggables_tag_id_taggable_id_user_id_taggable_type_unique` (`tag_id`,`taggable_id`,`user_id`,`taggable_type`),
  ADD KEY `zxcv_taggables_tag_id_index` (`tag_id`),
  ADD KEY `zxcv_taggables_taggable_id_index` (`taggable_id`),
  ADD KEY `zxcv_taggables_taggable_type_index` (`taggable_type`),
  ADD KEY `zxcv_taggables_user_id_index` (`user_id`);

--
-- Индексы таблицы `zxcv_tags`
--
ALTER TABLE `zxcv_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_tags_name_unique` (`name`),
  ADD UNIQUE KEY `zxcv_tags_name_type_unique` (`name`,`type`),
  ADD KEY `zxcv_tags_type_index` (`type`),
  ADD KEY `zxcv_tags_created_at_index` (`created_at`),
  ADD KEY `zxcv_tags_updated_at_index` (`updated_at`);

--
-- Индексы таблицы `zxcv_users`
--
ALTER TABLE `zxcv_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_users_email_unique` (`email`),
  ADD KEY `zxcv_users_created_at_index` (`created_at`),
  ADD KEY `zxcv_users_updated_at_index` (`updated_at`),
  ADD KEY `zxcv_users_username_index` (`username`);

--
-- Индексы таблицы `zxcv_users_oauth`
--
ALTER TABLE `zxcv_users_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_users_oauth_user_id_service_unique` (`user_id`,`service`),
  ADD UNIQUE KEY `zxcv_users_oauth_token_unique` (`token`),
  ADD KEY `zxcv_users_oauth_user_id_index` (`user_id`);

--
-- Индексы таблицы `zxcv_users_projects`
--
ALTER TABLE `zxcv_users_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_users_projects_user_id_project_id_unique` (`user_id`,`project_id`),
  ADD KEY `zxcv_users_projects_user_id_index` (`user_id`),
  ADD KEY `zxcv_users_projects_project_id_index` (`project_id`);

--
-- Индексы таблицы `zxcv_user_role`
--
ALTER TABLE `zxcv_user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_user_group_user_id_group_id_unique` (`user_id`,`role_id`);

--
-- Индексы таблицы `zxcv_workspaces`
--
ALTER TABLE `zxcv_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_workspaces_owner_id_index` (`owner_id`),
  ADD KEY `zxcv_workspaces_created_at_index` (`created_at`),
  ADD KEY `zxcv_workspaces_updated_at_index` (`updated_at`);

--
-- Индексы таблицы `zxcv_workspace_invites`
--
ALTER TABLE `zxcv_workspace_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zxcv_workspace_invites_workspace_id_index` (`workspace_id`),
  ADD KEY `zxcv_workspace_invites_user_id_index` (`user_id`),
  ADD KEY `zxcv_workspace_invites_email_index` (`email`),
  ADD KEY `zxcv_workspace_invites_role_id_index` (`role_id`);

--
-- Индексы таблицы `zxcv_workspace_user`
--
ALTER TABLE `zxcv_workspace_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxcv_workspace_user_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `zxcv_workspace_user_user_id_index` (`user_id`),
  ADD KEY `zxcv_workspace_user_workspace_id_index` (`workspace_id`),
  ADD KEY `zxcv_workspace_user_role_id_index` (`role_id`),
  ADD KEY `zxcv_workspace_user_is_owner_index` (`is_owner`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `zxcv_billing_plans`
--
ALTER TABLE `zxcv_billing_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `zxcv_builder_pages`
--
ALTER TABLE `zxcv_builder_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_comments`
--
ALTER TABLE `zxcv_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_css_themes`
--
ALTER TABLE `zxcv_css_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `zxcv_csv_exports`
--
ALTER TABLE `zxcv_csv_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_custom_domains`
--
ALTER TABLE `zxcv_custom_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_custom_pages`
--
ALTER TABLE `zxcv_custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `zxcv_file_entries`
--
ALTER TABLE `zxcv_file_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `zxcv_file_entry_models`
--
ALTER TABLE `zxcv_file_entry_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `zxcv_invoices`
--
ALTER TABLE `zxcv_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_jobs`
--
ALTER TABLE `zxcv_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_localizations`
--
ALTER TABLE `zxcv_localizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `zxcv_migrations`
--
ALTER TABLE `zxcv_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `zxcv_password_resets`
--
ALTER TABLE `zxcv_password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_permissionables`
--
ALTER TABLE `zxcv_permissionables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `zxcv_permissions`
--
ALTER TABLE `zxcv_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `zxcv_personal_access_tokens`
--
ALTER TABLE `zxcv_personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_projects`
--
ALTER TABLE `zxcv_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `zxcv_roles`
--
ALTER TABLE `zxcv_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `zxcv_settings`
--
ALTER TABLE `zxcv_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `zxcv_social_profiles`
--
ALTER TABLE `zxcv_social_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_subscriptions`
--
ALTER TABLE `zxcv_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_taggables`
--
ALTER TABLE `zxcv_taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_tags`
--
ALTER TABLE `zxcv_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_users`
--
ALTER TABLE `zxcv_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `zxcv_users_oauth`
--
ALTER TABLE `zxcv_users_oauth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_users_projects`
--
ALTER TABLE `zxcv_users_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `zxcv_user_role`
--
ALTER TABLE `zxcv_user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `zxcv_workspaces`
--
ALTER TABLE `zxcv_workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zxcv_workspace_user`
--
ALTER TABLE `zxcv_workspace_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
