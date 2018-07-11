/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : pingpongmanager

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2018-07-11 15:09:31
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456', '123456', '一个裁判', '0', '1', '小李');
INSERT INTO `t_admin` VALUES ('4', 'admin2', '1555555', '123456', '一个大裁判长', '0', '1', '小徐');
INSERT INTO `t_admin` VALUES ('5', 'admin3', '15x', '123123', '123', '0', '0', '小赵');
INSERT INTO `t_admin` VALUES ('6', 'admin5', '1555555', '123456', 'xxxx', '0', '0', '小小');
INSERT INTO `t_admin` VALUES ('7', 'test', '1555555', '123456', 'xxxx', '0', '0', '小');
INSERT INTO `t_admin` VALUES ('8', 'adminn', '1555555', '123456', 'xxx', '0', '0', '凯');
INSERT INTO `t_admin` VALUES ('9', 'admin9', '15555', '123123', 'xx', '0', '0', 'xxx');
INSERT INTO `t_admin` VALUES ('10', 'admin99', '1555555', '123123', '333', '0', '0', '小小');
INSERT INTO `t_admin` VALUES ('11', '1', 'a', '1', 'a', '0', '0', 'a');

-- ----------------------------
-- Table structure for `t_admintoevaluate`
-- ----------------------------
DROP TABLE IF EXISTS `t_admintoevaluate`;
CREATE TABLE `t_admintoevaluate` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `userid` bigint(22) DEFAULT NULL,
  `adminid` bigint(22) DEFAULT NULL,
  `evaluate` varchar(200) DEFAULT NULL,
  `score` bigint(22) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admintoevaluate
-- ----------------------------
INSERT INTO `t_admintoevaluate` VALUES ('1', '1', '1', '      裁判非常负责', '23', '0');
INSERT INTO `t_admintoevaluate` VALUES ('2', '1', '1', '      裁判非常负责', '55', '0');
INSERT INTO `t_admintoevaluate` VALUES ('3', '1', '1', '      裁判非常负责', '44', '0');
INSERT INTO `t_admintoevaluate` VALUES ('4', '1', '1', '      裁判误判', '44', '0');
INSERT INTO `t_admintoevaluate` VALUES ('5', '1', '1', '     酷酷酷', '66', '0');
INSERT INTO `t_admintoevaluate` VALUES ('6', '1', '4', '      加赛', '43', '0');
INSERT INTO `t_admintoevaluate` VALUES ('7', '22', '6', '裁判认真负责', '99', '0');
INSERT INTO `t_admintoevaluate` VALUES ('8', '22', '10', '      123321', '33', '0');

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
-- Table structure for `t_messages`
-- ----------------------------
DROP TABLE IF EXISTS `t_messages`;
CREATE TABLE `t_messages` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `isAdmin` tinyint(2) DEFAULT NULL,
  `isDeleted` tinyint(2) DEFAULT NULL,
  `isAnonymous` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_messages
