/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50146
Source Host           : localhost:3306
Source Database       : itour

Target Server Type    : MYSQL
Target Server Version : 50146
File Encoding         : 65001

Date: 2016-07-11 14:30:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `business_scope` text,
  `city` varchar(50) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  `customer_level` varchar(50) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `home_page` varchar(250) DEFAULT NULL,
  `introduction` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------

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
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `buyer_memo` varchar(500) DEFAULT NULL,
  `buyer_nick` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `order_source` int(11) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `paterner_incoming` float DEFAULT NULL,
  `payment` float DEFAULT NULL,
  `platform_incoming` float DEFAULT NULL,
  `post_fee` float DEFAULT NULL,
  `printing_incoming` float DEFAULT NULL,
  `receiver` varchar(100) DEFAULT NULL,
  `receiver_address` varchar(200) DEFAULT NULL,
  `receiver_city` varchar(100) DEFAULT NULL,
  `receiver_district` varchar(100) DEFAULT NULL,
  `receiver_mobile` varchar(20) DEFAULT NULL,
  `receiver_province` varchar(100) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `seller_memo` varchar(500) DEFAULT NULL,
  `sign_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contract_no` varchar(50) DEFAULT NULL,
  `textSN` varchar(50) DEFAULT NULL,
  `other_order_id` int(11) DEFAULT NULL,
  `other_order_no` bigint(20) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_5vapvm8kw99ifyjt371iw372c` (`company_id`),
  KEY `FK_m6q2ofkj1g5aobtb2p00ajpqg` (`customer_id`),
  KEY `FK_mh40cn97o5svvy5c32ws9tnvp` (`user_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `order_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('304', '2014-08-19 13:52:42', '0', '2014-08-19 13:52:42', null, null, '11', '2014-08-27 00:00:00', '14084275620420', null, null, null, '111', null, null, null, '444', '反而法国热管', '迪庆藏族自治州', '德钦县', '12345678901', '云南省', '111', '40', null, '2014-08-19 00:00:00', null, '3444', null, null, null, null);
INSERT INTO `order` VALUES ('305', '2014-08-19 13:55:11', '1', '2014-08-19 13:55:11', null, null, '7', '2014-08-19 00:00:00', '14084277108698', null, null, null, '23232', null, null, null, '7878', '1212121', '北京市', '怀柔区', '12121212121', '北京', '122', '40', null, '2014-08-19 00:00:00', null, '7878', null, null, null, null);
INSERT INTO `order` VALUES ('306', '2014-08-19 13:57:54', '1', '2014-08-19 13:57:54', null, null, '11', '2014-08-19 00:00:00', '14084278736578', null, null, null, '1', null, null, null, '23232', '222', '上海市', '崇明县', '23222222222', '上海', '1', '40', null, '2014-08-19 00:00:00', null, '23232', null, null, null, null);
INSERT INTO `order` VALUES ('307', '2014-08-19 13:59:34', '0', '2014-08-19 13:59:34', null, null, '11', '2014-08-10 00:00:00', '14084279740981', null, null, null, '1', null, null, null, '1', '111', '北京市', '怀柔区', '11111111111', '北京', '', '40', null, '2014-08-10 00:00:00', null, '11', null, null, null, null);
INSERT INTO `order` VALUES ('308', '2014-08-26 13:21:43', '1', '2014-08-26 13:21:43', null, null, '7', '2014-08-28 00:00:00', '14090305031880', null, null, null, '1.80909e+006', null, null, null, 'zhouzhanghuan', 'wefwrfgqewrg5r', '北京市', '怀柔区', '11111111111', '北京', 'sdk;gjweprugw0euwe4r', '41', null, '2014-08-26 00:00:00', null, '2345556', null, null, null, null);
INSERT INTO `order` VALUES ('309', '2014-09-12 15:34:48', '0', '2014-09-12 15:34:48', null, null, '7', '2014-09-30 00:00:00', '14105072884225', null, null, null, '345455', null, null, null, '4454大幅广告', '但是放松放松的', '临高县', '市区', '11111111111', '海南省', '', '19', null, '2014-09-04 00:00:00', null, '12233', null, null, null, null);
INSERT INTO `order` VALUES ('310', '2014-09-17 16:28:29', '0', '2014-09-17 16:28:29', null, null, '7', '2014-09-10 00:00:00', '14109425085084', null, null, null, '111', null, null, null, '111111111111111111111111', '111111111111', '常州市', '戚墅堰区', '11111111111', '江苏省', '111', '19', null, '2014-09-03 00:00:00', null, '呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜问问', null, null, null, null);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_pic_path` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `print_parameter` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `single_price` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FK_q6bwjb8y711vixrxinko7wmnw` (`order_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('4', '2014-08-19 13:52:42', '1', '2014-08-19 13:52:42', '122', null, '111', '{\"innerPaperType\":\"111\",\"style\":\"111\",\"coverPaperType\":\"111\",\"bindingPosition\":\"111\",\"binding\":\"1212\",\"pageNum\":\"1221\",\"version\":\"111\",\"size\":\"111\"}', '111', '111', '111', '304');
INSERT INTO `order_detail` VALUES ('5', '2014-08-19 13:55:11', '1', '2014-08-19 13:55:11', '122', null, '1212', '{\"innerPaperType\":\"1212\",\"style\":\"1212\",\"coverPaperType\":\"1212\",\"bindingPosition\":\"1212\",\"binding\":\"1212\",\"pageNum\":\"1212\",\"version\":\"1221\",\"size\":\"1212\"}', '122', '1212', '1212', '305');
INSERT INTO `order_detail` VALUES ('6', '2014-08-19 13:57:54', '1', '2014-08-19 13:57:54', '1', null, '1', '{\"innerPaperType\":\"1\",\"style\":\"1\",\"coverPaperType\":\"1\",\"bindingPosition\":\"1\",\"binding\":\"1\",\"pageNum\":\"1\",\"version\":\"1\",\"size\":\"1\"}', '1', '1', '11', '306');
INSERT INTO `order_detail` VALUES ('7', '2014-08-19 13:59:34', '1', '2014-08-19 13:59:34', '1', null, '1', '{\"innerPaperType\":\"1\",\"style\":\"11\",\"coverPaperType\":\"11\",\"bindingPosition\":\"11\",\"binding\":\"1\",\"pageNum\":\"1\",\"version\":\"11\",\"size\":\"\"}', '1', '1', '1', '307');
INSERT INTO `order_detail` VALUES ('8', '2014-08-26 13:21:43', '1', '2014-08-26 13:21:43', 'warfjaorhg', null, '1233', '{\"innerPaperType\":\"\",\"style\":\"\",\"coverPaperType\":\"\",\"bindingPosition\":\"\",\"binding\":\"\",\"pageNum\":\"\",\"version\":\"1223\",\"size\":\"\"}', '', '1.33333e+006', '133333', '308');
INSERT INTO `order_detail` VALUES ('9', '2014-09-12 15:34:48', '1', '2014-09-12 15:34:48', '爱上对方v地方v的', null, '1', '{\"innerPaperType\":\"\",\"style\":\"\",\"coverPaperType\":\"\",\"bindingPosition\":\"\",\"binding\":\"\",\"pageNum\":\"\",\"version\":\"1223\",\"size\":\"的vv\"}', '', '1.33333e+006', '1334', '309');
INSERT INTO `order_detail` VALUES ('10', '2014-09-17 16:28:29', '1', '2014-09-17 16:28:29', '1111', null, '111', '{\"innerPaperType\":\"111\",\"style\":\"111\",\"coverPaperType\":\"111\",\"bindingPosition\":\"111\",\"binding\":\"111\",\"pageNum\":\"111\",\"version\":\"111\",\"size\":\"111\"}', '111', '111', '111', '310');

