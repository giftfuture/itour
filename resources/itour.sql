/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50146
Source Host           : localhost:3306
Source Database       : itour

Target Server Type    : MYSQL
Target Server Version : 50146
File Encoding         : 65001

Date: 2016-07-13 12:43:55
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
  `status` int(11) DEFAULT NULL,
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
INSERT INTO `customers` VALUES ('1', '1', '2016-07-12 13:41:23', '1', '2016-07-12 13:41:27', '北京顺义', 'zpclord@cmbc.com.cn', '1', '北京', '15566667777', '010-11223344', '赵紫阳', '书纪', '顺义', '前总结工作 ');
INSERT INTO `customers` VALUES ('221', '221', '2016-07-12 18:22:07', '332', '2016-07-12 18:22:07', '在在', '某些方面', '2', 'Shanghai,China', '+8615900827825', '+8615900827825', '赵无极', '非机动车', '厅魂牵梦萦', '夺无奇不有');
INSERT INTO `customers` VALUES ('ad4f49aa-1e21-42b6-a759-0601a5175d20', null, '2016-07-12 19:12:31', null, '2016-07-12 19:12:31', '在啊', '某些方面', '2', 'Shanghai,China', '+8615900827825', '+8615900827825', '赵无极', '暗影行者', '天国', '夺无奇不有vdss');
INSERT INTO `customers` VALUES ('c73b5c0f-0efc-4a40-ac6d-997c20991359', '221', '2016-07-12 18:59:41', '332', '2016-07-12 18:59:41', '', 'zpclord@sina.com', '4', '上海', '+8615900827825', '+8615900827825', '赵无极', '原地区', '确有其事', '在此之前');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback_id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `customer_id` varchar(64) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `FK_kfpy3yr8gaddnnd11oru7k19s` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '2014-08-18 15:46:55', '1', '2014-08-18 15:46:55', null, '高分法规和符合人体儿童', '12', null);
INSERT INTO `feedback` VALUES ('10', '2014-08-20 11:16:44', '1', '2014-08-20 11:16:44', null, '我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体', '12', null);
INSERT INTO `feedback` VALUES ('11', '2014-08-25 10:55:41', '1', '2014-08-25 10:55:41', null, '213333333331', '12', null);
INSERT INTO `feedback` VALUES ('12', '2014-09-09 14:12:11', '1', '2014-09-09 14:12:11', null, 'qwqweqweqweqwewe', '30', null);
INSERT INTO `feedback` VALUES ('13', '2014-09-10 10:15:12', '1', '2014-09-10 10:15:12', null, '52取回returned有人提议扔烟雾', '12', null);
INSERT INTO `feedback` VALUES ('14', '2014-09-10 18:00:56', '1', '2014-09-10 18:00:56', null, '爱上王企鹅丰田热一热投影图体育', '103', null);
INSERT INTO `feedback` VALUES ('15', '2014-09-12 14:07:23', '1', '2014-09-12 14:07:23', null, 'sddddddddddddd', '46', null);
INSERT INTO `feedback` VALUES ('16', '2014-09-17 09:08:07', '1', '2014-09-17 09:08:07', null, 'dbnsrdngtnnngggggggggggggggggggggggggggggggggg', '46', null);
INSERT INTO `feedback` VALUES ('17', '2014-09-30 10:37:51', '1', '2014-09-30 10:37:51', null, '特瑞特特然容易热而讨厌人同意让他一人', '103', null);
INSERT INTO `feedback` VALUES ('18', '2014-09-30 10:38:46', '1', '2014-09-30 10:38:46', null, '<yeyrytwey恶意日一天我二姨太意外而同样松德股份三个地方><html>和三个地方噶是的丰盛的</html>', '103', null);
INSERT INTO `feedback` VALUES ('19', '2014-09-30 10:39:09', '1', '2014-09-30 10:39:09', null, '<uwetertyewrytywertertu>', '103', null);
INSERT INTO `feedback` VALUES ('2', '2014-08-19 10:03:53', '1', '2014-08-19 10:03:53', null, '围鹅鹅鹅鹅鹅鹅范围额噩噩噩噩噩', '12', null);
INSERT INTO `feedback` VALUES ('20', '2014-09-30 10:39:44', '1', '2014-09-30 10:39:44', null, '<weyuwteyrtuewtyuerut>', '103', null);
INSERT INTO `feedback` VALUES ('21', '2014-09-30 10:43:42', '1', '2014-09-30 10:43:42', null, '<作恶多端枯黄棋手厅局级>', '22', null);
INSERT INTO `feedback` VALUES ('22', '2014-09-30 10:44:53', '1', '2014-09-30 10:44:53', null, '<asdfasfasdfsadfgklasdfasfd>', '22', null);
INSERT INTO `feedback` VALUES ('23', '2014-09-30 13:25:46', '1', '2014-09-30 13:25:46', null, '<dxgfhdgsf>', '103', null);
INSERT INTO `feedback` VALUES ('24', '2014-10-08 14:03:28', '1', '2014-10-08 14:03:28', null, '的傻傻的人特色让她《》《》<ytytyty>', '246', null);
INSERT INTO `feedback` VALUES ('25', '2014-10-10 10:25:02', '1', '2014-10-10 10:25:02', null, '522222222222222222', '247', 'd');
INSERT INTO `feedback` VALUES ('26', '2014-10-15 11:34:58', '1', '2014-10-15 11:34:58', null, 'qqq', '103', 'seedee');
INSERT INTO `feedback` VALUES ('27', '2014-10-31 13:35:27', '1', '2014-10-31 13:35:27', null, '', '223', null);
INSERT INTO `feedback` VALUES ('28', '2014-10-31 13:40:24', '1', '2014-10-31 13:40:24', null, 'asasdasd啊撒大苏打实打实', '223', null);
INSERT INTO `feedback` VALUES ('29', '2014-10-31 13:42:51', '1', '2014-10-31 13:42:51', null, 'dv', '223', '<ccccccccccccc></ccccccccccccc>');
INSERT INTO `feedback` VALUES ('3', '2014-08-20 11:14:31', '1', '2014-08-20 11:14:31', null, '建议建议建议建议建议建议建议建议建议建议建议建议建议\r\n', '12', null);
INSERT INTO `feedback` VALUES ('30', '2014-10-31 13:43:17', '1', '2014-10-31 13:43:17', null, 'asdasdasasdasasdasas', '223', '<sdasdd></sdasdd>');
INSERT INTO `feedback` VALUES ('31', '2014-11-17 13:24:50', '1', '2014-11-17 13:24:50', null, 'sdfasfsdfasdf', '428', 'sdfsdf');
INSERT INTO `feedback` VALUES ('32', '2014-11-17 13:29:10', '1', '2014-11-17 13:29:10', null, '<sdyydsfydf></sdyydsfydf>', '428', null);
INSERT INTO `feedback` VALUES ('33', '2014-11-17 13:29:52', '1', '2014-11-17 13:29:52', null, '<sdytfytsadyf>,(sdtfytdsytf)</sdytfytsadyf>', '428', '谢谢你的反馈！！');
INSERT INTO `feedback` VALUES ('34', '2014-11-24 11:26:49', '1', '2014-11-24 11:26:49', null, 'zxczxcxzc<werewrewr>', '428', '<agsdgasdg></agsdgasdg>');
INSERT INTO `feedback` VALUES ('35', '2015-01-20 11:10:04', '1', '2015-01-20 11:10:04', null, 'ddddddddddd', '428', 'fffffffff');
INSERT INTO `feedback` VALUES ('4', '2014-08-20 11:14:36', '1', '2014-08-20 11:14:36', null, '建议建议建议建议建议建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('5', '2014-08-20 11:14:39', '1', '2014-08-20 11:14:39', null, '建议建议建议建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('6', '2014-08-20 11:14:43', '1', '2014-08-20 11:14:43', null, '建议建议建议建议建议建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('7', '2014-08-20 11:14:47', '1', '2014-08-20 11:14:47', null, '建议建议建议建议建议建议', '12', null);
INSERT INTO `feedback` VALUES ('8', '2014-08-20 11:16:01', '1', '2014-08-20 11:16:01', null, '斤斤计较经济搜索三三四四', '12', null);
INSERT INTO `feedback` VALUES ('9', '2014-08-20 11:16:30', '1', '2014-08-20 11:16:30', null, '我可以吞下玻璃而不伤害身体\r\n我可以吞下玻璃而不伤害身体', '12', null);

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
  `status` int(11) DEFAULT NULL,
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
INSERT INTO `order_detail` VALUES ('10', '1', null, '2014-09-17 16:28:29', '1111', '111', '111', '111', '310');
INSERT INTO `order_detail` VALUES ('4', '1', null, '2014-08-19 13:52:42', '122', '111', '111', '111', '304');
INSERT INTO `order_detail` VALUES ('5', '1', null, '2014-08-19 13:55:11', '122', '122', '1212', '1212', '305');
INSERT INTO `order_detail` VALUES ('6', '1', null, '2014-08-19 13:57:54', '1', '1', '1', '11', '306');
INSERT INTO `order_detail` VALUES ('7', '1', null, '2014-08-19 13:59:34', '1', '1', '1', '1', '307');
INSERT INTO `order_detail` VALUES ('8', '1', null, '2014-08-26 13:21:43', 'warfjaorhg', '', '1.33333e+006', '133333', '308');
INSERT INTO `order_detail` VALUES ('9', '1', null, '2014-09-12 15:34:48', '爱上对方v地方v的', '', '1.33333e+006', '1334', '309');

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

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(100) DEFAULT NULL COMMENT '系统url',
  `parentId` varchar(64) DEFAULT NULL COMMENT ' 父id 关联sys_menu.id',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除，1=已删除',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `rank` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `actions` varchar(500) DEFAULT '0' COMMENT '注册Action 按钮|分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', 'main/manage', null, '0', '2016-07-06 17:21:58', '2016-07-06 17:21:58', '1', '');
INSERT INTO `sys_menu` VALUES ('10', '客户管理', 'customers/list', '9', '0', '2016-07-06 10:44:45', '2016-07-06 13:32:26', '1', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('11', '订单管理', 'order/list', '9', '0', '2016-07-06 11:37:01', '2016-07-06 11:37:09', '0', '2');
INSERT INTO `sys_menu` VALUES ('12', '12', '', null, '1', '2016-07-06 11:37:20', '2016-07-06 11:37:29', '0', '');
INSERT INTO `sys_menu` VALUES ('13', '旅游项目管理', '/note/list', '9', '0', '2016-07-06 17:24:36', '2016-07-13 11:34:54', '1', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('14', '7777', '777', null, '1', '2016-07-06 10:55:26', '2016-07-06 17:25:20', '0', '');
INSERT INTO `sys_menu` VALUES ('15', '77', '77', null, '1', '2016-07-06 11:01:08', '2016-07-06 17:25:22', '77', '77');
INSERT INTO `sys_menu` VALUES ('16', '测试', '/systest', null, '0', '2016-07-06 18:43:11', '2016-07-06 18:54:39', '1', '/systest/test');
INSERT INTO `sys_menu` VALUES ('17', 'aaa', 'aa', '16', '0', '2016-07-06 18:43:50', '2016-07-13 10:03:36', '0', 'aaa');
INSERT INTO `sys_menu` VALUES ('18', 'aa', 'aa', null, '1', '2016-07-06 18:44:10', '2016-07-13 10:03:39', '0', 'aa');
INSERT INTO `sys_menu` VALUES ('2', '菜单管理', 'sysMenu/menu', '1', '0', '2016-07-06 18:18:32', '2016-07-06 17:21:58', '0', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('3', '站点管理', '', null, '1', '2016-07-06 17:21:58', '2016-07-06 17:21:58', '1', '');
INSERT INTO `sys_menu` VALUES ('4', '站点信息管理', 'siteMain/list', '3', '0', '2016-07-06 17:21:58', '2016-07-06 01:24:47', '0', 'dataList.do|/siteType/typeListJson.do');
INSERT INTO `sys_menu` VALUES ('5', '站点类型', 'siteType/list', '3', '0', '2016-07-06 17:21:58', '2016-07-06 01:20:46', '0', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('6', '系统用户管理', 'sysUser/list', '1', '0', '2016-07-06 17:21:58', '2016-07-06 11:42:46', '0', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('7', '角色管理', 'sysRole/role', '1', '0', '2016-07-06 22:17:51', '2016-07-06 01:15:00', '0', 'dataList.do|/sysMenu/getMenuTree.do');
INSERT INTO `sys_menu` VALUES ('8', '系统用户授权', 'sysUser/userRole', '1', '0', '2016-07-06 11:42:26', '2016-07-06 11:43:19', '0', 'userList.do|/sysRole/loadRoleList.do');
INSERT INTO `sys_menu` VALUES ('9', '业务功能', 'main/manage', null, '0', '2016-07-06 10:42:42', '2016-07-06 17:25:42', '1', '');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_btn
-- ----------------------------
INSERT INTO `sys_menu_btn` VALUES ('10', '6', '修改密码', 'editPwd', 'updatePwd');
INSERT INTO `sys_menu_btn` VALUES ('11', '6', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('12', '7', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('13', '7', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('14', '7', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('15', '8', '授权', 'authRole', '/sysUser/getUser|/sysUser/addUserRole');
INSERT INTO `sys_menu_btn` VALUES ('16', '5', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('17', '5', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('18', '5', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('19', '4', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('20', '4', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('21', '4', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('22', '10', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('23', '10', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('24', '10', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('25', '13', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('26', '13', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('27', '13', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('28', '16', '添加', 'add', 'sysMenu/save');
INSERT INTO `sys_menu_btn` VALUES ('29', '16', '修改', 'edit', 'sysMenu/getId');
INSERT INTO `sys_menu_btn` VALUES ('2a6259ee-98bc-4c05-b7d5-a12232fffe1c', '', '删除', 'remove', 'sysMenu/delete');
INSERT INTO `sys_menu_btn` VALUES ('30', '16', '删除', 'remove', 'sysMenu/delete');
INSERT INTO `sys_menu_btn` VALUES ('31', '17', '添加', 'add', 'sysMenu/save');
INSERT INTO `sys_menu_btn` VALUES ('32', '17', '修改', 'edit', 'sysMenu/getId');
INSERT INTO `sys_menu_btn` VALUES ('33', '17', '删除', 'remove', 'sysMenu/delete');
INSERT INTO `sys_menu_btn` VALUES ('36d1c732-ef70-4b86-bfb1-a0b9dcf1a0ab', '', '添加', 'add', 'sysMenu/save');
INSERT INTO `sys_menu_btn` VALUES ('37', '16', '委托', 'delegate', 'sysMenu/delegate');
INSERT INTO `sys_menu_btn` VALUES ('450311fe-4b46-4ff4-9013-ae466554a4ca', '', '添加', 'add', 'sysMenu/save');
INSERT INTO `sys_menu_btn` VALUES ('4f703fc4-c5aa-429e-87e3-e000a8e6452f', '', '删除', 'remove', 'sysMenu/delete');
INSERT INTO `sys_menu_btn` VALUES ('5', '2', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('6', '2', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('7', '2', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('8', '6', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('9', '6', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('9a9c1b31-8eb3-450e-8eb9-4746c43cb5a3', '', '添加', 'add', 'sysMenu/save');
INSERT INTO `sys_menu_btn` VALUES ('dbaf912f-ca30-4171-b7d8-a86830b2152c', '', '修改', 'edit', 'sysMenu/getId');
INSERT INTO `sys_menu_btn` VALUES ('def0f7df-1f26-41cf-8094-4d7ea0092ef2', '', '修改', 'edit', 'sysMenu/getId');
INSERT INTO `sys_menu_btn` VALUES ('e8f63d92-efeb-4a86-82a5-af85896a5406', '', '修改', 'edit', 'sysMenu/getId');
INSERT INTO `sys_menu_btn` VALUES ('f635fe49-3c2c-45de-8cf4-1c7835e34ef0', '', '删除', 'remove', 'sysMenu/delete');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin@qq.com', '398A7190A349339E41D727090D95FA0DDF9D7', '康长老', '0', '295', '2016-07-13 11:34:02', '0', '2016-07-06 23:01:15', '2016-07-13 11:34:03', null, null, '1');
INSERT INTO `sys_user` VALUES ('12', 'fred.zhao@163.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'fred', '0', null, null, '0', '2016-07-06 11:24:28', '2016-07-06 11:24:28', null, null, '0');
INSERT INTO `sys_user` VALUES ('13', 'zpclord@sina.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'remnantddd', '0', '2', '2016-07-06 19:14:29', '0', '2016-07-06 18:27:43', '2016-07-07 10:07:20', null, null, '0');
INSERT INTO `sys_user` VALUES ('14', 'zpchoney@gmail.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'walker', '0', null, null, '0', '2016-07-06 18:46:18', '2016-07-06 18:46:18', null, null, '0');
INSERT INTO `sys_user` VALUES ('15', 'aaa@gmail.com', '398A7190A349339E41D727090D95FA0DDF9D7', '呆物', '0', null, null, '0', '2016-07-07 10:00:04', '2016-07-07 10:00:04', null, null, '0');
INSERT INTO `sys_user` VALUES ('16', 'admin@126.com', '398A7190A349339E41D727090D95FA0DDF9D7', '总管', '0', null, null, '0', '2016-07-07 10:00:33', '2016-07-07 10:00:33', null, null, '0');
INSERT INTO `sys_user` VALUES ('17', 'Lord@Lord.com', '398A7190A349339E41D727090D95FA0DDF9D7', '我主', '0', null, null, '0', '2016-07-07 10:00:54', '2016-07-07 10:00:54', null, null, '0');
INSERT INTO `sys_user` VALUES ('18', 'Jesus@Emmanuel.Heaven', '398A7190A349339E41D727090D95FA0DDF9D7', 'Christ', '0', null, null, '0', '2016-07-07 10:01:34', '2016-07-07 10:01:34', null, null, '0');
INSERT INTO `sys_user` VALUES ('19', '99999@itours.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'uptoU', '0', null, null, '0', '2016-07-07 10:02:10', '2016-07-07 10:02:10', null, null, '0');
INSERT INTO `sys_user` VALUES ('20', 'mm@mm.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'aaad', '1', null, null, '0', '2016-07-07 10:10:39', '2016-07-07 10:10:39', null, null, '0');
INSERT INTO `sys_user` VALUES ('21', 'Alexander@greece.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'Empretor', '0', null, null, '0', '2016-07-07 10:32:58', '2016-07-07 10:32:58', null, null, '0');
INSERT INTO `sys_user` VALUES ('5', 'club@qq.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'admin', '0', '71', '2013-02-09 10:29:42', '0', '2016-07-06 12:30:10', '2016-07-06 10:29:42', null, null, '0');
INSERT INTO `sys_user` VALUES ('6', 'youke@qq.com', '398A7190A349339E41D727090D95FA0DDF9D7', ' 游客', '0', null, null, '0', '2016-07-06 13:41:32', '2013-01-13 13:41:32', null, null, '0');

-- ----------------------------
-- Table structure for sys_variables
-- ----------------------------
DROP TABLE IF EXISTS `sys_variables`;
CREATE TABLE `sys_variables` (
  `var_name` varchar(255) NOT NULL,
  `var_value` varchar(512) DEFAULT NULL,
  `var_hostname` varchar(255) DEFAULT NULL,
  `var_hostip` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `var_project` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`var_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统变量表';

-- ----------------------------
-- Records of sys_variables
-- ----------------------------
INSERT INTO `sys_variables` VALUES ('receive_email', 'zpclord@sina.com', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('sender_auth', 'true', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('sender_email', 'zpclord@sina.com', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('sender_host', 'smtp.sina.com.cn', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('sender_port', '25', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('sender_protocol', 'mail.sina.com', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('sender_pwd', 'karryst11', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');
INSERT INTO `sys_variables` VALUES ('sender_ssl', 'false', 'nexus-PC', '192.168.56.1', '127.0.0.1', 'itour');

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
INSERT INTO `travel_item` VALUES ('1', '四姑娘山景区', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('10', '黃山景區', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('11', '宏村', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('12', '同里', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('2', '毕绷沟', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('3', '哪个地方', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('4', '贡嘎山', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('5', '稻城亚丁', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('6', '喀纳斯', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('7', '牛背山', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('8', '贡嘎西坡', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `travel_item` VALUES ('9', '烏鎮', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);

-- ----------------------------
-- Table structure for travel_order
-- ----------------------------
DROP TABLE IF EXISTS `travel_order`;
CREATE TABLE `travel_order` (
  `id` varchar(64) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `order_name` varchar(500) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `receiver` varchar(100) DEFAULT NULL,
  `receiver_mobile` varchar(20) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `expected_depart` datetime DEFAULT NULL,
  `expected_back` datetime DEFAULT NULL,
  `total_staff` int(255) DEFAULT NULL COMMENT '本次订单出行人数',
  `is_payed` varchar(255) DEFAULT NULL COMMENT '是否支付完成.',
  `pay_type` varchar(255) DEFAULT NULL COMMENT '1=线上支付,2=现金支付,3=邮政汇款,4=公司转帐',
  `pay_platform` varchar(255) DEFAULT NULL COMMENT '付款平台,如1=微信,2=支付宝,3=网银.',
  `bank` varchar(255) DEFAULT NULL COMMENT '如网银支付,即为付款方银行',
  `pay_account` varchar(255) DEFAULT NULL COMMENT '付款方银行帐户',
  `pay_time` datetime DEFAULT NULL COMMENT '付款时间',
  `pay_terminal` varchar(255) DEFAULT NULL COMMENT '付款终端,如有,则为PC,IOS,Android',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_order
-- ----------------------------
INSERT INTO `travel_order` VALUES ('304', '2014-08-19 13:52:42', '2014-08-19 13:52:42', '304', '14084275620420', '0', '444', '12345678901', '111', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `travel_order` VALUES ('305', '2014-08-19 13:55:11', '2014-08-19 13:55:11', '305', '14084277108698', '1', '7878', '12121212121', '122', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `travel_order` VALUES ('306', '2014-08-19 13:57:54', '2014-08-19 13:57:54', '306', '14084278736578', '1', '23232', '23222222222', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `travel_order` VALUES ('307', '2014-08-19 13:59:34', '2014-08-19 13:59:34', '307', '14084279740981', '0', '1', '11111111111', '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `travel_order` VALUES ('308', '2014-08-26 13:21:43', '2014-08-26 13:21:43', '308', '14090305031880', '1', 'zhouzhanghuan', '11111111111', 'sdk;gjweprugw0euwe4r', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `travel_order` VALUES ('309', '2014-09-12 15:34:48', '2014-09-12 15:34:48', '309', '14105072884225', '0', '4454大幅广告', '11111111111', '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `travel_order` VALUES ('310', '2014-09-17 16:28:29', '2014-09-17 16:28:29', '310', '14109425085084', '0', '111111111111111111111111', '11111111111', '111', null, null, null, null, null, null, null, null, null, null, null);

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
INSERT INTO `travel_style` VALUES ('1', '徒步远足', null);
INSERT INTO `travel_style` VALUES ('2', '登山', null);
INSERT INTO `travel_style` VALUES ('3', '自驾旅游', null);
INSERT INTO `travel_style` VALUES ('4', '轻旅行', null);
INSERT INTO `travel_style` VALUES ('5', '定制旅行', null);
INSERT INTO `travel_style` VALUES ('6', '观光摄影', null);
