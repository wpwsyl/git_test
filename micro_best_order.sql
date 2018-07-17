/*
Navicat MySQL Data Transfer

Source Server         : 微期权====商品通==生产
Source Server Version : 50640
Source Host           : 116.255.136.34:3306
Source Database       : test_shadow2

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-14 13:59:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `micro_best_order`
-- ----------------------------
DROP TABLE IF EXISTS `micro_best_order`;
CREATE TABLE `micro_best_order` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL COMMENT '平仓单id',
  `status` tinyint(10) DEFAULT '0' COMMENT '状态 0：失败 1：成功 2：处理中',
  `sort` tinyint(10) DEFAULT '0' COMMENT '排序',
  `create_by` varchar(40) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='最优订单';

-- ----------------------------
-- Records of micro_best_order
-- ----------------------------
