/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50146
Source Host           : localhost:3306
Source Database       : itour

Target Server Type    : MYSQL
Target Server Version : 50146
File Encoding         : 65001

Date: 2016-07-21 10:42:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` varchar(64) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=活动,2=废弃',
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `scope` tinyint(4) DEFAULT NULL COMMENT '1=中国大陆,2=香港,3=澳门,4=台湾,5=海外',
  `city` varchar(50) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `introduction` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('2CED3B1A057447B18302B104D4033C48\r\n', '1', '2016-07-12 13:41:23', '1', '2016-07-12 13:41:27', '北京顺义', 'zpclord@cmbc.com.cn', '1', '北京', '15566667777', '010-11223344', '赵紫阳', '书纪', '顺义', '前总结工作 ');
INSERT INTO `customers` VALUES ('6A36C12213CE45AB8654F5B3D6F2C558', null, '2016-07-14 16:24:55', '2', '2016-07-14 16:24:55', '中国大陆上海市闵行区北华路168弄', 'yyy@sina.vip.com', '5', 'Shanghai,China', '+8615900827811', '13341169872', '杨浦', '杨浦林', '闵行区', '学习认识古代近东的世界观，能使我们避免犯错，并使我们对经文的理解，与当时的以色列人更接近。');
INSERT INTO `customers` VALUES ('AD4F49AA1E2142B6A7590601A5175D20', null, '2016-07-12 19:12:31', '1', '2016-07-12 19:12:31', '上海嘉定', 'john@nju.edu.cn', '2', 'Shanghai,China', '+8615900827825', '+8615900827825', '赵无极', '暗影行者', '天国', '夺无奇不有vdss');
INSERT INTO `customers` VALUES ('BBD581F3A5EA4ED6905282C3134CAA7F\r\n', '221', '2016-07-12 18:22:07', '2', '2016-07-12 18:22:07', '四川成都', 'peter@usts.edu', '2', 'Shanghai,China', '+8615900827825', '+8615900827825', '赵无极', '非机动车', '厅魂牵梦萦', '夺无奇不有');
INSERT INTO `customers` VALUES ('C73B5C0F0EFC4A40AC6D997C20991359', '221', '2016-07-12 18:59:41', '1', '2016-07-12 18:59:41', '河南漯河', 'zpclord@sina.com', '4', '上海', '+8615900827825', '+8615900827825', '赵无极', '原地区', '确有其事', '在此之前');
INSERT INTO `customers` VALUES ('DCB2E1E8047A443FAB4F777EF7F631EA', null, '2016-07-14 16:35:22', null, '2016-07-14 16:35:22', 'hk', 'holy@heaven.lord', '4', '码头', '021-11113455', '13543969872', '康长', '康长', '湾仔', '美索不达米亚');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '1=待审核,2=审核通过,3=审核未通过',
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `customer_id` varchar(64) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kfpy3yr8gaddnnd11oru7k19s` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '2014-08-18 15:46:55', '1', '2014-08-18 15:46:55', '西藏', '高分法规和符合人体儿童', '12', null);
INSERT INTO `feedback` VALUES ('10', '2014-08-20 11:16:44', '1', '2014-08-20 11:16:44', '西双版纳', '我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体', '12', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('11', '2014-08-25 10:55:41', '1', '2014-08-25 10:55:41', '西双版纳', '213333333331', '12', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('12', '2014-09-09 14:12:11', '1', '2014-09-09 14:12:11', '西藏', 'qwqweqweqweqwewe', '30', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('13', '2014-09-10 10:15:12', '2', '2014-09-10 10:15:12', '西藏', '52取回returned有人提议扔烟雾', '12', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('14', '2014-09-10 18:00:56', '3', '2014-09-10 18:00:56', '西藏', '爱上王企鹅丰田热一热投影图体育', '103', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('15', '2014-09-12 14:07:23', '2', '2014-09-12 14:07:23', '西双版纳', 'sddddddddddddd', '46', '哦哦哦哦');
INSERT INTO `feedback` VALUES ('16', '2014-09-17 09:08:07', '2', '2014-09-17 09:08:07', '西双版纳', 'dbnsrdngtnnngggggggggggggggggggggggggggggggggg', '46', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('17', '2014-09-30 10:37:51', '1', '2014-09-30 10:37:51', '涵洞', '特瑞特特然容易热而讨厌人同意让他一人', '103', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('18', '2014-09-30 10:38:46', '3', '2014-09-30 10:38:46', '涵洞', '<yeyrytwey恶意日一天我二姨太意外而同样松德股份三个地方><html>和三个地方噶是的丰盛的</html>', '103', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('19', '2014-09-30 10:39:09', '2', '2014-09-30 10:39:09', '涵洞', '<uwetertyewrytywertertu>', '103', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('2', '2014-08-19 10:03:53', '1', '2014-08-19 10:03:53', '涵洞', '围鹅鹅鹅鹅鹅鹅范围额噩噩噩噩噩', '12', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('20', '2014-09-30 10:39:44', '2', '2014-09-30 10:39:44', '新疆', '<weyuwteyrtuewtyuerut>', '103', '哈哈哈哈');
INSERT INTO `feedback` VALUES ('21', '2014-09-30 10:43:42', '2', '2014-09-30 10:43:42', '新疆', '<作恶多端枯黄棋手厅局级>', '22', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('22', '2014-09-30 10:44:53', '2', '2014-09-30 10:44:53', '新疆', '<asdfasfasdfsadfgklasdfasfd>', '22', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('23', '2014-09-30 13:25:46', '3', '2014-09-30 13:25:46', '新疆', '<dxgfhdgsf>', '103', '不要停下来');
INSERT INTO `feedback` VALUES ('24', '2014-10-08 14:03:28', '3', '2014-10-08 14:03:28', '四川', '的傻傻的人特色让她《》《》<ytytyty>', '246', '哈哈哈哈');
INSERT INTO `feedback` VALUES ('25', '2014-10-10 10:25:02', '3', '2014-10-10 10:25:02', '四川', '522222222222222222', '247', '哈哈哈哈');
INSERT INTO `feedback` VALUES ('26', '2014-10-15 11:34:58', '2', '2014-10-15 11:34:58', '四川', 'qqq', '103', 'seedee');
INSERT INTO `feedback` VALUES ('27', '2014-10-31 13:35:27', '2', '2014-10-31 13:35:27', '四川', '', '223', '很有价值');
INSERT INTO `feedback` VALUES ('28', '2014-10-31 13:40:24', '2', '2014-10-31 13:40:24', '张家界', 'asasdasd啊撒大苏打实打实', '223', '不要停下来');
INSERT INTO `feedback` VALUES ('29', '2014-10-31 13:42:51', '1', '2014-10-31 13:42:51', '张家界', 'dv', '223', '该反馈很有建议性,我们会认真考虑.');
INSERT INTO `feedback` VALUES ('3', '2014-08-20 11:14:31', '1', '2014-08-20 11:14:31', '张家界', '建议建议建议建议建议建议建议建议建议建议建议建议建议\r\n', '12', '不要停下来');
INSERT INTO `feedback` VALUES ('30', '2014-10-31 13:43:17', '1', '2014-10-31 13:43:17', '张家界', 'asdasdasasdasasdasas', '223', 'do not stop');
INSERT INTO `feedback` VALUES ('31', '2014-11-17 13:24:50', '1', '2014-11-17 13:24:50', '张家界', 'sdfasfsdfasdf', '428', 'come  on');
INSERT INTO `feedback` VALUES ('32', '2014-11-17 13:29:10', '1', '2014-11-17 13:29:10', '张家界', '<sdyydsfydf></sdyydsfydf>', '428', null);
INSERT INTO `feedback` VALUES ('33', '2014-11-17 13:29:52', '1', '2014-11-17 13:29:52', '凤凰古城', '<sdytfytsadyf>,(sdtfytdsytf)</sdytfytsadyf>', '428', '谢谢你的反馈！！');
INSERT INTO `feedback` VALUES ('34', '2014-11-24 11:26:49', '1', '2014-11-24 11:26:49', '凤凰古城', 'zxczxcxzc<werewrewr>', '428', '<agsdgasdg></agsdgasdg>');
INSERT INTO `feedback` VALUES ('35', '2015-01-20 11:10:04', '1', '2015-01-20 11:10:04', '凤凰古城', 'ddddddddddd', '428', 'fffffffff');
INSERT INTO `feedback` VALUES ('4', '2014-08-20 11:14:36', '1', '2014-08-20 11:14:36', '凤凰古城', '建议建议建议建议建议建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('5', '2014-08-20 11:14:39', '1', '2014-08-20 11:14:39', '凤凰古城', '建议建议建议建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('6', '2014-08-20 11:14:43', '1', '2014-08-20 11:14:43', '雪原', '建议建议建议建议建议建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('7', '2014-08-20 11:14:47', '1', '2014-08-20 11:14:47', '雪原', '建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('8', '2014-08-20 11:16:01', '1', '2014-08-20 11:16:01', '雪原', '斤斤计较经济搜索三三四四', '12', null);
INSERT INTO `feedback` VALUES ('9', '2014-08-20 11:16:30', '1', '2014-08-20 11:16:30', '雪原', '我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体', '12', null);

-- ----------------------------
-- Table structure for log_operation
-- ----------------------------
DROP TABLE IF EXISTS `log_operation`;
CREATE TABLE `log_operation` (
  `oper_code` varchar(32) NOT NULL,
  `log_code` varchar(32) DEFAULT NULL,
  `operation_type` varchar(64) DEFAULT NULL,
  `primary_keyvalue` varchar(64) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`oper_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of log_operation
-- ----------------------------

-- ----------------------------
-- Table structure for log_setting
-- ----------------------------
DROP TABLE IF EXISTS `log_setting`;
CREATE TABLE `log_setting` (
  `log_code` varchar(32) NOT NULL,
  `table_name` varchar(64) DEFAULT NULL,
  `function` varchar(32) DEFAULT NULL,
  `url_teimplate` varchar(256) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL,
  `deleteScript_template` varchar(512) DEFAULT NULL,
  `updatescript_template` varchar(512) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_setting
-- ----------------------------

-- ----------------------------
-- Table structure for log_setting_detail
-- ----------------------------
DROP TABLE IF EXISTS `log_setting_detail`;
CREATE TABLE `log_setting_detail` (
  `detail_code` varchar(32) NOT NULL,
  `log_code` varchar(32) DEFAULT NULL,
  `column_name` varchar(64) DEFAULT NULL,
  `column_text` varchar(64) DEFAULT NULL,
  `column_datatype` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`detail_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志设置明细';

-- ----------------------------
-- Records of log_setting_detail
-- ----------------------------

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` varchar(64) NOT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=待处理,2=处理中,3=处理完成',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `per_price` float DEFAULT NULL,
  `count` float DEFAULT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('10', '1', '2016-07-06 23:01:15', '2014-09-17 16:28:29', '1111', '111', '111', '111', '310');
INSERT INTO `order_detail` VALUES ('4', '1', '2016-07-06 11:24:28', '2014-08-19 13:52:42', '122', '111', '111', '111', '304');
INSERT INTO `order_detail` VALUES ('5', '1', '2016-07-06 18:27:43', '2014-08-19 13:55:11', '122', '122', '1212', '1212', '305');
INSERT INTO `order_detail` VALUES ('6', '1', '2016-07-06 18:46:18', '2014-08-19 13:57:54', '1', '1', '1', '11', '306');
INSERT INTO `order_detail` VALUES ('8', '1', '2016-07-07 10:00:33', '2014-08-26 13:21:43', 'warfjaorhg', '', '1.33333e+006', '133333', '308');
INSERT INTO `order_detail` VALUES ('9', '1', '2016-07-07 10:00:54', '2014-09-12 15:34:48', '爱上对方v地方v的', '', '1.33333e+006', '1334', '309');
INSERT INTO `order_detail` VALUES ('D228137D76844E04ADD1D71014F4C675', '1', '2016-07-14 16:15:05', '2016-07-14 16:15:05', 'sddrr', 'sdsdeee', '11', '11', 'dsfsdf');

-- ----------------------------
-- Table structure for quotation
-- ----------------------------
DROP TABLE IF EXISTS `quotation`;
CREATE TABLE `quotation` (
  `id` varchar(64) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `quotation` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '1= 总价加利润,2= 明细报价',
  `total_price` decimal(10,2) DEFAULT NULL,
  `formula` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quotation
-- ----------------------------
INSERT INTO `quotation` VALUES ('78882D6F66D34E278BDDDA674744E06E', 'dd', 'ss', 'ddd', '2016-07-13 18:42:47', '2016-07-13 18:42:47', '32', 'd', '3.00', '223');
INSERT INTO `quotation` VALUES ('B131D0AFA23F4721A074B71E78C05771', '云南十日游', 'aaaaaaaaa', '20001', '2016-07-14 16:54:37', '2016-07-14 16:54:37', 'ddsss', '1233', '21234.00', '10*2=20');

-- ----------------------------
-- Table structure for route_template
-- ----------------------------
DROP TABLE IF EXISTS `route_template`;
CREATE TABLE `route_template` (
  `id` varchar(64) NOT NULL,
  `d1` text,
  `d2` text,
  `d3` text,
  `d4` text,
  `d5` text,
  `d6` text,
  `d7` text,
  `d8` text,
  `d9` text,
  `d10` text,
  `d11` text,
  `d12` text,
  `d13` text,
  `d14` text,
  `d15` text,
  `d16` text,
  `d17` text,
  `d18` text,
  `d19` text,
  `d20` text,
  `d21` text,
  `d22` text,
  `d23` text,
  `d24` text,
  `d25` text,
  `d26` text,
  `d27` text,
  `d28` text,
  `d29` text,
  `d30` text,
  `d31` text,
  `d32` text,
  `d33` text,
  `d34` text,
  `d35` text,
  `d36` text,
  `d37` text,
  `d38` text,
  `d39` text,
  `d40` text,
  `d41` text,
  `d42` text,
  `d43` text,
  `d44` text,
  `d45` text,
  `d46` text,
  `d47` text,
  `d48` text,
  `d49` text,
  `d50` text,
  `d51` text,
  `d52` text,
  `d53` text,
  `d54` text,
  `d55` text,
  `d56` text,
  `d57` text,
  `d58` text,
  `d59` text,
  `d60` varchar(255) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of route_template
-- ----------------------------
INSERT INTO `route_template` VALUES ('WEWEWEW', 'dddf', 'fgdfg', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ad4f49aa-1e21-42b6-a759-0601a5175d20', '2016-07-13 20:03:53', '2016-07-13 20:03:56', 'd', 'df', 'dd');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(100) DEFAULT NULL COMMENT '系统url',
  `parentId` varchar(64) DEFAULT NULL COMMENT ' 父id 关联sys_menu.id',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除，1=已删除',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `rank` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `actions` varchar(500) DEFAULT '0' COMMENT '注册Action 按钮|分隔',
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0BFBE5C0E2BF4A579A65B45FCD52B74D', '订单详情管理', 'orderDetail/list', '9', '0', '2016-07-13 14:46:46', '2016-07-18 17:31:16', '1', 'orderDetail/list', '1', '1');
INSERT INTO `sys_menu` VALUES ('1', '系统管理', 'main/manage', null, '0', '2016-07-06 17:21:58', '2016-07-06 17:21:58', '2', '', '1', '1');
INSERT INTO `sys_menu` VALUES ('10', '客户管理', 'customers/list', '9', '0', '2016-07-06 10:44:45', '2016-07-06 13:32:26', '3', 'dataList.do', '1', '1');
INSERT INTO `sys_menu` VALUES ('11', '订单管理', 'travelOrder/list', '9', '0', '2016-07-06 11:37:01', '2016-07-13 17:58:45', '4', '2', '12', '1');
INSERT INTO `sys_menu` VALUES ('12', '12', '', '16', '0', '2016-07-06 11:37:20', '2016-07-06 11:37:29', '5', '', '1', '1');
INSERT INTO `sys_menu` VALUES ('13', '旅游项目管理', 'travelItem/list', '9', '0', '2016-07-06 17:24:36', '2016-07-13 19:46:38', '6', 'dataList.do', '1', '12');
INSERT INTO `sys_menu` VALUES ('14', '7777', '777', '16', '0', '2016-07-06 10:55:26', '2016-07-06 17:25:20', '7', '', '1', '13');
INSERT INTO `sys_menu` VALUES ('15', '77', '77', '16', '0', '2016-07-06 11:01:08', '2016-07-06 17:25:22', '8', '77', '1', '13');
INSERT INTO `sys_menu` VALUES ('16', '日志管理', '/logs/list', '', '0', '2016-07-06 18:43:11', '2016-07-13 17:17:29', '9', '/logs/list', '1', '14');
INSERT INTO `sys_menu` VALUES ('17', 'aaa', 'aa', '16', '0', '2016-07-06 18:43:50', '2016-07-13 10:03:36', '10', 'aaa', '1', '15');
INSERT INTO `sys_menu` VALUES ('18', 'aa', 'aa', '16', '0', '2016-07-06 18:44:10', '2016-07-13 10:03:39', '11', 'aa', '1', '16');
INSERT INTO `sys_menu` VALUES ('2', '菜单管理', 'sysMenu/menu', '1', '0', '2016-07-06 18:18:32', '2016-07-18 17:34:40', '12', 'dataList.do', '5', '1');
INSERT INTO `sys_menu` VALUES ('3', '站点管理', '', '4', '0', '2016-07-06 17:21:58', '2016-07-06 17:21:58', '13', '', '5', '17');
INSERT INTO `sys_menu` VALUES ('38E4B204A09D49E89358A1D1D5E463B6', '报价单管理', 'quotation/list', '9', '0', '2016-07-13 17:09:49', '2016-07-13 17:09:49', '14', 'quotation/list', '12', '17');
INSERT INTO `sys_menu` VALUES ('4', '站点信息管理', 'siteMain/list', '3', '0', '2016-07-06 17:21:58', '2016-07-06 01:24:47', '15', 'dataList.do|/siteType/typeListJson.do', '13', '18');
INSERT INTO `sys_menu` VALUES ('5', '站点类型', 'siteType/list', '3', '0', '2016-07-06 17:21:58', '2016-07-06 01:20:46', '16', 'dataList.do', '14', '19');
INSERT INTO `sys_menu` VALUES ('6', '系统用户管理', 'sysUser/list', '1', '0', '2016-07-06 17:21:58', '2016-07-06 11:42:46', '17', 'dataList.do', '15', '20');
INSERT INTO `sys_menu` VALUES ('7', '角色管理', 'sysRole/role', '1', '0', '2016-07-06 22:17:51', '2016-07-06 01:15:00', '18', 'dataList.do|/sysMenu/getMenuTree.do', '16', '21');
INSERT INTO `sys_menu` VALUES ('74BDAEA713D841549B840E502C4F150B', '路线模板', 'routeTemplate/list', '9', '0', '2016-07-13 17:15:43', '2016-07-13 17:15:43', '19', 'routeTemplate/list', '17', '5');
INSERT INTO `sys_menu` VALUES ('7A776ACD16D546A2866B1D79509383F8', '系统变量', 'sysVariables/list', '9', '1', '2016-07-13 17:10:33', '2016-07-13 17:11:25', '20', 'sysVariables/list', '18', '6');
INSERT INTO `sys_menu` VALUES ('8', '系统用户授权', 'sysUser/userRole', '1', '0', '2016-07-06 11:42:26', '2016-07-06 11:43:19', '21', 'userList.do|/sysRole/loadRoleList.do', '19', '1');
INSERT INTO `sys_menu` VALUES ('9', '业务功能', 'main/manage', null, '0', '2016-07-06 10:42:42', '2016-07-06 17:25:42', '22', '', '20', '1');
INSERT INTO `sys_menu` VALUES ('9A6DA61999AB422782E398C62514968F', '系统变量', 'sysVariables/list', '1', '0', '2016-07-13 17:12:52', '2016-07-13 17:12:52', '23', 'sysVariables/list', '21', '1');
INSERT INTO `sys_menu` VALUES ('A1C1A1B47AAA4A40B74962E59FCE9F64', '旅行方式管理', 'travelStyle/list', '9', '0', '2016-07-13 16:00:18', '2016-07-13 16:00:18', '24', 'travelStyle/list', '1', '1');
INSERT INTO `sys_menu` VALUES ('E2A9CF59E2F144A2B863ECA27EC8BDDF', '反馈审核', 'feedback/list', '9', '0', '2016-07-13 17:14:17', '2016-07-13 17:14:17', '25', 'feedback/list', '1', '1');

-- ----------------------------
-- Table structure for sys_menu_btn
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_btn`;
CREATE TABLE `sys_menu_btn` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `menuid` varchar(64) NOT NULL COMMENT ' 菜单id关联 sys_menu.id',
  `btnName` varchar(30) DEFAULT NULL COMMENT '按钮名称',
  `btnType` varchar(30) DEFAULT NULL COMMENT '按钮类型，用于列表页显示的按钮',
  `actionUrls` varchar(250) DEFAULT NULL COMMENT 'url注册，用"," 分隔 。用于权限控制UR',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除，1=已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `actions` varchar(500) DEFAULT '0' COMMENT '注册Action 按钮|分隔',
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_btn
-- ----------------------------
INSERT INTO `sys_menu_btn` VALUES ('02E73BFB9E8940E68FBA133A3F15107D', 'F38A31E8FE44479A9B0719BEB7BA436B', '添加', 'add', 'sysMenu/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('0503E68B02F0460F88BDD4A8C10B82FA', '74bdaea7-13d8-4154-9b84-0e502c4f150b', '添加', 'add', 'routeTemplate/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('10', '6', '修改密码', 'editPwd', 'updatePwd', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('11', '6', '删除', 'remove', 'delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('12', '7', '添加', 'add', 'save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('13', '7', '修改', 'edit', 'getId|save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('14', '7', '删除', 'remove', 'delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('14F6196455794BE8AD2F8C2E7BEC2885', '9a6da619-99ab-4227-82e3-98c62514968f', '修改', 'edit', 'sysVariables/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('15', '8', '授权', 'authRole', '/sysUser/getUser|/sysUser/addUserRole', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('16', '5', '添加', 'add', 'save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('161CF7308E3E4B2AB97A81F52D1E3605', 'a1c1a1b4-7aaa-4a40-b749-62e59fce9f64', '删除', 'remove', 'travelStyle/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('17', '5', '修改', 'edit', 'getId|save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('18', '5', '删除', 'remove', 'delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('19', '4', '添加', 'add', 'save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('20', '4', '修改', 'edit', 'getId|save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('21', '4', '删除', 'remove', 'delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('22', '10', '添加', 'add', 'save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('23', '10', '修改', 'edit', 'getId|save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('24', '10', '删除', 'remove', 'delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('25', '13', '添加', 'add', 'save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('26', '13', '修改', 'edit', 'getId|save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('27', '13', '删除', 'remove', 'delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('28', '16', '添加', 'add', 'logs/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('29', '16', '修改', 'edit', 'logs/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('2A6259EE98BC4C05B7D5A12232FFFE1C', '', '删除', 'remove', 'sysMenu/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('30', '16', '删除', 'remove', 'logs/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('31', '17', '添加', 'add', 'sysMenu/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('32', '17', '修改', 'edit', 'sysMenu/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('33', '17', '删除', 'remove', 'sysMenu/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('3529AFE8C74F40149C29043473525036', 'f264f3cf-5cfa-4309-bbf2-ea96af489937', '删除', 'remove', 'logs/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('36D1C732EF704B86BFB1A0B9DCF1A0AB', '', '添加', 'add', 'sysMenu/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('37', '16', '委托', 'delegate', 'logs/delegate', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('3D5284CEFC214102B22C6D52E879938C', '11', '修改', 'edit', 'travelOrder/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('3F9DBB185B604CD2B04DEA8F3F46BFF9', '38e4b204-a09d-49e8-9358-a1d1d5e463b6', '修改', 'edit', 'sysMenu/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('450311FE4B464FF49013AE466554A4CA', '', '添加', 'add', 'sysMenu/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('4F703FC4C5AA429E87E3E000A8E6452F', '', '删除', 'remove', 'sysMenu/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('5', '2', '添加', 'add', 'save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('529415378B914B08950C9B7F77CF6A78', 'e2a9cf59-e2f1-44a2-b863-eca27ec8bddf', '删除', 'remove', 'feedback/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('5606AE3930504EE79C6C93DD8B3F32B9', 'a1c1a1b4-7aaa-4a40-b749-62e59fce9f64', '修改', 'edit', 'travelStyle/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('6', '2', '修改', 'edit', 'getId|save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('6F4A8B7EC7C34A2C9BDA995C06C9D302', '38e4b204-a09d-49e8-9358-a1d1d5e463b6', '添加', 'add', 'sysMenu/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('7', '2', '删除', 'remove', 'delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('7724C5F0DCB74045B7BE3057DBB89FE0', '11', '添加', 'add', 'travelOrder/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('7740F644D3B544328BFB28C68BD8844E', 'a1c1a1b4-7aaa-4a40-b749-62e59fce9f64', '添加', 'add', 'travelStyle/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('7FC3939512D14F599F309EDFBBE9E61E', '74bdaea7-13d8-4154-9b84-0e502c4f150b', '删除', 'remove', 'routeTemplate/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('8', '6', '添加', 'add', 'save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('84B3F27C92E7427AA6D752C13A23493C', '11', '删除', 'remove', 'travelOrder/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('84B78CFDED4649E9AC511B4DADF0CDC7', '9a6da619-99ab-4227-82e3-98c62514968f', '删除', 'remove', 'sysVariables/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('9', '6', '修改', 'edit', 'getId|save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('9A9C1B318EB3450E8EB94746C43CB5A3', '', '添加', 'add', 'sysMenu/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('9B3B369CADC24F9A880741568368212C', 'f264f3cf-5cfa-4309-bbf2-ea96af489937', '修改', 'edit', 'logs/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('A554D04F82BC430E8B8599A4D37462A7', 'F38A31E8FE44479A9B0719BEB7BA436B', '修改', 'edit', 'sysMenu/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('A779EDA9161345B288DB73D4FED2BCF6', 'e2a9cf59-e2f1-44a2-b863-eca27ec8bddf', '添加', 'add', 'feedback/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('AD6E00F626C74D70A67D955A3D08BFE1', '9a6da619-99ab-4227-82e3-98c62514968f', '添加', 'add', 'sysVariables/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('B04F7707BDBE44098BB6C8026646C6F0', '38e4b204-a09d-49e8-9358-a1d1d5e463b6', '删除', 'remove', 'sysMenu/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('BCB0865E966043CC99D4E3D129B63EF7', 'e2a9cf59-e2f1-44a2-b863-eca27ec8bddf', '修改', 'edit', 'feedback/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('CD09D0422D9A445F9AACAA8732AF04A4', '74bdaea7-13d8-4154-9b84-0e502c4f150b', '修改', 'edit', 'routeTemplate/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('DBAF912FCA304171B7D8A86830B2152C', '', '修改', 'edit', 'sysMenu/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('DEF0F7DF1F2641CF80944D7EA0092EF2', '', '修改', 'edit', 'sysMenu/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('E8F63D92EFEB4A8682A5AF85896A5406', '', '修改', 'edit', 'sysMenu/getId', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('ED486CDC83E14A91AFEF3EAA9C39EA51', 'F38A31E8FE44479A9B0719BEB7BA436B', '删除', 'remove', 'sysMenu/delete', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('F5DBDE0F67884EF9971CCC70A0B966F6', 'f264f3cf-5cfa-4309-bbf2-ea96af489937', '添加', 'add', 'logs/save', '0', null, null, '0', null, null);
INSERT INTO `sys_menu_btn` VALUES ('F635FE493C2C45DE8CF41C7835E34EF0', '', '删除', 'remove', 'sysMenu/delete', '0', null, null, '0', null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `roleName` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` varchar(64) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `updateBy` varchar(64) DEFAULT NULL COMMENT '修改人',
  `state` int(1) DEFAULT NULL COMMENT '状态0=可用 1=禁用',
  `descr` varchar(200) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '2016-07-06 16:07:00', null, '2016-07-06 17:31:13', null, '0', 'supermanager系统管理');
INSERT INTO `sys_role` VALUES ('3', '管理员', '2016-07-06 10:45:06', null, '2016-07-06 11:22:38', null, '0', '管理员');
INSERT INTO `sys_role` VALUES ('18', '站点管理', '2016-07-06 01:21:46', null, '2016-07-13 00:27:51', null, '0', null);
INSERT INTO `sys_role` VALUES ('19', '测试管理员', '2016-07-06 17:10:21', null, '2016-07-13 00:27:42', null, '0', null);

-- ----------------------------
-- Table structure for sys_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_rel`;
CREATE TABLE `sys_role_rel` (
  `roleId` varchar(64) NOT NULL COMMENT '角色主键 sys_role.id',
  `objId` varchar(64) NOT NULL COMMENT '关联主键 type=0管理sys_menu.id, type=1关联sys_user.id',
  `relType` int(1) DEFAULT NULL COMMENT '关联类型 0=菜单,1=用户'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_rel
-- ----------------------------
INSERT INTO `sys_role_rel` VALUES ('1', '3', '1');
INSERT INTO `sys_role_rel` VALUES ('3', '8', '0');
INSERT INTO `sys_role_rel` VALUES ('3', '1', '0');
INSERT INTO `sys_role_rel` VALUES ('3', '2', '0');
INSERT INTO `sys_role_rel` VALUES ('3', '6', '0');
INSERT INTO `sys_role_rel` VALUES ('3', '7', '0');
INSERT INTO `sys_role_rel` VALUES ('3', '5', '2');
INSERT INTO `sys_role_rel` VALUES ('3', '8', '2');
INSERT INTO `sys_role_rel` VALUES ('3', '9', '2');
INSERT INTO `sys_role_rel` VALUES ('3', '12', '2');
INSERT INTO `sys_role_rel` VALUES ('3', '13', '2');
INSERT INTO `sys_role_rel` VALUES ('3', '15', '2');
INSERT INTO `sys_role_rel` VALUES ('3', '1', '1');
INSERT INTO `sys_role_rel` VALUES ('18', '1', '1');
INSERT INTO `sys_role_rel` VALUES ('19', '1', '1');
INSERT INTO `sys_role_rel` VALUES ('1', '1', '1');
INSERT INTO `sys_role_rel` VALUES ('1', '1', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '2', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '6', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '7', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '8', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '9', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '10', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '13', '0');
INSERT INTO `sys_role_rel` VALUES ('1', '5', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '6', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '7', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '8', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '9', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '10', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '11', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '12', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '13', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '14', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '15', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '22', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '23', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '24', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '25', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '26', '2');
INSERT INTO `sys_role_rel` VALUES ('1', '27', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '5', '1');
INSERT INTO `sys_role_rel` VALUES ('3', '5', '1');
INSERT INTO `sys_role_rel` VALUES ('19', '5', '1');
INSERT INTO `sys_role_rel` VALUES ('3', '14', '1');
INSERT INTO `sys_role_rel` VALUES ('18', '14', '1');
INSERT INTO `sys_role_rel` VALUES ('19', '6', '1');
INSERT INTO `sys_role_rel` VALUES ('3', '13', '1');
INSERT INTO `sys_role_rel` VALUES ('', '13', '0');
INSERT INTO `sys_role_rel` VALUES ('', '9', '0');
INSERT INTO `sys_role_rel` VALUES ('', '25', '2');
INSERT INTO `sys_role_rel` VALUES ('', '26', '2');
INSERT INTO `sys_role_rel` VALUES ('', '27', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '8', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '10', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '1', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '2', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '6', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '7', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '9', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '7', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '10', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '8', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '13', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '15', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '22', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '23', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '24', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '9', '0');
INSERT INTO `sys_role_rel` VALUES ('18', '10', '0');
INSERT INTO `sys_role_rel` VALUES ('18', '11', '0');
INSERT INTO `sys_role_rel` VALUES ('18', '13', '0');
INSERT INTO `sys_role_rel` VALUES ('18', '22', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '23', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '24', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '25', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '26', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '27', '2');
INSERT INTO `sys_role_rel` VALUES ('3', '12', '1');
INSERT INTO `sys_role_rel` VALUES ('18', '12', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `email` varchar(50) NOT NULL COMMENT '邮箱也是登录帐号',
  `pwd` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `nickName` varchar(50) DEFAULT NULL COMMENT '昵称',
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '状态 0=可用,1=禁用',
  `loginCount` int(11) DEFAULT NULL COMMENT '登录总次数',
  `loginTime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '删除状态 0=未删除,1=已删除',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createBy` varchar(64) DEFAULT NULL COMMENT '创建人',
  `updateBy` varchar(64) DEFAULT NULL COMMENT '修改人',
  `superAdmin` int(1) NOT NULL DEFAULT '0' COMMENT '是否超级管理员 0= 不是，1=是',
  `validate_code` varchar(128) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin@qq.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', '康长老', '0', '381', '2016-07-20 19:48:27', '0', '2016-07-06 23:01:15', '2016-07-13 15:53:51', null, null, '1', null, null);
INSERT INTO `sys_user` VALUES ('12', 'fred.zhao@163.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'fred', '0', '2', '2016-07-20 20:43:06', '0', '2016-07-06 11:24:28', '2016-07-06 11:24:28', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('13', 'zpclord@sina.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'remnantddd', '0', '2', '2016-07-06 19:14:29', '0', '2016-07-06 18:27:43', '2016-07-07 10:07:20', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('14', 'zpchoney@gmail.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'walker', '0', '1', null, '0', '2016-07-06 18:46:18', '2016-07-06 18:46:18', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('15', 'aaa@gmail.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', '呆物', '0', '1', null, '0', '2016-07-07 10:00:04', '2016-07-07 10:00:04', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('16', 'admin@126.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', '总管', '0', '1', null, '0', '2016-07-07 10:00:33', '2016-07-07 10:00:33', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('17', 'Lord@Lord.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', '我主', '0', '1', null, '0', '2016-07-07 10:00:54', '2016-07-07 10:00:54', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('18', 'Jesus@Emmanuel.Heaven', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'Christ', '0', '1', null, '0', '2016-07-07 10:01:34', '2016-07-07 10:01:34', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('19', '99999@itours.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'uptoU', '0', '11', null, '0', '2016-07-07 10:02:10', '2016-07-07 10:02:10', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('20', 'mm@mm.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'aaad', '1', '1', null, '0', '2016-07-07 10:10:39', '2016-07-07 10:10:39', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('21', 'Alexander@greece.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'Empretor', '0', '1', null, '0', '2016-07-07 10:32:58', '2016-07-07 10:32:58', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('5', 'club@qq.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', 'admin', '0', '71', '2013-02-09 10:29:42', '0', '2016-07-06 12:30:10', '2016-07-06 10:29:42', null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('6', 'youke@qq.com', '110F2D03BF41A32A7D3F253C8C48EBA19682A', ' 游客', '0', '1', null, '0', '2016-07-06 13:41:32', '2013-01-13 13:41:32', null, null, '0', null, null);

-- ----------------------------
-- Table structure for sys_variables
-- ----------------------------
DROP TABLE IF EXISTS `sys_variables`;
CREATE TABLE `sys_variables` (
  `id` varchar(64) NOT NULL,
  `var_name` varchar(255) NOT NULL,
  `var_value` varchar(512) DEFAULT NULL,
  `var_hostname` varchar(255) DEFAULT NULL,
  `var_hostip` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `var_project` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`var_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统变量表';

-- ----------------------------
-- Records of sys_variables
-- ----------------------------
INSERT INTO `sys_variables` VALUES ('20F644DE23C54E04BE38991710D2DA13 ', 'receive_email', 'zpclord@sina.com', 'nexus-PC', '192.168.56.1', '127.0.0.1aaa', 'itour');
INSERT INTO `sys_variables` VALUES ('93349C44D8BA495EA68744AE3FAEA9A5 ', 'sender_auth', 'true', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('BEB86A25A9E547DCBC22157E021EAD3C ', 'sender_email', 'zpclord@sina.com', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('C990218FC9254A418006D4489145CED6 ', 'sender_host', 'smtp.sina.com.cn', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('767CD9B44E6A4D53BE96CF35E6F69D60 ', 'sender_port', '25', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('A3876D8DE807492E905428B9289EB5C5 ', 'sender_protocol', 'mail.sina.com', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('17DD2BCDE7104F7AB8F36BB19201E15B ', 'sender_pwd', 'karryst11', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('901CCE614E474B2BAA0622A023D78313', 'sender_ssl', 'false', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');

-- ----------------------------
-- Table structure for travel_item
-- ----------------------------
DROP TABLE IF EXISTS `travel_item`;
CREATE TABLE `travel_item` (
  `id` varchar(64) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `elevation` decimal(65,0) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `photos` varchar(512) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `mileage` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `short_content` varchar(255) DEFAULT NULL,
  `rank` int(5) DEFAULT NULL,
  `recommand_reason` varchar(512) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `rcd_days` int(11) DEFAULT NULL COMMENT '建议天数',
  `difficulty_rate` int(255) DEFAULT NULL COMMENT '(挑战度)1为最低,5为最高,依次递增',
  `happy_value` int(255) DEFAULT NULL COMMENT '1为最低,5为最高,依次递增',
  `recommand_crowd` varchar(255) DEFAULT NULL COMMENT '建议适合的人群及要求,注意事项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_item
-- ----------------------------
INSERT INTO `travel_item` VALUES ('09F7E3E5434449F7992B0E0B33D11296 ', '哪个地方', '09F7E3E5434449F7992B0E0B33D11296 ', '2322', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('278946071CEF43C293FC75B59CB617A9', '贡嘎西坡', '278946071CEF43C293FC75B59CB617A9', '3244', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('38E1212E3D114275A50C42D98CEF91C5 ', '喀纳斯', '38E1212E3D114275A50C42D98CEF91C5 ', '6567', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('39ABD92BD4CE4B3CBB70D94739849DA2', '烏鎮', '39ABD92BD4CE4B3CBB70D94739849DA2', '8685', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('68EA68F7A56B4DDAA832BCD59BF67BA1 ', '毕绷沟', '68EA68F7A56B4DDAA832BCD59BF67BA1 ', '564', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('78EEBA04C83644ED829F6F55E3E758A4 ', '贡嘎山', '78EEBA04C83644ED829F6F55E3E758A4 ', '4577', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('7DDB1ABC79184465B8E30CB59D63F979 ', '黃山景區', '7DDB1ABC79184465B8E30CB59D63F979 ', '3454', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('9B58249F3F6F4434ACF600F51A971243 ', '四姑娘山景区', '9B58249F3F6F4434ACF600F51A971243 ', '7743', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('A4333A46482B47BE87D0BC0666EAE8FC ', '稻城亚丁', 'A4333A46482B47BE87D0BC0666EAE8FC ', '6433', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('B785B7FEFBA449B1ADF8CFD6107D9DB6 ', '同里', 'B785B7FEFBA449B1ADF8CFD6107D9DB6 ', '6434', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('EF43F13763D14361BFB64A5C51B86C12 ', '宏村', 'EF43F13763D14361BFB64A5C51B86C12 ', '533', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('FD9EDACF6345435EB8A2D8CDA8A66EE0 ', '牛背山', 'FD9EDACF6345435EB8A2D8CDA8A66EE0 ', '4333', null, null, null, null, null, null, null, null, null, null, '1', null, null);

-- ----------------------------
-- Table structure for travel_order
-- ----------------------------
DROP TABLE IF EXISTS `travel_order`;
CREATE TABLE `travel_order` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `order_name` varchar(500) DEFAULT NULL,
  `order_no` varchar(64) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL COMMENT '1=待付款,2=付款完成,待确认3=确认完成',
  `receiver` varchar(100) DEFAULT NULL,
  `receiver_mobile` varchar(20) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `expected_depart` datetime DEFAULT NULL,
  `expected_back` datetime DEFAULT NULL,
  `total_staff` int(255) DEFAULT NULL COMMENT '本次订单出行人数',
  `is_payed` varchar(255) DEFAULT NULL COMMENT '是否支付完成.1=未支付,2=已支付',
  `pay_type` varchar(255) DEFAULT NULL COMMENT '1=线上支付,2=现金支付,3=邮政汇款,4=公司转帐',
  `pay_platform` varchar(255) DEFAULT NULL COMMENT '付款平台,如1=微信,2=支付宝,3=网银.',
  `bank` varchar(255) DEFAULT NULL COMMENT '如网银支付,即为付款方银行',
  `pay_account` varchar(255) DEFAULT NULL COMMENT '付款方银行帐户',
  `pay_time` datetime DEFAULT NULL COMMENT '付款时间',
  `pay_terminal` varchar(255) DEFAULT NULL COMMENT '付款终端,如有,则为1=PC,2=IOS,3=Android',
  `budget` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_order
-- ----------------------------
INSERT INTO `travel_order` VALUES ('18BB849978364ACCA301167D52AB3D3F ', '2014-08-19 13:55:11', '2014-08-19 13:55:11', '6A36C12213CE45AB8654F5B3D6F2C558那年,宏村20110111', '5CE967C699CB4662B3755AD095DB2A57', '1', '7878', '12121212121', '122', '1', '2014-08-19 13:55:11', '2014-08-19 13:55:11', '2', '1', '1', '1', '招商银行', '611111456765438998', '2016-07-14 12:55:54', '1', '2223.00');
INSERT INTO `travel_order` VALUES ('1A5B071707C046EA8F3D6246C57D9FB1 ', '2014-08-26 13:21:43', '2014-08-26 13:21:43', 'AD4F49AA1E2142B6A7590601A5175D20四姑娘山--湘西风情五日自驾游20120501', '2564E43788D34A3DB58C78C241AAE390', '1', 'zhouzhanghuan', '11111111111', 'sdk;gjweprugw0euwe4r', '221', '2014-08-26 13:21:43', '2014-08-26 13:21:43', '5', '1', '2', '2', '建设银行', '611111456765438998', '2016-07-14 12:55:54', '2', '4443.00');
INSERT INTO `travel_order` VALUES ('27070E60ACE5474DAA478A4F37D16742 ', '2014-08-19 13:52:42', '2014-08-19 13:52:42', '\r\nC73B5C0F0EFC4A40AC6D997C20991359贡嘎西坡--喀纳斯20131001', '55DD9B7F5BBC48ADB3F8A0A4F8A57752', '2', '444', '12345678901', '111', 'AD4F49AA1E2142B6A7590601A5175D20', '2014-08-19 13:52:42', '2014-08-19 13:52:42', '6', '1', '3', '3', '交通银行', '611111456765438998', '2016-07-14 12:55:54', '3', '8444.00');
INSERT INTO `travel_order` VALUES ('5BF923787EFD4454806CDFBFE51753C3 ', '2014-08-19 13:59:34', '2014-08-19 13:59:34', 'DCB2E1E8047A443FAB4F777EF7F631EA稻城亚丁--黄山景区端午轻旅行20140612', '425A299F925248A5AD367E4E676D32A3', '3', '1', '11111111111', '', 'AD4F49AA1E2142B6A7590601A5175D20', '2014-08-19 13:59:34', '2014-08-19 13:59:34', '4', '2', '4', '1', '浦发银行', '611111456765438998', '2016-07-14 12:55:54', '1', '7565.00');
INSERT INTO `travel_order` VALUES ('74B751BF5CA54526AFB82AA467852976 ', '2014-09-17 16:28:29', '2014-09-17 16:28:29', 'BBD581F3A5EA4ED6905282C3134CAA7F\r\n毕绷沟--贡嘎山家庭亲子游20151011', 'CCD841AFFADD40E7A28E5D5E86D5CDB8', '2', '111111111111111111111111', '11111111111', '111', 'C73B5C0F0EFC4A40AC6D997C20991359', '2014-09-17 16:28:29', '2014-09-17 16:28:29', '2', '2', '5', '2', '工商银行', '611111456765438998', '2016-07-14 12:55:54', '2', '7588.00');
INSERT INTO `travel_order` VALUES ('8EC342B2555A4EACA82D5AC6C7941421 ', '2014-08-19 13:57:54', '2014-08-19 13:57:54', '2CED3B1A057447B18302B104D4033C48\r\n同里--牛背山情侣双人游20160122', '6CBF290AC4494F3DA266B25AC62F2D17', '1', '23232', '23222222222', '1', 'C73B5C0F0EFC4A40AC6D997C20991359', '2014-08-19 13:57:54', '2014-08-19 13:57:54', '6', '2', '6', '3', '渣打银行', '611111456765438998', '2016-07-14 12:55:54', '3', '4668.00');
INSERT INTO `travel_order` VALUES ('C3C642CEA05E496D85E64830CF39970B ', '2014-09-12 15:34:48', '2014-09-12 15:34:48', '2CED3B1A057447B18302B104D4033C48\r\n四姑娘山景区--烏鎮暑期游20160722', '870D500380184B2784BDAE1124494EFF', '3', '4454大幅广告', '11111111111', '', 'C73B5C0F0EFC4A40AC6D997C20991359', '2014-09-12 15:34:48', '2014-09-12 15:34:48', '3', '1', '1', '1', '中国银行', '611111456765438998', '2016-07-14 12:55:54', '4', '7657.00');

-- ----------------------------
-- Table structure for travel_style
-- ----------------------------
DROP TABLE IF EXISTS `travel_style`;
CREATE TABLE `travel_style` (
  `id` varchar(64) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_style
-- ----------------------------
INSERT INTO `travel_style` VALUES ('4D7F4B8E499511E694F7CCC164B04752', '徒步远足', '徒步远足');
INSERT INTO `travel_style` VALUES ('67A09E7F499511E694F7CCC164B04752', '登山', '登山');
INSERT INTO `travel_style` VALUES ('731AB1BE499511E694F7CCC164B04752', '自驾旅游', '自驾旅游');
INSERT INTO `travel_style` VALUES ('795474C3499511E694F7CCC164B04752', '轻旅行', '轻旅行');
INSERT INTO `travel_style` VALUES ('7F6D8643499511E694F7CCC164B04752', '定制旅行', '定制旅行');
INSERT INTO `travel_style` VALUES ('85B62C04499511E694F7CCC164B04752', '观光摄影', '观光摄影');
