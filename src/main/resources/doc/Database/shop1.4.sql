/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-12-23 09:47:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `product_id` int(11) NOT NULL COMMENT '商品的id(外键)',
  `discount` int(2) NOT NULL COMMENT '折扣',
  `full_money` int(5) NOT NULL COMMENT '满的金额',
  `reduce_money` int(5) NOT NULL COMMENT '减的金额',
  `delete_flag` int(1) NOT NULL DEFAULT '0' COMMENT '活动商品结束标记(1代表被删除,0代表未删除)',
  `start_time` datetime NOT NULL COMMENT '活动开始时间',
  `end_time` datetime NOT NULL COMMENT '活动结束时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='活动';

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='商品品牌';

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '颜色编号',
  `color_name` varchar(255) DEFAULT NULL COMMENT '商品颜色',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`color_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='商品品牌颜色';

-- ----------------------------
-- Table structure for model
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品型号id(主键)',
  `model_type` varchar(25) NOT NULL COMMENT '商品型号',
  `brand_id` int(11) NOT NULL COMMENT '品牌id(外键)',
  `delete_flag` int(1) NOT NULL DEFAULT '0' COMMENT '删除标记(0代表存在,1代表被删除)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='商品型号';

-- ----------------------------
-- Table structure for order_shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `order_shop_cart`;
CREATE TABLE `order_shop_cart` (
  `order_number` varchar(50) NOT NULL COMMENT '订单号',
  `shop_cart_id` int(11) NOT NULL COMMENT '购物物品的id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='订单和购物车';

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table` (
  `order_number` varchar(50) NOT NULL COMMENT '订单号',
  `person_id` int(11) NOT NULL COMMENT '用户id(外键)',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址的id(外键)',
  `evaluate` varchar(255) DEFAULT NULL COMMENT '评价',
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态(0未付款,1付款成功,-1取消订单)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`order_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='订单';

-- ----------------------------
-- Table structure for person_account
-- ----------------------------
DROP TABLE IF EXISTS `person_account`;
CREATE TABLE `person_account` (
  `person_id` int(11) NOT NULL COMMENT '编号(外键)',
  `telephone` varchar(11) NOT NULL COMMENT '账号手机号',
  `password` varchar(18) NOT NULL COMMENT '密码',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '身份类型(1代表用户0代表商家)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='用户账号密码';

-- ----------------------------
-- Table structure for person_address
-- ----------------------------
DROP TABLE IF EXISTS `person_address`;
CREATE TABLE `person_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `person_id` int(11) NOT NULL COMMENT '用户编号id',
  `name` varchar(255) NOT NULL COMMENT '真实姓名',
  `telephone` varchar(11) NOT NULL COMMENT '联系电话',
  `province` varchar(255) NOT NULL COMMENT '省份',
  `city` varchar(255) NOT NULL COMMENT '城市',
  `town` varchar(255) NOT NULL COMMENT '乡镇',
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `post_code` int(6) DEFAULT NULL COMMENT '邮编',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '默认收货地址(0代表默认,1代表不是默认)',
  `delete_flag` int(11) NOT NULL DEFAULT '0' COMMENT '删除标记(0代表存在,1代表被删除)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='收货地址';

-- ----------------------------
-- Table structure for person_collect
-- ----------------------------
DROP TABLE IF EXISTS `person_collect`;
CREATE TABLE `person_collect` (
  `person_id` int(11) NOT NULL COMMENT '外键用户id',
  `product_id` int(11) NOT NULL COMMENT '商品的id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏';

-- ----------------------------
-- Table structure for person_info
-- ----------------------------
DROP TABLE IF EXISTS `person_info`;
CREATE TABLE `person_info` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '外键关联用户表',
  `username` varchar(16) NOT NULL COMMENT '昵称',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(11) NOT NULL COMMENT '手机号',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`person_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息';

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品主键id',
  `product_name` varchar(255) NOT NULL COMMENT '商品名称',
  `model_id` int(255) NOT NULL COMMENT '型号编号(外键)',
  `product_image` varchar(255) NOT NULL COMMENT '商品图片',
  `product_info` varchar(255) NOT NULL COMMENT '商品简介',
  `product_status` int(1) NOT NULL COMMENT '商品状态(上,下架,1默认上架,0默认下架)',
  `product_sale_num` int(11) NOT NULL COMMENT '商品销售量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='商品详情';

-- ----------------------------
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `shop_cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物物品主键id',
  `product_id` int(11) NOT NULL COMMENT '商品id(外键)',
  `product_color` varchar(255) NOT NULL COMMENT '商品颜色',
  `product_standard` varchar(255) NOT NULL COMMENT '商品规格',
  `product_number` int(11) NOT NULL COMMENT '商品数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`shop_cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='购物车';

-- ----------------------------
-- Table structure for standard
-- ----------------------------
DROP TABLE IF EXISTS `standard`;
CREATE TABLE `standard` (
  `standard_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品规格id(主键)',
  `standard_name` varchar(255) NOT NULL COMMENT '商品规格名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`standard_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='商品规格';

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `stock_number` int(11) NOT NULL COMMENT '库存数量',
  `model_id` int(11) NOT NULL COMMENT '商品类型id(外键)',
  `color_id` int(11) NOT NULL COMMENT '规格颜色id(外键)',
  `store_id` int(11) NOT NULL COMMENT '存储规格id(外键)',
  `product_price` decimal(10,2) NOT NULL COMMENT '产品价格',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='库存';

-- ----------------------------
-- Table structure for store_standard
-- ----------------------------
DROP TABLE IF EXISTS `store_standard`;
CREATE TABLE `store_standard` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '存储规格id(主键)',
  `store_name` varchar(255) NOT NULL COMMENT '存储规格名称',
  `delete_flag` int(1) NOT NULL DEFAULT '0' COMMENT '删除标记(0代表存在,1代表被删除)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='存储规格';
