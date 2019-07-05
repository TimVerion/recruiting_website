/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50557
 Source Host           : localhost:3306
 Source Schema         : job

 Target Server Type    : MySQL
 Target Server Version : 50557
 File Encoding         : 65001

 Date: 05/07/2019 08:46:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for com_resume
-- ----------------------------
DROP TABLE IF EXISTS `com_resume`;
CREATE TABLE `com_resume`  (
  `resume_id` int(32) NOT NULL AUTO_INCREMENT,
  `com_id` int(32) NULL DEFAULT NULL,
  `job_id` int(32) NULL DEFAULT NULL,
  `emp_id` int(32) NULL DEFAULT NULL,
  `resume_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `look` int(32) NULL DEFAULT NULL,
  PRIMARY KEY (`resume_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of com_resume
-- ----------------------------
INSERT INTO `com_resume` VALUES (1, 1, 1, 1, '1', '0', 0);
INSERT INTO `com_resume` VALUES (2, 2, 4, 1, '1', '0', 0);
INSERT INTO `com_resume` VALUES (3, 3, 6, 1, '1', '0', 0);
INSERT INTO `com_resume` VALUES (4, 1, 3, 1, '1', '0', 0);
INSERT INTO `com_resume` VALUES (5, 1, 3, 1, '1', '0', 0);

-- ----------------------------
-- Table structure for commond
-- ----------------------------
DROP TABLE IF EXISTS `commond`;
CREATE TABLE `commond`  (
  `commondId` int(32) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(32) NULL DEFAULT NULL,
  `createdate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info_id` int(32) NULL DEFAULT NULL,
  PRIMARY KEY (`commondId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of commond
-- ----------------------------
INSERT INTO `commond` VALUES (1, '发的啥地方', 8, '2019-04-30 21:20:34', 1);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `com_id` int(32) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(32) NULL DEFAULT NULL,
  `comtype` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `empcount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_tel` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '北京字节跳动网络技术有限公司', '字节跳动', 1, '电子商务 ', '字节跳动，是全球第一家将人工智能应用到主产品的科技公司。', '10000', '北京市海淀区北三环西路43号中航广场 (邮编：100098)', 'https://job.toutiao.com/society', '1111', '张三丰', '115505');
INSERT INTO `company` VALUES (2, '三星信息技术服务（北京）有限公司', '三星', 2, ' 计算机服务', '三星SDS成立于1985年，是韩国最大的全球化ICT解决方案提供商', '5000', '北京市朝阳区酒仙桥东路9号电子城A1座3层', '55454@qq.com', '2222', '周龙超', '55580');
INSERT INTO `company` VALUES (3, '阿里巴巴', NULL, 10, 'å½ä¼', '做最好得电商就  的身份回复', '10000', '北京海淀区', '1172688785@qq.com', '0577-55555555', '马云', '17859452685');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `emp_id` int(32) NOT NULL AUTO_INCREMENT,
  `realname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `jobstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resume_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(32) NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `waddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `study` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `family` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, '1', '男', '2019-04-11', '否', '1', '17525486954', '1172688785@qq.com', '1', '北京', '1', 1.00, '否', '', '1', 8, '中国', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for emp_look
-- ----------------------------
DROP TABLE IF EXISTS `emp_look`;
CREATE TABLE `emp_look`  (
  `look_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NULL DEFAULT NULL,
  `com_id` int(11) NULL DEFAULT NULL,
  `date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`look_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createDate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `isApply` int(32) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (1, '基于JavaEE的校园水果销售系统的设计与实现', '我要工作', '2019-04-30 20:59:35', 8, 0, '1');
INSERT INTO `info` VALUES (2, '基于JavaEE的校园水果销售系统的设计与实现', '111', '2019-04-30 21:05:21', 8, 1, '1');
INSERT INTO `info` VALUES (3, '基于JavaEE的校园水果销售系统的设计与实现', '1000', '2019-05-02 07:21:59', 10, 0, '2');
INSERT INTO `info` VALUES (4, '111', '111', '2019-05-02 07:22:37', 8, 0, '1');
INSERT INTO `info` VALUES (5, '基于JavaEE的校园水果销售系统的设计与实现', './jo, ;l', '2019-05-12 19:22:06', 8, 0, '1');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_PersonCount` int(32) NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `job_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_date` datetime NULL DEFAULT NULL,
  `end_date` datetime NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1, 1, '今日头条广告营销顾问', 1, '大专', '中文', NULL, '北京市海淀区北三环西路43号中航广场 (邮编：100098)', 14000.00, '1', '2019-04-03 15:56:36', '2019-05-05 15:56:40', '营销顾问');
INSERT INTO `job` VALUES (2, 1, '今日头条销售顾问', 20, '大专', '中文', NULL, '武汉', 4000.00, '0', '2019-04-03 15:56:36', '2019-05-05 15:56:40', '今日头条广告销售顾问');
INSERT INTO `job` VALUES (3, 1, '广告增值运营优化师', 1, '本科', '中文', NULL, '上海', 12000.00, '1', '2019-04-03 15:56:36', '2019-05-05 15:56:40', '今日头条广告增值运营销售专员');
INSERT INTO `job` VALUES (4, 2, '智能门锁市场经理', 1, '本科', '英文', NULL, '上海', 20000.00, '1', '2019-04-03 15:56:36', '2019-05-05 15:56:40', 'IT解决方案销售经理');
INSERT INTO `job` VALUES (5, 2, '信息安全专员（东莞）', 1, '大专', '中文', NULL, '广东', 10000.00, '1', '2019-04-03 15:56:36', '2019-05-05 15:56:40', 'IT工程师');
INSERT INTO `job` VALUES (6, 3, 'java工程师', 1000, '大专', '中文', NULL, '北京中关村', 50000.00, '上市公司', '2019-08-05 00:00:00', '2020-01-01 00:00:00', '这家伙很懒，什么都没有留下。');

-- ----------------------------
-- Table structure for top_job
-- ----------------------------
DROP TABLE IF EXISTS `top_job`;
CREATE TABLE `top_job`  (
  `top_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`top_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of top_job
-- ----------------------------
INSERT INTO `top_job` VALUES (1, 6, '%%java工程师%%', 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(32) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (8, '123123', '111222', NULL, NULL, 1);
INSERT INTO `user` VALUES (10, '马云', '111222', NULL, NULL, 2);

SET FOREIGN_KEY_CHECKS = 1;
