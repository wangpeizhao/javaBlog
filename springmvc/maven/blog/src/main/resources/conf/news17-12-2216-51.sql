# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: news
# Generation Time: 2017-12-22 08:51:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bettle_manager
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bettle_manager`;

CREATE TABLE `bettle_manager` (
  `mId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '经营者的Id',
  `store` varchar(50) NOT NULL COMMENT '商铺号',
  `idCard` varchar(50) NOT NULL COMMENT '身份证',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `grade` varchar(10) NOT NULL COMMENT '客户等级',
  `brand` varchar(255) NOT NULL COMMENT '品牌',
  `related` varchar(255) NOT NULL COMMENT '关联铺位',
  `big` varchar(255) NOT NULL COMMENT '大客户',
  `native` varchar(50) NOT NULL COMMENT '籍贯',
  `tel` varchar(50) NOT NULL COMMENT '手机',
  `tel2` varchar(30) NOT NULL COMMENT '固话',
  `fax` varchar(30) DEFAULT NULL COMMENT '传真',
  `account` varchar(50) NOT NULL COMMENT '银行帐号',
  `tenanPrice` varchar(10) NOT NULL COMMENT '租赁价格',
  `company` varchar(255) NOT NULL COMMENT '公司名称',
  `regTime` int(10) unsigned NOT NULL COMMENT '品牌注册开始时间',
  `regTimeEnd` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '品牌注册到期时间',
  `addr` varchar(255) NOT NULL COMMENT '公司地址',
  `company_addr` varchar(255) NOT NULL COMMENT '工厂地址',
  `businessLicense` varchar(255) NOT NULL COMMENT '营业执照',
  `managerTime` varchar(50) DEFAULT NULL COMMENT '经营服装的年限',
  `inBaimaTime` varchar(256) DEFAULT NULL COMMENT '入驻白马时间',
  `post` varchar(10) NOT NULL COMMENT '邮编',
  `insertTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '租赁时间',
  `deleteTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '到期时间',
  `contract` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合同时间',
  `iTime` int(10) unsigned NOT NULL DEFAULT '0',
  `uTime` int(10) unsigned NOT NULL DEFAULT '0',
  `isHidden` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '删除',
  `opIsHiddenUser` varchar(100) NOT NULL COMMENT '操作(隐藏/删除)经营者用户',
  `opIsHiddenTime` int(11) NOT NULL COMMENT '操作(隐藏/删除)经营者时间',
  `cId` int(11) NOT NULL DEFAULT '1' COMMENT '公司ID',
  `channel` varchar(20) NOT NULL COMMENT '通道',
  `store_tel` varchar(50) NOT NULL COMMENT '铺位电话',
  `ext_tel` varchar(50) NOT NULL COMMENT '分机号码',
  `ext_store` varchar(20) NOT NULL COMMENT '扩展铺位',
  `xz` varchar(20) DEFAULT NULL COMMENT '性质',
  `addtime` date NOT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '客户头像',
  `productPicture` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `storePhoto` varchar(255) DEFAULT NULL COMMENT '店面形象图',
  `relatebrand` varchar(255) DEFAULT NULL COMMENT '关联品牌',
  `brandhold` varchar(30) DEFAULT NULL COMMENT '持有情况',
  `regAddress` varchar(255) DEFAULT NULL COMMENT '品牌注册地址',
  `brandOwner` varchar(30) DEFAULT NULL COMMENT '品牌持有人',
  `recognition` varchar(255) DEFAULT NULL COMMENT '知名度情况',
  `brochure` varchar(255) DEFAULT NULL COMMENT '营销情况',
  `awards` varchar(255) DEFAULT NULL COMMENT '品牌得奖情况',
  `factoryHolding` varchar(255) DEFAULT NULL COMMENT '工厂持有情况',
  `factorySize` varchar(255) DEFAULT NULL COMMENT '工厂规模',
  `regCapital` varchar(255) DEFAULT NULL COMMENT '公司注册资本',
  `designTeam` varchar(255) DEFAULT NULL COMMENT '设计团队',
  `staffTeam` varchar(255) DEFAULT NULL COMMENT '公司管理团队',
  `enterprise` varchar(255) DEFAULT NULL COMMENT 'ERP建设',
  `storeImage` varchar(255) DEFAULT NULL COMMENT '店面形象',
  `brandFocus` varchar(255) DEFAULT NULL COMMENT '经营类别',
  `spring` varchar(500) DEFAULT NULL COMMENT '春夏批发价',
  `winter` varchar(500) DEFAULT NULL COMMENT '秋冬批发价',
  `productLine` varchar(20) DEFAULT NULL COMMENT '产品丰富性',
  `testReport` varchar(20) DEFAULT NULL COMMENT '产品检测情况',
  `style` varchar(255) DEFAULT NULL COMMENT '服装风格',
  `comsumerGroup` varchar(255) DEFAULT NULL COMMENT '消费群体',
  `yearlySales` varchar(20) DEFAULT NULL COMMENT '公司平均年销售额',
  `salesRichness` varchar(20) DEFAULT NULL COMMENT '销售模式多样性',
  `oprateMode` varchar(255) DEFAULT NULL COMMENT '目前经营形式',
  `resources` varchar(255) DEFAULT NULL COMMENT '服装来源',
  `salesCoverage` varchar(20) DEFAULT NULL COMMENT '主要销售范围',
  `overseaOrderPrecentage` varchar(20) DEFAULT NULL COMMENT '外单所占比例',
  `coverCountry` varchar(255) DEFAULT NULL COMMENT '主要销售国家',
  `coverArea` varchar(255) DEFAULT NULL COMMENT '国内主要销售区域(可多选)',
  `orderMode` varchar(255) DEFAULT NULL COMMENT '主要订货模式',
  `clubMember` varchar(20) DEFAULT NULL COMMENT '是否俱乐部会员',
  `eventInvlove` varchar(20) DEFAULT NULL COMMENT '参加白马活动情况',
  `experience` text COMMENT '以往经营经历',
  `awardsCertificate` varchar(255) DEFAULT NULL COMMENT '证书复印件',
  `pinyin` varchar(255) DEFAULT NULL COMMENT '品牌英文名',
  `regInfo` varchar(20) DEFAULT NULL,
  `manager_tel` varchar(50) DEFAULT NULL COMMENT '经营户手机',
  `brandHouse` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否设置品牌馆',
  `recommend` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否为推荐（用于白马官网）',
  `recommendSort` int(10) NOT NULL DEFAULT '0' COMMENT '推荐排序',
  `sid` int(11) unsigned NOT NULL DEFAULT '0',
  `brand_focus` int(11) NOT NULL DEFAULT '0' COMMENT '品牌关注数量',
  `brand_favorites` int(11) NOT NULL DEFAULT '0' COMMENT '品牌收藏数量',
  `brand_style` varchar(255) DEFAULT NULL COMMENT '品牌风格',
  `certification` varchar(20) DEFAULT NULL COMMENT '工厂直营、原创设计',
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table manager
# ------------------------------------------------------------

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `manager_id` int(10) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `manager_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;

INSERT INTO `manager` (`manager_id`, `account`, `password`, `manager_name`)
VALUES
	(1,'342823274@qq.com','123456','王培照');

/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table newsinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `newsinfo`;

CREATE TABLE `newsinfo` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL DEFAULT '',
  `news_summary` varchar(500) NOT NULL DEFAULT '',
  `news_content` text NOT NULL,
  `news_pic` varchar(255) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `author_id` int(10) NOT NULL,
  `topic_id` int(10) NOT NULL,
  PRIMARY KEY (`news_id`),
  KEY `topic_id` (`topic_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `newsinfo_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`),
  CONSTRAINT `newsinfo_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `manager` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `newsinfo` WRITE;
/*!40000 ALTER TABLE `newsinfo` DISABLE KEYS */;

INSERT INTO `newsinfo` (`news_id`, `news_title`, `news_summary`, `news_content`, `news_pic`, `createDate`, `author_id`, `topic_id`)
VALUES
	(1,'妙龄女郎无视严寒，身体冻瘫','妙龄女为露锁骨不穿秋衣 户外散步十分钟被冻瘫','楚天都市报讯（记者李晗 通讯员徐莎）近日气温骤降，记者从江城多家医院了解到，因肩颈部位疼痛、僵硬而就诊的患者明显增多。专家提醒，以往中老年常见的“肩颈综合症”，近年来年轻化趋势非常明显，其中半数以上是因为防寒保暖不到位导致。汉口的黄女士今年25岁，身材纤瘦，为了能露topic_idtopic_id。',NULL,'2016-01-27 00:00:00',1,6),
	(2,'工商总局审查微软','微软在操作系统中捆绑销售可信计算架构的行为涉嫌违反《反垄断法》，Win10操作系统应该剥离可信计算。','半年多来，我们跟微软进行过数次谈判。我们希望微软可以按照我国法律法规实现本土化，但谈判至今还没有结果。\"沈昌祥系此次微软网络安全审查的负责人，他笑称，\"每一次都斗争激烈，我们要坚守网络安全主权，而微软也不止是一家商业公司，它的决策也需要通过美国本土的审批,事实上，在欧盟对微软的反垄断调查中，\"捆绑销售\"是微软滥用市场支配地位取得垄断利益的主要,',NULL,'2016-01-27 00:00:00',1,5),
	(3,'经济新闻这是工商总局审查微软','微软在操作系统中捆绑销售可信计算架构的行为涉嫌违反《反垄断法》，Win10操作系统应该剥离可信计算。','半年多来，我们跟微软进行过数次谈判。我们希望微软可以按照我国法律法规实现本土化，但谈判至今还没有结果。\"沈昌祥系此次微软网络安全审查的负责人，他笑称，\"每一次都斗争激烈，我们要坚守网络安全主权，而微软也不止是一家商业公司，它的决策也需要通过美国本土的审批,事实上，在欧盟对微软的反垄断调查中，\"捆绑销售\"是微软滥用市场支配地位取得垄断利益的主要',NULL,'2016-01-27 00:00:00',1,4),
	(4,'娱乐新闻这是工商总局审查微软','微软在操作系统中捆绑销售可信计算架构的行为涉嫌违反《反垄断法》，Win10操作系统应该剥离可信计算。','半年多来，我们跟微软进行过数次谈判。我们希望微软可以按照我国法律法规实现本土化，但谈判至今还没有结果。\"沈昌祥系此次微软网络安全审查的负责人，他笑称，\"每一次都斗争激烈，我们要坚守网络安全主权，而微软也不止是一家商业公司，它的决策也需要通过美国本土的审批,事实上，在欧盟对微软的反垄断调查中，\"捆绑销售\"是微软滥用市场支配地位取得垄断利益的主要',NULL,'2016-01-27 00:00:00',1,3),
	(5,'军事新闻也有可能啊工商总局审查微软','微软在操作系统中捆绑销售可信计算架构的行为涉嫌违反《反垄断法》，Win10操作系统应该剥离可信计算。','半年多来，我们跟微软进行过数次谈判。我们希望微软可以按照我国法律法规实现本土化，但谈判至今还没有结果。\"沈昌祥系此次微软网络安全审查的负责人，他笑称，\"每一次都斗争激烈，我们要坚守网络安全主权，而微软也不止是一家商业公司，它的决策也需要通过美国本土的审批,事实上，在欧盟对微软的反垄断调查中，\"捆绑销售\"是微软滥用市场支配地位取得垄断利益的主要表',NULL,'2016-01-27 00:00:00',1,2),
	(6,'爆炸热点：妙龄女郎无视严寒，身体冻瘫','妙龄女为露锁骨不穿秋衣 户外散步十分钟被冻瘫','楚天都市报讯（记者李晗 通讯员徐莎）近日气温骤降，记者从江城多家医院了解到，因肩颈部位疼痛、僵硬而就诊的患者明显增多。专家提醒，以往中老年常见的“肩颈综合症”，近年来年轻化趋势非常明显，其中半数以上是因为防寒保暖不到位导致。汉口的黄女士今年25岁，身材纤瘦，为了能露出一对迷人的锁骨，即使进入冬季，依',NULL,'2016-01-27 00:00:00',1,1),
	(7,'热点新闻1','热点新闻1summary','热点新闻1content',NULL,'2016-02-05 00:00:00',1,1),
	(8,'热点新闻2','热点新闻2summary','热点新闻2content',NULL,'2016-02-06 00:00:00',1,1),
	(9,'热点新闻3','热点新闻3summary','热点新闻3content',NULL,'2016-02-07 00:00:00',1,1),
	(10,'热点新闻4','热点新闻4summary','热点新闻4content',NULL,'2016-02-08 00:00:00',1,1),
	(11,'热点新闻5','热点新闻5summary','热点新闻5content',NULL,'2016-02-09 00:00:00',1,1),
	(12,'热点新闻6','热点新闻6summary','热点新闻6content',NULL,'2016-02-10 00:00:00',1,1),
	(13,'热点新闻7','热点新闻7summary','热点新闻7content',NULL,'2016-02-11 00:00:00',1,1),
	(14,'热点新闻8','热点新闻8summary','热点新闻8content',NULL,'2016-02-12 00:00:00',1,1),
	(15,'热点新闻9','热点新闻9summary','热点新闻9content',NULL,'2016-02-13 00:00:00',1,1),
	(16,'热点新闻10','热点新闻10summary','热点新闻10content',NULL,'2016-02-14 00:00:00',1,2),
	(17,'军事新闻1','军事新闻1summary','军事新闻1content',NULL,'2016-02-05 00:00:00',1,2),
	(18,'军事新闻2','军事新闻2summary','军事新闻2content',NULL,'2016-02-06 00:00:00',1,2),
	(19,'军事新闻3','军事新闻3summary','军事新闻3content',NULL,'2016-02-07 00:00:00',1,2),
	(20,'军事新闻4','军事新闻4summary','军事新闻4content',NULL,'2016-02-08 00:00:00',1,2),
	(21,'军事新闻5','军事新闻5summary','军事新闻5content',NULL,'2016-02-09 00:00:00',1,2),
	(22,'军事新闻6','军事新闻6summary','军事新闻6content',NULL,'2016-02-10 00:00:00',1,2),
	(23,'军事新闻7','军事新闻7summary','军事新闻7content',NULL,'2016-02-11 00:00:00',1,2),
	(24,'军事新闻8','军事新闻8summary','军事新闻8content',NULL,'2016-02-12 00:00:00',1,2),
	(25,'军事新闻9','军事新闻9summary','军事新闻9content',NULL,'2016-02-13 00:00:00',1,2),
	(26,'军事新闻10','军事新闻10summary','军事新闻10content',NULL,'2016-02-14 00:00:00',1,2),
	(27,'娱乐新闻1','娱乐新闻1summary','娱乐新闻1content',NULL,'2016-02-05 00:00:00',1,3),
	(28,'娱乐新闻2','娱乐新闻2summary','娱乐新闻2content',NULL,'2016-02-06 00:00:00',1,3),
	(29,'娱乐新闻3','娱乐新闻3summary','娱乐新闻3content',NULL,'2016-02-07 00:00:00',1,3),
	(30,'娱乐新闻4','娱乐新闻4summary','娱乐新闻4content',NULL,'2016-02-08 00:00:00',1,3),
	(31,'娱乐新闻5','娱乐新闻5summary','娱乐新闻5content',NULL,'2016-02-09 00:00:00',1,3),
	(32,'娱乐新闻6','娱乐新闻6summary','娱乐新闻6content',NULL,'2016-02-10 00:00:00',1,3),
	(33,'娱乐新闻7','娱乐新闻7summary','娱乐新闻7content',NULL,'2016-02-11 00:00:00',1,3),
	(34,'娱乐新闻8','娱乐新闻8summary','娱乐新闻8content',NULL,'2016-02-12 00:00:00',1,3),
	(35,'娱乐新闻9','娱乐新闻9summary','娱乐新闻9content',NULL,'2016-02-13 00:00:00',1,3),
	(36,'娱乐新闻10','娱乐新闻10summary','娱乐新闻10content',NULL,'2016-02-14 00:00:00',1,3),
	(37,'经济新闻1','经济新闻1summary','经济新闻1content',NULL,'2016-02-01 00:00:00',1,4),
	(38,'经济新闻2','经济新闻2summary','经济新闻2content',NULL,'2016-02-02 00:00:00',1,4),
	(39,'经济新闻3','经济新闻3summary','经济新闻3content',NULL,'2016-02-03 00:00:00',1,4),
	(40,'经济新闻4','经济新闻4summary','经济新闻4content',NULL,'2016-02-04 00:00:00',1,4),
	(41,'经济新闻5','经济新闻5summary','经济新闻5content',NULL,'2016-02-05 00:00:00',1,4),
	(42,'经济新闻6','经济新闻6summary','经济新闻6content',NULL,'2016-02-06 00:00:00',1,4),
	(43,'经济新闻7','经济新闻7summary','经济新闻7content',NULL,'2016-02-07 00:00:00',1,4),
	(44,'经济新闻8','经济新闻8summary','经济新闻8content',NULL,'2016-02-08 00:00:00',1,4),
	(45,'经济新闻9','经济新闻9summary','经济新闻9content',NULL,'2016-02-09 00:00:00',1,4),
	(46,'经济新闻10','经济新闻10summary','经济新闻10content',NULL,'2016-02-10 00:00:00',1,4),
	(47,'科技新闻1','科技新闻1summary','科技新闻1content',NULL,'2016-02-01 00:00:00',1,5),
	(48,'科技新闻2','科技新闻2summary','科技新闻2content',NULL,'2016-02-02 00:00:00',1,5),
	(49,'科技新闻3','科技新闻3summary','科技新闻3content',NULL,'2016-02-03 00:00:00',1,5),
	(50,'科技新闻4','科技新闻4summary','科技新闻4content',NULL,'2016-02-04 00:00:00',1,5),
	(51,'科技新闻5','科技新闻5summary','科技新闻5content',NULL,'2016-02-05 00:00:00',1,5),
	(52,'科技新闻6','科技新闻6summary','科技新闻6content',NULL,'2016-02-06 00:00:00',1,5),
	(53,'科技新闻7','科技新闻7summary','科技新闻7content',NULL,'2016-02-07 00:00:00',1,5),
	(54,'科技新闻8','科技新闻8summary','科技新闻8content',NULL,'2016-02-08 00:00:00',1,5),
	(55,'科技新闻9','科技新闻9summary','科技新闻9content',NULL,'2016-02-09 00:00:00',1,5),
	(56,'科技新闻10','科技新闻10summary','科技新闻10content',NULL,'2016-02-10 00:00:00',1,5),
	(57,'社会新闻1','社会新闻1summary','社会新闻1content',NULL,'2016-02-01 00:00:00',1,6),
	(58,'社会新闻2','社会新闻2summary','社会新闻2content',NULL,'2016-02-02 00:00:00',1,6),
	(59,'社会新闻3','社会新闻3summary','社会新闻3content',NULL,'2016-02-03 00:00:00',1,6),
	(60,'社会新闻4','社会新闻4summary','社会新闻4content',NULL,'2016-02-04 00:00:00',1,6),
	(61,'社会新闻5','社会新闻5summary','社会新闻5content',NULL,'2016-02-05 00:00:00',1,6),
	(62,'社会新闻6','社会新闻6summary','社会新闻6content',NULL,'2016-02-06 00:00:00',1,6),
	(63,'社会新闻7','社会新闻7summary','社会新闻7content',NULL,'2016-02-07 00:00:00',1,6),
	(64,'社会新闻8','社会新闻8summary','社会新闻8content',NULL,'2016-02-08 00:00:00',1,6),
	(65,'社会新闻9','社会新闻9summary','社会新闻9content',NULL,'2016-02-09 00:00:00',1,6),
	(66,'社会新闻10','社会新闻10summary','社会新闻10content',NULL,'2016-02-10 00:00:00',1,6);

/*!40000 ALTER TABLE `newsinfo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `topic_id` int(10) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;

INSERT INTO `topic` (`topic_id`, `topic_name`)
VALUES
	(1,'热点新闻'),
	(2,'军事新闻'),
	(3,'娱乐新闻'),
	(4,'经济新闻'),
	(5,'科技新闻'),
	(6,'社会新闻');

/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(18) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(18) DEFAULT NULL,
  `sex` enum('女','男') NOT NULL DEFAULT '女',
  `birthday` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `tel` char(18) DEFAULT NULL,
  `qq` varchar(18) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `sfjh` decimal(1,0) DEFAULT NULL,
  `sfzx` float DEFAULT NULL,
  `sfhf` text,
  `sfpl` tinyint(1) NOT NULL DEFAULT '0',
  `sffx` smallint(1) NOT NULL DEFAULT '0',
  `iTime` date NOT NULL,
  `uTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
