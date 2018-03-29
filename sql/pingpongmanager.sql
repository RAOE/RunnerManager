/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : pingpongmanager

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2018-03-29 18:21:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) DEFAULT NULL,
  `phone` varchar(22) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456', '123123', '一个裁判', '0', '1', '小李');
INSERT INTO `t_admin` VALUES ('4', 'admin2', '1555555', '123456', '一个大裁判长', '0', '1', '小徐');
INSERT INTO `t_admin` VALUES ('5', 'admin3', '15x', '123123', '123', '0', '0', '小赵');
INSERT INTO `t_admin` VALUES ('6', 'admin5', '1555555', '123456', 'xxxx', '0', '0', '小小');
INSERT INTO `t_admin` VALUES ('7', 'test', '1555555', '123456', 'xxxx', '0', '0', '小');
INSERT INTO `t_admin` VALUES ('8', 'adminn', '1555555', '123456', 'xxx', '0', '0', '凯');

-- ----------------------------
-- Table structure for `t_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `t_evaluate`;
CREATE TABLE `t_evaluate` (
  `id` bigint(22) NOT NULL DEFAULT '0',
  `message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_evaluate
-- ----------------------------
INSERT INTO `t_evaluate` VALUES ('1', null);
INSERT INTO `t_evaluate` VALUES ('2', null);

-- ----------------------------
-- Table structure for `t_project`
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `begintime` datetime DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('2', '2018-03-17 22:36:07', null, '亚锦赛女子单打', '何盈VS玛利亚', 'A区教学楼', '四川大学', '0');
INSERT INTO `t_project` VALUES ('3', '2018-03-17 22:56:10', null, '2017年乒乓球亚锦赛 ', '赛前热身训练', 'B区教学楼', '浙江大学', '0');
INSERT INTO `t_project` VALUES ('4', '2018-03-17 23:04:24', null, '亚锦赛男子双打', '朝鲜VS土库曼斯坦', 'B区教学楼', '武汉大学', '0');
INSERT INTO `t_project` VALUES ('5', '2018-02-28 00:00:00', null, '123', '123', 'A区教学楼', '武汉大学', '1');
INSERT INTO `t_project` VALUES ('6', '2018-03-24 00:00:00', null, '亚锦赛男子双打', '朝鲜VS土库曼斯坦', 'A区教学楼', '武汉大学', '1');
INSERT INTO `t_project` VALUES ('7', '2018-03-02 00:00:00', null, 'xx', '测试', 'A区教学楼', '武汉大学', '0');
INSERT INTO `t_project` VALUES ('8', '2018-03-01 00:00:00', null, '校园测试A-B', '练习赛', 'A区教学楼', '武汉大学', '0');
INSERT INTO `t_project` VALUES ('9', '2018-03-01 00:00:00', null, '校园比赛A-C', '练习赛', 'B区', '体育部', '0');
INSERT INTO `t_project` VALUES ('10', '2018-03-24 00:00:00', null, '练习赛A-B', 'XXXX', 'a栋', '安安', '0');
INSERT INTO `t_project` VALUES ('11', '2018-03-03 00:00:00', null, '练习赛A-C', '小组联系', 'a栋', '学校', '0');
INSERT INTO `t_project` VALUES ('12', '2018-03-24 00:00:00', null, '练习赛A', '练习', 'a栋', '校方', '1');
INSERT INTO `t_project` VALUES ('13', '2018-03-03 00:00:00', null, '练习赛B', '分组练习', 'a区', '校方', '0');

