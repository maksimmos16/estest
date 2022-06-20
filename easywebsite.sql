/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : eweb2

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 18/06/2022 01:54:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for billing_plans
-- ----------------------------
DROP TABLE IF EXISTS `billing_plans`;
CREATE TABLE `billing_plans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(13, 2) NULL DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `interval` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(11) NULL DEFAULT NULL,
  `legacy_permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `show_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `billing_plans_hidden_index`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of billing_plans
-- ----------------------------
INSERT INTO `billing_plans` VALUES (1, 'Basic', 10.00, 'USD', '$', 'month', 1, NULL, NULL, 'EsTcGLcU9mIh8uUYUrIXiOpyrcqpGjvK1A3H', NULL, 0, 0, 0, '[\"Drag & Drop Builder\",\"500MB Storage\",\"Code Editors\",\"No Ads\",\"Free Subdomain\"]', 1, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (2, '6 months subscription', 54.00, 'USD', '$', 'month', 6, 1, NULL, 'AynsyPoowqTbzhyDZjEfonaTgOgs814qV8uA', NULL, 0, 0, 0, NULL, 0, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (3, '1 year subscription', 96.00, 'USD', '$', 'month', 12, 1, NULL, 'DUwOECFCq1USlCoJC9vXIrCbpowkOs5tvbkr', NULL, 0, 0, 0, NULL, 0, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (4, 'Standard', 15.00, 'USD', '$', 'month', 1, NULL, NULL, 'CmS5AXHdjqbsGtb41pclWeaLS7tppNeTQ20S', NULL, 1, 0, 0, '[\"Drag & Drop Builder\",\"500MB Storage\",\"Code Editors\",\"No Ads\",\"Custom Domains\",\"Download Projects\"]', 2, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (5, '6 months subscription', 81.00, 'USD', '$', 'month', 6, 4, NULL, 'UMJJpis4Duif6rgzkjl9zpLEYygzo8468Zec', NULL, 0, 0, 0, NULL, 0, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (6, '1 year subscription', 144.00, 'USD', '$', 'month', 12, 4, NULL, 'lzqYnRougoOF6Z8AE1AvXMrEdaqXEbVHHaco', NULL, 0, 0, 0, NULL, 0, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (7, 'Pro', 25.00, 'USD', '$', 'month', 1, NULL, NULL, '0MNeTg7ReFTx39xPTRHsoImrha4qdDlVXIa9', NULL, 0, 0, 0, '[\"Drag & Drop Builder\",\"2GB Storage\",\"Code Editors\",\"No Ads\",\"Custom Domains\",\"Download Projects\",\"Export Projects to FTP\",\"Priority Support\"]', 3, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (8, '6 months subscription', 135.00, 'USD', '$', 'month', 6, 7, NULL, '0LbH9i8BECT6Se6c659tPwqE4YpCSdM11gFS', NULL, 0, 0, 0, NULL, 0, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);
INSERT INTO `billing_plans` VALUES (9, '1 year subscription', 240.00, 'USD', '$', 'month', 12, 7, NULL, 'NtWhHxnAfPJjS5u9C5w0BGzffXK3oDYrF00R', NULL, 0, 0, 0, NULL, 0, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0);

-- ----------------------------
-- Table structure for builder_pages
-- ----------------------------
DROP TABLE IF EXISTS `builder_pages`;
CREATE TABLE `builder_pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageable_id` int(11) NOT NULL,
  `pageable_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppProject',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `builder_pages_name_pageable_type_pageable_id_unique`(`name`, `pageable_type`, `pageable_id`) USING BTREE,
  INDEX `builder_pages_pageable_id_index`(`pageable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of builder_pages
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comments_parent_id_index`(`parent_id`) USING BTREE,
  INDEX `comments_path_index`(`path`) USING BTREE,
  INDEX `comments_user_id_index`(`user_id`) USING BTREE,
  INDEX `comments_commentable_id_index`(`commentable_id`) USING BTREE,
  INDEX `comments_commentable_type_index`(`commentable_type`) USING BTREE,
  INDEX `comments_deleted_index`(`deleted`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for css_themes
-- ----------------------------
DROP TABLE IF EXISTS `css_themes`;
CREATE TABLE `css_themes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_dark` tinyint(1) NOT NULL DEFAULT 0,
  `default_light` tinyint(1) NOT NULL DEFAULT 0,
  `default_dark` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `colors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `css_themes_name_unique`(`name`) USING BTREE,
  INDEX `css_themes_default_light_index`(`default_light`) USING BTREE,
  INDEX `css_themes_default_dark_index`(`default_dark`) USING BTREE,
  INDEX `css_themes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of css_themes
-- ----------------------------
INSERT INTO `css_themes` VALUES (1, 'Dark', 1, 0, 1, 1, '{\"--be-primary-lighter\":\"#3e4a66\",\"--be-primary-default\":\"#2B3346\",\"--be-primary-darker\":\"#181c26\",\"--be-accent-default\":\"#8AB2E0\",\"--be-accent-lighter\":\"#B9D1EC\",\"--be-accent-contrast\":\"rgba(255, 255, 255, 1)\",\"--be-accent-emphasis\":\"rgba(185, 209, 236, 0.1)\",\"--be-foreground-base\":\"#fff\",\"--be-text\":\"#fff\",\"--be-hint-text\":\"rgba(255, 255, 255, 0.5)\",\"--be-secondary-text\":\"rgba(255, 255, 255, 0.7)\",\"--be-label\":\"rgba(255, 255, 255, 0.7)\",\"--be-background\":\"#1D1D1D\",\"--be-background-alternative\":\"#121212\",\"--be-divider-lighter\":\"rgba(255, 255, 255, 0.06)\",\"--be-divider-default\":\"rgba(255, 255, 255, 0.12)\",\"--be-disabled-button-text\":\"rgba(255, 255, 255, 0.3)\",\"--be-disabled-toggle\":\"#000\",\"--be-chip\":\"#616161\",\"--be-hover\":\"rgba(255, 255, 255, 0.04)\",\"--be-selected-button\":\"#212121\",\"--be-disabled-button\":\"rgba(255, 255, 255, 0.12)\",\"--be-raised-button\":\"#424242\",\"--be-backdrop\":\"#BDBDBD\",\"--be-link\":\"#c5cae9\"}', '2022-06-17 07:26:25', '2022-06-17 07:26:25');
INSERT INTO `css_themes` VALUES (2, 'Light', 0, 1, 0, 1, '{\"--be-primary-lighter\":\"#3e4a66\",\"--be-primary-default\":\"rgba(24,134,0,1)\",\"--be-primary-darker\":\"#181c26\",\"--be-accent-default\":\"rgba(215,31,15,1)\",\"--be-accent-lighter\":\"#B9D1EC\",\"--be-accent-contrast\":\"rgba(255, 255, 255, 1)\",\"--be-accent-emphasis\":\"rgba(185, 209, 236, 0.1)\",\"--be-background\":\"rgb(255, 255, 255)\",\"--be-background-alternative\":\"rgb(250, 250, 250)\",\"--be-foreground-base\":\"black\",\"--be-text\":\"rgba(0, 0, 0, 0.87)\",\"--be-hint-text\":\"rgba(0, 0, 0, 0.38)\",\"--be-secondary-text\":\"rgba(0, 0, 0, 0.54)\",\"--be-label\":\"rgba(0, 0, 0, 0.87)\",\"--be-disabled-button-text\":\"rgba(0, 0, 0, 0.26)\",\"--be-divider-lighter\":\"rgba(0, 0, 0, 0.06)\",\"--be-divider-default\":\"rgba(0, 0, 0, 0.12)\",\"--be-hover\":\"rgba(0,0,0,0.04)\",\"--be-selected-button\":\"rgb(224, 224, 224)\",\"--be-chip\":\"#e0e0e0\",\"--be-link\":\"#3f51b5\",\"--be-backdrop\":\"black\",\"--be-raised-button\":\"#fff\",\"--be-disabled-toggle\":\"rgb(238, 238, 238)\",\"--be-disabled-button\":\"rgba(0, 0, 0, 0.12)\"}', '2022-06-17 07:26:25', '2022-06-17 20:26:42');

-- ----------------------------
-- Table structure for csv_exports
-- ----------------------------
DROP TABLE IF EXISTS `csv_exports`;
CREATE TABLE `csv_exports`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cache_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `download_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `csv_exports_cache_name_unique`(`cache_name`) USING BTREE,
  INDEX `csv_exports_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of csv_exports
-- ----------------------------

-- ----------------------------
-- Table structure for custom_domains
-- ----------------------------
DROP TABLE IF EXISTS `custom_domains`;
CREATE TABLE `custom_domains`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `resource_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `resource_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `custom_domains_host_unique`(`host`) USING BTREE,
  INDEX `custom_domains_user_id_index`(`user_id`) USING BTREE,
  INDEX `custom_domains_created_at_index`(`created_at`) USING BTREE,
  INDEX `custom_domains_updated_at_index`(`updated_at`) USING BTREE,
  INDEX `custom_domains_global_index`(`global`) USING BTREE,
  INDEX `custom_domains_resource_id_index`(`resource_id`) USING BTREE,
  INDEX `custom_domains_resource_type_index`(`resource_type`) USING BTREE,
  INDEX `custom_domains_workspace_id_index`(`workspace_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_domains
-- ----------------------------

-- ----------------------------
-- Table structure for custom_pages
-- ----------------------------
DROP TABLE IF EXISTS `custom_pages`;
CREATE TABLE `custom_pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `hide_nav` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pages_slug_unique`(`slug`) USING BTREE,
  INDEX `pages_type_index`(`type`) USING BTREE,
  INDEX `pages_user_id_index`(`user_id`) USING BTREE,
  INDEX `custom_pages_workspace_id_index`(`workspace_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_pages
-- ----------------------------
INSERT INTO `custom_pages` VALUES (1, 'Privacy Policy', '<h1>Example Privacy Policy</h1><p>The standard Lorem Ipsum passage, used since the 1500s\r\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\r\n\r\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\r\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n\r\n<p>1914 translation by H. Rackham\r\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n\r\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\r\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n\r\n<p>1914 translation by H. Rackham\r\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'privacy-policy', NULL, 'default', '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0, NULL);
INSERT INTO `custom_pages` VALUES (2, 'Terms of Service', '<h1>Example Terms of Service</h1><p>The standard Lorem Ipsum passage, used since the 1500s\r\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\r\n\r\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\r\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n\r\n<p>1914 translation by H. Rackham\r\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n\r\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\r\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n\r\n<p>1914 translation by H. Rackham\r\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'terms-of-service', NULL, 'default', '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0, NULL);
INSERT INTO `custom_pages` VALUES (3, 'About Us', '<h1>Example About Us</h1><p>The standard Lorem Ipsum passage, used since the 1500s\r\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\r\n\r\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\r\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n\r\n<p>1914 translation by H. Rackham\r\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n\r\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\r\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n\r\n<p>1914 translation by H. Rackham\r\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'about-us', NULL, 'default', '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 0, NULL);

-- ----------------------------
-- Table structure for file_entries
-- ----------------------------
DROP TABLE IF EXISTS `file_entries`;
CREATE TABLE `file_entries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `extension` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `disk_prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `preview_token` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `thumbnail` tinyint(1) NOT NULL DEFAULT 0,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uploads_file_name_unique`(`file_name`) USING BTREE,
  INDEX `uploads_name_index`(`name`) USING BTREE,
  INDEX `uploads_user_id_index`(`user_id`) USING BTREE,
  INDEX `uploads_public_index`(`public`) USING BTREE,
  INDEX `file_entries_updated_at_index`(`updated_at`) USING BTREE,
  INDEX `file_entries_parent_id_index`(`parent_id`) USING BTREE,
  INDEX `file_entries_type_index`(`type`) USING BTREE,
  INDEX `file_entries_deleted_at_index`(`deleted_at`) USING BTREE,
  INDEX `file_entries_user_id_index`(`user_id`) USING BTREE,
  INDEX `file_entries_path_index`(`path`) USING BTREE,
  INDEX `file_entries_description_index`(`description`) USING BTREE,
  INDEX `file_entries_owner_id_index`(`owner_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_entries
-- ----------------------------
INSERT INTO `file_entries` VALUES (1, 'options.png', 'ZEtlXRkYetFpfY1edFb77U9kpA7hznEKRlx2Y15l.png', 164252, 'image/png', 'png', NULL, '2022-06-17 10:50:25', '2022-06-17 10:50:25', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);
INSERT INTO `file_entries` VALUES (2, 'logo-light.png', 'y3Eev6WQY6OkWdrKKMlHWo5uxuiBlhP2rNny3mua.png', 10123, 'image/png', 'png', NULL, '2022-06-17 19:00:31', '2022-06-17 19:00:31', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);
INSERT INTO `file_entries` VALUES (3, 'logo-dark.png', 'mvMMyhIYc1IQQktHTZI2IWH9Wh0CMEaHXeaTbxLB.png', 14608, 'image/png', 'png', NULL, '2022-06-17 19:00:42', '2022-06-17 19:00:42', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);
INSERT INTO `file_entries` VALUES (4, 'thumbnail (1).png', 'v0kaLikJEbsP7F0N4voAEAtd08Bp43bvsa4pQQHd.png', 198647, 'image/png', 'png', NULL, '2022-06-17 19:09:15', '2022-06-17 19:09:15', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);
INSERT INTO `file_entries` VALUES (5, 'thumbnail.png', 'Pi0xY5e3wVpGagYLrNLJPSpWRVD60xgcl6gNMwf2.png', 36771, 'image/png', 'png', NULL, '2022-06-17 19:09:29', '2022-06-17 19:09:29', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);
INSERT INTO `file_entries` VALUES (6, 'thumbnail2.png', '6dg7gPE1eORm5ZYVFk6sp2lOwOr1lOhJgBYRDTPv.png', 143613, 'image/png', 'png', NULL, '2022-06-17 19:09:35', '2022-06-17 19:09:35', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);
INSERT INTO `file_entries` VALUES (7, 'landing-bg.png', '9OhGfE8Lct8Ml72BVk82iPq8CUu8ElTDStmCWsJh.png', 17734, 'image/png', 'png', NULL, '2022-06-17 20:58:33', '2022-06-17 20:58:33', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);
INSERT INTO `file_entries` VALUES (8, 'landing-bg-orange.png', 'qEWZ5uJlEd7QKoj6ZDadcBwIiYIbpjL9YCRDZsCR.png', 7722, 'image/png', 'png', NULL, '2022-06-17 20:58:51', '2022-06-17 20:58:51', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 1);

-- ----------------------------
-- Table structure for file_entry_models
-- ----------------------------
DROP TABLE IF EXISTS `file_entry_models`;
CREATE TABLE `file_entry_models`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_entry_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uploadables_upload_id_uploadable_id_uploadable_type_unique`(`file_entry_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `file_entry_models_owner_index`(`owner`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_entry_models
-- ----------------------------
INSERT INTO `file_entry_models` VALUES (1, 1, 1, 'App\\User', '2022-06-17 10:50:25', '2022-06-17 10:50:25', 1, NULL);
INSERT INTO `file_entry_models` VALUES (2, 2, 1, 'App\\User', '2022-06-17 19:00:31', '2022-06-17 19:00:31', 1, NULL);
INSERT INTO `file_entry_models` VALUES (3, 3, 1, 'App\\User', '2022-06-17 19:00:42', '2022-06-17 19:00:42', 1, NULL);
INSERT INTO `file_entry_models` VALUES (4, 4, 1, 'App\\User', '2022-06-17 19:09:15', '2022-06-17 19:09:15', 1, NULL);
INSERT INTO `file_entry_models` VALUES (5, 5, 1, 'App\\User', '2022-06-17 19:09:29', '2022-06-17 19:09:29', 1, NULL);
INSERT INTO `file_entry_models` VALUES (6, 6, 1, 'App\\User', '2022-06-17 19:09:35', '2022-06-17 19:09:35', 1, NULL);
INSERT INTO `file_entry_models` VALUES (7, 7, 1, 'App\\User', '2022-06-17 20:58:33', '2022-06-17 20:58:33', 1, NULL);
INSERT INTO `file_entry_models` VALUES (8, 8, 1, 'App\\User', '2022-06-17 20:58:51', '2022-06-17 20:58:51', 1, NULL);

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `uuid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoices_subscription_id_index`(`subscription_id`) USING BTREE,
  INDEX `invoices_uuid_index`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoices
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_reserved_at_index`(`queue`, `reserved_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for localizations
-- ----------------------------
DROP TABLE IF EXISTS `localizations`;
CREATE TABLE `localizations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `language` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `localizations_name_index`(`name`) USING BTREE,
  INDEX `localizations_language_index`(`language`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of localizations
-- ----------------------------
INSERT INTO `localizations` VALUES (1, 'english', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'en');
INSERT INTO `localizations` VALUES (2, 'zambian', '2022-06-17 07:54:43', '2022-06-17 11:02:12', 'af');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2015_04_127_156842_create_social_profiles_table', 1);
INSERT INTO `migrations` VALUES (4, '2015_04_127_156842_create_users_oauth_table', 1);
INSERT INTO `migrations` VALUES (5, '2015_05_29_131549_create_settings_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_05_12_190852_create_tags_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_05_12_190958_create_taggables_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_05_26_170044_create_uploads_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_05_27_143158_create_uploadables_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_07_14_153703_create_groups_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_07_14_153921_create_user_group_table', 1);
INSERT INTO `migrations` VALUES (12, '2017_07_01_150551_rename_pages_table_to_builder_pages', 1);
INSERT INTO `migrations` VALUES (13, '2017_07_02_120142_create_pages_table', 1);
INSERT INTO `migrations` VALUES (14, '2017_07_02_151788_create_builder_pages_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_07_11_122825_create_localizations_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_08_26_131330_add_private_field_to_settings_table', 1);
INSERT INTO `migrations` VALUES (17, '2017_09_17_144728_add_columns_to_users_table', 1);
INSERT INTO `migrations` VALUES (18, '2017_09_17_152854_make_password_column_nullable', 1);
INSERT INTO `migrations` VALUES (19, '2017_09_30_152855_make_settings_value_column_nullable', 1);
INSERT INTO `migrations` VALUES (20, '2017_10_01_152897_add_public_column_to_uploads_table', 1);
INSERT INTO `migrations` VALUES (21, '2017_12_01_134322_upgrade_users_table_to_laravel', 1);
INSERT INTO `migrations` VALUES (22, '2017_12_04_132911_add_avatar_column_to_users_table', 1);
INSERT INTO `migrations` VALUES (23, '2017_12_05_145410_create_projects_table', 1);
INSERT INTO `migrations` VALUES (24, '2017_12_06_151747_add_columns_to_projects_table', 1);
INSERT INTO `migrations` VALUES (25, '2017_12_07_151787_create_users_projects_table', 1);
INSERT INTO `migrations` VALUES (26, '2018_01_10_140732_create_subscriptions_table', 1);
INSERT INTO `migrations` VALUES (27, '2018_01_10_140746_add_billing_to_users_table', 1);
INSERT INTO `migrations` VALUES (28, '2018_01_10_161706_create_billing_plans_table', 1);
INSERT INTO `migrations` VALUES (29, '2018_02_12_151757_add_default_and_guests_columns_to_groups_table', 1);
INSERT INTO `migrations` VALUES (30, '2018_07_24_113757_add_available_space_to_billing_plans_table', 1);
INSERT INTO `migrations` VALUES (31, '2018_07_24_124254_add_available_space_to_users_table', 1);
INSERT INTO `migrations` VALUES (32, '2018_07_26_142339_rename_groups_to_roles', 1);
INSERT INTO `migrations` VALUES (33, '2018_07_26_142842_rename_user_role_table_columns_to_roles', 1);
INSERT INTO `migrations` VALUES (34, '2018_08_07_124200_rename_uploads_to_file_entries', 1);
INSERT INTO `migrations` VALUES (35, '2018_08_07_124327_refactor_file_entries_columns', 1);
INSERT INTO `migrations` VALUES (36, '2018_08_07_130653_add_folder_path_column_to_file_entries_table', 1);
INSERT INTO `migrations` VALUES (37, '2018_08_07_140440_migrate_file_entry_users_to_many_to_many', 1);
INSERT INTO `migrations` VALUES (38, '2018_08_15_132225_move_uploads_into_subfolders', 1);
INSERT INTO `migrations` VALUES (39, '2018_08_31_104145_rename_uploadables_table', 1);
INSERT INTO `migrations` VALUES (40, '2018_08_31_104325_rename_file_entry_models_table_columns', 1);
INSERT INTO `migrations` VALUES (41, '2018_11_26_171703_add_type_and_title_columns_to_pages_table', 1);
INSERT INTO `migrations` VALUES (42, '2018_12_01_144233_change_unique_index_on_tags_table', 1);
INSERT INTO `migrations` VALUES (43, '2019_02_16_150049_delete_old_seo_settings', 1);
INSERT INTO `migrations` VALUES (44, '2019_02_24_141457_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (45, '2019_03_11_162627_add_preview_token_to_file_entries_table', 1);
INSERT INTO `migrations` VALUES (46, '2019_03_12_160803_add_thumbnail_column_to_file_entries_table', 1);
INSERT INTO `migrations` VALUES (47, '2019_03_16_161836_add_paypal_id_column_to_billing_plans_table', 1);
INSERT INTO `migrations` VALUES (48, '2019_05_14_120930_index_description_column_in_file_entries_table', 1);
INSERT INTO `migrations` VALUES (49, '2019_06_08_120504_create_custom_domains_table', 1);
INSERT INTO `migrations` VALUES (50, '2019_06_13_140318_add_user_id_column_to_pages_table', 1);
INSERT INTO `migrations` VALUES (51, '2019_06_15_114320_rename_pages_table_to_custom_pages', 1);
INSERT INTO `migrations` VALUES (52, '2019_06_18_133933_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (53, '2019_06_18_134203_create_permissionables_table', 1);
INSERT INTO `migrations` VALUES (54, '2019_06_18_135822_rename_permissions_columns', 1);
INSERT INTO `migrations` VALUES (55, '2019_06_25_133852_move_inline_permissions_to_separate_table', 1);
INSERT INTO `migrations` VALUES (56, '2019_07_08_122001_create_css_themes_table', 1);
INSERT INTO `migrations` VALUES (57, '2019_07_20_141752_create_invoices_table', 1);
INSERT INTO `migrations` VALUES (58, '2019_08_19_121112_add_global_column_to_custom_domains_table', 1);
INSERT INTO `migrations` VALUES (59, '2019_09_13_141123_change_plan_amount_to_float', 1);
INSERT INTO `migrations` VALUES (60, '2019_10_14_171943_add_index_to_username_column', 1);
INSERT INTO `migrations` VALUES (61, '2019_10_20_143522_create_comments_table', 1);
INSERT INTO `migrations` VALUES (62, '2019_10_23_134520_create_notifications_table', 1);
INSERT INTO `migrations` VALUES (63, '2019_11_21_144956_add_resource_id_and_type_to_custom_domains_table', 1);
INSERT INTO `migrations` VALUES (64, '2019_11_23_153905_add_slug_column_to_projects_table', 1);
INSERT INTO `migrations` VALUES (65, '2019_11_23_154003_add_slugs_to_legacy_projects', 1);
INSERT INTO `migrations` VALUES (66, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (67, '2019_12_14_194512_rename_public_path_column_to_disk_prefix', 1);
INSERT INTO `migrations` VALUES (68, '2019_12_24_165237_change_file_size_column_default_value_to_0', 1);
INSERT INTO `migrations` VALUES (69, '2019_12_28_190836_update_file_entry_models_table_to_v2', 1);
INSERT INTO `migrations` VALUES (70, '2019_12_28_191105_move_user_file_entry_table_records_to_file_entry_models', 1);
INSERT INTO `migrations` VALUES (71, '2020_01_26_143733_create_notification_subscriptions_table', 1);
INSERT INTO `migrations` VALUES (72, '2020_03_03_140720_add_language_col_to_localizations_table', 1);
INSERT INTO `migrations` VALUES (73, '2020_03_03_143142_add_lang_code_to_existing_localizations', 1);
INSERT INTO `migrations` VALUES (74, '2020_04_14_163347_add_hidden_column_to_plans_table', 1);
INSERT INTO `migrations` VALUES (75, '2020_06_27_180040_add_verified_at_column_to_users_table', 1);
INSERT INTO `migrations` VALUES (76, '2020_06_27_180253_move_confirmed_column_to_email_verified_at', 1);
INSERT INTO `migrations` VALUES (77, '2020_07_15_144024_fix_issues_with_migration_to_laravel_7', 1);
INSERT INTO `migrations` VALUES (78, '2020_07_22_165126_create_workspaces_table', 1);
INSERT INTO `migrations` VALUES (79, '2020_07_23_145652_create_workspace_invites_table', 1);
INSERT INTO `migrations` VALUES (80, '2020_07_23_164502_create_workspace_user_table', 1);
INSERT INTO `migrations` VALUES (81, '2020_07_26_165349_add_columns_to_roles_table', 1);
INSERT INTO `migrations` VALUES (82, '2020_07_29_141418_add_workspace_id_column_to_workspaceable_models', 1);
INSERT INTO `migrations` VALUES (83, '2020_07_30_152330_add_type_column_to_permissions_table', 1);
INSERT INTO `migrations` VALUES (84, '2020_08_29_165057_add_hide_nav_column_to_custom_pages_table', 1);
INSERT INTO `migrations` VALUES (85, '2021_04_22_172459_add_internal_columm_to_roles_table', 1);
INSERT INTO `migrations` VALUES (86, '2021_05_03_173446_add_deleted_column_to_comments_table', 1);
INSERT INTO `migrations` VALUES (87, '2021_05_12_164940_add_advanced_column_to_permissions_table', 1);
INSERT INTO `migrations` VALUES (88, '2021_06_04_143405_add_workspace_id_col_to_custom_domains_table', 1);
INSERT INTO `migrations` VALUES (89, '2021_06_04_143406_add_workspace_id_col_to_custom_pages_table', 1);
INSERT INTO `migrations` VALUES (90, '2021_06_05_182202_create_csv_exports_table', 1);
INSERT INTO `migrations` VALUES (91, '2021_06_18_161030_rename_gateway_col_in_subscriptions_table', 1);
INSERT INTO `migrations` VALUES (92, '2021_06_19_111939_add_owner_id_column_to_file_entries_table', 1);
INSERT INTO `migrations` VALUES (93, '2021_06_19_112035_materialize_owner_id_in_file_entries_table', 1);
INSERT INTO `migrations` VALUES (94, '2021_07_06_144837_migrate_landing_page_config_to_20', 1);
INSERT INTO `migrations` VALUES (95, '2021_07_17_093454_add_created_at_col_to_user_role_table', 1);
INSERT INTO `migrations` VALUES (96, '2021_08_12_160336_add_settings_column_to_projects_table', 1);
INSERT INTO `migrations` VALUES (97, '2021_09_30_123758_slugify_tag_name_column', 1);
INSERT INTO `migrations` VALUES (98, '2021_10_13_132915_add_token_cols_to_social_profiles_table', 1);

-- ----------------------------
-- Table structure for notification_subscriptions
-- ----------------------------
DROP TABLE IF EXISTS `notification_subscriptions`;
CREATE TABLE `notification_subscriptions`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notif_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `channels` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notification_subscriptions_notif_id_index`(`notif_id`) USING BTREE,
  INDEX `notification_subscriptions_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification_subscriptions
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifiable_type_notifiable_id_index`(`notifiable_type`, `notifiable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissionables
-- ----------------------------
DROP TABLE IF EXISTS `permissionables`;
CREATE TABLE `permissionables`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `permissionable_id` int(11) NOT NULL,
  `permissionable_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissionable_unique`(`permission_id`, `permissionable_id`, `permissionable_type`) USING BTREE,
  INDEX `permissionables_permission_id_index`(`permission_id`) USING BTREE,
  INDEX `permissionables_permissionable_id_index`(`permissionable_id`) USING BTREE,
  INDEX `permissionables_permissionable_type_index`(`permissionable_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissionables
-- ----------------------------
INSERT INTO `permissionables` VALUES (1, 1, 1, 'App\\User', NULL);
INSERT INTO `permissionables` VALUES (2, 10, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (3, 15, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (4, 19, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (5, 23, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (6, 27, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (7, 33, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (8, 38, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (9, 50, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (10, 53, 1, 'Common\\Auth\\Roles\\Role', '[{\"name\":\"count\",\"value\":8}]');
INSERT INTO `permissionables` VALUES (11, 56, 1, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (12, 10, 2, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (13, 27, 2, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (14, 33, 2, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (15, 38, 2, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (16, 23, 2, 'Common\\Auth\\Roles\\Role', '[]');
INSERT INTO `permissionables` VALUES (17, 50, 1, 'Common\\Billing\\BillingPlan', NULL);
INSERT INTO `permissionables` VALUES (18, 50, 4, 'Common\\Billing\\BillingPlan', NULL);
INSERT INTO `permissionables` VALUES (19, 51, 4, 'Common\\Billing\\BillingPlan', NULL);
INSERT INTO `permissionables` VALUES (20, 50, 7, 'Common\\Billing\\BillingPlan', NULL);
INSERT INTO `permissionables` VALUES (21, 51, 7, 'Common\\Billing\\BillingPlan', NULL);
INSERT INTO `permissionables` VALUES (22, 49, 7, 'Common\\Billing\\BillingPlan', NULL);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `advanced` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_unique`(`name`) USING BTREE,
  INDEX `permissions_advanced_index`(`advanced`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'admin', 'Super Admin', 'Give all permissions to user.', 'admin', NULL, '2022-06-17 07:26:24', '2022-06-17 07:26:24', 'sitewide', 0);
INSERT INTO `permissions` VALUES (2, 'admin.access', 'Access Admin', 'Required in order to access any admin area page.', 'admin', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (3, 'appearance.update', 'Update Appearance', 'Allows access to appearance editor.', 'admin', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (4, 'reports.view', 'View Reports', 'Allows access to analytics page in admin area.', 'admin', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (5, 'api.access', 'Access Api', 'Allow users to use the API and access API section in their account settings page.', 'api', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (6, 'roles.view', 'View Roles', 'Allow viewing ALL roles.', 'roles', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (7, 'roles.create', 'Create Roles', 'Allow creating new roles.', 'roles', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (8, 'roles.update', 'Update Roles', 'Allow updating ALL roles.', 'roles', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (9, 'roles.delete', 'Delete Roles', 'Allow deleting ALL roles.', 'roles', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (10, 'custom_pages.view', 'View Custom Pages', 'Allow viewing of all pages on the site, regardless of who created them. User can view their own pages without this permission.', 'custom_pages', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (11, 'custom_pages.create', 'Create Custom Pages', 'Allow creating new custom pages.', 'custom_pages', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of pages user will be able to create. Leave empty for unlimited.\"}]', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (12, 'custom_pages.update', 'Update Custom Pages', 'Allow editing of all pages on the site, regardless of who created them. User can edit their own pages without this permission.', 'custom_pages', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (13, 'custom_pages.delete', 'Delete Custom Pages', 'Allow deleting of all pages on the site, regardless of who created them. User can delete their own pages without this permission.', 'custom_pages', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (14, 'custom_domains.view', 'View Custom Domains', 'Allow viewing all domains on the site, regardless of who created them. User can view their own domains without this permission.', 'custom_domains', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (15, 'custom_domains.create', 'Create Custom Domains', 'Allow user to connect their own custom domains.', 'custom_domains', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of domains user will be able to create. Leave empty for unlimited.\"}]', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (16, 'custom_domains.update', 'Update Custom Domains', 'Allow editing all domains on the site, regardless of who created them. User can edit their own domains without this permission.', 'custom_domains', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (17, 'custom_domains.delete', 'Delete Custom Domains', 'Allow deleting all domains on the site, regardless of who created them. User can delete their own domains without this permission.', 'custom_domains', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (18, 'files.view', 'View Files', 'Allow viewing all uploaded files on the site. Users can view their own uploads without this permission.', 'files', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (19, 'files.create', 'Create Files', 'Allow uploading files on the site. This permission is used by any page where it is possible for user to upload files.', 'files', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (20, 'files.update', 'Update Files', 'Allow editing all uploaded files on the site. Users can edit their own uploads without this permission.', 'files', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (21, 'files.delete', 'Delete Files', 'Allow deleting all uploaded files on the site. Users can delete their own uploads (where applicable) without this permission.', 'files', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (22, 'files.download', 'Download Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (23, 'users.view', 'View Users', 'Allow viewing user profile pages on the site. User can view their own profile without this permission.', 'users', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (24, 'users.create', 'Create Users', 'Allow creating users from admin area. Users can register for new accounts without this permission. Registration can be disabled from settings page.', 'users', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (25, 'users.update', 'Update Users', 'Allow editing details of any user on the site. User can edit their own details without this permission.', 'users', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (26, 'users.delete', 'Delete Users', 'Allow deleting any user on the site. User can request deletion of their own account without this permission.', 'users', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (27, 'localizations.view', 'View Localizations', 'Allow viewing ALL localizations.', 'localizations', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (28, 'localizations.create', 'Create Localizations', 'Allow creating new localizations.', 'localizations', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (29, 'localizations.update', 'Update Localizations', 'Allow updating ALL localizations.', 'localizations', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (30, 'localizations.delete', 'Delete Localizations', 'Allow deleting ALL localizations.', 'localizations', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (31, 'settings.view', 'View Settings', 'Allow viewing ALL settings.', 'settings', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (32, 'settings.update', 'Update Settings', 'Allow updating ALL settings.', 'settings', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (33, 'plans.view', 'View Plans', 'Allow viewing ALL plans.', 'plans', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (34, 'plans.create', 'Create Plans', 'Allow creating new plans.', 'plans', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (35, 'plans.update', 'Update Plans', 'Allow updating ALL plans.', 'plans', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (36, 'plans.delete', 'Delete Plans', 'Allow deleting ALL plans.', 'plans', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (37, 'invoices.view', 'View Invoices', 'Allow viewing ALL invoices.', 'invoices', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (38, 'tags.view', 'View Tags', 'Allow viewing ALL tags.', 'tags', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (39, 'tags.create', 'Create Tags', 'Allow creating new tags.', 'tags', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (40, 'tags.update', 'Update Tags', 'Allow updating ALL tags.', 'tags', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (41, 'tags.delete', 'Delete Tags', 'Allow deleting ALL tags.', 'tags', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (42, 'workspaces.view', 'View Workspaces', 'Allow viewing ALL workspaces.', 'workspaces', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (43, 'workspaces.create', 'Create Workspaces', 'Allow creating new workspaces.', 'workspaces', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of workspaces user will be able to create. Leave empty for unlimited.\"},{\"name\":\"member_count\",\"type\":\"number\",\"description\":\"Maximum number of members workspace is allowed to have.\"}]', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (44, 'workspaces.update', 'Update Workspaces', 'Allow updating ALL workspaces.', 'workspaces', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (45, 'workspaces.delete', 'Delete Workspaces', 'Allow deleting ALL workspaces.', 'workspaces', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (46, 'workspace_members.invite', 'Invite Members', 'Allow user to invite new members into a workspace.', 'workspace_members', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'workspace', 0);
INSERT INTO `permissions` VALUES (47, 'workspace_members.update', 'Update Members', 'Allow user to change role of other members.', 'workspace_members', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'workspace', 0);
INSERT INTO `permissions` VALUES (48, 'workspace_members.delete', 'Delete Members', 'Allow user to remove members from workspace.', 'workspace_members', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'workspace', 0);
INSERT INTO `permissions` VALUES (49, 'projects.export', 'Export Projects', 'Allow user to export projects to their own FTP server.', 'builder', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (50, 'editors.enable', 'Enable Editors', 'Allow user to use html,css and js code editors.', 'builder', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (51, 'projects.download', 'Download Projects', 'Allow user to download their project .zip file.', 'builder', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (52, 'projects.view', 'View Projects', 'Allow viewing ALL projects.', 'projects', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (53, 'projects.create', 'Create Projects', 'Allow creating new projects.', 'projects', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of projects user will be able to create. Leave empty for unlimited.\"}]', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 0);
INSERT INTO `permissions` VALUES (54, 'projects.update', 'Update Projects', 'Allow updating ALL projects.', 'projects', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (55, 'projects.delete', 'Delete Projects', 'Allow deleting ALL projects.', 'projects', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (56, 'templates.view', 'View Templates', 'Allow viewing ALL templates.', 'templates', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (57, 'templates.create', 'Create Templates', 'Allow creating new templates.', 'templates', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (58, 'templates.update', 'Update Templates', 'Allow updating ALL templates.', 'templates', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);
INSERT INTO `permissions` VALUES (59, 'templates.delete', 'Delete Templates', 'Allow deleting ALL templates.', 'templates', NULL, '2022-06-17 07:26:25', '2022-06-17 07:26:25', 'sitewide', 1);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `projects_name_index`(`name`) USING BTREE,
  INDEX `projects_slug_index`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projects
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `legacy_permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `guests` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `groups_name_unique`(`name`) USING BTREE,
  INDEX `groups_default_index`(`default`) USING BTREE,
  INDEX `groups_guests_index`(`guests`) USING BTREE,
  INDEX `roles_internal_index`(`internal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'users', NULL, 1, 0, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 'sitewide', 0);
INSERT INTO `roles` VALUES (2, 'guests', NULL, 0, 1, '2022-06-17 07:26:25', '2022-06-17 07:26:25', NULL, 'sitewide', 0);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_name_unique`(`name`) USING BTREE,
  INDEX `settings_private_index`(`private`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'dates.format', 'yyyy-MM-dd', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (2, 'dates.locale', 'en_US', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (3, 'social.google.enable', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (4, 'social.twitter.enable', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (5, 'social.facebook.enable', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (6, 'realtime.enable', 'false', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (7, 'registration.disable', 'false', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (8, 'cache.report_minutes', '60', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (9, 'branding.favicon', 'client/favicon/icon-144x144.png', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (10, 'branding.logo_dark', 'storage/branding_media/mvMMyhIYc1IQQktHTZI2IWH9Wh0CMEaHXeaTbxLB.png', '2022-06-17 07:26:25', '2022-06-17 19:00:47', 0);
INSERT INTO `settings` VALUES (11, 'branding.logo_light', 'storage/branding_media/y3Eev6WQY6OkWdrKKMlHWo5uxuiBlhP2rNny3mua.png', '2022-06-17 07:26:25', '2022-06-17 19:00:35', 0);
INSERT INTO `settings` VALUES (12, 'i18n.default_localization', 'en', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (13, 'i18n.enable', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (14, 'logging.sentry_public', '', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (15, 'realtime.pusher_key', '', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (16, 'homepage.type', 'default', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (17, 'themes.default_mode', 'light', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (18, 'themes.user_change', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (19, 'billing.enable', 'false', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (20, 'billing.paypal_test_mode', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (21, 'billing.stripe_test_mode', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (22, 'billing.stripe.enable', 'false', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (23, 'billing.paypal.enable', 'false', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (24, 'billing.accepted_cards', '[\"visa\",\"mastercard\",\"american-express\",\"discover\"]', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (25, 'custom_domains.default_host', '', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (26, 'uploads.chunk', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (27, 'uploads.chunk_size', '5242880', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (28, 'cookie_notice.enable', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (29, 'cookie_notice.position', 'bottom', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (30, 'menus', '[{\"position\":\"dashboard\",\"name\":\"Dashboard\",\"items\":[{\"type\":\"route\",\"order\":1,\"condition\":\"admin\",\"position\":0,\"label\":\"Admin Area\",\"action\":\"admin\"}]},{\"name\":\"footer\",\"position\":\"footer\",\"items\":[{\"type\":\"route\",\"position\":1,\"label\":\"Developers\",\"action\":\"\\/api-docs\",\"condition\":\"auth\"},{\"type\":\"route\",\"position\":2,\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/1\\/privacy-policy\"},{\"type\":\"route\",\"position\":3,\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/2\\/terms-of-service\"},{\"type\":\"route\",\"position\":4,\"label\":\"Contact Us\",\"action\":\"\\/contact\"}]},{\"name\":\"Footer Social\",\"position\":\"footer-secondary\",\"items\":[{\"type\":\"link\",\"position\":1,\"icon\":\"facebook-square\",\"action\":\"https:\\/\\/facebook.com\"},{\"type\":\"link\",\"position\":2,\"icon\":\"twitter\",\"action\":\"https:\\/\\/twitter.com\"},{\"type\":\"link\",\"position\":3,\"icon\":\"instagram\",\"action\":\"https:\\/\\/instagram.com\"},{\"type\":\"link\",\"position\":4,\"icon\":\"youtube\",\"action\":\"https:\\/\\/youtube.com\"}]}]', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (31, 'branding.site_name', 'Architect', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (32, 'builder.enable_subdomains', 'false', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (33, 'builder.enable_custom_domains', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (34, 'builder.googgle_fonts_api_key', 'AIzaSyDhc_8NKxXjtv69htFcUPe6A7oGSQ4om2o', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (35, 'builder.template_categories', '[\"Landing Page\",\"Blog\",\"Portfolio\"]', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (36, 'publish.allow_credential_change', 'true', '2022-06-17 07:26:25', '2022-06-17 07:26:25', 0);
INSERT INTO `settings` VALUES (37, 'homepage.appearance', '{\"headerTitle\":\"The Freedom to Create a Website You\\u2019re Proud Of\",\"headerSubtitle\":\"Discover the platform that gives you the freedom to create, design, manage and develop your web presence exactly the way you want.\",\"headerImage\":\"storage\\/homepage\\/9OhGfE8Lct8Ml72BVk82iPq8CUu8ElTDStmCWsJh.png\",\"headerImageOpacity\":1,\"headerOverlayColor1\":null,\"headerOverlayColor2\":null,\"footerTitle\":\"Build your website today\",\"footerSubtitle\":null,\"footerImage\":\"storage\\/homepage\\/qEWZ5uJlEd7QKoj6ZDadcBwIiYIbpjL9YCRDZsCR.png\",\"actions\":{\"inputText\":null,\"inputButton\":null,\"cta1\":\"Start Now\",\"cta2\":\"Learn More\"},\"primaryFeatures\":[{\"title\":\"Custom domains\",\"subtitle\":\"Attach your own custom domain or use on of the free architect subdomains.\",\"image\":\"storage\\/homepage\\/v0kaLikJEbsP7F0N4voAEAtd08Bp43bvsa4pQQHd.png\"},{\"title\":\"Eye-catching website designs\",\"subtitle\":\"Our easy-to-use builder helps you create and launch a beautiful website\\\\u2014fast.\",\"image\":\"storage\\/homepage\\/Pi0xY5e3wVpGagYLrNLJPSpWRVD60xgcl6gNMwf2.png\"},{\"title\":\"Grow your business with powerful tools\",\"subtitle\":\"Design and build your own high-quality websites. Whatever the type of site\\\\u2014you can do it with Architect website builder.\",\"image\":\"storage\\/homepage\\/6dg7gPE1eORm5ZYVFk6sp2lOwOr1lOhJgBYRDTPv.png\"}],\"secondaryFeatures\":[{\"title\":\"Look like an expert right from the start.\",\"subtitle\":\"AWARD-WINNING WEBSITE DESIGN\",\"image\":\"storage\\/homepage\\/ZEtlXRkYetFpfY1edFb77U9kpA7hznEKRlx2Y15l.png\",\"description\":\"Our award-winning templates are the most beautiful way to present your ideas online. Stand out with a professional website, portfolio, or online store.\"},{\"title\":\"The Freedom to Create the Websites You Want\",\"subtitle\":\"Complete Freedom\",\"image\":\"client\\/assets\\/images\\/landing\\/landing-feature-2.jpg\",\"description\":\"Start from scratch or choose from large catalog of templates to make your own website. With the worlds most innovative drag and drop website builder, you can customize or change anything. With the Architect, you can create your own professional website that looks stunning.\"}],\"channelIds\":[]}', '2022-06-17 07:26:25', '2022-06-17 20:59:00', 0);

-- ----------------------------
-- Table structure for social_profiles
-- ----------------------------
DROP TABLE IF EXISTS `social_profiles`;
CREATE TABLE `social_profiles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `service_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_service_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `access_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `refresh_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `access_expires_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_profiles_user_id_service_name_unique`(`user_id`, `service_name`) USING BTREE,
  UNIQUE INDEX `social_profiles_service_name_user_service_id_unique`(`service_name`, `user_service_id`) USING BTREE,
  INDEX `social_profiles_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for subscriptions
-- ----------------------------
DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `gateway_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `trial_ends_at` timestamp(0) NULL DEFAULT NULL,
  `ends_at` timestamp(0) NULL DEFAULT NULL,
  `renews_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subscriptions_user_id_index`(`user_id`) USING BTREE,
  INDEX `subscriptions_plan_id_index`(`plan_id`) USING BTREE,
  INDEX `subscriptions_gateway_index`(`gateway_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscriptions
-- ----------------------------

-- ----------------------------
-- Table structure for taggables
-- ----------------------------
DROP TABLE IF EXISTS `taggables`;
CREATE TABLE `taggables`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `taggables_tag_id_taggable_id_user_id_taggable_type_unique`(`tag_id`, `taggable_id`, `user_id`, `taggable_type`) USING BTREE,
  INDEX `taggables_tag_id_index`(`tag_id`) USING BTREE,
  INDEX `taggables_taggable_id_index`(`taggable_id`) USING BTREE,
  INDEX `taggables_taggable_type_index`(`taggable_type`) USING BTREE,
  INDEX `taggables_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taggables
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tags_name_type_unique`(`name`, `type`) USING BTREE,
  INDEX `tags_type_index`(`type`) USING BTREE,
  INDEX `tags_created_at_index`(`created_at`) USING BTREE,
  INDEX `tags_updated_at_index`(`updated_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_group_user_id_group_id_unique`(`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1, '2022-06-17 07:26:25');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `legacy_permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card_brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card_last_four` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `language` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `timezone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `users_created_at_index`(`created_at`) USING BTREE,
  INDEX `users_updated_at_index`(`updated_at`) USING BTREE,
  INDEX `users_username_index`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', NULL, NULL, NULL, NULL, NULL, 'maksimmos1629@gmail.com', '$2y$10$pwZ1lQFUbg3joFDAlz2Kc.zW7CVqA5mwCuGgTTKAT8TKheEyc96am', NULL, NULL, 'mseKNu2OuDi94m1PyPYRge3NUsnwZUMxQto6wZw1KwhXwZFL0C2vaZ6RudMv', '2022-06-17 07:26:24', '2022-06-17 07:26:24', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 07:26:24');

-- ----------------------------
-- Table structure for users_oauth
-- ----------------------------
DROP TABLE IF EXISTS `users_oauth`;
CREATE TABLE `users_oauth`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `service` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_oauth_user_id_service_unique`(`user_id`, `service`) USING BTREE,
  UNIQUE INDEX `users_oauth_token_unique`(`token`) USING BTREE,
  INDEX `users_oauth_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for users_projects
-- ----------------------------
DROP TABLE IF EXISTS `users_projects`;
CREATE TABLE `users_projects`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_projects_user_id_project_id_unique`(`user_id`, `project_id`) USING BTREE,
  INDEX `users_projects_user_id_index`(`user_id`) USING BTREE,
  INDEX `users_projects_project_id_index`(`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_projects
-- ----------------------------

-- ----------------------------
-- Table structure for workspace_invites
-- ----------------------------
DROP TABLE IF EXISTS `workspace_invites`;
CREATE TABLE `workspace_invites`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `workspace_invites_workspace_id_index`(`workspace_id`) USING BTREE,
  INDEX `workspace_invites_user_id_index`(`user_id`) USING BTREE,
  INDEX `workspace_invites_email_index`(`email`) USING BTREE,
  INDEX `workspace_invites_role_id_index`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workspace_invites
-- ----------------------------

-- ----------------------------
-- Table structure for workspace_user
-- ----------------------------
DROP TABLE IF EXISTS `workspace_user`;
CREATE TABLE `workspace_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `workspace_user_workspace_id_user_id_unique`(`workspace_id`, `user_id`) USING BTREE,
  INDEX `workspace_user_user_id_index`(`user_id`) USING BTREE,
  INDEX `workspace_user_workspace_id_index`(`workspace_id`) USING BTREE,
  INDEX `workspace_user_role_id_index`(`role_id`) USING BTREE,
  INDEX `workspace_user_is_owner_index`(`is_owner`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workspace_user
-- ----------------------------

-- ----------------------------
-- Table structure for workspaces
-- ----------------------------
DROP TABLE IF EXISTS `workspaces`;
CREATE TABLE `workspaces`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `workspaces_owner_id_index`(`owner_id`) USING BTREE,
  INDEX `workspaces_created_at_index`(`created_at`) USING BTREE,
  INDEX `workspaces_updated_at_index`(`updated_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workspaces
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
