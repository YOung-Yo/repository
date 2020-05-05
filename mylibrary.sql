/*
 Navicat Premium Data Transfer

 Source Server         : second_test
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 140.246.150.239:3306
 Source Schema         : mylibrary

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 22/04/2020 13:19:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `password` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'admin', 123456);
INSERT INTO `admin` VALUES (2, 'admin2', 123456);
COMMIT;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publish` varchar(20) DEFAULT NULL,
  `ISBN` varchar(30) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `pubdate` varchar(20) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_info
-- ----------------------------
BEGIN;
INSERT INTO `book_info` VALUES (1007, '《道德经》', '杨灏', '浙江智咖', '123121312312', '孤本', '中文', 100000.00, '2020-04-21', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
BEGIN;
INSERT INTO `class_info` VALUES (1, '社会学');
COMMIT;

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reader_id` int(12) DEFAULT NULL,
  `book_id` int(12) DEFAULT NULL,
  `lend_date` varchar(20) DEFAULT NULL,
  `back_date` varchar(20) DEFAULT NULL,
  `fine` double(10,2) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
BEGIN;
INSERT INTO `lend_list` VALUES (5, 1234, 1007, '2020-04-21', '2020-05-19', 0.00, '1');
COMMIT;

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` int(11) NOT NULL,
  `name` varchar(12) DEFAULT NULL,
  `password` int(12) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `card_state` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
BEGIN;
INSERT INTO `reader_info` VALUES (6, 123, '123', 123456, '男', '2020-04-21', '123', '12311111111', NULL);
INSERT INTO `reader_info` VALUES (7, 1234, '1', 1234, '男', '2020-04-21', '1', '12345678901', NULL);
INSERT INTO `reader_info` VALUES (8, 123, '123', 123, '男', '2020-04-21', '1', '12345678901', 1);
INSERT INTO `reader_info` VALUES (9, 123456, '123456', 123, '男', '2020-04-21', '绍兴市', '12345678901', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_allowance
-- ----------------------------
DROP TABLE IF EXISTS `t_allowance`;
CREATE TABLE `t_allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `state` tinyint(2) NOT NULL,
  `addtime` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_allowance
-- ----------------------------
BEGIN;
INSERT INTO `t_allowance` VALUES (3, '12352341341231', '沙雕', '男', '北京', 1, '2020-04-22');
COMMIT;

-- ----------------------------
-- Table structure for t_disability
-- ----------------------------
DROP TABLE IF EXISTS `t_disability`;
CREATE TABLE `t_disability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `state` tinyint(2) NOT NULL,
  `addtime` varchar(50) NOT NULL DEFAULT '',
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_medical
-- ----------------------------
DROP TABLE IF EXISTS `t_medical`;
CREATE TABLE `t_medical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `state` tinyint(2) NOT NULL,
  `addtime` varchar(50) NOT NULL DEFAULT '',
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_missing
-- ----------------------------
DROP TABLE IF EXISTS `t_missing`;
CREATE TABLE `t_missing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `trait` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_missing
-- ----------------------------
BEGIN;
INSERT INTO `t_missing` VALUES (1, '20202001', 20, '缺胳膊少腿', '女', '诸暨', '12345678901');
INSERT INTO `t_missing` VALUES (2, '20202020', 121, '没脸没皮', '男', '上海', '12345678901');
COMMIT;

-- ----------------------------
-- Table structure for t_unemployment
-- ----------------------------
DROP TABLE IF EXISTS `t_unemployment`;
CREATE TABLE `t_unemployment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `state` tinyint(2) NOT NULL,
  `addtime` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_waif
-- ----------------------------
DROP TABLE IF EXISTS `t_waif`;
CREATE TABLE `t_waif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `state` tinyint(2) NOT NULL,
  `addtime` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_waif
-- ----------------------------
BEGIN;
INSERT INTO `t_waif` VALUES (2, '202030101', '张三', '男', '诸暨', 1, '2020-04-22');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