-- ----------------------------
-- Table structure for `t_system`
-- ----------------------------
DROP TABLE IF EXISTS `t_system`;
CREATE TABLE `t_system` (
  `id` bigint(22) NOT NULL DEFAULT '0',
  `message` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system
-- ----------------------------

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `team` varchar(22) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `isMale` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', '刘1', '1550000', '123456', null, '25', '50', '一个运动员', '2018-03-16 22:21:04', '170', '测试', '0', '0');
INSERT INTO `t_users` VALUES ('2', '刘2', '18888', '123123', null, '22', '80', '一个运动员', '2018-03-09 22:31:19', '186', '测试2', '0', '1');
INSERT INTO `t_users` VALUES ('3', 'xx', '1555555', '123456', null, '14', '65', '下信息、', null, '0', '同仁堂、', '1', '1');
INSERT INTO `t_users` VALUES ('4', '大可', '15555', '123456', null, '113', '155', '呃呃呃', null, '0', '特斯', '1', '1');
INSERT INTO `t_users` VALUES ('5', '李丹', '1555555', '123456', null, '35', '56', '我是一名运动员', null, '0', 'team', '1', '0');
INSERT INTO `t_users` VALUES ('6', 'xxx', '155552', '123456', null, '12', '33', '1', '2018-03-17 12:54:31', '0', '133', '0', '0');
INSERT INTO `t_users` VALUES ('7', '运动员2', '1555', '123456', null, '12', '13', 'xx', '2018-03-17 12:57:00', '0', 'team', '0', '1');
INSERT INTO `t_users` VALUES ('8', '大神', '1555555', '123456', null, '22', '155', '11111', '2018-03-17 21:21:47', '0', '天天', '1', '1');
INSERT INTO `t_users` VALUES ('9', '小旋风', '1555555', '123456', null, '22', '59', '热爱体育', '2018-03-18 19:37:50', '0', '太阳队', '0', '0');
INSERT INTO `t_users` VALUES ('10', '1', '22', '123456', null, '1', '3', '1', '2018-03-22 19:15:21', '0', '2', '1', '1');
INSERT INTO `t_users` VALUES ('11', '徐', '1555', '123456', null, '22', '12', '11', '2018-03-22 22:20:58', '0', 'team', '0', '1');
INSERT INTO `t_users` VALUES ('12', 'xx', 'admin', '123456', null, '3', '23', '2', '2018-03-23 13:07:14', '0', 'aa', '0', '1');
INSERT INTO `t_users` VALUES ('13', '张三', '12345678', '123456', null, '22', '33', 'xx', '2018-03-23 15:55:15', '0', 'team1', '0', '1');
INSERT INTO `t_users` VALUES ('14', '王二', '123456', '123456', null, '23', '45', 'xxxxxx', '2018-03-23 16:11:45', '0', 'team3', '1', '0');
INSERT INTO `t_users` VALUES ('15', '小赵', '1555555', '123456', null, '25', '76', 'xxx', '2018-03-23 16:17:17', '0', 'team4', '0', '0');
INSERT INTO `t_users` VALUES ('16', 'test', '188888', '123456', null, '25', '44', 'xx', '2018-03-23 16:22:01', '0', 'test', '0', '0');
INSERT INTO `t_users` VALUES ('17', 'test', '1234567', '123456', null, '33', '55', 'x', '2018-03-23 16:22:55', '0', 'tee', '0', '1');
INSERT INTO `t_users` VALUES ('18', '12345678@qq.com', '123456', '123456', null, '123', '123', '123', '2018-03-23 16:27:48', '0', 'a', '1', '1');
INSERT INTO `t_users` VALUES ('19', '峰', '1500811', '123456', null, '21', '63', 'xx', '2018-03-23 16:31:33', '0', 'team3', '0', '1');

-- ----------------------------
-- Table structure for `t_usertoevaluate`
-- ----------------------------
DROP TABLE IF EXISTS `t_usertoevaluate`;
CREATE TABLE `t_usertoevaluate` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `userid` bigint(22) DEFAULT NULL,
  `evaluate` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `adminId` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `adminId` (`adminId`),
  CONSTRAINT `t_usertoevaluate_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `t_users` (`id`),
  CONSTRAINT `t_usertoevaluate_ibfk_2` FOREIGN KEY (`adminId`) REFERENCES `t_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_usertoevaluate
-- ----------------------------
INSERT INTO `t_usertoevaluate` VALUES ('1', '1', null, null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('2', '1', '                      输入你的评价在这里\r\n             ', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('3', '2', '111', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('4', '11', '                      输入你的评价在这里\r\n             ', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('5', '1', '                      输入你的评价在这里\r\n             ', null, '1', null);
INSERT INTO `t_usertoevaluate` VALUES ('6', '1', '                      输入你的评价在这里\r\n             ', null, '1', null);
INSERT INTO `t_usertoevaluate` VALUES ('7', '1', '                      输入你的评价在这里\r\n             ', null, '0', '5');
INSERT INTO `t_usertoevaluate` VALUES ('8', '1', '                      输入你的评价在这里\r\n             ', null, '1', '5');
INSERT INTO `t_usertoevaluate` VALUES ('9', '1', '123', null, '0', '5');
INSERT INTO `t_usertoevaluate` VALUES ('10', '1', '                      输入你的评价在这里\r\n             ', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('11', '1', '                      \r\n             该运动员比赛认真积极向上', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('12', '1', '                      \r\n            呃呃呃呃呃呃呃', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('13', '13', '                      \r\n             呃呃呃呃呃呃', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('14', '13', '                      \r\n        这是一个测试1     ', null, '0', '5');
INSERT INTO `t_usertoevaluate` VALUES ('15', '14', '                      \r\n             测试1', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('16', '13', '                      \r\n             测试2', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('17', '15', '                      \r\n             加油！', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('18', '15', '                      \r\n             学习想', null, '1', '7');
INSERT INTO `t_usertoevaluate` VALUES ('19', '19', '                      \r\n           厉害了  ', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('20', '19', '                      \r\n            裁判组的测试评价 ', null, '0', '5');

-- ----------------------------
-- Table structure for `t_usertoproject`
-- ----------------------------
DROP TABLE IF EXISTS `t_usertoproject`;
CREATE TABLE `t_usertoproject` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `projectid` int(22) DEFAULT NULL,
  `userid` int(22) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_usertoproject
-- ----------------------------
INSERT INTO `t_usertoproject` VALUES ('41', '2', '1', '0');
INSERT INTO `t_usertoproject` VALUES ('42', '2', '9', '0');
INSERT INTO `t_usertoproject` VALUES ('43', '3', '9', '0');
INSERT INTO `t_usertoproject` VALUES ('44', '3', '7', '0');
INSERT INTO `t_usertoproject` VALUES ('45', '2', '7', '0');
INSERT INTO `t_usertoproject` VALUES ('46', '4', '1', '0');
INSERT INTO `t_usertoproject` VALUES ('47', '4', '2', '0');
INSERT INTO `t_usertoproject` VALUES ('48', '4', '6', '0');
INSERT INTO `t_usertoproject` VALUES ('49', '3', '2', '0');
INSERT INTO `t_usertoproject` VALUES ('50', '10', '13', '0');
INSERT INTO `t_usertoproject` VALUES ('51', '10', '1', '0');
INSERT INTO `t_usertoproject` VALUES ('52', '11', '14', '0');
INSERT INTO `t_usertoproject` VALUES ('53', '11', '13', '0');
INSERT INTO `t_usertoproject` VALUES ('54', '11', '1', '1');
INSERT INTO `t_usertoproject` VALUES ('55', '12', '15', '0');
INSERT INTO `t_usertoproject` VALUES ('56', '12', '13', '0');
INSERT INTO `t_usertoproject` VALUES ('57', '12', '12', '1');
INSERT INTO `t_usertoproject` VALUES ('58', '13', '19', '0');
INSERT INTO `t_usertoproject` VALUES ('59', '13', '17', '0');
INSERT INTO `t_usertoproject` VALUES ('60', '13', '16', '1');

-- ----------------------------
-- Table structure for `t_usertoscore`
-- ----------------------------
DROP TABLE IF EXISTS `t_usertoscore`;
CREATE TABLE `t_usertoscore` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `adminId` bigint(22) DEFAULT NULL,
  `userId` bigint(22) DEFAULT NULL,
  `projectId` bigint(22) DEFAULT NULL,
  `score` int(22) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adminid` (`adminId`),
  KEY `userid` (`userId`),
  KEY `projectId` (`projectId`),
  CONSTRAINT `t_usertoscore_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `t_admin` (`id`),
  CONSTRAINT `t_usertoscore_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `t_users` (`id`),
  CONSTRAINT `t_usertoscore_ibfk_3` FOREIGN KEY (`projectId`) REFERENCES `t_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_usertoscore
-- ----------------------------
INSERT INTO `t_usertoscore` VALUES ('10', '1', '1', '2', '100', '1');
INSERT INTO `t_usertoscore` VALUES ('11', '1', '9', '2', '50', '1');
INSERT INTO `t_usertoscore` VALUES ('12', '5', '9', '3', '98', '1');
INSERT INTO `t_usertoscore` VALUES ('13', '5', '1', '2', '33', '1');
INSERT INTO `t_usertoscore` VALUES ('14', '5', '9', '3', '1', '1');
INSERT INTO `t_usertoscore` VALUES ('15', '5', '9', '3', '12', '1');
INSERT INTO `t_usertoscore` VALUES ('16', '5', '7', '2', '99', '1');
INSERT INTO `t_usertoscore` VALUES ('17', '5', '7', '2', '98', '1');
INSERT INTO `t_usertoscore` VALUES ('18', '5', '9', '3', '55', '1');
INSERT INTO `t_usertoscore` VALUES ('19', '1', '1', '4', '100', '1');
INSERT INTO `t_usertoscore` VALUES ('20', '1', '2', '4', '99', '1');
INSERT INTO `t_usertoscore` VALUES ('21', '1', '6', '4', '87', '1');
INSERT INTO `t_usertoscore` VALUES ('22', '1', '6', '4', '87', '0');
INSERT INTO `t_usertoscore` VALUES ('23', '1', '1', '2', '14', '1');
INSERT INTO `t_usertoscore` VALUES ('24', '1', '1', '2', '11', '1');
INSERT INTO `t_usertoscore` VALUES ('25', '1', '1', '4', '87', '0');
INSERT INTO `t_usertoscore` VALUES ('26', '1', '2', '3', '22', '0');
INSERT INTO `t_usertoscore` VALUES ('27', '1', '13', '10', '87', '1');
INSERT INTO `t_usertoscore` VALUES ('28', '1', '1', '10', '87', '1');
INSERT INTO `t_usertoscore` VALUES ('29', '1', '14', '11', '85', '1');
INSERT INTO `t_usertoscore` VALUES ('30', '1', '13', '11', '78', '1');
INSERT INTO `t_usertoscore` VALUES ('31', '1', '15', '12', '99', '1');
INSERT INTO `t_usertoscore` VALUES ('32', '1', '13', '12', '78', '1');
INSERT INTO `t_usertoscore` VALUES ('33', '7', '15', '12', '98', '1');
INSERT INTO `t_usertoscore` VALUES ('34', '1', '19', '13', '100', '1');
INSERT INTO `t_usertoscore` VALUES ('35', '1', '17', '13', '60', '1');
INSERT INTO `t_usertoscore` VALUES ('36', '5', '19', '13', '95', '1');
INSERT INTO `t_usertoscore` VALUES ('37', '1', '1', '2', '99', '1');
