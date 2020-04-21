/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : goadmin

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 21/04/2020 23:34:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `auth` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者名称',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章简介',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章头图',
  `label` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章标签',
  `category_id` int(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章分类ID',
  `selected_articles_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '是否为精选文章:0=否,1=是',
  `article_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '文章是否上架:0=否,1=是',
  `create_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '文章发布时间',
  `update_at` timestamp(0) NULL DEFAULT NULL COMMENT '文章更新时间',
  `reco_articles_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '文章是否推荐:0=否,1=是',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_title`(`title`) USING BTREE COMMENT '文章标题 普通索引+BTREE'
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章内容数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '1', '1', '2020-04-06 22:33:00', '2020-03-27 22:27:02', '1');
INSERT INTO `article` VALUES (2, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '1', '1', '2020-04-06 22:33:00', '2020-03-27 22:27:02', '1');
INSERT INTO `article` VALUES (3, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (4, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (5, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (6, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (7, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (8, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (9, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (10, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (11, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (12, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (13, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (14, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (15, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (16, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (17, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (18, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (19, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (20, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (21, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (22, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (23, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (24, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (25, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', NULL, '1');
INSERT INTO `article` VALUES (26, '世界那么大', 'kiki', '世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg', '0', 1, '0', '1', '2020-04-12 20:26:47', '2020-04-01 00:00:00', '1');
INSERT INTO `article` VALUES (27, '世界那么大', 'kiki', '世界那么大世界那么大世界那么大', '<p>世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大</p>', '', '0,1', 1, '0', '1', '2020-04-06 00:00:00', '2020-04-06 00:00:00', '1');

-- ----------------------------
-- Table structure for article_category
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章分类ID',
  `category_name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章分类名称',
  `create_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '文章创建时间',
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '文章分类状态:1=上架,0=下架',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章分类数据' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of article_category
-- ----------------------------
INSERT INTO `article_category` VALUES (8, '分类3', '2020-03-27 00:00:00', '1');
INSERT INTO `article_category` VALUES (7, '分类2', NULL, '1');
INSERT INTO `article_category` VALUES (1, '分类1', '2020-03-29 18:39:15', '1');

-- ----------------------------
-- Table structure for article_comment
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '文章评论ID',
  `article_comment_name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章评论人名称',
  `article_comment_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章评论内容',
  `article_comment_reply_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '文章是否回复:0=否,1=是',
  `article_comment_reply_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章回复内容',
  `article_comment_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '文章评论是否显示:0=否,1=是',
  `create_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '文章评论或者回复时间',
  `article_comment_email` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章评论人邮箱'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章评论数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for article_label
-- ----------------------------
DROP TABLE IF EXISTS `article_label`;
CREATE TABLE `article_label`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签ID主键',
  `label_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章标签库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_label
-- ----------------------------
INSERT INTO `article_label` VALUES (1, 'HTML');
INSERT INTO `article_label` VALUES (2, 'WEB');
INSERT INTO `article_label` VALUES (3, 'Golang');

-- ----------------------------
-- Table structure for article_message
-- ----------------------------
DROP TABLE IF EXISTS `article_message`;
CREATE TABLE `article_message`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(11) UNSIGNED NOT NULL COMMENT '文章评论ID',
  `nickname` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '邮箱',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '留言内容',
  `create_at` datetime(0) NULL DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章留言' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_message
-- ----------------------------
INSERT INTO `article_message` VALUES (1, 3, '1569482471@qq.com', '', '呃呃', '2020-04-20 00:00:00');
INSERT INTO `article_message` VALUES (2, 3, '1569482471@qq.com', '', '呃呃呃', '2020-04-20 00:00:00');
INSERT INTO `article_message` VALUES (3, 3, '呃呃', '1569482471@qq.com', '呃呃呃呃', '2020-04-20 00:00:00');
INSERT INTO `article_message` VALUES (4, 3, '呃呃', '1569482471@qq.com', '恶趣味趣味', '2020-04-20 00:45:55');
INSERT INTO `article_message` VALUES (5, 3, '呃呃', '1569482471@qq.com', '呃呃', '2020-04-20 00:47:49');
INSERT INTO `article_message` VALUES (6, 3, '呃呃', '1569482471@qq.com', '呃呃', '2020-04-20 00:49:18');
INSERT INTO `article_message` VALUES (7, 3, '而我却', '1569482471@qq.com', '恶趣味趣味', '2020-04-20 00:50:57');
INSERT INTO `article_message` VALUES (8, 3, '呃呃', '1569482471@qq.com', ' 呃呃去问问', '2020-04-20 00:58:11');
INSERT INTO `article_message` VALUES (9, 3, '呃呃呃', '1569482471@qq.com', '恶趣味趣味', '2020-04-20 23:28:38');
INSERT INTO `article_message` VALUES (10, 3, '额', '1569482471@qq.com', '呃呃', '2020-04-20 23:29:40');
INSERT INTO `article_message` VALUES (11, 3, '呃呃', '1569482471@qq.com', '呃呃呃', '2020-04-20 23:29:59');
INSERT INTO `article_message` VALUES (12, 3, '呃呃', '1569482471@qq.com', '15694呃呃', '2020-04-20 23:31:01');
INSERT INTO `article_message` VALUES (13, 3, '额', '1569482471@qq.com', '呃呃', '2020-04-20 23:43:52');
INSERT INTO `article_message` VALUES (14, 3, '额', '1569482471@qq.com', '呃呃呃', '2020-04-20 23:45:52');
INSERT INTO `article_message` VALUES (15, 3, '额', '1569482471@qq.com', '额外企鹅', '2020-04-20 23:47:06');
INSERT INTO `article_message` VALUES (16, 3, '呃呃', '1569482471@qq.com', '恶趣味', '2020-04-20 23:48:32');
INSERT INTO `article_message` VALUES (17, 3, '额', '1569482471@qq.com', '呃呃呃', '2020-04-20 23:51:10');
INSERT INTO `article_message` VALUES (18, 3, '呃呃', '1569482471@qq.com', '额额', '2020-04-20 23:52:57');

-- ----------------------------
-- Table structure for article_statistics
-- ----------------------------
DROP TABLE IF EXISTS `article_statistics`;
CREATE TABLE `article_statistics`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `article_comment_num` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章评论数量',
  `article_browse_num` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章浏览次数'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章数据统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_statistics
-- ----------------------------
INSERT INTO `article_statistics` VALUES (1, 51, 50);
INSERT INTO `article_statistics` VALUES (4, 51, 50);
INSERT INTO `article_statistics` VALUES (3, 52, 84);

-- ----------------------------
-- Table structure for goadmin_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_menu`;
CREATE TABLE `goadmin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_menu
-- ----------------------------
INSERT INTO `goadmin_menu` VALUES (1, 0, 1, 2, 'Admin', 'fa-tasks', '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (2, 1, 1, 2, 'Users', 'fa-users', '/info/manager', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (3, 1, 1, 3, 'Roles', 'fa-user', '/info/roles', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (4, 1, 1, 4, 'Permission', 'fa-ban', '/info/permission', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (5, 1, 1, 5, 'Menu', 'fa-bars', '/menu', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (6, 1, 1, 6, 'Operation log', 'fa-history', '/info/op', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (7, 0, 1, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (9, 0, 0, 2, '文章模块', 'fa-align-left', '/act', '', '2020-03-28 16:55:34', '2020-03-28 16:55:34');
INSERT INTO `goadmin_menu` VALUES (10, 9, 0, 2, '文章列表', 'fa-bars', '/info/article', '', '2020-03-28 16:57:03', '2020-03-28 16:57:03');
INSERT INTO `goadmin_menu` VALUES (11, 9, 0, 2, '文章分类', 'fa-bars', '/info/article_category', '', '2020-03-28 16:57:57', '2020-03-28 16:57:57');
INSERT INTO `goadmin_menu` VALUES (12, 9, 0, 2, '文章评论', 'fa-bars', '/info/article_comment', '', '2020-03-30 14:42:16', '2020-03-30 14:42:16');
INSERT INTO `goadmin_menu` VALUES (13, 9, 0, 2, '文章数据', 'fa-bars', '/info/article_statistics', '', '2020-03-30 15:06:52', '2020-03-30 15:06:52');
INSERT INTO `goadmin_menu` VALUES (14, 9, 0, 2, '文章标签', 'fa-bars', '/info/article_label', '', '2020-04-01 08:24:23', '2020-04-01 08:24:23');
INSERT INTO `goadmin_menu` VALUES (15, 9, 0, 2, '作者简介', 'fa-bars', '/info/users', '', '2020-04-01 08:29:00', '2020-04-01 08:29:00');

-- ----------------------------
-- Table structure for goadmin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_operation_log`;
CREATE TABLE `goadmin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 719 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_operation_log
-- ----------------------------
INSERT INTO `goadmin_operation_log` VALUES (1, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:36:18', '2020-03-27 16:36:18');
INSERT INTO `goadmin_operation_log` VALUES (2, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:36:28', '2020-03-27 16:36:28');
INSERT INTO `goadmin_operation_log` VALUES (3, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:36:29', '2020-03-27 16:36:29');
INSERT INTO `goadmin_operation_log` VALUES (4, 1, '/admin/info/permission', 'GET', '::1', '', '2020-03-27 16:36:30', '2020-03-27 16:36:30');
INSERT INTO `goadmin_operation_log` VALUES (5, 1, '/admin/menu', 'GET', '::1', '', '2020-03-27 16:36:31', '2020-03-27 16:36:31');
INSERT INTO `goadmin_operation_log` VALUES (6, 1, '/admin/info/op', 'GET', '::1', '', '2020-03-27 16:36:31', '2020-03-27 16:36:31');
INSERT INTO `goadmin_operation_log` VALUES (7, 1, '/admin/info/op', 'GET', '::1', '', '2020-03-27 16:36:33', '2020-03-27 16:36:33');
INSERT INTO `goadmin_operation_log` VALUES (8, 1, '/admin/info/op', 'GET', '::1', '', '2020-03-27 16:36:58', '2020-03-27 16:36:58');
INSERT INTO `goadmin_operation_log` VALUES (9, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:02', '2020-03-27 16:37:02');
INSERT INTO `goadmin_operation_log` VALUES (10, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:06', '2020-03-27 16:37:06');
INSERT INTO `goadmin_operation_log` VALUES (11, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:06', '2020-03-27 16:37:06');
INSERT INTO `goadmin_operation_log` VALUES (12, 1, '/admin/delete/manager', 'POST', '::1', '', '2020-03-27 16:37:13', '2020-03-27 16:37:13');
INSERT INTO `goadmin_operation_log` VALUES (13, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:13', '2020-03-27 16:37:13');
INSERT INTO `goadmin_operation_log` VALUES (14, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:15', '2020-03-27 16:37:15');
INSERT INTO `goadmin_operation_log` VALUES (15, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:18', '2020-03-27 16:37:18');
INSERT INTO `goadmin_operation_log` VALUES (16, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:23', '2020-03-27 16:37:23');
INSERT INTO `goadmin_operation_log` VALUES (17, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:23', '2020-03-27 16:37:23');
INSERT INTO `goadmin_operation_log` VALUES (18, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:25', '2020-03-27 16:37:25');
INSERT INTO `goadmin_operation_log` VALUES (19, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:26', '2020-03-27 16:37:26');
INSERT INTO `goadmin_operation_log` VALUES (20, 1, '/admin/info/roles/edit', 'GET', '::1', '', '2020-03-27 16:37:28', '2020-03-27 16:37:28');
INSERT INTO `goadmin_operation_log` VALUES (21, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:35', '2020-03-27 16:37:35');
INSERT INTO `goadmin_operation_log` VALUES (22, 1, '/admin/info/roles/edit', 'GET', '::1', '', '2020-03-27 16:37:39', '2020-03-27 16:37:39');
INSERT INTO `goadmin_operation_log` VALUES (23, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:44', '2020-03-27 16:37:44');
INSERT INTO `goadmin_operation_log` VALUES (24, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:44', '2020-03-27 16:37:44');
INSERT INTO `goadmin_operation_log` VALUES (25, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:45', '2020-03-27 16:37:45');
INSERT INTO `goadmin_operation_log` VALUES (26, 1, '/admin/info/manager/edit', 'GET', '::1', '', '2020-03-27 16:37:47', '2020-03-27 16:37:47');
INSERT INTO `goadmin_operation_log` VALUES (27, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-27 16:37:54', '2020-03-27 16:37:54');
INSERT INTO `goadmin_operation_log` VALUES (28, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:55', '2020-03-27 16:37:55');
INSERT INTO `goadmin_operation_log` VALUES (29, 1, '/admin/delete/roles', 'POST', '::1', '', '2020-03-27 16:37:58', '2020-03-27 16:37:58');
INSERT INTO `goadmin_operation_log` VALUES (30, 1, '/admin/info/roles', 'GET', '::1', '', '2020-03-27 16:37:58', '2020-03-27 16:37:58');
INSERT INTO `goadmin_operation_log` VALUES (31, 1, '/admin/info/permission', 'GET', '::1', '', '2020-03-27 16:38:00', '2020-03-27 16:38:00');
INSERT INTO `goadmin_operation_log` VALUES (32, 1, '/admin/menu', 'GET', '::1', '', '2020-03-27 16:38:06', '2020-03-27 16:38:06');
INSERT INTO `goadmin_operation_log` VALUES (33, 1, '/admin/menu', 'GET', '::1', '', '2020-03-27 16:38:10', '2020-03-27 16:38:10');
INSERT INTO `goadmin_operation_log` VALUES (34, 1, '/admin/info/op', 'GET', '::1', '', '2020-03-27 16:38:10', '2020-03-27 16:38:10');
INSERT INTO `goadmin_operation_log` VALUES (35, 1, '/admin/menu', 'GET', '::1', '', '2020-03-27 16:38:11', '2020-03-27 16:38:11');
INSERT INTO `goadmin_operation_log` VALUES (36, 1, '/admin/info/op', 'GET', '::1', '', '2020-03-27 16:38:12', '2020-03-27 16:38:12');
INSERT INTO `goadmin_operation_log` VALUES (37, 1, '/admin/menu', 'GET', '::1', '', '2020-03-27 16:38:15', '2020-03-27 16:38:15');
INSERT INTO `goadmin_operation_log` VALUES (38, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 17:43:54', '2020-03-27 17:43:54');
INSERT INTO `goadmin_operation_log` VALUES (39, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 17:44:00', '2020-03-27 17:44:00');
INSERT INTO `goadmin_operation_log` VALUES (40, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:44:04', '2020-03-27 17:44:04');
INSERT INTO `goadmin_operation_log` VALUES (41, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-27 17:44:05', '2020-03-27 17:44:05');
INSERT INTO `goadmin_operation_log` VALUES (42, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-27 17:44:06', '2020-03-27 17:44:06');
INSERT INTO `goadmin_operation_log` VALUES (43, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 17:44:06', '2020-03-27 17:44:06');
INSERT INTO `goadmin_operation_log` VALUES (44, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-27 17:44:07', '2020-03-27 17:44:07');
INSERT INTO `goadmin_operation_log` VALUES (45, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-27 17:44:07', '2020-03-27 17:44:07');
INSERT INTO `goadmin_operation_log` VALUES (46, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:44:08', '2020-03-27 17:44:08');
INSERT INTO `goadmin_operation_log` VALUES (47, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-27 17:44:08', '2020-03-27 17:44:08');
INSERT INTO `goadmin_operation_log` VALUES (48, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:44:09', '2020-03-27 17:44:09');
INSERT INTO `goadmin_operation_log` VALUES (49, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-27 17:44:10', '2020-03-27 17:44:10');
INSERT INTO `goadmin_operation_log` VALUES (50, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-27 17:44:10', '2020-03-27 17:44:10');
INSERT INTO `goadmin_operation_log` VALUES (51, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 17:44:10', '2020-03-27 17:44:10');
INSERT INTO `goadmin_operation_log` VALUES (52, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 17:53:29', '2020-03-27 17:53:29');
INSERT INTO `goadmin_operation_log` VALUES (53, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 17:53:33', '2020-03-27 17:53:33');
INSERT INTO `goadmin_operation_log` VALUES (54, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-27 17:53:34', '2020-03-27 17:53:34');
INSERT INTO `goadmin_operation_log` VALUES (55, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-27 17:53:34', '2020-03-27 17:53:34');
INSERT INTO `goadmin_operation_log` VALUES (56, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:53:35', '2020-03-27 17:53:35');
INSERT INTO `goadmin_operation_log` VALUES (57, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-27 17:53:36', '2020-03-27 17:53:36');
INSERT INTO `goadmin_operation_log` VALUES (58, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 17:54:22', '2020-03-27 17:54:22');
INSERT INTO `goadmin_operation_log` VALUES (59, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-27 17:54:23', '2020-03-27 17:54:23');
INSERT INTO `goadmin_operation_log` VALUES (60, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-27 17:54:24', '2020-03-27 17:54:24');
INSERT INTO `goadmin_operation_log` VALUES (61, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:54:25', '2020-03-27 17:54:25');
INSERT INTO `goadmin_operation_log` VALUES (62, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-27 17:54:26', '2020-03-27 17:54:26');
INSERT INTO `goadmin_operation_log` VALUES (63, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:54:36', '2020-03-27 17:54:36');
INSERT INTO `goadmin_operation_log` VALUES (64, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-27 17:54:37', '2020-03-27 17:54:37');
INSERT INTO `goadmin_operation_log` VALUES (65, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:54:47', '2020-03-27 17:54:47');
INSERT INTO `goadmin_operation_log` VALUES (66, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-27 17:54:48', '2020-03-27 17:54:48');
INSERT INTO `goadmin_operation_log` VALUES (67, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-27 17:54:48', '2020-03-27 17:54:48');
INSERT INTO `goadmin_operation_log` VALUES (68, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-27 17:54:54', '2020-03-27 17:54:54');
INSERT INTO `goadmin_operation_log` VALUES (69, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 17:54:55', '2020-03-27 17:54:55');
INSERT INTO `goadmin_operation_log` VALUES (70, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 19:33:19', '2020-03-27 19:33:19');
INSERT INTO `goadmin_operation_log` VALUES (71, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 19:38:39', '2020-03-27 19:38:39');
INSERT INTO `goadmin_operation_log` VALUES (72, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 19:39:02', '2020-03-27 19:39:02');
INSERT INTO `goadmin_operation_log` VALUES (73, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 19:39:16', '2020-03-27 19:39:16');
INSERT INTO `goadmin_operation_log` VALUES (74, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 19:39:22', '2020-03-27 19:39:22');
INSERT INTO `goadmin_operation_log` VALUES (75, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-27 19:39:23', '2020-03-27 19:39:23');
INSERT INTO `goadmin_operation_log` VALUES (76, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 19:39:24', '2020-03-27 19:39:24');
INSERT INTO `goadmin_operation_log` VALUES (77, 1, '/admin/menu/edit/show', 'GET', '127.0.0.1', '', '2020-03-27 19:40:12', '2020-03-27 19:40:12');
INSERT INTO `goadmin_operation_log` VALUES (78, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 19:40:24', '2020-03-27 19:40:24');
INSERT INTO `goadmin_operation_log` VALUES (79, 1, '/admin/menu/edit/show', 'GET', '127.0.0.1', '', '2020-03-27 19:40:43', '2020-03-27 19:40:43');
INSERT INTO `goadmin_operation_log` VALUES (80, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 19:40:46', '2020-03-27 19:40:46');
INSERT INTO `goadmin_operation_log` VALUES (81, 1, '/admin/menu/new', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"1d0492ed-a802-494e-ac4d-078fa0eb5689\"],\"header\":[\"\"],\"icon\":[\"fa-anchor\"],\"parent_id\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"文章列表\"],\"uri\":[\"/admin/info/article\"]}', '2020-03-27 19:41:18', '2020-03-27 19:41:18');
INSERT INTO `goadmin_operation_log` VALUES (82, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 19:41:26', '2020-03-27 19:41:26');
INSERT INTO `goadmin_operation_log` VALUES (83, 1, '/admin/menu/edit/show', 'GET', '127.0.0.1', '', '2020-03-27 19:41:40', '2020-03-27 19:41:40');
INSERT INTO `goadmin_operation_log` VALUES (84, 1, '/admin/menu/edit', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"fdb4fad3-95e0-48e5-91ed-682e5dc6f268\"],\"header\":[\"\"],\"icon\":[\"fa-anchor\"],\"id\":[\"8\"],\"parent_id\":[\"1\"],\"roles[]\":[\"1\"],\"title\":[\"文章列表\"],\"uri\":[\"/admin/info/article\"]}', '2020-03-27 19:41:48', '2020-03-27 19:41:48');
INSERT INTO `goadmin_operation_log` VALUES (85, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 19:41:50', '2020-03-27 19:41:50');
INSERT INTO `goadmin_operation_log` VALUES (86, 1, '/admin/menu/edit/show', 'GET', '127.0.0.1', '', '2020-03-27 19:41:54', '2020-03-27 19:41:54');
INSERT INTO `goadmin_operation_log` VALUES (87, 1, '/admin/menu/edit/show', 'GET', '127.0.0.1', '', '2020-03-27 19:42:09', '2020-03-27 19:42:09');
INSERT INTO `goadmin_operation_log` VALUES (88, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-27 19:42:13', '2020-03-27 19:42:13');
INSERT INTO `goadmin_operation_log` VALUES (89, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 20:40:21', '2020-03-27 20:40:21');
INSERT INTO `goadmin_operation_log` VALUES (90, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-27 20:40:35', '2020-03-27 20:40:35');
INSERT INTO `goadmin_operation_log` VALUES (91, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 20:40:45', '2020-03-27 20:40:45');
INSERT INTO `goadmin_operation_log` VALUES (92, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 20:41:21', '2020-03-27 20:41:21');
INSERT INTO `goadmin_operation_log` VALUES (93, 1, '/admin/menu/edit/show', 'GET', '127.0.0.1', '', '2020-03-27 20:41:29', '2020-03-27 20:41:29');
INSERT INTO `goadmin_operation_log` VALUES (94, 1, '/admin/menu/edit', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"f9826561-2087-4510-82a5-cff9d35cc418\"],\"header\":[\"\"],\"icon\":[\"fa-anchor\"],\"id\":[\"8\"],\"parent_id\":[\"1\"],\"roles[]\":[\"1\"],\"title\":[\"文章列表\"],\"uri\":[\"/info/article\"]}', '2020-03-27 20:41:41', '2020-03-27 20:41:41');
INSERT INTO `goadmin_operation_log` VALUES (95, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-27 20:41:45', '2020-03-27 20:41:45');
INSERT INTO `goadmin_operation_log` VALUES (96, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 20:41:46', '2020-03-27 20:41:46');
INSERT INTO `goadmin_operation_log` VALUES (97, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-27 20:49:01', '2020-03-27 20:49:01');
INSERT INTO `goadmin_operation_log` VALUES (98, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-27 20:49:02', '2020-03-27 20:49:02');
INSERT INTO `goadmin_operation_log` VALUES (99, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 20:49:03', '2020-03-27 20:49:03');
INSERT INTO `goadmin_operation_log` VALUES (100, 1, '/admin/info/normal_manager/edit', 'GET', '127.0.0.1', '', '2020-03-27 20:49:32', '2020-03-27 20:49:32');
INSERT INTO `goadmin_operation_log` VALUES (101, 1, '/admin/info/normal_manager', 'GET', '127.0.0.1', '', '2020-03-27 20:49:41', '2020-03-27 20:49:41');
INSERT INTO `goadmin_operation_log` VALUES (102, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:08:06', '2020-03-27 21:08:06');
INSERT INTO `goadmin_operation_log` VALUES (103, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:20:18', '2020-03-27 21:20:18');
INSERT INTO `goadmin_operation_log` VALUES (104, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-27 21:20:22', '2020-03-27 21:20:22');
INSERT INTO `goadmin_operation_log` VALUES (105, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:21:27', '2020-03-27 21:21:27');
INSERT INTO `goadmin_operation_log` VALUES (106, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-27 21:21:30', '2020-03-27 21:21:30');
INSERT INTO `goadmin_operation_log` VALUES (107, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4d3e81cd-61bc-4452-8edc-d784499f676e\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"image\":[\"\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:22:29', '2020-03-27 21:22:29');
INSERT INTO `goadmin_operation_log` VALUES (108, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-27 21:25:51', '2020-03-27 21:25:51');
INSERT INTO `goadmin_operation_log` VALUES (109, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"b867a07e-e277-4ff4-83dd-76bcd0d4dad1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"image\":[\"123\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:26:25', '2020-03-27 21:26:25');
INSERT INTO `goadmin_operation_log` VALUES (110, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-27 21:26:46', '2020-03-27 21:26:46');
INSERT INTO `goadmin_operation_log` VALUES (111, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"155fe11f-e2df-48bb-91c5-2c14c214785c\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"1\"],\"image\":[\"123\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:26:57', '2020-03-27 21:26:57');
INSERT INTO `goadmin_operation_log` VALUES (112, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:29:20', '2020-03-27 21:29:20');
INSERT INTO `goadmin_operation_log` VALUES (113, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-27 21:29:23', '2020-03-27 21:29:23');
INSERT INTO `goadmin_operation_log` VALUES (114, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e7f5ed64-3ab4-4838-98ed-b2eebad75f89\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"2\"],\"image\":[\"123\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:29:39', '2020-03-27 21:29:39');
INSERT INTO `goadmin_operation_log` VALUES (115, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:31:03', '2020-03-27 21:31:03');
INSERT INTO `goadmin_operation_log` VALUES (116, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-27 21:31:07', '2020-03-27 21:31:07');
INSERT INTO `goadmin_operation_log` VALUES (117, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"df7ecfae-a21c-4d2f-a99e-0906d4f84b6d\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:32:09', '2020-03-27 21:32:09');
INSERT INTO `goadmin_operation_log` VALUES (118, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"41e091e4-ceca-412f-b6c5-adc89f5879c7\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"3\"],\"image\":[\"99c3021a-601a-440e-af2d-abca6a86654e.png\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:32:57', '2020-03-27 21:32:57');
INSERT INTO `goadmin_operation_log` VALUES (119, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-27 21:33:05', '2020-03-27 21:33:05');
INSERT INTO `goadmin_operation_log` VALUES (120, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-27 21:34:24', '2020-03-27 21:34:24');
INSERT INTO `goadmin_operation_log` VALUES (121, 1, '/admin/edit/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"83fce3c9-2b7b-485e-aa35-57640396c6ef\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\"],\"id\":[\"3\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:34:31', '2020-03-27 21:34:31');
INSERT INTO `goadmin_operation_log` VALUES (122, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-27 21:34:33', '2020-03-27 21:34:33');
INSERT INTO `goadmin_operation_log` VALUES (123, 1, '/admin/edit/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"265f094c-4072-457f-9ac9-81270cf0b3ca\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\"],\"id\":[\"3\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-27 21:34:35', '2020-03-27 21:34:35');
INSERT INTO `goadmin_operation_log` VALUES (124, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:35:25', '2020-03-27 21:35:25');
INSERT INTO `goadmin_operation_log` VALUES (125, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:35:26', '2020-03-27 21:35:26');
INSERT INTO `goadmin_operation_log` VALUES (126, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-27 21:35:28', '2020-03-27 21:35:28');
INSERT INTO `goadmin_operation_log` VALUES (127, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:38:02', '2020-03-27 21:38:02');
INSERT INTO `goadmin_operation_log` VALUES (128, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:38:12', '2020-03-27 21:38:12');
INSERT INTO `goadmin_operation_log` VALUES (129, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:38:14', '2020-03-27 21:38:14');
INSERT INTO `goadmin_operation_log` VALUES (130, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 21:39:22', '2020-03-27 21:39:22');
INSERT INTO `goadmin_operation_log` VALUES (131, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:39:24', '2020-03-27 21:39:24');
INSERT INTO `goadmin_operation_log` VALUES (132, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:43:12', '2020-03-27 21:43:12');
INSERT INTO `goadmin_operation_log` VALUES (133, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:43:33', '2020-03-27 21:43:33');
INSERT INTO `goadmin_operation_log` VALUES (134, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:44:11', '2020-03-27 21:44:11');
INSERT INTO `goadmin_operation_log` VALUES (135, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:44:18', '2020-03-27 21:44:18');
INSERT INTO `goadmin_operation_log` VALUES (136, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:51:52', '2020-03-27 21:51:52');
INSERT INTO `goadmin_operation_log` VALUES (137, 1, '/admin/info/article/detail', 'GET', '127.0.0.1', '', '2020-03-27 21:52:02', '2020-03-27 21:52:02');
INSERT INTO `goadmin_operation_log` VALUES (138, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:52:09', '2020-03-27 21:52:09');
INSERT INTO `goadmin_operation_log` VALUES (139, 1, '/admin/info/article/detail', 'GET', '127.0.0.1', '', '2020-03-27 21:52:11', '2020-03-27 21:52:11');
INSERT INTO `goadmin_operation_log` VALUES (140, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:52:17', '2020-03-27 21:52:17');
INSERT INTO `goadmin_operation_log` VALUES (141, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:52:49', '2020-03-27 21:52:49');
INSERT INTO `goadmin_operation_log` VALUES (142, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:54:07', '2020-03-27 21:54:07');
INSERT INTO `goadmin_operation_log` VALUES (143, 1, '/admin/info/{{model.Value}}', 'GET', '127.0.0.1', '', '2020-03-27 21:54:07', '2020-03-27 21:54:07');
INSERT INTO `goadmin_operation_log` VALUES (144, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:56:36', '2020-03-27 21:56:36');
INSERT INTO `goadmin_operation_log` VALUES (145, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 21:57:59', '2020-03-27 21:57:59');
INSERT INTO `goadmin_operation_log` VALUES (146, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:00:30', '2020-03-27 22:00:30');
INSERT INTO `goadmin_operation_log` VALUES (147, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:03:45', '2020-03-27 22:03:45');
INSERT INTO `goadmin_operation_log` VALUES (148, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 22:17:08', '2020-03-27 22:17:08');
INSERT INTO `goadmin_operation_log` VALUES (149, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-27 22:17:11', '2020-03-27 22:17:11');
INSERT INTO `goadmin_operation_log` VALUES (150, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:17:13', '2020-03-27 22:17:13');
INSERT INTO `goadmin_operation_log` VALUES (151, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:17:52', '2020-03-27 22:17:52');
INSERT INTO `goadmin_operation_log` VALUES (152, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:19:11', '2020-03-27 22:19:11');
INSERT INTO `goadmin_operation_log` VALUES (153, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:21:51', '2020-03-27 22:21:51');
INSERT INTO `goadmin_operation_log` VALUES (154, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:22:43', '2020-03-27 22:22:43');
INSERT INTO `goadmin_operation_log` VALUES (155, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:22:54', '2020-03-27 22:22:54');
INSERT INTO `goadmin_operation_log` VALUES (156, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-27 22:27:18', '2020-03-27 22:27:18');
INSERT INTO `goadmin_operation_log` VALUES (157, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-28 16:32:24', '2020-03-28 16:32:24');
INSERT INTO `goadmin_operation_log` VALUES (158, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:32:26', '2020-03-28 16:32:26');
INSERT INTO `goadmin_operation_log` VALUES (159, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:32:35', '2020-03-28 16:32:35');
INSERT INTO `goadmin_operation_log` VALUES (160, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:34:41', '2020-03-28 16:34:41');
INSERT INTO `goadmin_operation_log` VALUES (161, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:34:50', '2020-03-28 16:34:50');
INSERT INTO `goadmin_operation_log` VALUES (162, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 16:54:51', '2020-03-28 16:54:51');
INSERT INTO `goadmin_operation_log` VALUES (163, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:54:54', '2020-03-28 16:54:54');
INSERT INTO `goadmin_operation_log` VALUES (164, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:54:56', '2020-03-28 16:54:56');
INSERT INTO `goadmin_operation_log` VALUES (165, 1, '/admin/menu/new', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"4822f2f3-b491-4a29-8181-39b7fa540ea7\"],\"header\":[\"\"],\"icon\":[\"fa-align-left\"],\"parent_id\":[\"0\"],\"roles[]\":[\"1\"],\"title\":[\"文章模块\"],\"uri\":[\"/act\"]}', '2020-03-28 16:55:34', '2020-03-28 16:55:34');
INSERT INTO `goadmin_operation_log` VALUES (166, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:55:39', '2020-03-28 16:55:39');
INSERT INTO `goadmin_operation_log` VALUES (167, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:55:46', '2020-03-28 16:55:46');
INSERT INTO `goadmin_operation_log` VALUES (168, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:55:57', '2020-03-28 16:55:57');
INSERT INTO `goadmin_operation_log` VALUES (169, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:55:59', '2020-03-28 16:55:59');
INSERT INTO `goadmin_operation_log` VALUES (170, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:56:01', '2020-03-28 16:56:01');
INSERT INTO `goadmin_operation_log` VALUES (171, 1, '/admin/menu/new', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"ec3eceb9-5551-4928-be24-a5806b54c4d6\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"roles[]\":[\"1\"],\"title\":[\"文章列表\"],\"uri\":[\"/info/article\"]}', '2020-03-28 16:57:03', '2020-03-28 16:57:03');
INSERT INTO `goadmin_operation_log` VALUES (172, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:57:06', '2020-03-28 16:57:06');
INSERT INTO `goadmin_operation_log` VALUES (173, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:57:10', '2020-03-28 16:57:10');
INSERT INTO `goadmin_operation_log` VALUES (174, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:57:14', '2020-03-28 16:57:14');
INSERT INTO `goadmin_operation_log` VALUES (175, 1, '/admin/menu/delete', 'POST', '::1', '', '2020-03-28 16:57:18', '2020-03-28 16:57:18');
INSERT INTO `goadmin_operation_log` VALUES (176, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:57:18', '2020-03-28 16:57:18');
INSERT INTO `goadmin_operation_log` VALUES (177, 1, '/admin/menu/delete', 'POST', '::1', '', '2020-03-28 16:57:20', '2020-03-28 16:57:20');
INSERT INTO `goadmin_operation_log` VALUES (178, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:57:20', '2020-03-28 16:57:20');
INSERT INTO `goadmin_operation_log` VALUES (179, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:57:23', '2020-03-28 16:57:23');
INSERT INTO `goadmin_operation_log` VALUES (180, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 16:57:27', '2020-03-28 16:57:27');
INSERT INTO `goadmin_operation_log` VALUES (181, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:57:32', '2020-03-28 16:57:32');
INSERT INTO `goadmin_operation_log` VALUES (182, 1, '/admin/menu/new', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"808a78f7-c170-40ed-b147-7fb07b858e57\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"roles[]\":[\"1\"],\"title\":[\"文章分类\"],\"uri\":[\"/info/article_category\"]}', '2020-03-28 16:57:57', '2020-03-28 16:57:57');
INSERT INTO `goadmin_operation_log` VALUES (183, 1, '/admin/menu', 'GET', '::1', '', '2020-03-28 16:58:01', '2020-03-28 16:58:01');
INSERT INTO `goadmin_operation_log` VALUES (184, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 16:58:03', '2020-03-28 16:58:03');
INSERT INTO `goadmin_operation_log` VALUES (185, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 16:59:02', '2020-03-28 16:59:02');
INSERT INTO `goadmin_operation_log` VALUES (186, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 17:01:21', '2020-03-28 17:01:21');
INSERT INTO `goadmin_operation_log` VALUES (187, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 17:01:23', '2020-03-28 17:01:23');
INSERT INTO `goadmin_operation_log` VALUES (188, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 17:01:24', '2020-03-28 17:01:24');
INSERT INTO `goadmin_operation_log` VALUES (189, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 17:01:25', '2020-03-28 17:01:25');
INSERT INTO `goadmin_operation_log` VALUES (190, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 17:05:21', '2020-03-28 17:05:21');
INSERT INTO `goadmin_operation_log` VALUES (191, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 17:05:56', '2020-03-28 17:05:56');
INSERT INTO `goadmin_operation_log` VALUES (192, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-28 18:45:35', '2020-03-28 18:45:35');
INSERT INTO `goadmin_operation_log` VALUES (193, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:38:55', '2020-03-28 19:38:55');
INSERT INTO `goadmin_operation_log` VALUES (194, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:38:56', '2020-03-28 19:38:56');
INSERT INTO `goadmin_operation_log` VALUES (195, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:38:56', '2020-03-28 19:38:56');
INSERT INTO `goadmin_operation_log` VALUES (196, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:39:51', '2020-03-28 19:39:51');
INSERT INTO `goadmin_operation_log` VALUES (197, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:40:22', '2020-03-28 19:40:22');
INSERT INTO `goadmin_operation_log` VALUES (198, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:40:23', '2020-03-28 19:40:23');
INSERT INTO `goadmin_operation_log` VALUES (199, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:07', '2020-03-28 19:41:07');
INSERT INTO `goadmin_operation_log` VALUES (200, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:08', '2020-03-28 19:41:08');
INSERT INTO `goadmin_operation_log` VALUES (201, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:08', '2020-03-28 19:41:08');
INSERT INTO `goadmin_operation_log` VALUES (202, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:08', '2020-03-28 19:41:08');
INSERT INTO `goadmin_operation_log` VALUES (203, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:09', '2020-03-28 19:41:09');
INSERT INTO `goadmin_operation_log` VALUES (204, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:32', '2020-03-28 19:41:32');
INSERT INTO `goadmin_operation_log` VALUES (205, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:48', '2020-03-28 19:41:48');
INSERT INTO `goadmin_operation_log` VALUES (206, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:48', '2020-03-28 19:41:48');
INSERT INTO `goadmin_operation_log` VALUES (207, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:41:49', '2020-03-28 19:41:49');
INSERT INTO `goadmin_operation_log` VALUES (208, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:50', '2020-03-28 19:41:50');
INSERT INTO `goadmin_operation_log` VALUES (209, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:41:50', '2020-03-28 19:41:50');
INSERT INTO `goadmin_operation_log` VALUES (210, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:41:51', '2020-03-28 19:41:51');
INSERT INTO `goadmin_operation_log` VALUES (211, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:43:36', '2020-03-28 19:43:36');
INSERT INTO `goadmin_operation_log` VALUES (212, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:43:38', '2020-03-28 19:43:38');
INSERT INTO `goadmin_operation_log` VALUES (213, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:43:38', '2020-03-28 19:43:38');
INSERT INTO `goadmin_operation_log` VALUES (214, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:43:39', '2020-03-28 19:43:39');
INSERT INTO `goadmin_operation_log` VALUES (215, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:43:39', '2020-03-28 19:43:39');
INSERT INTO `goadmin_operation_log` VALUES (216, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:43:43', '2020-03-28 19:43:43');
INSERT INTO `goadmin_operation_log` VALUES (217, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:43:44', '2020-03-28 19:43:44');
INSERT INTO `goadmin_operation_log` VALUES (218, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:43:45', '2020-03-28 19:43:45');
INSERT INTO `goadmin_operation_log` VALUES (219, 1, '/admin/info/articleCategory', 'GET', '::1', '', '2020-03-28 19:43:48', '2020-03-28 19:43:48');
INSERT INTO `goadmin_operation_log` VALUES (220, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:43:58', '2020-03-28 19:43:58');
INSERT INTO `goadmin_operation_log` VALUES (221, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:44:59', '2020-03-28 19:44:59');
INSERT INTO `goadmin_operation_log` VALUES (222, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:00', '2020-03-28 19:45:00');
INSERT INTO `goadmin_operation_log` VALUES (223, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:00', '2020-03-28 19:45:00');
INSERT INTO `goadmin_operation_log` VALUES (224, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:01', '2020-03-28 19:45:01');
INSERT INTO `goadmin_operation_log` VALUES (225, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:45:01', '2020-03-28 19:45:01');
INSERT INTO `goadmin_operation_log` VALUES (226, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:45:44', '2020-03-28 19:45:44');
INSERT INTO `goadmin_operation_log` VALUES (227, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:45', '2020-03-28 19:45:45');
INSERT INTO `goadmin_operation_log` VALUES (228, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:46', '2020-03-28 19:45:46');
INSERT INTO `goadmin_operation_log` VALUES (229, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:46', '2020-03-28 19:45:46');
INSERT INTO `goadmin_operation_log` VALUES (230, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:46', '2020-03-28 19:45:46');
INSERT INTO `goadmin_operation_log` VALUES (231, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:47', '2020-03-28 19:45:47');
INSERT INTO `goadmin_operation_log` VALUES (232, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:47', '2020-03-28 19:45:47');
INSERT INTO `goadmin_operation_log` VALUES (233, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:47', '2020-03-28 19:45:47');
INSERT INTO `goadmin_operation_log` VALUES (234, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:45:47', '2020-03-28 19:45:47');
INSERT INTO `goadmin_operation_log` VALUES (235, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:49:00', '2020-03-28 19:49:00');
INSERT INTO `goadmin_operation_log` VALUES (236, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:49:23', '2020-03-28 19:49:23');
INSERT INTO `goadmin_operation_log` VALUES (237, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:49:55', '2020-03-28 19:49:55');
INSERT INTO `goadmin_operation_log` VALUES (238, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:50:20', '2020-03-28 19:50:20');
INSERT INTO `goadmin_operation_log` VALUES (239, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:50:25', '2020-03-28 19:50:25');
INSERT INTO `goadmin_operation_log` VALUES (240, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:50:26', '2020-03-28 19:50:26');
INSERT INTO `goadmin_operation_log` VALUES (241, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:50:42', '2020-03-28 19:50:42');
INSERT INTO `goadmin_operation_log` VALUES (242, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:50:43', '2020-03-28 19:50:43');
INSERT INTO `goadmin_operation_log` VALUES (243, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 19:50:46', '2020-03-28 19:50:46');
INSERT INTO `goadmin_operation_log` VALUES (244, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:52:44', '2020-03-28 19:52:44');
INSERT INTO `goadmin_operation_log` VALUES (245, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:52:46', '2020-03-28 19:52:46');
INSERT INTO `goadmin_operation_log` VALUES (246, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 19:52:47', '2020-03-28 19:52:47');
INSERT INTO `goadmin_operation_log` VALUES (247, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 19:54:16', '2020-03-28 19:54:16');
INSERT INTO `goadmin_operation_log` VALUES (248, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"34d88161-43a5-4382-bcd3-b36c37a6544c\"],\"category_name\":[\"HTML\"],\"status\":[\"1\"]}', '2020-03-28 19:54:27', '2020-03-28 19:54:27');
INSERT INTO `goadmin_operation_log` VALUES (249, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e3c5c264-ac8e-46a2-90ae-39a112d13f1a\"],\"category_name\":[\"HTML\"],\"id\":[\"1\"],\"status\":[\"1\"]}', '2020-03-28 19:55:06', '2020-03-28 19:55:06');
INSERT INTO `goadmin_operation_log` VALUES (250, 1, '/admin/delete/article_category', 'POST', '::1', '', '2020-03-28 19:55:55', '2020-03-28 19:55:55');
INSERT INTO `goadmin_operation_log` VALUES (251, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:55:55', '2020-03-28 19:55:55');
INSERT INTO `goadmin_operation_log` VALUES (252, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 19:55:57', '2020-03-28 19:55:57');
INSERT INTO `goadmin_operation_log` VALUES (253, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"415a25dc-f995-4889-a1bb-a6363ca4e580\"],\"category_name\":[\"HTML\"],\"id\":[\"2\"],\"status\":[\"1\"]}', '2020-03-28 19:56:00', '2020-03-28 19:56:00');
INSERT INTO `goadmin_operation_log` VALUES (254, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:56:03', '2020-03-28 19:56:03');
INSERT INTO `goadmin_operation_log` VALUES (255, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:57:09', '2020-03-28 19:57:09');
INSERT INTO `goadmin_operation_log` VALUES (256, 1, '/admin/delete/article_category', 'POST', '::1', '', '2020-03-28 19:57:17', '2020-03-28 19:57:17');
INSERT INTO `goadmin_operation_log` VALUES (257, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:57:17', '2020-03-28 19:57:17');
INSERT INTO `goadmin_operation_log` VALUES (258, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 19:57:19', '2020-03-28 19:57:19');
INSERT INTO `goadmin_operation_log` VALUES (259, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e005dc83-d253-4d1b-a634-3843f27bd89a\"],\"category_name\":[\"HTML\"],\"id\":[\"3\"],\"status\":[\"1\"]}', '2020-03-28 19:57:21', '2020-03-28 19:57:21');
INSERT INTO `goadmin_operation_log` VALUES (260, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:58:52', '2020-03-28 19:58:52');
INSERT INTO `goadmin_operation_log` VALUES (261, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:58:53', '2020-03-28 19:58:53');
INSERT INTO `goadmin_operation_log` VALUES (262, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:58:53', '2020-03-28 19:58:53');
INSERT INTO `goadmin_operation_log` VALUES (263, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 19:58:53', '2020-03-28 19:58:53');
INSERT INTO `goadmin_operation_log` VALUES (264, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 19:58:54', '2020-03-28 19:58:54');
INSERT INTO `goadmin_operation_log` VALUES (265, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"91dca507-4e7b-43c1-9d65-28627bc6f02b\"],\"category_name\":[\"HTML\"],\"id\":[\"4\"],\"status\":[\"1\"]}', '2020-03-28 19:58:57', '2020-03-28 19:58:57');
INSERT INTO `goadmin_operation_log` VALUES (266, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 19:58:59', '2020-03-28 19:58:59');
INSERT INTO `goadmin_operation_log` VALUES (267, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e21790ef-e26f-48ed-a7c5-19c746d072c7\"],\"category_name\":[\"HTML\"],\"id\":[\"5\"],\"status\":[\"1\"]}', '2020-03-28 19:59:02', '2020-03-28 19:59:02');
INSERT INTO `goadmin_operation_log` VALUES (268, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:59:04', '2020-03-28 19:59:04');
INSERT INTO `goadmin_operation_log` VALUES (269, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 19:59:05', '2020-03-28 19:59:05');
INSERT INTO `goadmin_operation_log` VALUES (270, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 19:59:08', '2020-03-28 19:59:08');
INSERT INTO `goadmin_operation_log` VALUES (271, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"5334fc5b-195e-4afc-9b6e-9f8927a7d85e\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"4\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-28 19:59:26', '2020-03-28 19:59:26');
INSERT INTO `goadmin_operation_log` VALUES (272, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:00:38', '2020-03-28 20:00:38');
INSERT INTO `goadmin_operation_log` VALUES (273, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:00:39', '2020-03-28 20:00:39');
INSERT INTO `goadmin_operation_log` VALUES (274, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:00:50', '2020-03-28 20:00:50');
INSERT INTO `goadmin_operation_log` VALUES (275, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e4be8e83-9968-4791-9591-3ed8cc7e488d\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"5\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-28 20:01:02', '2020-03-28 20:01:02');
INSERT INTO `goadmin_operation_log` VALUES (276, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:02:10', '2020-03-28 20:02:10');
INSERT INTO `goadmin_operation_log` VALUES (277, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:02:11', '2020-03-28 20:02:11');
INSERT INTO `goadmin_operation_log` VALUES (278, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:02:11', '2020-03-28 20:02:11');
INSERT INTO `goadmin_operation_log` VALUES (279, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:02:15', '2020-03-28 20:02:15');
INSERT INTO `goadmin_operation_log` VALUES (280, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"69c1b30f-58b7-44d1-8de3-55b51f08e3f3\"],\"auth\":[\"kiki\"],\"category_id\":[\"2\"],\"content\":[\"\\u003cp\\u003e恶趣味请问请问\\u003c/p\\u003e\"],\"id\":[\"6\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"\"],\"title\":[\"世界那么大\"]}', '2020-03-28 20:02:32', '2020-03-28 20:02:32');
INSERT INTO `goadmin_operation_log` VALUES (281, 1, '/admin/info/article/edit', 'GET', '::1', '', '2020-03-28 20:02:44', '2020-03-28 20:02:44');
INSERT INTO `goadmin_operation_log` VALUES (282, 1, '/admin/edit/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"b9c7090b-ed3d-4d86-a89e-b17511d585e0\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"2\"],\"content\":[\"\\u003cp\\u003e恶趣味请问请问恶趣味俄武器额去我\\u003c/p\\u003e\"],\"create_at\":[\"\"],\"id\":[\"6\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"],\"update_at\":[\"\"]}', '2020-03-28 20:02:54', '2020-03-28 20:02:54');
INSERT INTO `goadmin_operation_log` VALUES (283, 1, '/admin/edit/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"8e91e334-9b32-404f-b79f-36cad8b400f3\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"2\"],\"content\":[\"恶趣味请问请问\"],\"create_at\":[\"\"],\"id\":[\"6\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"],\"update_at\":[\"\"]}', '2020-03-28 20:02:58', '2020-03-28 20:02:58');
INSERT INTO `goadmin_operation_log` VALUES (284, 1, '/admin/edit/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"a06a9d73-5914-4e6b-9cd9-820992302fd7\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"2\"],\"content\":[\"\\u003cp\\u003e恶趣味请问请问\\u003c/p\\u003e\"],\"create_at\":[\"\"],\"id\":[\"6\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"],\"update_at\":[\"\"]}', '2020-03-28 20:03:22', '2020-03-28 20:03:22');
INSERT INTO `goadmin_operation_log` VALUES (285, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:03:24', '2020-03-28 20:03:24');
INSERT INTO `goadmin_operation_log` VALUES (286, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:03:24', '2020-03-28 20:03:24');
INSERT INTO `goadmin_operation_log` VALUES (287, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:03:25', '2020-03-28 20:03:25');
INSERT INTO `goadmin_operation_log` VALUES (288, 1, '/admin/info/article/edit', 'GET', '::1', '', '2020-03-28 20:03:28', '2020-03-28 20:03:28');
INSERT INTO `goadmin_operation_log` VALUES (289, 1, '/admin/edit/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"9f769d5e-71c9-4260-986a-4c522e386758\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"2\"],\"content\":[\"恶趣味请问请问\"],\"create_at\":[\"\"],\"id\":[\"6\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"],\"update_at\":[\"\"]}', '2020-03-28 20:03:32', '2020-03-28 20:03:32');
INSERT INTO `goadmin_operation_log` VALUES (290, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:15:10', '2020-03-28 20:15:10');
INSERT INTO `goadmin_operation_log` VALUES (291, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:15:12', '2020-03-28 20:15:12');
INSERT INTO `goadmin_operation_log` VALUES (292, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:15:13', '2020-03-28 20:15:13');
INSERT INTO `goadmin_operation_log` VALUES (293, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c03a0822-bcbe-4ca4-9a08-2c7922dcc473\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"7\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-28 20:15:23', '2020-03-28 20:15:23');
INSERT INTO `goadmin_operation_log` VALUES (294, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:16:55', '2020-03-28 20:16:55');
INSERT INTO `goadmin_operation_log` VALUES (295, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:16:58', '2020-03-28 20:16:58');
INSERT INTO `goadmin_operation_log` VALUES (296, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"88e3a230-52a0-4041-b503-976ed1854921\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"8\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-28 20:17:07', '2020-03-28 20:17:07');
INSERT INTO `goadmin_operation_log` VALUES (297, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:20:24', '2020-03-28 20:20:24');
INSERT INTO `goadmin_operation_log` VALUES (298, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:20:26', '2020-03-28 20:20:26');
INSERT INTO `goadmin_operation_log` VALUES (299, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"8ad34ccc-a53c-4569-904c-9ab02160d730\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-28 20:20:35', '2020-03-28 20:20:35');
INSERT INTO `goadmin_operation_log` VALUES (300, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"722d73d7-2612-4f2a-ab3c-217f2fc70f49\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"]}', '2020-03-28 20:25:01', '2020-03-28 20:25:01');
INSERT INTO `goadmin_operation_log` VALUES (301, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:25:03', '2020-03-28 20:25:03');
INSERT INTO `goadmin_operation_log` VALUES (302, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:25:07', '2020-03-28 20:25:07');
INSERT INTO `goadmin_operation_log` VALUES (303, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"15192980-abad-4a13-a5f0-78f6c7e457b6\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e321312312\\u003c/p\\u003e\"],\"create_at\":[\"�\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"312312\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大1231231\"],\"update_at\":[\"\"]}', '2020-03-28 20:25:17', '2020-03-28 20:25:17');
INSERT INTO `goadmin_operation_log` VALUES (304, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:26:33', '2020-03-28 20:26:33');
INSERT INTO `goadmin_operation_log` VALUES (305, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:26:35', '2020-03-28 20:26:35');
INSERT INTO `goadmin_operation_log` VALUES (306, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"6057b67f-cec7-467a-95e5-8f8e7986b57d\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"2\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"create_at\":[\"\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-03-08 00:00:00\"]}', '2020-03-28 20:26:49', '2020-03-28 20:26:49');
INSERT INTO `goadmin_operation_log` VALUES (307, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:27:21', '2020-03-28 20:27:21');
INSERT INTO `goadmin_operation_log` VALUES (308, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:27:23', '2020-03-28 20:27:23');
INSERT INTO `goadmin_operation_log` VALUES (309, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:27:28', '2020-03-28 20:27:28');
INSERT INTO `goadmin_operation_log` VALUES (310, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:27:29', '2020-03-28 20:27:29');
INSERT INTO `goadmin_operation_log` VALUES (311, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"8bfd2bdb-0455-49c7-ac88-1ddba2838ac9\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"create_at\":[\"\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-03-29 00:00:00\"]}', '2020-03-28 20:27:39', '2020-03-28 20:27:39');
INSERT INTO `goadmin_operation_log` VALUES (312, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:28:25', '2020-03-28 20:28:25');
INSERT INTO `goadmin_operation_log` VALUES (313, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:28:39', '2020-03-28 20:28:39');
INSERT INTO `goadmin_operation_log` VALUES (314, 1, '/admin/new/article', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4159e3f4-a27e-4b3c-8103-83c12318694d\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"create_at\":[\"2020-03-21 00:00:00\"],\"id\":[\"9\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"1\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-03-19 00:00:00\"]}', '2020-03-28 20:28:52', '2020-03-28 20:28:52');
INSERT INTO `goadmin_operation_log` VALUES (315, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:30:36', '2020-03-28 20:30:36');
INSERT INTO `goadmin_operation_log` VALUES (316, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:30:38', '2020-03-28 20:30:38');
INSERT INTO `goadmin_operation_log` VALUES (317, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:30:58', '2020-03-28 20:30:58');
INSERT INTO `goadmin_operation_log` VALUES (318, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:35:50', '2020-03-28 20:35:50');
INSERT INTO `goadmin_operation_log` VALUES (319, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:35:56', '2020-03-28 20:35:56');
INSERT INTO `goadmin_operation_log` VALUES (320, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:35:57', '2020-03-28 20:35:57');
INSERT INTO `goadmin_operation_log` VALUES (321, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:35:57', '2020-03-28 20:35:57');
INSERT INTO `goadmin_operation_log` VALUES (322, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:35:57', '2020-03-28 20:35:57');
INSERT INTO `goadmin_operation_log` VALUES (323, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:35:58', '2020-03-28 20:35:58');
INSERT INTO `goadmin_operation_log` VALUES (324, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:35:58', '2020-03-28 20:35:58');
INSERT INTO `goadmin_operation_log` VALUES (325, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:35:59', '2020-03-28 20:35:59');
INSERT INTO `goadmin_operation_log` VALUES (326, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:36:00', '2020-03-28 20:36:00');
INSERT INTO `goadmin_operation_log` VALUES (327, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:36:00', '2020-03-28 20:36:00');
INSERT INTO `goadmin_operation_log` VALUES (328, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:36:00', '2020-03-28 20:36:00');
INSERT INTO `goadmin_operation_log` VALUES (329, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 20:36:06', '2020-03-28 20:36:06');
INSERT INTO `goadmin_operation_log` VALUES (330, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:36:08', '2020-03-28 20:36:08');
INSERT INTO `goadmin_operation_log` VALUES (331, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:36:16', '2020-03-28 20:36:16');
INSERT INTO `goadmin_operation_log` VALUES (332, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-28 20:36:55', '2020-03-28 20:36:55');
INSERT INTO `goadmin_operation_log` VALUES (333, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-28 20:36:57', '2020-03-28 20:36:57');
INSERT INTO `goadmin_operation_log` VALUES (334, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-28 20:36:59', '2020-03-28 20:36:59');
INSERT INTO `goadmin_operation_log` VALUES (335, 1, '/admin/info/article_category/new', 'GET', '127.0.0.1', '', '2020-03-28 20:37:00', '2020-03-28 20:37:00');
INSERT INTO `goadmin_operation_log` VALUES (336, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"83eb4fcc-2b37-4a06-aa6b-1e038d9fc7f6\"],\"category_name\":[\"HTML\"],\"status\":[\"1\"]}', '2020-03-28 20:37:02', '2020-03-28 20:37:02');
INSERT INTO `goadmin_operation_log` VALUES (337, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 20:37:15', '2020-03-28 20:37:15');
INSERT INTO `goadmin_operation_log` VALUES (338, 1, '/admin/new/article_category', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4bb03879-1f97-45f3-ad68-c9eb2d0737ac\"],\"category_name\":[\"HTML\"],\"status\":[\"1\"]}', '2020-03-28 20:37:18', '2020-03-28 20:37:18');
INSERT INTO `goadmin_operation_log` VALUES (339, 1, '/admin/info/article_category/new', 'GET', '::1', '', '2020-03-28 20:37:28', '2020-03-28 20:37:28');
INSERT INTO `goadmin_operation_log` VALUES (340, 1, '/admin/new/article_category', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e3067f68-2744-468e-b789-672b42eee48b\"],\"category_name\":[\"HTML\"],\"status\":[\"1\"]}', '2020-03-28 20:37:30', '2020-03-28 20:37:30');
INSERT INTO `goadmin_operation_log` VALUES (341, 1, '/admin/new/article_category', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"0b83f294-dab8-4638-893a-5bd773f5897f\"],\"category_name\":[\"HTML\"],\"id\":[\"6\"],\"status\":[\"1\"]}', '2020-03-28 20:37:40', '2020-03-28 20:37:40');
INSERT INTO `goadmin_operation_log` VALUES (342, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:42:12', '2020-03-28 20:42:12');
INSERT INTO `goadmin_operation_log` VALUES (343, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:42:19', '2020-03-28 20:42:19');
INSERT INTO `goadmin_operation_log` VALUES (344, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:42:20', '2020-03-28 20:42:20');
INSERT INTO `goadmin_operation_log` VALUES (345, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:43:45', '2020-03-28 20:43:45');
INSERT INTO `goadmin_operation_log` VALUES (346, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:43:45', '2020-03-28 20:43:45');
INSERT INTO `goadmin_operation_log` VALUES (347, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:43:46', '2020-03-28 20:43:46');
INSERT INTO `goadmin_operation_log` VALUES (348, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:43:47', '2020-03-28 20:43:47');
INSERT INTO `goadmin_operation_log` VALUES (349, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:44:34', '2020-03-28 20:44:34');
INSERT INTO `goadmin_operation_log` VALUES (350, 1, '/admin/delete/article_category', 'POST', '::1', '', '2020-03-28 20:44:40', '2020-03-28 20:44:40');
INSERT INTO `goadmin_operation_log` VALUES (351, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:44:40', '2020-03-28 20:44:40');
INSERT INTO `goadmin_operation_log` VALUES (352, 1, '/admin/delete/article_category', 'POST', '::1', '', '2020-03-28 20:44:45', '2020-03-28 20:44:45');
INSERT INTO `goadmin_operation_log` VALUES (353, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:44:45', '2020-03-28 20:44:45');
INSERT INTO `goadmin_operation_log` VALUES (354, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:44:49', '2020-03-28 20:44:49');
INSERT INTO `goadmin_operation_log` VALUES (355, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:44:50', '2020-03-28 20:44:50');
INSERT INTO `goadmin_operation_log` VALUES (356, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:44:51', '2020-03-28 20:44:51');
INSERT INTO `goadmin_operation_log` VALUES (357, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:44:51', '2020-03-28 20:44:51');
INSERT INTO `goadmin_operation_log` VALUES (358, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:45:28', '2020-03-28 20:45:28');
INSERT INTO `goadmin_operation_log` VALUES (359, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-28 20:49:03', '2020-03-28 20:49:03');
INSERT INTO `goadmin_operation_log` VALUES (360, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:49:07', '2020-03-28 20:49:07');
INSERT INTO `goadmin_operation_log` VALUES (361, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-28 20:49:08', '2020-03-28 20:49:08');
INSERT INTO `goadmin_operation_log` VALUES (362, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 20:49:08', '2020-03-28 20:49:08');
INSERT INTO `goadmin_operation_log` VALUES (363, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-28 21:15:32', '2020-03-28 21:15:32');
INSERT INTO `goadmin_operation_log` VALUES (364, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 21:15:36', '2020-03-28 21:15:36');
INSERT INTO `goadmin_operation_log` VALUES (365, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-28 21:28:10', '2020-03-28 21:28:10');
INSERT INTO `goadmin_operation_log` VALUES (366, 1, '/admin/info/manager', 'GET', '::1', '', '2020-03-29 18:21:53', '2020-03-29 18:21:53');
INSERT INTO `goadmin_operation_log` VALUES (367, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-29 18:21:58', '2020-03-29 18:21:58');
INSERT INTO `goadmin_operation_log` VALUES (368, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:22:07', '2020-03-29 18:22:07');
INSERT INTO `goadmin_operation_log` VALUES (369, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:24:35', '2020-03-29 18:24:35');
INSERT INTO `goadmin_operation_log` VALUES (370, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:37:52', '2020-03-29 18:37:52');
INSERT INTO `goadmin_operation_log` VALUES (371, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:40:18', '2020-03-29 18:40:18');
INSERT INTO `goadmin_operation_log` VALUES (372, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:41:20', '2020-03-29 18:41:20');
INSERT INTO `goadmin_operation_log` VALUES (373, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:44:10', '2020-03-29 18:44:10');
INSERT INTO `goadmin_operation_log` VALUES (374, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:48:33', '2020-03-29 18:48:33');
INSERT INTO `goadmin_operation_log` VALUES (375, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:48:39', '2020-03-29 18:48:39');
INSERT INTO `goadmin_operation_log` VALUES (376, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:50:38', '2020-03-29 18:50:38');
INSERT INTO `goadmin_operation_log` VALUES (377, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 18:57:22', '2020-03-29 18:57:22');
INSERT INTO `goadmin_operation_log` VALUES (378, 1, '/admin/info/article_category', 'GET', '::1', '', '2020-03-29 19:19:25', '2020-03-29 19:19:25');
INSERT INTO `goadmin_operation_log` VALUES (379, 1, '/admin/info/article', 'GET', '::1', '', '2020-03-29 19:19:28', '2020-03-29 19:19:28');
INSERT INTO `goadmin_operation_log` VALUES (380, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 19:19:29', '2020-03-29 19:19:29');
INSERT INTO `goadmin_operation_log` VALUES (381, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 19:25:06', '2020-03-29 19:25:06');
INSERT INTO `goadmin_operation_log` VALUES (382, 1, '/admin/info/article/new', 'GET', '::1', '', '2020-03-29 19:26:32', '2020-03-29 19:26:32');
INSERT INTO `goadmin_operation_log` VALUES (383, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-30 14:28:20', '2020-03-30 14:28:20');
INSERT INTO `goadmin_operation_log` VALUES (384, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:28:23', '2020-03-30 14:28:23');
INSERT INTO `goadmin_operation_log` VALUES (385, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:28:24', '2020-03-30 14:28:24');
INSERT INTO `goadmin_operation_log` VALUES (386, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:28:26', '2020-03-30 14:28:26');
INSERT INTO `goadmin_operation_log` VALUES (387, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:28:27', '2020-03-30 14:28:27');
INSERT INTO `goadmin_operation_log` VALUES (388, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:28:30', '2020-03-30 14:28:30');
INSERT INTO `goadmin_operation_log` VALUES (389, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-30 14:40:27', '2020-03-30 14:40:27');
INSERT INTO `goadmin_operation_log` VALUES (390, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-30 14:41:49', '2020-03-30 14:41:49');
INSERT INTO `goadmin_operation_log` VALUES (391, 1, '/admin/menu/new', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"ae3f34f2-8bf6-4608-9227-2bb0a78ac88a\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"roles[]\":[\"1\"],\"title\":[\"文章评论\"],\"uri\":[\"/info/article_comment\"]}', '2020-03-30 14:42:16', '2020-03-30 14:42:16');
INSERT INTO `goadmin_operation_log` VALUES (392, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-30 14:42:18', '2020-03-30 14:42:18');
INSERT INTO `goadmin_operation_log` VALUES (393, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 14:42:20', '2020-03-30 14:42:20');
INSERT INTO `goadmin_operation_log` VALUES (394, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 14:49:19', '2020-03-30 14:49:19');
INSERT INTO `goadmin_operation_log` VALUES (395, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 14:49:19', '2020-03-30 14:49:19');
INSERT INTO `goadmin_operation_log` VALUES (396, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 14:49:20', '2020-03-30 14:49:20');
INSERT INTO `goadmin_operation_log` VALUES (397, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 14:49:20', '2020-03-30 14:49:20');
INSERT INTO `goadmin_operation_log` VALUES (398, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:21', '2020-03-30 14:49:21');
INSERT INTO `goadmin_operation_log` VALUES (399, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:22', '2020-03-30 14:49:22');
INSERT INTO `goadmin_operation_log` VALUES (400, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:22', '2020-03-30 14:49:22');
INSERT INTO `goadmin_operation_log` VALUES (401, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:22', '2020-03-30 14:49:22');
INSERT INTO `goadmin_operation_log` VALUES (402, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:23', '2020-03-30 14:49:23');
INSERT INTO `goadmin_operation_log` VALUES (403, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:23', '2020-03-30 14:49:23');
INSERT INTO `goadmin_operation_log` VALUES (404, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:23', '2020-03-30 14:49:23');
INSERT INTO `goadmin_operation_log` VALUES (405, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:23', '2020-03-30 14:49:23');
INSERT INTO `goadmin_operation_log` VALUES (406, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:23', '2020-03-30 14:49:23');
INSERT INTO `goadmin_operation_log` VALUES (407, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:23', '2020-03-30 14:49:23');
INSERT INTO `goadmin_operation_log` VALUES (408, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:24', '2020-03-30 14:49:24');
INSERT INTO `goadmin_operation_log` VALUES (409, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:24', '2020-03-30 14:49:24');
INSERT INTO `goadmin_operation_log` VALUES (410, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:49:24', '2020-03-30 14:49:24');
INSERT INTO `goadmin_operation_log` VALUES (411, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:51:11', '2020-03-30 14:51:11');
INSERT INTO `goadmin_operation_log` VALUES (412, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:52:02', '2020-03-30 14:52:02');
INSERT INTO `goadmin_operation_log` VALUES (413, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:52:17', '2020-03-30 14:52:17');
INSERT INTO `goadmin_operation_log` VALUES (414, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:53:21', '2020-03-30 14:53:21');
INSERT INTO `goadmin_operation_log` VALUES (415, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:53:21', '2020-03-30 14:53:21');
INSERT INTO `goadmin_operation_log` VALUES (416, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:53:24', '2020-03-30 14:53:24');
INSERT INTO `goadmin_operation_log` VALUES (417, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 14:53:41', '2020-03-30 14:53:41');
INSERT INTO `goadmin_operation_log` VALUES (418, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:55:44', '2020-03-30 14:55:44');
INSERT INTO `goadmin_operation_log` VALUES (419, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:55:47', '2020-03-30 14:55:47');
INSERT INTO `goadmin_operation_log` VALUES (420, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:57:44', '2020-03-30 14:57:44');
INSERT INTO `goadmin_operation_log` VALUES (421, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:57:45', '2020-03-30 14:57:45');
INSERT INTO `goadmin_operation_log` VALUES (422, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 14:57:46', '2020-03-30 14:57:46');
INSERT INTO `goadmin_operation_log` VALUES (423, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:57:47', '2020-03-30 14:57:47');
INSERT INTO `goadmin_operation_log` VALUES (424, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:57:49', '2020-03-30 14:57:49');
INSERT INTO `goadmin_operation_log` VALUES (425, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:57:51', '2020-03-30 14:57:51');
INSERT INTO `goadmin_operation_log` VALUES (426, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:58:35', '2020-03-30 14:58:35');
INSERT INTO `goadmin_operation_log` VALUES (427, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:59:22', '2020-03-30 14:59:22');
INSERT INTO `goadmin_operation_log` VALUES (428, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 14:59:33', '2020-03-30 14:59:33');
INSERT INTO `goadmin_operation_log` VALUES (429, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 14:59:42', '2020-03-30 14:59:42');
INSERT INTO `goadmin_operation_log` VALUES (430, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:01:05', '2020-03-30 15:01:05');
INSERT INTO `goadmin_operation_log` VALUES (431, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:01:09', '2020-03-30 15:01:09');
INSERT INTO `goadmin_operation_log` VALUES (432, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:01:10', '2020-03-30 15:01:10');
INSERT INTO `goadmin_operation_log` VALUES (433, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:01:12', '2020-03-30 15:01:12');
INSERT INTO `goadmin_operation_log` VALUES (434, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:01:13', '2020-03-30 15:01:13');
INSERT INTO `goadmin_operation_log` VALUES (435, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:01:24', '2020-03-30 15:01:24');
INSERT INTO `goadmin_operation_log` VALUES (436, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-30 15:01:25', '2020-03-30 15:01:25');
INSERT INTO `goadmin_operation_log` VALUES (437, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:01:28', '2020-03-30 15:01:28');
INSERT INTO `goadmin_operation_log` VALUES (438, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:01:29', '2020-03-30 15:01:29');
INSERT INTO `goadmin_operation_log` VALUES (439, 1, '/admin/info/article_category/edit', 'GET', '127.0.0.1', '', '2020-03-30 15:01:30', '2020-03-30 15:01:30');
INSERT INTO `goadmin_operation_log` VALUES (440, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:01:36', '2020-03-30 15:01:36');
INSERT INTO `goadmin_operation_log` VALUES (441, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:01:37', '2020-03-30 15:01:37');
INSERT INTO `goadmin_operation_log` VALUES (442, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:01:37', '2020-03-30 15:01:37');
INSERT INTO `goadmin_operation_log` VALUES (443, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:01:38', '2020-03-30 15:01:38');
INSERT INTO `goadmin_operation_log` VALUES (444, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:01:39', '2020-03-30 15:01:39');
INSERT INTO `goadmin_operation_log` VALUES (445, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:01:39', '2020-03-30 15:01:39');
INSERT INTO `goadmin_operation_log` VALUES (446, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:01:39', '2020-03-30 15:01:39');
INSERT INTO `goadmin_operation_log` VALUES (447, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-30 15:06:39', '2020-03-30 15:06:39');
INSERT INTO `goadmin_operation_log` VALUES (448, 1, '/admin/menu/new', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"4def9981-1bc6-4291-8ada-b7b41e945759\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"roles[]\":[\"1\"],\"title\":[\"文章数据\"],\"uri\":[\"/info/article_statistics\"]}', '2020-03-30 15:06:52', '2020-03-30 15:06:52');
INSERT INTO `goadmin_operation_log` VALUES (449, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-30 15:06:54', '2020-03-30 15:06:54');
INSERT INTO `goadmin_operation_log` VALUES (450, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:06:57', '2020-03-30 15:06:57');
INSERT INTO `goadmin_operation_log` VALUES (451, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:07:14', '2020-03-30 15:07:14');
INSERT INTO `goadmin_operation_log` VALUES (452, 1, '/admin/info/article_statistics/edit', 'GET', '127.0.0.1', '', '2020-03-30 15:07:17', '2020-03-30 15:07:17');
INSERT INTO `goadmin_operation_log` VALUES (453, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:07:21', '2020-03-30 15:07:21');
INSERT INTO `goadmin_operation_log` VALUES (454, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:07:25', '2020-03-30 15:07:25');
INSERT INTO `goadmin_operation_log` VALUES (455, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:07:28', '2020-03-30 15:07:28');
INSERT INTO `goadmin_operation_log` VALUES (456, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:07:28', '2020-03-30 15:07:28');
INSERT INTO `goadmin_operation_log` VALUES (457, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:08:03', '2020-03-30 15:08:03');
INSERT INTO `goadmin_operation_log` VALUES (458, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:08:17', '2020-03-30 15:08:17');
INSERT INTO `goadmin_operation_log` VALUES (459, 1, '/admin/export/article', 'POST', '127.0.0.1', '', '2020-03-30 15:08:36', '2020-03-30 15:08:36');
INSERT INTO `goadmin_operation_log` VALUES (460, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:08:59', '2020-03-30 15:08:59');
INSERT INTO `goadmin_operation_log` VALUES (461, 1, '/admin/export/article', 'POST', '127.0.0.1', '', '2020-03-30 15:09:10', '2020-03-30 15:09:10');
INSERT INTO `goadmin_operation_log` VALUES (462, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:09:56', '2020-03-30 15:09:56');
INSERT INTO `goadmin_operation_log` VALUES (463, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:10:00', '2020-03-30 15:10:00');
INSERT INTO `goadmin_operation_log` VALUES (464, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:15:18', '2020-03-30 15:15:18');
INSERT INTO `goadmin_operation_log` VALUES (465, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:15:18', '2020-03-30 15:15:18');
INSERT INTO `goadmin_operation_log` VALUES (466, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:15:19', '2020-03-30 15:15:19');
INSERT INTO `goadmin_operation_log` VALUES (467, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:15:19', '2020-03-30 15:15:19');
INSERT INTO `goadmin_operation_log` VALUES (468, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:15:19', '2020-03-30 15:15:19');
INSERT INTO `goadmin_operation_log` VALUES (469, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:15:20', '2020-03-30 15:15:20');
INSERT INTO `goadmin_operation_log` VALUES (470, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:15:56', '2020-03-30 15:15:56');
INSERT INTO `goadmin_operation_log` VALUES (471, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:15:56', '2020-03-30 15:15:56');
INSERT INTO `goadmin_operation_log` VALUES (472, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:15:58', '2020-03-30 15:15:58');
INSERT INTO `goadmin_operation_log` VALUES (473, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:15:58', '2020-03-30 15:15:58');
INSERT INTO `goadmin_operation_log` VALUES (474, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:15:59', '2020-03-30 15:15:59');
INSERT INTO `goadmin_operation_log` VALUES (475, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:16:00', '2020-03-30 15:16:00');
INSERT INTO `goadmin_operation_log` VALUES (476, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:16:00', '2020-03-30 15:16:00');
INSERT INTO `goadmin_operation_log` VALUES (477, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:16:00', '2020-03-30 15:16:00');
INSERT INTO `goadmin_operation_log` VALUES (478, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:16:01', '2020-03-30 15:16:01');
INSERT INTO `goadmin_operation_log` VALUES (479, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:18:40', '2020-03-30 15:18:40');
INSERT INTO `goadmin_operation_log` VALUES (480, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:18:54', '2020-03-30 15:18:54');
INSERT INTO `goadmin_operation_log` VALUES (481, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:18:54', '2020-03-30 15:18:54');
INSERT INTO `goadmin_operation_log` VALUES (482, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:18:55', '2020-03-30 15:18:55');
INSERT INTO `goadmin_operation_log` VALUES (483, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:18:59', '2020-03-30 15:18:59');
INSERT INTO `goadmin_operation_log` VALUES (484, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:18:59', '2020-03-30 15:18:59');
INSERT INTO `goadmin_operation_log` VALUES (485, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:19:01', '2020-03-30 15:19:01');
INSERT INTO `goadmin_operation_log` VALUES (486, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:19:01', '2020-03-30 15:19:01');
INSERT INTO `goadmin_operation_log` VALUES (487, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:19:03', '2020-03-30 15:19:03');
INSERT INTO `goadmin_operation_log` VALUES (488, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:19:06', '2020-03-30 15:19:06');
INSERT INTO `goadmin_operation_log` VALUES (489, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:19:48', '2020-03-30 15:19:48');
INSERT INTO `goadmin_operation_log` VALUES (490, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:19:51', '2020-03-30 15:19:51');
INSERT INTO `goadmin_operation_log` VALUES (491, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:20:08', '2020-03-30 15:20:08');
INSERT INTO `goadmin_operation_log` VALUES (492, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:20:09', '2020-03-30 15:20:09');
INSERT INTO `goadmin_operation_log` VALUES (493, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:20:09', '2020-03-30 15:20:09');
INSERT INTO `goadmin_operation_log` VALUES (494, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:20:10', '2020-03-30 15:20:10');
INSERT INTO `goadmin_operation_log` VALUES (495, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:20:10', '2020-03-30 15:20:10');
INSERT INTO `goadmin_operation_log` VALUES (496, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:20:11', '2020-03-30 15:20:11');
INSERT INTO `goadmin_operation_log` VALUES (497, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:20:17', '2020-03-30 15:20:17');
INSERT INTO `goadmin_operation_log` VALUES (498, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:20:18', '2020-03-30 15:20:18');
INSERT INTO `goadmin_operation_log` VALUES (499, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:20:18', '2020-03-30 15:20:18');
INSERT INTO `goadmin_operation_log` VALUES (500, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:20:19', '2020-03-30 15:20:19');
INSERT INTO `goadmin_operation_log` VALUES (501, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:22:10', '2020-03-30 15:22:10');
INSERT INTO `goadmin_operation_log` VALUES (502, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:22:10', '2020-03-30 15:22:10');
INSERT INTO `goadmin_operation_log` VALUES (503, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:24:34', '2020-03-30 15:24:34');
INSERT INTO `goadmin_operation_log` VALUES (504, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:24:35', '2020-03-30 15:24:35');
INSERT INTO `goadmin_operation_log` VALUES (505, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:24:35', '2020-03-30 15:24:35');
INSERT INTO `goadmin_operation_log` VALUES (506, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:24:36', '2020-03-30 15:24:36');
INSERT INTO `goadmin_operation_log` VALUES (507, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:24:36', '2020-03-30 15:24:36');
INSERT INTO `goadmin_operation_log` VALUES (508, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:24:36', '2020-03-30 15:24:36');
INSERT INTO `goadmin_operation_log` VALUES (509, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:24:42', '2020-03-30 15:24:42');
INSERT INTO `goadmin_operation_log` VALUES (510, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:24:42', '2020-03-30 15:24:42');
INSERT INTO `goadmin_operation_log` VALUES (511, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:24:56', '2020-03-30 15:24:56');
INSERT INTO `goadmin_operation_log` VALUES (512, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:24:56', '2020-03-30 15:24:56');
INSERT INTO `goadmin_operation_log` VALUES (513, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:25:21', '2020-03-30 15:25:21');
INSERT INTO `goadmin_operation_log` VALUES (514, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:25:21', '2020-03-30 15:25:21');
INSERT INTO `goadmin_operation_log` VALUES (515, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:27:37', '2020-03-30 15:27:37');
INSERT INTO `goadmin_operation_log` VALUES (516, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:27:37', '2020-03-30 15:27:37');
INSERT INTO `goadmin_operation_log` VALUES (517, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:29:58', '2020-03-30 15:29:58');
INSERT INTO `goadmin_operation_log` VALUES (518, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:29:58', '2020-03-30 15:29:58');
INSERT INTO `goadmin_operation_log` VALUES (519, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:29:59', '2020-03-30 15:29:59');
INSERT INTO `goadmin_operation_log` VALUES (520, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:29:59', '2020-03-30 15:29:59');
INSERT INTO `goadmin_operation_log` VALUES (521, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:29:59', '2020-03-30 15:29:59');
INSERT INTO `goadmin_operation_log` VALUES (522, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:30:00', '2020-03-30 15:30:00');
INSERT INTO `goadmin_operation_log` VALUES (523, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:30:00', '2020-03-30 15:30:00');
INSERT INTO `goadmin_operation_log` VALUES (524, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:30:00', '2020-03-30 15:30:00');
INSERT INTO `goadmin_operation_log` VALUES (525, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:30:22', '2020-03-30 15:30:22');
INSERT INTO `goadmin_operation_log` VALUES (526, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:30:22', '2020-03-30 15:30:22');
INSERT INTO `goadmin_operation_log` VALUES (527, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:30:23', '2020-03-30 15:30:23');
INSERT INTO `goadmin_operation_log` VALUES (528, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:30:23', '2020-03-30 15:30:23');
INSERT INTO `goadmin_operation_log` VALUES (529, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:30:23', '2020-03-30 15:30:23');
INSERT INTO `goadmin_operation_log` VALUES (530, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:30:24', '2020-03-30 15:30:24');
INSERT INTO `goadmin_operation_log` VALUES (531, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:30:24', '2020-03-30 15:30:24');
INSERT INTO `goadmin_operation_log` VALUES (532, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:30:25', '2020-03-30 15:30:25');
INSERT INTO `goadmin_operation_log` VALUES (533, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:30:25', '2020-03-30 15:30:25');
INSERT INTO `goadmin_operation_log` VALUES (534, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:30:26', '2020-03-30 15:30:26');
INSERT INTO `goadmin_operation_log` VALUES (535, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:14', '2020-03-30 15:31:14');
INSERT INTO `goadmin_operation_log` VALUES (536, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:31:16', '2020-03-30 15:31:16');
INSERT INTO `goadmin_operation_log` VALUES (537, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:17', '2020-03-30 15:31:17');
INSERT INTO `goadmin_operation_log` VALUES (538, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:17', '2020-03-30 15:31:17');
INSERT INTO `goadmin_operation_log` VALUES (539, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:18', '2020-03-30 15:31:18');
INSERT INTO `goadmin_operation_log` VALUES (540, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:31:18', '2020-03-30 15:31:18');
INSERT INTO `goadmin_operation_log` VALUES (541, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:19', '2020-03-30 15:31:19');
INSERT INTO `goadmin_operation_log` VALUES (542, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:31:21', '2020-03-30 15:31:21');
INSERT INTO `goadmin_operation_log` VALUES (543, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:22', '2020-03-30 15:31:22');
INSERT INTO `goadmin_operation_log` VALUES (544, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:31:23', '2020-03-30 15:31:23');
INSERT INTO `goadmin_operation_log` VALUES (545, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:24', '2020-03-30 15:31:24');
INSERT INTO `goadmin_operation_log` VALUES (546, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:25', '2020-03-30 15:31:25');
INSERT INTO `goadmin_operation_log` VALUES (547, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:31:25', '2020-03-30 15:31:25');
INSERT INTO `goadmin_operation_log` VALUES (548, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:31:25', '2020-03-30 15:31:25');
INSERT INTO `goadmin_operation_log` VALUES (549, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:31:26', '2020-03-30 15:31:26');
INSERT INTO `goadmin_operation_log` VALUES (550, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:31:26', '2020-03-30 15:31:26');
INSERT INTO `goadmin_operation_log` VALUES (551, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:31:26', '2020-03-30 15:31:26');
INSERT INTO `goadmin_operation_log` VALUES (552, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:37:48', '2020-03-30 15:37:48');
INSERT INTO `goadmin_operation_log` VALUES (553, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:37:49', '2020-03-30 15:37:49');
INSERT INTO `goadmin_operation_log` VALUES (554, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:37:50', '2020-03-30 15:37:50');
INSERT INTO `goadmin_operation_log` VALUES (555, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:37:50', '2020-03-30 15:37:50');
INSERT INTO `goadmin_operation_log` VALUES (556, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:37:52', '2020-03-30 15:37:52');
INSERT INTO `goadmin_operation_log` VALUES (557, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:37:53', '2020-03-30 15:37:53');
INSERT INTO `goadmin_operation_log` VALUES (558, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:37:54', '2020-03-30 15:37:54');
INSERT INTO `goadmin_operation_log` VALUES (559, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:37:56', '2020-03-30 15:37:56');
INSERT INTO `goadmin_operation_log` VALUES (560, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-30 15:39:04', '2020-03-30 15:39:04');
INSERT INTO `goadmin_operation_log` VALUES (561, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:39:54', '2020-03-30 15:39:54');
INSERT INTO `goadmin_operation_log` VALUES (562, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:40:55', '2020-03-30 15:40:55');
INSERT INTO `goadmin_operation_log` VALUES (563, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:42:39', '2020-03-30 15:42:39');
INSERT INTO `goadmin_operation_log` VALUES (564, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:42:39', '2020-03-30 15:42:39');
INSERT INTO `goadmin_operation_log` VALUES (565, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:42:40', '2020-03-30 15:42:40');
INSERT INTO `goadmin_operation_log` VALUES (566, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:42:41', '2020-03-30 15:42:41');
INSERT INTO `goadmin_operation_log` VALUES (567, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:42:41', '2020-03-30 15:42:41');
INSERT INTO `goadmin_operation_log` VALUES (568, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:42:42', '2020-03-30 15:42:42');
INSERT INTO `goadmin_operation_log` VALUES (569, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:42:42', '2020-03-30 15:42:42');
INSERT INTO `goadmin_operation_log` VALUES (570, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:42:42', '2020-03-30 15:42:42');
INSERT INTO `goadmin_operation_log` VALUES (571, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:44:09', '2020-03-30 15:44:09');
INSERT INTO `goadmin_operation_log` VALUES (572, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:44:10', '2020-03-30 15:44:10');
INSERT INTO `goadmin_operation_log` VALUES (573, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:44:10', '2020-03-30 15:44:10');
INSERT INTO `goadmin_operation_log` VALUES (574, 1, '/admin/info/article_category/new', 'GET', '127.0.0.1', '', '2020-03-30 15:44:12', '2020-03-30 15:44:12');
INSERT INTO `goadmin_operation_log` VALUES (575, 1, '/admin/new/article_category', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"3edf37d2-645d-4972-a1f6-a4c66247da03\"],\"category_name\":[\"分类2\"],\"id\":[\"7\"],\"status\":[\"1\"]}', '2020-03-30 15:44:18', '2020-03-30 15:44:18');
INSERT INTO `goadmin_operation_log` VALUES (576, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:44:36', '2020-03-30 15:44:36');
INSERT INTO `goadmin_operation_log` VALUES (577, 1, '/admin/info/article_category/new', 'GET', '127.0.0.1', '', '2020-03-30 15:44:38', '2020-03-30 15:44:38');
INSERT INTO `goadmin_operation_log` VALUES (578, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:44:40', '2020-03-30 15:44:40');
INSERT INTO `goadmin_operation_log` VALUES (579, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:46:14', '2020-03-30 15:46:14');
INSERT INTO `goadmin_operation_log` VALUES (580, 1, '/admin/info/article_category/new', 'GET', '127.0.0.1', '', '2020-03-30 15:46:16', '2020-03-30 15:46:16');
INSERT INTO `goadmin_operation_log` VALUES (581, 1, '/admin/new/article_category', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article_category?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f48f45c3-633d-4be8-9227-95c0d271781e\"],\"category_name\":[\"分类3\"],\"create_at\":[\"2020-03-27 00:00:00\"],\"id\":[\"8\"],\"status\":[\"1\"]}', '2020-03-30 15:46:24', '2020-03-30 15:46:24');
INSERT INTO `goadmin_operation_log` VALUES (582, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:46:35', '2020-03-30 15:46:35');
INSERT INTO `goadmin_operation_log` VALUES (583, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 15:46:36', '2020-03-30 15:46:36');
INSERT INTO `goadmin_operation_log` VALUES (584, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:46:36', '2020-03-30 15:46:36');
INSERT INTO `goadmin_operation_log` VALUES (585, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-03-30 15:46:37', '2020-03-30 15:46:37');
INSERT INTO `goadmin_operation_log` VALUES (586, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c2baec9f-cf88-46cd-8a40-2e613d6cadaf\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"3\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"id\":[\"10\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"0\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-03-30 00:00:00\"]}', '2020-03-30 15:46:51', '2020-03-30 15:46:51');
INSERT INTO `goadmin_operation_log` VALUES (587, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-30 15:47:04', '2020-03-30 15:47:04');
INSERT INTO `goadmin_operation_log` VALUES (588, 1, '/admin/edit/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"285b6ab1-9437-4c2c-a621-9ff0a48e9466\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"8\"],\"content\":[\"世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\"],\"create_at\":[\"\"],\"id\":[\"10\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"0\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-03-30 00:00:00\"]}', '2020-03-30 15:47:08', '2020-03-30 15:47:08');
INSERT INTO `goadmin_operation_log` VALUES (589, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-30 15:47:44', '2020-03-30 15:47:44');
INSERT INTO `goadmin_operation_log` VALUES (590, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 15:47:49', '2020-03-30 15:47:49');
INSERT INTO `goadmin_operation_log` VALUES (591, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 15:47:49', '2020-03-30 15:47:49');
INSERT INTO `goadmin_operation_log` VALUES (592, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:47:50', '2020-03-30 15:47:50');
INSERT INTO `goadmin_operation_log` VALUES (593, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-03-30 15:47:51', '2020-03-30 15:47:51');
INSERT INTO `goadmin_operation_log` VALUES (594, 1, '/admin/edit/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=create_at\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c1036a08-5691-4921-a2f4-129fd780e462\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"8\"],\"content\":[\"世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\"],\"create_at\":[\"2020-03-30 00:00:00\"],\"id\":[\"10\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"0\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-03-30 00:00:00\"]}', '2020-03-30 15:48:00', '2020-03-30 15:48:00');
INSERT INTO `goadmin_operation_log` VALUES (595, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:48:12', '2020-03-30 15:48:12');
INSERT INTO `goadmin_operation_log` VALUES (596, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:48:39', '2020-03-30 15:48:39');
INSERT INTO `goadmin_operation_log` VALUES (597, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 15:48:43', '2020-03-30 15:48:43');
INSERT INTO `goadmin_operation_log` VALUES (598, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 16:12:28', '2020-03-30 16:12:28');
INSERT INTO `goadmin_operation_log` VALUES (599, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 16:16:33', '2020-03-30 16:16:33');
INSERT INTO `goadmin_operation_log` VALUES (600, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 16:16:33', '2020-03-30 16:16:33');
INSERT INTO `goadmin_operation_log` VALUES (601, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 16:16:34', '2020-03-30 16:16:34');
INSERT INTO `goadmin_operation_log` VALUES (602, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 16:16:35', '2020-03-30 16:16:35');
INSERT INTO `goadmin_operation_log` VALUES (603, 1, '/admin/info/article_statistics/edit', 'GET', '127.0.0.1', '', '2020-03-30 16:16:40', '2020-03-30 16:16:40');
INSERT INTO `goadmin_operation_log` VALUES (604, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 16:16:41', '2020-03-30 16:16:41');
INSERT INTO `goadmin_operation_log` VALUES (605, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 16:16:43', '2020-03-30 16:16:43');
INSERT INTO `goadmin_operation_log` VALUES (606, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 16:16:43', '2020-03-30 16:16:43');
INSERT INTO `goadmin_operation_log` VALUES (607, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 16:16:44', '2020-03-30 16:16:44');
INSERT INTO `goadmin_operation_log` VALUES (608, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-30 17:06:41', '2020-03-30 17:06:41');
INSERT INTO `goadmin_operation_log` VALUES (609, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-30 17:06:43', '2020-03-30 17:06:43');
INSERT INTO `goadmin_operation_log` VALUES (610, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2020-03-30 17:06:44', '2020-03-30 17:06:44');
INSERT INTO `goadmin_operation_log` VALUES (611, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2020-03-30 17:06:44', '2020-03-30 17:06:44');
INSERT INTO `goadmin_operation_log` VALUES (612, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-03-30 17:06:44', '2020-03-30 17:06:44');
INSERT INTO `goadmin_operation_log` VALUES (613, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2020-03-30 17:06:45', '2020-03-30 17:06:45');
INSERT INTO `goadmin_operation_log` VALUES (614, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 17:06:47', '2020-03-30 17:06:47');
INSERT INTO `goadmin_operation_log` VALUES (615, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 17:06:49', '2020-03-30 17:06:49');
INSERT INTO `goadmin_operation_log` VALUES (616, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 17:06:49', '2020-03-30 17:06:49');
INSERT INTO `goadmin_operation_log` VALUES (617, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 17:06:50', '2020-03-30 17:06:50');
INSERT INTO `goadmin_operation_log` VALUES (618, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 17:06:50', '2020-03-30 17:06:50');
INSERT INTO `goadmin_operation_log` VALUES (619, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-03-30 19:18:53', '2020-03-30 19:18:53');
INSERT INTO `goadmin_operation_log` VALUES (620, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 19:18:56', '2020-03-30 19:18:56');
INSERT INTO `goadmin_operation_log` VALUES (621, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 19:18:57', '2020-03-30 19:18:57');
INSERT INTO `goadmin_operation_log` VALUES (622, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 19:18:57', '2020-03-30 19:18:57');
INSERT INTO `goadmin_operation_log` VALUES (623, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 19:18:58', '2020-03-30 19:18:58');
INSERT INTO `goadmin_operation_log` VALUES (624, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 19:18:59', '2020-03-30 19:18:59');
INSERT INTO `goadmin_operation_log` VALUES (625, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 19:18:59', '2020-03-30 19:18:59');
INSERT INTO `goadmin_operation_log` VALUES (626, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 19:18:59', '2020-03-30 19:18:59');
INSERT INTO `goadmin_operation_log` VALUES (627, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 19:19:00', '2020-03-30 19:19:00');
INSERT INTO `goadmin_operation_log` VALUES (628, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 19:19:00', '2020-03-30 19:19:00');
INSERT INTO `goadmin_operation_log` VALUES (629, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-03-30 19:19:06', '2020-03-30 19:19:06');
INSERT INTO `goadmin_operation_log` VALUES (630, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-03-30 19:19:11', '2020-03-30 19:19:11');
INSERT INTO `goadmin_operation_log` VALUES (631, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 19:19:11', '2020-03-30 19:19:11');
INSERT INTO `goadmin_operation_log` VALUES (632, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 19:19:11', '2020-03-30 19:19:11');
INSERT INTO `goadmin_operation_log` VALUES (633, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-03-30 19:19:12', '2020-03-30 19:19:12');
INSERT INTO `goadmin_operation_log` VALUES (634, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-03-30 19:19:12', '2020-03-30 19:19:12');
INSERT INTO `goadmin_operation_log` VALUES (635, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-04-01 08:16:53', '2020-04-01 08:16:53');
INSERT INTO `goadmin_operation_log` VALUES (636, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-01 08:23:45', '2020-04-01 08:23:45');
INSERT INTO `goadmin_operation_log` VALUES (637, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-04-01 08:23:53', '2020-04-01 08:23:53');
INSERT INTO `goadmin_operation_log` VALUES (638, 1, '/admin/menu/new', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"f14c8423-6c95-4653-a303-e0ba96f59d2c\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"roles[]\":[\"1\"],\"title\":[\"文章标签\"],\"uri\":[\"/info/article_label\"]}', '2020-04-01 08:24:23', '2020-04-01 08:24:23');
INSERT INTO `goadmin_operation_log` VALUES (639, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-04-01 08:24:24', '2020-04-01 08:24:24');
INSERT INTO `goadmin_operation_log` VALUES (640, 1, '/admin/info/article_label', 'GET', '127.0.0.1', '', '2020-04-01 08:24:26', '2020-04-01 08:24:26');
INSERT INTO `goadmin_operation_log` VALUES (641, 1, '/admin/info/article_label/new', 'GET', '127.0.0.1', '', '2020-04-01 08:24:29', '2020-04-01 08:24:29');
INSERT INTO `goadmin_operation_log` VALUES (642, 1, '/admin/info/article_label', 'GET', '127.0.0.1', '', '2020-04-01 08:24:31', '2020-04-01 08:24:31');
INSERT INTO `goadmin_operation_log` VALUES (643, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-04-01 08:28:46', '2020-04-01 08:28:46');
INSERT INTO `goadmin_operation_log` VALUES (644, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-04-01 08:28:47', '2020-04-01 08:28:47');
INSERT INTO `goadmin_operation_log` VALUES (645, 1, '/admin/menu/new', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"41615e99-aa35-4cb7-8f8c-e85434970c7b\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"roles[]\":[\"1\"],\"title\":[\"作者简介\"],\"uri\":[\"/info/users\"]}', '2020-04-01 08:29:00', '2020-04-01 08:29:00');
INSERT INTO `goadmin_operation_log` VALUES (646, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2020-04-01 08:29:04', '2020-04-01 08:29:04');
INSERT INTO `goadmin_operation_log` VALUES (647, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 08:29:06', '2020-04-01 08:29:06');
INSERT INTO `goadmin_operation_log` VALUES (648, 1, '/admin/info/article_label', 'GET', '127.0.0.1', '', '2020-04-01 08:29:07', '2020-04-01 08:29:07');
INSERT INTO `goadmin_operation_log` VALUES (649, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-04-01 08:29:07', '2020-04-01 08:29:07');
INSERT INTO `goadmin_operation_log` VALUES (650, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-04-01 08:29:08', '2020-04-01 08:29:08');
INSERT INTO `goadmin_operation_log` VALUES (651, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-04-01 08:29:08', '2020-04-01 08:29:08');
INSERT INTO `goadmin_operation_log` VALUES (652, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-04-01 08:29:08', '2020-04-01 08:29:08');
INSERT INTO `goadmin_operation_log` VALUES (653, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-01 08:29:09', '2020-04-01 08:29:09');
INSERT INTO `goadmin_operation_log` VALUES (654, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-01 09:25:27', '2020-04-01 09:25:27');
INSERT INTO `goadmin_operation_log` VALUES (655, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:25:28', '2020-04-01 09:25:28');
INSERT INTO `goadmin_operation_log` VALUES (656, 1, '/admin/info/users/edit', 'GET', '127.0.0.1', '', '2020-04-01 09:25:32', '2020-04-01 09:25:32');
INSERT INTO `goadmin_operation_log` VALUES (657, 1, '/admin/edit/users', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"740f4dd7-703c-4d31-b478-d3e21e27a962\"],\"about\":[\"\\u003cp\\u003e个人学习博客，欢迎提供修改意见\\u003c/p\\u003e\\u003cp\\u003e邮箱:1569482471@qq.com\\u0026nbsp;\\u0026nbsp;\\u003cbr\\u003e\\u003c/p\\u003e\"],\"contact\":[\"\\u003cp\\u003e邮箱:1569482471@qq.com\\u003c/p\\u003e\\u003cp\\u003e\\u003ca href=\\\"https://github.com/kiki12587\\\" target=\\\"_blank\\\"\\u003egithub\\u003c/a\\u003e\\u003cbr\\u003e\\u003c/p\\u003e\"],\"id\":[\"1\"],\"personal_introduction\":[\"\\u003cp\\u003e高大帅气的kiki\\u003c/p\\u003e\"]}', '2020-04-01 09:28:18', '2020-04-01 09:28:18');
INSERT INTO `goadmin_operation_log` VALUES (658, 1, '/admin/info/users/edit', 'GET', '127.0.0.1', '', '2020-04-01 09:28:22', '2020-04-01 09:28:22');
INSERT INTO `goadmin_operation_log` VALUES (659, 1, '/admin/edit/users', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"22c15b38-b12c-427e-ac55-2055e01fc260\"],\"about\":[\"个人学习博客，欢迎提供修改意见邮箱:1569482471@qq.com  \"],\"contact\":[\"邮箱:1569482471@qq.comgithub\"],\"id\":[\"1\"],\"personal_introduction\":[\"\\u003cp\\u003e高大帅气的\\u003c/p\\u003e\"]}', '2020-04-01 09:28:35', '2020-04-01 09:28:35');
INSERT INTO `goadmin_operation_log` VALUES (660, 1, '/admin/info/users/edit', 'GET', '127.0.0.1', '', '2020-04-01 09:29:44', '2020-04-01 09:29:44');
INSERT INTO `goadmin_operation_log` VALUES (661, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:30:19', '2020-04-01 09:30:19');
INSERT INTO `goadmin_operation_log` VALUES (662, 1, '/admin/info/users/edit', 'GET', '127.0.0.1', '', '2020-04-01 09:30:22', '2020-04-01 09:30:22');
INSERT INTO `goadmin_operation_log` VALUES (663, 1, '/admin/edit/users', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"b928031b-8161-4185-b6d0-602add810b2c\"],\"about\":[\"个人学习博客，欢迎提供修改意见邮箱:1569482471@qq.com  \"],\"contact\":[\"邮箱:1569482471@qq.comgithub\"],\"id\":[\"1\"],\"personal_introduction\":[\"\\u003cp\\u003e\\u003cimg src=\\\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\\\" alt=\\\"[坏笑]\\\" data-w-e=\\\"1\\\"\\u003e\\u003cbr\\u003e\\u003c/p\\u003e\"]}', '2020-04-01 09:30:32', '2020-04-01 09:30:32');
INSERT INTO `goadmin_operation_log` VALUES (664, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:22', '2020-04-01 09:31:22');
INSERT INTO `goadmin_operation_log` VALUES (665, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:23', '2020-04-01 09:31:23');
INSERT INTO `goadmin_operation_log` VALUES (666, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:24', '2020-04-01 09:31:24');
INSERT INTO `goadmin_operation_log` VALUES (667, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:24', '2020-04-01 09:31:24');
INSERT INTO `goadmin_operation_log` VALUES (668, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:24', '2020-04-01 09:31:24');
INSERT INTO `goadmin_operation_log` VALUES (669, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:24', '2020-04-01 09:31:24');
INSERT INTO `goadmin_operation_log` VALUES (670, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:24', '2020-04-01 09:31:24');
INSERT INTO `goadmin_operation_log` VALUES (671, 1, '/admin/info/users/edit', 'GET', '127.0.0.1', '', '2020-04-01 09:31:27', '2020-04-01 09:31:27');
INSERT INTO `goadmin_operation_log` VALUES (672, 1, '/admin/edit/users', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"0015d071-37c3-4fa1-9f2c-ba305281b6eb\"],\"about\":[\"个人学习博客，欢迎提供修改意见邮箱:1569482471@qq.com  \"],\"contact\":[\"邮箱:1569482471@qq.comgithub\"],\"id\":[\"1\"],\"personal_introduction\":[\"\\u003cp\\u003e俄武器恶气\\u003c/p\\u003e\"]}', '2020-04-01 09:31:31', '2020-04-01 09:31:31');
INSERT INTO `goadmin_operation_log` VALUES (673, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:38', '2020-04-01 09:31:38');
INSERT INTO `goadmin_operation_log` VALUES (674, 1, '/admin/info/article_label', 'GET', '127.0.0.1', '', '2020-04-01 09:31:38', '2020-04-01 09:31:38');
INSERT INTO `goadmin_operation_log` VALUES (675, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:39', '2020-04-01 09:31:39');
INSERT INTO `goadmin_operation_log` VALUES (676, 1, '/admin/info/article_label', 'GET', '127.0.0.1', '', '2020-04-01 09:31:39', '2020-04-01 09:31:39');
INSERT INTO `goadmin_operation_log` VALUES (677, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-04-01 09:31:40', '2020-04-01 09:31:40');
INSERT INTO `goadmin_operation_log` VALUES (678, 1, '/admin/info/article_label', 'GET', '127.0.0.1', '', '2020-04-01 09:31:40', '2020-04-01 09:31:40');
INSERT INTO `goadmin_operation_log` VALUES (679, 1, '/admin/info/article_label/new', 'GET', '127.0.0.1', '', '2020-04-01 09:31:42', '2020-04-01 09:31:42');
INSERT INTO `goadmin_operation_log` VALUES (680, 1, '/admin/new/article_label', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article_label?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"5f69db2a-37ba-4695-85f9-bb1406d690dc\"],\"id\":[\"3\"],\"label_name\":[\"Golang\"]}', '2020-04-01 09:31:51', '2020-04-01 09:31:51');
INSERT INTO `goadmin_operation_log` VALUES (681, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2020-04-01 09:31:53', '2020-04-01 09:31:53');
INSERT INTO `goadmin_operation_log` VALUES (682, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-04-01 22:10:04', '2020-04-01 22:10:04');
INSERT INTO `goadmin_operation_log` VALUES (683, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-01 22:10:11', '2020-04-01 22:10:11');
INSERT INTO `goadmin_operation_log` VALUES (684, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-04-01 22:10:15', '2020-04-01 22:10:15');
INSERT INTO `goadmin_operation_log` VALUES (685, 1, '/admin/edit/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"6a6fbd6b-0b70-40a4-abd2-41fb35876174\"],\"article_status\":[\"1\"],\"auth\":[\"q1mi\"],\"category_id\":[\"0\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"create_at\":[\"2020-04-01 18:49:47\"],\"id\":[\"26\"],\"image\":[\"3d7bbadb-5130-4107-a21d-e8bc8c71f270.jpg\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大\"],\"label\":[\"世界\"],\"selected_articles_status\":[\"0\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-04-01 00:00:00\"]}', '2020-04-01 22:11:33', '2020-04-01 22:11:33');
INSERT INTO `goadmin_operation_log` VALUES (686, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-04-02 00:10:41', '2020-04-02 00:10:41');
INSERT INTO `goadmin_operation_log` VALUES (687, 1, '/admin/info/article_statistics', 'GET', '127.0.0.1', '', '2020-04-02 00:10:46', '2020-04-02 00:10:46');
INSERT INTO `goadmin_operation_log` VALUES (688, 1, '/admin/info/article_comment', 'GET', '127.0.0.1', '', '2020-04-02 00:10:47', '2020-04-02 00:10:47');
INSERT INTO `goadmin_operation_log` VALUES (689, 1, '/admin/info/article_category', 'GET', '127.0.0.1', '', '2020-04-02 00:10:47', '2020-04-02 00:10:47');
INSERT INTO `goadmin_operation_log` VALUES (690, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:10:48', '2020-04-02 00:10:48');
INSERT INTO `goadmin_operation_log` VALUES (691, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:12:44', '2020-04-02 00:12:44');
INSERT INTO `goadmin_operation_log` VALUES (692, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:12:45', '2020-04-02 00:12:45');
INSERT INTO `goadmin_operation_log` VALUES (693, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:13:26', '2020-04-02 00:13:26');
INSERT INTO `goadmin_operation_log` VALUES (694, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:15:55', '2020-04-02 00:15:55');
INSERT INTO `goadmin_operation_log` VALUES (695, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:15:56', '2020-04-02 00:15:56');
INSERT INTO `goadmin_operation_log` VALUES (696, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:17:35', '2020-04-02 00:17:35');
INSERT INTO `goadmin_operation_log` VALUES (697, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:19:26', '2020-04-02 00:19:26');
INSERT INTO `goadmin_operation_log` VALUES (698, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:20:08', '2020-04-02 00:20:08');
INSERT INTO `goadmin_operation_log` VALUES (699, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-02 00:23:00', '2020-04-02 00:23:00');
INSERT INTO `goadmin_operation_log` VALUES (700, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2020-04-06 22:23:28', '2020-04-06 22:23:28');
INSERT INTO `goadmin_operation_log` VALUES (701, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-06 22:23:32', '2020-04-06 22:23:32');
INSERT INTO `goadmin_operation_log` VALUES (702, 1, '/admin/info/article/edit', 'GET', '127.0.0.1', '', '2020-04-06 22:23:37', '2020-04-06 22:23:37');
INSERT INTO `goadmin_operation_log` VALUES (703, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-06 22:34:02', '2020-04-06 22:34:02');
INSERT INTO `goadmin_operation_log` VALUES (704, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-06 22:34:04', '2020-04-06 22:34:04');
INSERT INTO `goadmin_operation_log` VALUES (705, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-06 22:34:58', '2020-04-06 22:34:58');
INSERT INTO `goadmin_operation_log` VALUES (706, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-04-06 22:35:05', '2020-04-06 22:35:05');
INSERT INTO `goadmin_operation_log` VALUES (707, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-04-06 22:36:49', '2020-04-06 22:36:49');
INSERT INTO `goadmin_operation_log` VALUES (708, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-04-06 22:37:43', '2020-04-06 22:37:43');
INSERT INTO `goadmin_operation_log` VALUES (709, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"74b1fe3a-944c-4250-bba1-b83cac79949e\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"8\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"create_at\":[\"2020-04-06 00:00:00\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label[]\":[\"0\",\"1\",\"2\",\"3\",\"\"],\"selected_articles_status\":[\"0\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-04-07 00:00:00\"]}', '2020-04-06 22:38:13', '2020-04-06 22:38:13');
INSERT INTO `goadmin_operation_log` VALUES (710, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c77a21a1-6ff6-449e-8556-3244cdf54d97\"],\"article_status\":[\"1\"],\"auth\":[\"\"],\"category_id\":[\"\"],\"content\":[\"\"],\"create_at\":[\"\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"\"],\"label[]\":[\"0\",\"1\",\"2\",\"3\",\"\"],\"selected_articles_status\":[\"0\"],\"title\":[\"\"],\"update_at\":[\"\"]}', '2020-04-06 22:39:32', '2020-04-06 22:39:32');
INSERT INTO `goadmin_operation_log` VALUES (711, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"144a93be-e7fb-4ba5-b95d-23d167e0da43\"],\"article_status\":[\"1\"],\"auth\":[\"\"],\"category_id\":[\"\"],\"content\":[\"\"],\"create_at\":[\"\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"\"],\"label[]\":[\"\"],\"selected_articles_status\":[\"0\"],\"title\":[\"\"],\"update_at\":[\"\"]}', '2020-04-06 22:39:38', '2020-04-06 22:39:38');
INSERT INTO `goadmin_operation_log` VALUES (712, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-04-06 22:41:44', '2020-04-06 22:41:44');
INSERT INTO `goadmin_operation_log` VALUES (713, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-04-06 22:42:25', '2020-04-06 22:42:25');
INSERT INTO `goadmin_operation_log` VALUES (714, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"b83111b6-d6ea-4a71-a2ef-e6f87c49c2b7\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"create_at\":[\"2020-04-06 00:00:00\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label[]\":[\"0\",\"1\"],\"selected_articles_status\":[\"0\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-04-06 00:00:00\"]}', '2020-04-06 22:42:44', '2020-04-06 22:42:44');
INSERT INTO `goadmin_operation_log` VALUES (715, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-04-06 22:44:04', '2020-04-06 22:44:04');
INSERT INTO `goadmin_operation_log` VALUES (716, 1, '/admin/info/article/new', 'GET', '127.0.0.1', '', '2020-04-06 22:44:27', '2020-04-06 22:44:27');
INSERT INTO `goadmin_operation_log` VALUES (717, 1, '/admin/new/article', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/article?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"6ecebc51-d1f2-43ac-92b4-70555cb123b7\"],\"article_status\":[\"1\"],\"auth\":[\"kiki\"],\"category_id\":[\"1\"],\"content\":[\"\\u003cp\\u003e世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大世界那么大\\u003c/p\\u003e\"],\"create_at\":[\"2020-04-06 00:00:00\"],\"id\":[\"27\"],\"image\":[\"\"],\"image__delete_flag\":[\"0\"],\"info\":[\"世界那么大世界那么大世界那么大\"],\"label[]\":[\"0\",\"1\"],\"selected_articles_status\":[\"0\"],\"title\":[\"世界那么大\"],\"update_at\":[\"2020-04-06 00:00:00\"]}', '2020-04-06 22:44:58', '2020-04-06 22:44:58');
INSERT INTO `goadmin_operation_log` VALUES (718, 1, '/admin/info/article', 'GET', '127.0.0.1', '', '2020-04-06 22:46:57', '2020-04-06 22:46:57');

-- ----------------------------
-- Table structure for goadmin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_permissions`;
CREATE TABLE `goadmin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_permissions
-- ----------------------------
INSERT INTO `goadmin_permissions` VALUES (1, 'All permission', '*', '', '*', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET,PUT,POST,DELETE', '/', '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_menu`;
CREATE TABLE `goadmin_role_menu`  (
  `role_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_role_menu
-- ----------------------------
INSERT INTO `goadmin_role_menu` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (1, 7, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (1, 9, '2020-03-28 16:55:34', '2020-03-28 16:55:34');
INSERT INTO `goadmin_role_menu` VALUES (1, 10, '2020-03-28 16:57:03', '2020-03-28 16:57:03');
INSERT INTO `goadmin_role_menu` VALUES (1, 11, '2020-03-28 16:57:57', '2020-03-28 16:57:57');
INSERT INTO `goadmin_role_menu` VALUES (1, 12, '2020-03-30 14:42:16', '2020-03-30 14:42:16');
INSERT INTO `goadmin_role_menu` VALUES (1, 13, '2020-03-30 15:06:52', '2020-03-30 15:06:52');
INSERT INTO `goadmin_role_menu` VALUES (1, 14, '2020-04-01 08:24:23', '2020-04-01 08:24:23');
INSERT INTO `goadmin_role_menu` VALUES (1, 15, '2020-04-01 08:29:00', '2020-04-01 08:29:00');

-- ----------------------------
-- Table structure for goadmin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_permissions`;
CREATE TABLE `goadmin_role_permissions`  (
  `role_id` int(11) UNSIGNED NOT NULL,
  `permission_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_role_permissions`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_role_permissions
-- ----------------------------
INSERT INTO `goadmin_role_permissions` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` VALUES (1, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_users`;
CREATE TABLE `goadmin_role_users`  (
  `role_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_user_roles`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_role_users
-- ----------------------------
INSERT INTO `goadmin_role_users` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_roles
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_roles`;
CREATE TABLE `goadmin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_roles
-- ----------------------------
INSERT INTO `goadmin_roles` VALUES (1, 'Administrator', 'administrator', '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_session
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_session`;
CREATE TABLE `goadmin_session`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `values` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_session
-- ----------------------------
INSERT INTO `goadmin_session` VALUES (14, '52740a01-a3e7-499b-8f75-0b6a5548ec2d', '{\"user_id\":1}', '2020-04-06 22:23:28', '2020-04-06 22:23:28');

-- ----------------------------
-- Table structure for goadmin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_user_permissions`;
CREATE TABLE `goadmin_user_permissions`  (
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_user_permissions`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_user_permissions
-- ----------------------------
INSERT INTO `goadmin_user_permissions` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_users`;
CREATE TABLE `goadmin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goadmin_users
-- ----------------------------
INSERT INTO `goadmin_users` VALUES (1, 'admin', '$2a$10$lbCX8XfnNWeaNGia4/1UzOyiiEUnMlEnjcqWBsf6TYl7q8vmV5zXy', 'admin', '', 'tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh', '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'qimi',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `personal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人介绍',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系我',
  `about` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关于',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'ewqeqwewqewqw额外企鹅', '俄去问问企鹅', '恶趣味企鹅请问');

SET FOREIGN_KEY_CHECKS = 1;
