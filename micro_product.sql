/*
Navicat MySQL Data Transfer

Source Server         : 微期权====商品通==生产
Source Server Version : 50640
Source Host           : 116.255.136.34:3306
Source Database       : test_shadow2

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001
Date: 2018-07-14 13:56:43      

再试一下

*/

测试一下
我再来试一下
dev分支添加一行
dev 命令行添加一行
dev再添加一行

dev继续开发新功能


fixbug分支上修复一个bug


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `micro_product`
-- ----------------------------
DROP TABLE IF EXISTS `micro_product`;
CREATE TABLE `micro_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) DEFAULT '' COMMENT '合约代码',
  `product_name` varchar(100) DEFAULT '' COMMENT '合约名称',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态0: 未启用 1：启用 2：删除',
  `suspend` tinyint(1) DEFAULT '0' COMMENT '是否停盘 0：正常 1：停盘',
  `market` bigint(20) DEFAULT '0' COMMENT '市场',
  `flux` int(11) DEFAULT '0' COMMENT '盈亏波动（最小变动单位）',
  `num_per_hand` int(11) DEFAULT '0' COMMENT '商品数量乘数(每手股数)',
  `price_per_hand` int(11) DEFAULT '0' COMMENT '每手价格',
  `fee_per_hand` int(11) DEFAULT '0' COMMENT '每手服务费',
  `delta` int(11) DEFAULT '0' COMMENT '点差',
  `decimal` int(11) DEFAULT '0' COMMENT '商品价格乘数',
  `min_flout` int(11) DEFAULT '0' COMMENT '最小点位',
  `max_flout` int(11) DEFAULT '0' COMMENT '最大点位',
  `total_max_qty` bigint(20) DEFAULT '0' COMMENT '最大持仓量',
  `single_max_qty` bigint(20) DEFAULT '0' COMMENT '单笔最大下单量',
  `single_min_qty` bigint(20) DEFAULT '0' COMMENT '单笔最小下单量',
  `symbol_id` varchar(20) DEFAULT '' COMMENT '股票代码',
  `symbol_name` varchar(20) DEFAULT '' COMMENT '股票名称',
  `unit` int(11) DEFAULT '0' COMMENT '单位',
  `unit_name` varchar(20) DEFAULT '' COMMENT '单位名称',
  `remark` varchar(1000) DEFAULT '' COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `decimal2` int(11) DEFAULT '0' COMMENT '商品价格乘数2(会员权利金参数)',
  `upper` int(11) DEFAULT '0' COMMENT '涨幅比例',
  `down` int(11) DEFAULT '0' COMMENT '下跌比例',
  `sort_order` int(11) DEFAULT '0' COMMENT '排序',
  `upper2` int(11) DEFAULT '0' COMMENT '盈亏幅度',
  `is_master` tinyint(1) DEFAULT '0' COMMENT '是否主力 1：是 0：否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='微商品';

-- ----------------------------
-- Records of micro_product
-- ----------------------------
INSERT INTO `micro_product` VALUES ('1', 'SC1809', '原油SC1809', '1', '0', '3', '100', '10', '1', '0', '0', '350', '1', '1000', '20', '1000', '10', 'SEsc1809', 'SC1809', '1', '元/桶', '1手原油为10桶原油报价', '2018-04-19 11:19:00', '2018-04-26 13:47:23', null, '350', '50000', '0', '9999', '7000', '1');
INSERT INTO `micro_product` VALUES ('2', 'IF1805', '沪深IF1805', '1', '0', '1', '200', '1', '1', '0', '0', '550', '1', '20', '20', '1000', '0', 'SFIF1805', 'IF1805', '1', '点', '', '2018-04-18 17:22:48', '2018-04-26 11:19:24', null, '600', '10000', '0', '9998', '7000', '0');
INSERT INTO `micro_product` VALUES ('3', 'IC1805', '中证IC1805', '1', '0', '2', '200', '1', '1', '0', '0', '550', '1', '1000', '20', '1000', '0', 'SFIC1805', 'IC1805', '1', '点', '', '2018-04-18 17:22:48', '2018-04-26 11:21:14', null, '600', '10000', '0', '9997', '7000', '0');
INSERT INTO `micro_product` VALUES ('4', 'IF1806', '沪深IF1806', '0', '0', '1', '200', '1', '1', '0', '0', '550', '1', '20', '20', '1000', '10', 'SFIF1806', 'IF1806', '1', '点', '', '2018-04-18 17:22:48', '2018-06-25 14:53:45', null, '600', '10000', '0', '9998', '7000', '0');
INSERT INTO `micro_product` VALUES ('5', 'IC1806', '中证IC1806', '0', '0', '2', '200', '1', '1', '0', '0', '550', '1', '1000', '20', '1000', '10', 'SFIC1806', 'IC1806', '1', '点', '', '2018-04-18 17:22:48', '2018-06-25 14:53:39', null, '600', '10000', '0', '9997', '7000', '0');
INSERT INTO `micro_product` VALUES ('6', 'IC1807', '中证IC1807', '1', '0', '2', '200', '1', '1', '0', '0', '550', '1', '1000', '20', '1000', '10', 'SFIC1807', 'IC1807', '1', '点', null, '2018-06-25 11:06:59', '2018-06-25 11:14:21', null, '600', '10000', '0', '9997', '7000', '1');
INSERT INTO `micro_product` VALUES ('7', 'IF1807', '沪深IF1807', '1', '0', '1', '200', '1', '1', '0', '0', '550', '1', '20', '20', '1000', '10', 'SFIF1807', 'IF1807', '1', '点', null, '2018-06-25 11:13:43', '2018-06-25 11:14:17', null, '600', '10000', '0', '9998', '7000', '1');
INSERT INTO `micro_product` VALUES ('8', 'SHFE2312', '螺纹钢(1810)', '0', '0', '7', '200', '1', '1', '0', '0', '550', '1', '1000', '20', '1000', '10', 'SHFE2312', 'SHFE2312', '1', '', '', '2018-07-11 18:48:48', '2018-07-11 18:48:52', null, '600', '10000', '0', '9996', '7000', '1');
INSERT INTO `micro_product` VALUES ('9', 'DCE8374', '焦炭(DCE8374)', '0', '0', '7', '200', '1', '1', '0', '0', '550', '1', '20', '20', '1000', '10', 'rb1810', 'DCE8374', '1', '', '', '2018-07-11 18:59:23', '2018-07-11 18:59:27', null, '600', '10000', '0', '9996', '7000', '1');
INSERT INTO `micro_product` VALUES ('10', 'SHME2184', '白银(1812)', '0', '0', '7', '200', '1', '1', '0', '0', '250', '1', '20', '20', '1000', '10', 'ag1812', 'SHME2184', '1', '', '', '2018-07-11 18:59:31', '2018-07-11 18:59:34', null, '600', '10000', '0', '9996', '7000', '1');
