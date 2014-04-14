/*
MySQL Data Transfer
Source Host: localhost
Source Database: test
Target Host: localhost
Target Database: test
Date: 6/11/2011 3:07:50 PM
*/

create database test;

use test;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for complaints
-- ----------------------------
DROP TABLE IF EXISTS `complaints`;
CREATE TABLE `complaints` (
  `t1` varchar(255) DEFAULT NULL,
  `t2` varchar(255) DEFAULT NULL,
  `t3` varchar(255) DEFAULT NULL,
  `t4` varchar(255) DEFAULT NULL,
  `t5` varchar(255) DEFAULT NULL,
  `t6` varchar(255) DEFAULT NULL,
  `t7` varchar(255) DEFAULT NULL,
  `t8` varchar(255) DEFAULT NULL,
  `t9` varchar(255) DEFAULT NULL,
  `t10` varchar(255) DEFAULT NULL,
  `t11` varchar(255) DEFAULT NULL,
  `t12` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `t1` varchar(255) DEFAULT NULL,
  `t2` varchar(255) DEFAULT NULL,
  `t3` varchar(255) DEFAULT NULL,
  `t4` varchar(255) DEFAULT NULL,
  `t5` varchar(255) DEFAULT NULL,
  `t6` varchar(255) DEFAULT NULL,
  `t7` varchar(255) DEFAULT NULL,
  `t8` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `t1` varchar(255) DEFAULT NULL,
  `t2` varchar(255) DEFAULT NULL,
  `t3` varchar(255) DEFAULT NULL,
  `t4` varchar(255) DEFAULT NULL,
  `t5` varchar(255) DEFAULT NULL,
  `t6` varchar(255) DEFAULT NULL,
  `t7` varchar(255) DEFAULT NULL,
  `t8` varchar(255) DEFAULT NULL,
  `t9` varchar(255) DEFAULT NULL,
  `t10` varchar(255) DEFAULT NULL,
  `t11` varchar(255) DEFAULT NULL,
  `t12` varchar(255) DEFAULT NULL,
  `t13` varchar(255) DEFAULT NULL,
  `t14` varchar(255) DEFAULT NULL,
  `t15` varchar(255) DEFAULT NULL,
  `t16` varchar(255) DEFAULT NULL,
  `t17` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `t1` varchar(255) DEFAULT NULL,
  `t2` varchar(255) DEFAULT NULL,
  `t3` varchar(255) DEFAULT NULL,
  `t4` varchar(255) DEFAULT NULL,
  `t5` varchar(255) DEFAULT NULL,
  `t6` varchar(255) DEFAULT NULL,
  `t7` varchar(255) DEFAULT NULL,
  `t8` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `t1` varchar(255) DEFAULT NULL,
  `t2` varchar(255) DEFAULT NULL,
  `t3` varchar(255) DEFAULT NULL,
  `t4` varchar(255) DEFAULT NULL,
  `t5` varchar(255) DEFAULT NULL,
  `t6` varchar(255) DEFAULT NULL,
  `t7` varchar(255) DEFAULT NULL,
  `t8` varchar(255) DEFAULT NULL,
  `t9` varchar(255) DEFAULT NULL,
  `t10` varchar(255) DEFAULT NULL,
  `t11` varchar(255) DEFAULT NULL,
  `t12` varchar(255) DEFAULT NULL,
  `t13` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `product` VALUES ('af', 'sdf', '344', '33', 'dasf', 'fdsaf', 'M', 'B2C100');
INSERT INTO `register` VALUES ('m', 'B2C100', 'abcd', 'abcd', 'null', 'sdfsda', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `register` VALUES ('d', 'B2C101', 'abcd', 'abcd', 'cegon', 'cegon', 'software', '9980022667', 'anandap@cegonsoft.co.in', 'Bangalore', 'Bangalore', '560078', 'Karnataka');
INSERT INTO `register` VALUES ('r', 'B2C102', 'abcd', 'abcd', null, null, null, null, null, null, null, null, null);
INSERT INTO `register` VALUES ('c', 'B2c103', 'abcd', 'abcd', null, null, null, null, null, null, null, null, null);