-- ----------------------------
-- Table structure for order_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `order_evaluation`;
CREATE TABLE `order_evaluation` (
  `order_evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `first_id` int(11) DEFAULT NULL,
  `first_rating` float DEFAULT NULL,
  `first_remark` varchar(500) DEFAULT NULL,
  `first_type` int(11) DEFAULT NULL,
  `relate_order_id` int(11) DEFAULT NULL,
  `relate_order_type` int(11) DEFAULT NULL,
  `second_id` int(11) DEFAULT NULL,
  `second_rating` float DEFAULT NULL,
  `second_remark` varchar(500) DEFAULT NULL,
  `second_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(100) DEFAULT NULL COMMENT '系统url',
  `parentId` int(10) DEFAULT NULL COMMENT ' 父id 关联sys_menu.id',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除，1=已删除',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `rank` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `actions` varchar(500) DEFAULT '0' COMMENT '注册Action 按钮|分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', 'main/manage', null, '0', '2016-07-06 17:21:58', '2016-07-06 17:21:58', '1', '');
INSERT INTO `sys_menu` VALUES ('2', '菜单管理', 'sysMenu/menu', '1', '0', '2016-07-06 18:18:32', '2016-07-06 17:21:58', '0', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('3', '站点管理', '', null, '1', '2016-07-06 17:21:58', '2016-07-06 17:21:58', '1', '');
INSERT INTO `sys_menu` VALUES ('4', '站点信息管理', 'siteMain/list', '3', '0', '2016-07-06 17:21:58', '2016-07-06 01:24:47', '0', 'dataList.do|/siteType/typeListJson.do');
INSERT INTO `sys_menu` VALUES ('5', '站点类型', 'siteType/list', '3', '0', '2016-07-06 17:21:58', '2016-07-06 01:20:46', '0', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('6', '系统用户管理', 'sysUser/list', '1', '0', '2016-07-06 17:21:58', '2016-07-06 11:42:46', '0', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('7', '角色管理', 'sysRole/role', '1', '0', '2016-07-06 22:17:51', '2016-07-06 01:15:00', '0', 'dataList.do|/sysMenu/getMenuTree.do');
INSERT INTO `sys_menu` VALUES ('8', '系统用户授权', 'sysUser/userRole', '1', '0', '2016-07-06 11:42:26', '2016-07-06 11:43:19', '0', 'userList.do|/sysRole/loadRoleList.do');
INSERT INTO `sys_menu` VALUES ('9', '业务功能', 'main/manage', null, '0', '2016-07-06 10:42:42', '2016-07-06 17:25:42', '1', '');
INSERT INTO `sys_menu` VALUES ('10', '客户管理', 'customers/list', '9', '0', '2016-07-06 10:44:45', '2016-07-06 13:32:26', '1', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('11', '订单管理', 'order/list', '9', '0', '2016-07-06 11:37:01', '2016-07-06 11:37:09', '0', '2');
INSERT INTO `sys_menu` VALUES ('12', '12', '', null, '1', '2016-07-06 11:37:20', '2016-07-06 11:37:29', '0', '');
INSERT INTO `sys_menu` VALUES ('13', '公告', '/note/list', '9', '0', '2016-07-06 17:24:36', '2016-07-06 17:27:48', '1', 'dataList.do');
INSERT INTO `sys_menu` VALUES ('14', '7777', '777', null, '1', '2016-07-06 10:55:26', '2016-07-06 17:25:20', '0', '');
INSERT INTO `sys_menu` VALUES ('15', '77', '77', null, '1', '2016-07-06 11:01:08', '2016-07-06 17:25:22', '77', '77');
INSERT INTO `sys_menu` VALUES ('16', '测试', '/systest', null, '0', '2016-07-06 18:43:11', '2016-07-06 18:54:39', '1', '/systest/test');
INSERT INTO `sys_menu` VALUES ('17', 'aaa', 'aa', '16', '0', '2016-07-06 18:43:50', null, '0', 'aaa');
INSERT INTO `sys_menu` VALUES ('18', 'aa', 'aa', null, '1', '2016-07-06 18:44:10', null, '0', 'aa');

-- ----------------------------
-- Table structure for sys_menu_btn
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_btn`;
CREATE TABLE `sys_menu_btn` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` int(11) NOT NULL COMMENT ' 菜单id关联 sys_menu.id',
  `btnName` varchar(30) DEFAULT NULL COMMENT '按钮名称',
  `btnType` varchar(30) DEFAULT NULL COMMENT '按钮类型，用于列表页显示的按钮',
  `actionUrls` varchar(250) DEFAULT NULL COMMENT 'url注册，用"," 分隔 。用于权限控制UR',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_btn
-- ----------------------------
INSERT INTO `sys_menu_btn` VALUES ('5', '2', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('6', '2', '修改', 'edit', 'getId|save');
INSERT INTO `sys_menu_btn` VALUES ('7', '2', '删除', 'remove', 'delete');
INSERT INTO `sys_menu_btn` VALUES ('8', '6', '添加', 'add', 'save');
INSERT INTO `sys_menu_btn` VALUES ('9', '6', '修改', 'edit', 'getId|save');
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
INSERT INTO `sys_menu_btn` VALUES ('30', '16', '删除', 'remove', 'sysMenu/delete');
INSERT INTO `sys_menu_btn` VALUES ('31', '17', '添加', 'add', 'sysMenu/save');
INSERT INTO `sys_menu_btn` VALUES ('32', '17', '修改', 'edit', 'sysMenu/getId');
INSERT INTO `sys_menu_btn` VALUES ('33', '17', '删除', 'remove', 'sysMenu/delete');
INSERT INTO `sys_menu_btn` VALUES ('37', '16', '委托', 'delegate', 'sysMenu/delegate');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `roleName` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `state` int(1) DEFAULT NULL COMMENT '状态0=可用 1=禁用',
  `descr` varchar(200) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '2016-07-06 16:07:00', null, '2016-07-06 17:31:13', null, '0', 'supermanager系统管理');
INSERT INTO `sys_role` VALUES ('3', '管理员', '2016-07-06 10:45:06', null, '2016-07-06 11:22:38', null, '0', '管理员');
INSERT INTO `sys_role` VALUES ('18', '站点管理', '2016-07-06 01:21:46', null, '2016-07-06 01:21:54', null, '0', '站点管理');
INSERT INTO `sys_role` VALUES ('19', '测试管理员', '2016-07-06 17:10:21', null, '2016-07-06 21:11:41', null, '0', 'test');

-- ----------------------------
-- Table structure for sys_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_rel`;
CREATE TABLE `sys_role_rel` (
  `roleId` int(11) NOT NULL COMMENT '角色主键 sys_role.id',
  `objId` int(11) NOT NULL COMMENT '关联主键 type=0管理sys_menu.id, type=1关联sys_user.id',
  `relType` int(1) DEFAULT NULL COMMENT '关联类型 0=菜单,1=用户'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_rel
-- ----------------------------
INSERT INTO `sys_role_rel` VALUES ('1', '3', '1');
INSERT INTO `sys_role_rel` VALUES ('18', '4', '0');
INSERT INTO `sys_role_rel` VALUES ('18', '5', '0');
INSERT INTO `sys_role_rel` VALUES ('18', '19', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '20', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '16', '2');
INSERT INTO `sys_role_rel` VALUES ('18', '17', '2');
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
INSERT INTO `sys_role_rel` VALUES ('19', '8', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '1', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '2', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '6', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '7', '0');
INSERT INTO `sys_role_rel` VALUES ('19', '7', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '8', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '10', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '13', '2');
INSERT INTO `sys_role_rel` VALUES ('19', '15', '2');
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
INSERT INTO `sys_role_rel` VALUES ('3', '12', '1');
INSERT INTO `sys_role_rel` VALUES ('18', '12', '1');
INSERT INTO `sys_role_rel` VALUES ('18', '5', '1');
INSERT INTO `sys_role_rel` VALUES ('3', '5', '1');
INSERT INTO `sys_role_rel` VALUES ('19', '5', '1');
INSERT INTO `sys_role_rel` VALUES ('3', '14', '1');
INSERT INTO `sys_role_rel` VALUES ('18', '14', '1');
INSERT INTO `sys_role_rel` VALUES ('19', '6', '1');
INSERT INTO `sys_role_rel` VALUES ('3', '13', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `email` varchar(50) NOT NULL COMMENT '邮箱也是登录帐号',
  `pwd` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `nickName` varchar(50) DEFAULT NULL COMMENT '昵称',
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '状态 0=可用,1=禁用',
  `loginCount` int(11) DEFAULT NULL COMMENT '登录总次数',
  `loginTime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '删除状态 0=未删除,1=已删除',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `superAdmin` int(1) NOT NULL DEFAULT '0' COMMENT '是否超级管理员 0= 不是，1=是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin@qq.com', '398A7190A349339E41D727090D95FA0DDF9D7', '康长老', '0', '271', '2016-07-11 14:27:52', '0', '2016-07-06 23:01:15', '2016-07-11 14:27:52', null, null, '1');
INSERT INTO `sys_user` VALUES ('5', 'wolf@qq.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'admin', '0', '71', '2013-02-09 10:29:42', '0', '2016-07-06 12:30:10', '2016-07-06 10:29:42', null, null, '0');
INSERT INTO `sys_user` VALUES ('6', 'youke@qq.com', '398A7190A349339E41D727090D95FA0DDF9D7', ' 游客', '0', null, null, '0', '2016-07-06 13:41:32', '2013-01-13 13:41:32', null, null, '0');
INSERT INTO `sys_user` VALUES ('12', 'fred.zhao@163.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'fred', '0', null, null, '0', '2016-07-06 11:24:28', '2016-07-06 11:24:28', null, null, '0');
INSERT INTO `sys_user` VALUES ('13', 'zpclord@sina.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'remnantddd', '0', '2', '2016-07-06 19:14:29', '0', '2016-07-06 18:27:43', '2016-07-07 10:07:20', null, null, '0');
INSERT INTO `sys_user` VALUES ('14', 'zpchoney@gmail.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'walker', '0', null, null, '0', '2016-07-06 18:46:18', '2016-07-06 18:46:18', null, null, '0');
INSERT INTO `sys_user` VALUES ('15', 'aaa@gmail.com', '398A7190A349339E41D727090D95FA0DDF9D7', '呆物', '0', null, null, '0', '2016-07-07 10:00:04', '2016-07-07 10:00:04', null, null, '0');
INSERT INTO `sys_user` VALUES ('16', 'admin@126.com', '398A7190A349339E41D727090D95FA0DDF9D7', '总管', '0', null, null, '0', '2016-07-07 10:00:33', '2016-07-07 10:00:33', null, null, '0');
INSERT INTO `sys_user` VALUES ('17', 'Lord@Lord.com', '398A7190A349339E41D727090D95FA0DDF9D7', '我主', '0', null, null, '0', '2016-07-07 10:00:54', '2016-07-07 10:00:54', null, null, '0');
INSERT INTO `sys_user` VALUES ('18', 'Jesus@Emmanuel.Heaven', '398A7190A349339E41D727090D95FA0DDF9D7', 'Christ', '0', null, null, '0', '2016-07-07 10:01:34', '2016-07-07 10:01:34', null, null, '0');
INSERT INTO `sys_user` VALUES ('19', '99999@itours.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'uptoU', '0', null, null, '0', '2016-07-07 10:02:10', '2016-07-07 10:02:10', null, null, '0');
INSERT INTO `sys_user` VALUES ('20', 'mm@mm.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'aa', '1', null, null, '0', '2016-07-07 10:10:39', '2016-07-07 10:10:39', null, null, '0');
INSERT INTO `sys_user` VALUES ('21', 'Alexander@greece.com', '398A7190A349339E41D727090D95FA0DDF9D7', 'Empretor', '0', null, null, '0', '2016-07-07 10:32:58', '2016-07-07 10:32:58', null, null, '0');

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
INSERT INTO `sys_variables` VALUES ('receive_email', 'zpclord@sina.com', 'nexus-PC', '127.0.0.1', null, 'itour');
INSERT INTO `sys_variables` VALUES ('sender_auth', 'false', 'nexus-PC', '127.0.0.1', null, 'itour');
INSERT INTO `sys_variables` VALUES ('sender_email', 'zpclord@sina.com', 'nexus-PC', '127.0.0.1', null, 'itour');
INSERT INTO `sys_variables` VALUES ('sender_host', '127.0.0.1', 'nexus-PC', '127.0.0.1', null, 'itour');
INSERT INTO `sys_variables` VALUES ('sender_port', '25', 'nexus-PC', '127.0.0.1', null, 'itour');
INSERT INTO `sys_variables` VALUES ('sender_protocol', 'mail.sina.com', 'nexus-PC', '127.0.0.1', null, 'itour');
INSERT INTO `sys_variables` VALUES ('sender_pwd', 'karryst11', 'nexus-PC', '127.0.0.1', null, 'itour');
INSERT INTO `sys_variables` VALUES ('sender_ssl', null, 'nexus-PC', '127.0.0.1', null, 'itour');