-- ----------------------------
INSERT INTO `t_messages` VALUES ('32', '用户', '<p>ces<img src=\"http://img.baidu.com/hi/jx2/j_0066.gif\"/></p>', '2018-07-11 14:47:53', '1', '0', null);
INSERT INTO `t_messages` VALUES ('33', '用户', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0006.gif\"/>11</p>', '2018-07-11 14:48:03', '1', '0', null);
INSERT INTO `t_messages` VALUES ('34', '用户', '<p><img src=\"/com-xyf-front//ueditor/jsp/upload/image/20180711/1531292079639072413.jpg\" title=\"1531292079639072413.jpg\" alt=\"Enemy03.jpg\"/>提交你的评论</p>', '2018-07-11 14:54:45', '1', '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('2', '2018-03-17 22:36:07', null, '亚锦赛女子单打', '何盈VS玛利亚', 'A区教学楼', '四川大学', '1');
INSERT INTO `t_project` VALUES ('3', '2018-03-17 22:56:10', null, '2017年乒乓球亚锦赛 ', '赛前热身训练', 'B区教学楼', '浙江大学', '1');
INSERT INTO `t_project` VALUES ('4', '2018-03-17 23:04:24', null, '亚锦赛男子双打', '朝鲜VS土库曼斯坦', 'B区教学楼', '武汉大学', '1');
INSERT INTO `t_project` VALUES ('5', '2018-02-28 00:00:00', null, '123', '123', 'A区教学楼', '武汉大学', '1');
INSERT INTO `t_project` VALUES ('7', '2018-03-02 00:00:00', null, 'xx', '测试', 'A区教学楼', '武汉大学', '1');
INSERT INTO `t_project` VALUES ('8', '2018-03-01 00:00:00', null, '校园测试A-B', '练习赛', 'A区教学楼', '武汉大学', '1');
INSERT INTO `t_project` VALUES ('9', '2018-03-01 00:00:00', null, '校园比赛A-C', '练习赛', 'B区', '体育部', '1');
INSERT INTO `t_project` VALUES ('10', '2018-03-24 00:00:00', null, '练习赛A-B', 'XXXX', 'a栋', '安安', '1');
INSERT INTO `t_project` VALUES ('11', '2018-03-03 00:00:00', null, '练习赛A-C', '小组联系', 'a栋', '学校', '1');
INSERT INTO `t_project` VALUES ('12', '2018-03-24 00:00:00', null, '练习赛A', '练习', 'a栋', '校方', '1');
INSERT INTO `t_project` VALUES ('13', '2018-03-03 00:00:00', null, '练习赛B', '分组练习', 'a区', '校方', '1');
INSERT INTO `t_project` VALUES ('14', '2018-03-15 00:00:00', null, '比赛项目1', '这是一个比赛', 'xxx', '123', '1');
INSERT INTO `t_project` VALUES ('15', '2018-03-03 00:00:00', null, 'bis', '213', 'xx', '3', '1');
INSERT INTO `t_project` VALUES ('16', '2018-04-13 00:00:00', null, '测试赛', '1                      \r\n             ', '12', '3', '1');
INSERT INTO `t_project` VALUES ('17', '2018-04-02 00:00:00', null, '2', '                      \r\n             2', '2', 'x', '1');
INSERT INTO `t_project` VALUES ('18', '2018-04-12 00:00:00', null, '33', '                      \r\n             33', '33', '33', '1');
INSERT INTO `t_project` VALUES ('19', '2018-04-27 00:00:00', null, '武汉理工', '1                      \r\n             ', '33', '3', '1');
INSERT INTO `t_project` VALUES ('20', '2018-04-03 00:00:00', null, 'zxc', '                      \r\n             xzc', 'zxc', 'zxc', '1');
INSERT INTO `t_project` VALUES ('21', '2018-04-03 13:58:03', null, 'x1', '                      \r\n             xx', 'xx', 'xx', '1');
INSERT INTO `t_project` VALUES ('22', '2018-04-14 21:44:26', null, '单人赛', '123                      \r\n             ', '33', '44', '1');
INSERT INTO `t_project` VALUES ('23', '2018-05-31 00:00:00', null, '1', '1', '1', '1', '1');
INSERT INTO `t_project` VALUES ('24', '2018-03-03 00:00:00', null, '比赛A', '很大', '22', '官方', '0');
INSERT INTO `t_project` VALUES ('25', '2018-07-11 00:00:00', null, 'B', '比赛', '22', '33', '0');

-- ----------------------------
-- Table structure for `t_project2`
-- ----------------------------
DROP TABLE IF EXISTS `t_project2`;
CREATE TABLE `t_project2` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `group1` varchar(50) DEFAULT NULL,
  `group2` varchar(50) DEFAULT NULL,
  `begintime` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `isWin` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project2
-- ----------------------------
INSERT INTO `t_project2` VALUES ('1', '团队赛1', '这是一个描述', '小组1', '小组2', '2018-02-28 23:31:33', '1', '小区1', null);
INSERT INTO `t_project2` VALUES ('2', '团队赛2', '这是第二场比赛', '小组1', '小组2', '2018-05-25 23:31:37', '0', '小区2', '1');
INSERT INTO `t_project2` VALUES ('3', '123321', '                      \r\n             444', '4', '5', '2018-04-13 23:01:17', '1', '3', null);
INSERT INTO `t_project2` VALUES ('4', '1550000', '                      \r\n             55', '45', '5', '2018-04-07 23:04:44', '1', '3', null);
INSERT INTO `t_project2` VALUES ('5', 'xx1', '                      \r\n             123', 'x1', 'x2', '2018-04-06 13:49:51', '1', 'xx', null);
INSERT INTO `t_project2` VALUES ('6', 'xx', '                      \r\n             xx', 'xx', 'xx', '2018-04-06 13:41:58', '1', 'xx', null);
INSERT INTO `t_project2` VALUES ('7', '7', '                      \r\n             5', '4', '6', '2018-04-07 13:47:54', '1', '3', null);
INSERT INTO `t_project2` VALUES ('8', '团队赛3', '赛3                      \r\n             ', '123', '231', '2018-04-12 23:41:54', '1', '1x2b', null);
INSERT INTO `t_project2` VALUES ('9', 'tuansai', '1                      \r\n             ', '2', '3', '2018-04-06 09:48:37', '1', '1', null);
INSERT INTO `t_project2` VALUES ('10', '18888', '                 2     \r\n             ', '4', '5', '2018-04-05 09:51:16', '1', '3', null);
INSERT INTO `t_project2` VALUES ('11', 'test', '                      \r\n          赛事   ', '1', '2', '2018-04-05 09:52:36', '1', '特殊', null);
INSERT INTO `t_project2` VALUES ('12', '1550000', '                      \r\n             323', '56', '66', '2018-04-14 21:26:38', '0', '4', '1');
INSERT INTO `t_project2` VALUES ('13', '123', '                3      \r\n             ', '5', '66', '2018-04-06 21:30:44', '0', '4', '0');
INSERT INTO `t_project2` VALUES ('14', '123', '                      \r\n             3', '56', '66', '2018-04-07 21:39:20', '0', '4', '1');
INSERT INTO `t_project2` VALUES ('15', 'ceso', '                     123', '44', '55', '2018-04-07 21:40:50', '1', '123', '0');
INSERT INTO `t_project2` VALUES ('16', '新团赛', '团队描述                      \r\n             ', '特斯', '填充', '2018-04-05 21:45:05', '0', 'test', '1');

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
-- Table structure for `t_team`
-- ----------------------------
DROP TABLE IF EXISTS `t_team`;
CREATE TABLE `t_team` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_team
-- ----------------------------
INSERT INTO `t_team` VALUES ('20', '小队无', '1                      \r\n             ', '2018-04-03 23:04:58', '0');
INSERT INTO `t_team` VALUES ('21', '安安', '                      \r\n             2', '2018-04-03 23:05:16', '0');
INSERT INTO `t_team` VALUES ('22', 'x', '                      \r\n             a', '2018-04-03 23:15:39', '0');
INSERT INTO `t_team` VALUES ('23', 'x1', '               XXX       \r\n             ', '2018-04-03 23:24:06', '0');
INSERT INTO `t_team` VALUES ('24', '1550000', '                      \r\n      11       ', '2018-04-03 23:25:44', '0');
INSERT INTO `t_team` VALUES ('25', '33', '                      \r\n             4', '2018-04-03 23:26:01', '0');
INSERT INTO `t_team` VALUES ('26', '跑酷队', '队伍                      \r\n             ', '2018-04-06 13:28:30', '0');
INSERT INTO `t_team` VALUES ('27', '163', '                      \r\n             2', '2018-04-04 13:48:57', '0');
INSERT INTO `t_team` VALUES ('34', '321', '                      \r\n             123', '2018-04-04 13:55:51', '0');
INSERT INTO `t_team` VALUES ('35', '111', '                      \r\n             22', '2018-04-05 09:51:37', '0');
INSERT INTO `t_team` VALUES ('36', '天天', '                      \r\n             1', '2018-04-05 09:52:52', '0');
INSERT INTO `t_team` VALUES ('37', '太阳队伍', '123                      \r\n             ', '2018-04-21 21:45:41', '0');
INSERT INTO `t_team` VALUES ('38', '这是B组', '123                      \r\n             ', '2018-04-21 21:46:13', '0');

-- ----------------------------
-- Table structure for `t_teamtoproject`
-- ----------------------------
DROP TABLE IF EXISTS `t_teamtoproject`;
CREATE TABLE `t_teamtoproject` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `teamId` bigint(22) DEFAULT NULL,
  `projectId` bigint(22) DEFAULT NULL,
  `groupId` bigint(22) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teamtoproject
-- ----------------------------
INSERT INTO `t_teamtoproject` VALUES ('2', '20', '1', '1', '0');
INSERT INTO `t_teamtoproject` VALUES ('3', '21', '1', '2', '0');
INSERT INTO `t_teamtoproject` VALUES ('4', '20', '13', '1', '0');
INSERT INTO `t_teamtoproject` VALUES ('5', '34', '1', '1', '0');
INSERT INTO `t_teamtoproject` VALUES ('6', '35', '10', '1', '0');
INSERT INTO `t_teamtoproject` VALUES ('7', '36', '11', '1', '0');
INSERT INTO `t_teamtoproject` VALUES ('8', '37', '16', '1', '0');
INSERT INTO `t_teamtoproject` VALUES ('9', '38', '16', '2', '0');

-- ----------------------------
-- Table structure for `t_teamtouser`
-- ----------------------------
DROP TABLE IF EXISTS `t_teamtouser`;
CREATE TABLE `t_teamtouser` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `teamId` bigint(22) DEFAULT NULL,
  `userId` bigint(22) DEFAULT NULL,
  `projectId` bigint(22) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `groupId` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teamId` (`teamId`),
  KEY `userId` (`userId`),
  KEY `projectId` (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teamtouser
-- ----------------------------
INSERT INTO `t_teamtouser` VALUES ('1', '1', '1', '1', '2018-04-19 20:11:05', '0', '1');
INSERT INTO `t_teamtouser` VALUES ('2', '1', '2', '3', '2018-04-10 20:11:58', '0', '1');
INSERT INTO `t_teamtouser` VALUES ('3', '2', '3', '1', '2018-04-04 20:37:59', '1', '1');
INSERT INTO `t_teamtouser` VALUES ('4', '2', '1', '1', null, '1', '1');
INSERT INTO `t_teamtouser` VALUES ('5', '2', '6', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('6', '2', '11', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('7', '2', '7', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('8', '3', '1', '1', null, '0', '2');
INSERT INTO `t_teamtouser` VALUES ('9', '3', '2', '1', null, '0', '2');
INSERT INTO `t_teamtouser` VALUES ('10', '2', '1', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('11', '2', '15', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('12', '2', '19', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('13', '5', '1', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('14', '5', '6', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('15', '5', '9', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('16', '5', '12', '1', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('17', '6', '1', '10', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('18', '6', '2', '10', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('19', '6', '6', '10', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('20', '7', '1', '11', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('21', '7', '2', '11', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('22', '7', '6', '11', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('23', '8', '22', '16', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('24', '8', '19', '16', null, '0', '1');
INSERT INTO `t_teamtouser` VALUES ('25', '9', '1', '16', null, '0', '2');
INSERT INTO `t_teamtouser` VALUES ('26', '9', '2', '16', null, '0', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', '刘1', '1550000', '123456', null, '25', '50', '一个运动员', '2018-03-16 22:21:04', '170', '测试2', '1', '0');
INSERT INTO `t_users` VALUES ('2', '刘2', '18888', '123123', null, '22', '80', '一个运动员', '2018-03-09 22:31:19', '186', '测试2', '1', '1');
INSERT INTO `t_users` VALUES ('3', 'xx', '1555555', '123456', null, '14', '65', '下信息、', '2018-03-29 14:04:46', '0', '同仁堂、', '1', '1');
INSERT INTO `t_users` VALUES ('4', '大可', '15555', '123456', null, '113', '155', '呃呃呃', '2018-04-07 14:04:49', '0', '特斯', '1', '1');
INSERT INTO `t_users` VALUES ('5', '李丹', '1555555', '123456', null, '35', '56', '我是一名运动员', '2018-04-01 14:04:52', '0', '同仁堂、', '1', '0');
INSERT INTO `t_users` VALUES ('6', 'xxx', '155552', '123456', null, '12', '33', '1', '2018-03-17 12:54:31', '0', '133', '1', '0');
INSERT INTO `t_users` VALUES ('7', '运动员2', '1555', '123456', null, '12', '13', 'xx', '2018-03-17 12:57:00', '0', 'team', '1', '1');
INSERT INTO `t_users` VALUES ('8', '大神', '1555555', '123456', null, '22', '155', '11111', '2018-03-17 21:21:47', '0', '天天', '1', '1');
INSERT INTO `t_users` VALUES ('9', '小旋风', '1555555', '123456', null, '22', '59', '热爱体育', '2018-03-18 19:37:50', '0', '太阳队', '1', '0');
INSERT INTO `t_users` VALUES ('10', '1', '22', '123456', null, '1', '3', '1', '2018-03-22 19:15:21', '0', '2', '1', '1');
INSERT INTO `t_users` VALUES ('11', '徐', '1555', '123456', null, '22', '12', '11', '2018-03-22 22:20:58', '0', 'team', '0', '1');
INSERT INTO `t_users` VALUES ('12', 'xx', 'admin', '123456', null, '3', '23', '2', '2018-03-23 13:07:14', '0', 'aa', '0', '1');
INSERT INTO `t_users` VALUES ('13', '张三', '12345678', '123456', null, '22', '33', 'xx', '2018-03-23 15:55:15', '0', 'team', '0', '1');
INSERT INTO `t_users` VALUES ('14', '王二', '123456', '123456', null, '23', '45', 'xxxxxx', '2018-03-23 16:11:45', '0', 'team', '1', '0');
INSERT INTO `t_users` VALUES ('15', '小赵', '1555555', '123456', null, '25', '76', 'xxx', '2018-03-23 16:17:17', '0', 'team', '0', '0');
INSERT INTO `t_users` VALUES ('16', 'test', '188888', '123456', null, '25', '44', 'xx', '2018-03-23 16:22:01', '0', 'test', '1', '0');
INSERT INTO `t_users` VALUES ('17', 'test', '1234567', '123456', null, '33', '55', 'x', '2018-03-23 16:22:55', '0', 'tee', '1', '1');
INSERT INTO `t_users` VALUES ('18', '12345678@qq.com', '123456', '123456', null, '123', '123', '123', '2018-03-23 16:27:48', '0', 'a', '1', '1');
INSERT INTO `t_users` VALUES ('19', '峰', '1500811', '123456', null, '21', '63', 'xx', '2018-03-23 16:31:33', '0', 'team3', '0', '1');
INSERT INTO `t_users` VALUES ('20', 'test', '123456789', '123456', null, '18', '33', 'xxxxx', '2018-03-31 09:45:03', '0', '2', '1', '1');
INSERT INTO `t_users` VALUES ('21', 'test2', '1500822', '123456', null, '19', '55', 'xxxxx', '2018-03-31 09:49:16', '0', '2', '1', '1');
INSERT INTO `t_users` VALUES ('22', '测试人员te', '123321', '123321', null, '12', '33', '1', '2018-04-07 21:43:58', '0', 't123', '0', '0');
INSERT INTO `t_users` VALUES ('23', '1', '111', '123', null, '2222', '1', '1', '2018-07-03 09:34:12', '0', '123', '0', '1');
INSERT INTO `t_users` VALUES ('24', '213', '123', '444', null, '123', '66', '77', '2018-07-03 09:34:25', '0', '55', '0', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_usertoevaluate
-- ----------------------------
INSERT INTO `t_usertoevaluate` VALUES ('1', '1', null, null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('2', '1', '                      输入你的评价在这里\r\n             ', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('3', '2', '111', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('4', '11', '                      输入你的评价在这里\r\n             ', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('5', '1', '                      输入你的评价在这里\r\n             ', null, '1', null);
INSERT INTO `t_usertoevaluate` VALUES ('6', '1', '                      输入你的评价在这里\r\n             ', null, '1', null);
INSERT INTO `t_usertoevaluate` VALUES ('7', '1', '                      输入你的评价在这里\r\n             ', null, '0', '5');
INSERT INTO `t_usertoevaluate` VALUES ('8', '1', '                      输入你的评价在这里\r\n             ', null, '1', '5');
INSERT INTO `t_usertoevaluate` VALUES ('9', '1', '123', null, '0', '5');
INSERT INTO `t_usertoevaluate` VALUES ('10', '1', '                      输入你的评价在这里\r\n             ', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('11', '1', '                      \r\n             该运动员比赛认真积极向上', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('12', '1', '                      \r\n            呃呃呃呃呃呃呃', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('13', '13', '                      \r\n             呃呃呃呃呃呃', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('14', '13', '                      \r\n        这是一个测试1     ', null, '0', '5');
INSERT INTO `t_usertoevaluate` VALUES ('15', '14', '                      \r\n             测试1', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('16', '13', '                      \r\n             测试2', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('17', '15', '                      \r\n             加油！', null, '0', '1');
INSERT INTO `t_usertoevaluate` VALUES ('18', '15', '                      \r\n             学习想', null, '1', '7');
INSERT INTO `t_usertoevaluate` VALUES ('19', '19', '                      \r\n           厉害了  ', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('20', '19', '                      \r\n            裁判组的测试评价 ', null, '1', '5');
INSERT INTO `t_usertoevaluate` VALUES ('23', '1', '                      jiayou\r\n             ', null, '1', '1');
INSERT INTO `t_usertoevaluate` VALUES ('24', '1', '                      \r\n   该运动员十分不错          ', null, '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_usertoproject
-- ----------------------------
INSERT INTO `t_usertoproject` VALUES ('41', '2', '1', '0');
INSERT INTO `t_usertoproject` VALUES ('42', '2', '9', '1');
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
INSERT INTO `t_usertoproject` VALUES ('58', '13', '19', '1');
INSERT INTO `t_usertoproject` VALUES ('59', '13', '17', '1');
INSERT INTO `t_usertoproject` VALUES ('60', '13', '16', '1');
INSERT INTO `t_usertoproject` VALUES ('61', '14', '20', '0');
INSERT INTO `t_usertoproject` VALUES ('62', '14', '19', '0');
INSERT INTO `t_usertoproject` VALUES ('63', '15', '21', '0');
INSERT INTO `t_usertoproject` VALUES ('64', '15', '19', '0');
INSERT INTO `t_usertoproject` VALUES ('65', '2', '9', '1');
INSERT INTO `t_usertoproject` VALUES ('66', '2', '9', '0');
INSERT INTO `t_usertoproject` VALUES ('67', '4', '12', '0');
INSERT INTO `t_usertoproject` VALUES ('68', '22', '22', '0');
INSERT INTO `t_usertoproject` VALUES ('69', '22', '19', '0');
INSERT INTO `t_usertoproject` VALUES ('70', '22', '15', '1');
INSERT INTO `t_usertoproject` VALUES ('71', '24', '11', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_usertoscore` VALUES ('38', '1', '20', '14', '66', '1');
INSERT INTO `t_usertoscore` VALUES ('39', '1', '19', '14', '77', '1');
INSERT INTO `t_usertoscore` VALUES ('40', '1', '21', '15', '99', '1');
INSERT INTO `t_usertoscore` VALUES ('41', '1', '19', '15', '89', '1');
INSERT INTO `t_usertoscore` VALUES ('42', '1', '9', '3', '99', '0');
INSERT INTO `t_usertoscore` VALUES ('43', '1', '9', '3', '99', '0');
INSERT INTO `t_usertoscore` VALUES ('44', '1', '19', '22', '99', '1');
INSERT INTO `t_usertoscore` VALUES ('45', '1', '22', '22', '76', '1');
