/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm3s0eb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm3s0eb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm3s0eb`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618223144040 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-12 18:10:17',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-12 18:10:17',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-12 18:10:17',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-12 18:10:17',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-12 18:10:17',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-12 18:10:17',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618223144039,'2021-04-12 18:25:43',1618223004867,'广东省梅州市梅江区江南街道白马四巷作新小学','1','12345678900','是');

/*Table structure for table `anquankechengfenlei` */

DROP TABLE IF EXISTS `anquankechengfenlei`;

CREATE TABLE `anquankechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618222584018 DEFAULT CHARSET=utf8 COMMENT='安全课程分类';

/*Data for the table `anquankechengfenlei` */

insert  into `anquankechengfenlei`(`id`,`addtime`,`leibie`) values (31,'2021-04-12 18:10:16','类别1'),(32,'2021-04-12 18:10:16','类别2'),(33,'2021-04-12 18:10:16','类别3'),(34,'2021-04-12 18:10:16','类别4'),(35,'2021-04-12 18:10:16','类别5'),(36,'2021-04-12 18:10:16','类别6'),(1618222584017,'2021-04-12 18:16:23','安全知识');

/*Table structure for table `anquankechengxuexi` */

DROP TABLE IF EXISTS `anquankechengxuexi`;

CREATE TABLE `anquankechengxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `ziyuanlaiyuan` varchar(200) DEFAULT NULL COMMENT '资源来源',
  `shangjiashijian` date DEFAULT NULL COMMENT '上架时间',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618222646380 DEFAULT CHARSET=utf8 COMMENT='安全课程学习';

/*Data for the table `anquankechengxuexi` */

insert  into `anquankechengxuexi`(`id`,`addtime`,`kechengmingcheng`,`leibie`,`ziyuanlaiyuan`,`shangjiashijian`,`shipin`,`fengmian`,`kechengjieshao`,`thumbsupnum`,`crazilynum`,`clicktime`) values (21,'2021-04-12 18:10:16','课程名称1','类别1','资源来源1','2021-04-12','','http://localhost:8080/ssm3s0eb/upload/anquankechengxuexi_fengmian1.jpg','课程介绍1',1,1,'2021-04-12 18:10:16'),(22,'2021-04-12 18:10:16','课程名称2','类别2','资源来源2','2021-04-12','','http://localhost:8080/ssm3s0eb/upload/anquankechengxuexi_fengmian2.jpg','课程介绍2',2,2,'2021-04-12 18:10:16'),(23,'2021-04-12 18:10:16','课程名称3','类别3','资源来源3','2021-04-12','','http://localhost:8080/ssm3s0eb/upload/anquankechengxuexi_fengmian3.jpg','课程介绍3',3,3,'2021-04-12 18:10:16'),(24,'2021-04-12 18:10:16','课程名称4','类别4','资源来源4','2021-04-12','','http://localhost:8080/ssm3s0eb/upload/anquankechengxuexi_fengmian4.jpg','课程介绍4',4,4,'2021-04-12 18:10:16'),(25,'2021-04-12 18:10:16','课程名称5','类别5','资源来源5','2021-04-12','','http://localhost:8080/ssm3s0eb/upload/anquankechengxuexi_fengmian5.jpg','课程介绍5',5,5,'2021-04-12 18:10:16'),(26,'2021-04-12 18:10:16','课程名称6','类别6','资源来源6','2021-04-12','','http://localhost:8080/ssm3s0eb/upload/anquankechengxuexi_fengmian6.jpg','课程介绍6',6,6,'2021-04-12 18:10:16'),(1618222646379,'2021-04-12 18:17:26','安全课程测试','安全知识','XX单位','2021-04-13','http://localhost:8080/ssm3s0eb/upload/1618222639518.mp4','http://localhost:8080/ssm3s0eb/upload/1618222623319.jpg','<p>课程测试</p>',1,1,'2021-04-12 18:24:19');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'jifenshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm3s0eb/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm3s0eb/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm3s0eb/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussanquankechengxuexi` */

DROP TABLE IF EXISTS `discussanquankechengxuexi`;

CREATE TABLE `discussanquankechengxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618223057183 DEFAULT CHARSET=utf8 COMMENT='安全课程学习评论表';

/*Data for the table `discussanquankechengxuexi` */

insert  into `discussanquankechengxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-12 18:10:17',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-12 18:10:17',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-12 18:10:17',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-12 18:10:17',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-12 18:10:17',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-12 18:10:17',6,6,'用户名6','评论内容6','回复内容6'),(1618223057182,'2021-04-12 18:24:16',1618222646379,1618223004867,'1','评论测试',NULL);

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618222905574 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1618222778702,'2021-04-12 18:19:38','安全知识测验',120,1),(1618222905573,'2021-04-12 18:21:45','有奖问答',60,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618222952612 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1618222845604,'2021-04-12 18:20:45',1618222778702,'安全知识测验','XXX题目','[{\"text\":\"A.A\",\"code\":\"A\"},{\"text\":\"B.B\",\"code\":\"B\"},{\"text\":\"C.答案C\",\"code\":\"C\"},{\"text\":\"D.答案D\",\"code\":\"D\"}]',3,'D','测试',0,1),(1618222868141,'2021-04-12 18:21:07',1618222778702,'安全知识测验','XX题目','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',4,'A','XXX',2,2),(1618222952611,'2021-04-12 18:22:32',1618222905573,'有奖问答','XX题目','[{\"text\":\"A.答案A\",\"code\":\"A\"},{\"text\":\"B.答案B\",\"code\":\"B\"},{\"text\":\"C.答案C\",\"code\":\"C\"}]',6,'A,B,C','测试',1,1);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618223095557 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1618223092066,'2021-04-12 18:24:51',1618223004867,NULL,1618222778702,'安全知识测验',1618222845604,'XXX题目','[{\"text\":\"A.A\",\"code\":\"A\"},{\"text\":\"B.B\",\"code\":\"B\"},{\"text\":\"C.答案C\",\"code\":\"C\"},{\"text\":\"D.答案D\",\"code\":\"D\"}]',3,'D','测试',0,'A'),(1618223095556,'2021-04-12 18:24:55',1618223004867,NULL,1618222778702,'安全知识测验',1618222868141,'XX题目','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',4,'A','XXX',4,'A');

/*Table structure for table `jifenshangcheng` */

DROP TABLE IF EXISTS `jifenshangcheng`;

CREATE TABLE `jifenshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `shengchandizhi` varchar(200) DEFAULT NULL COMMENT '生产地址',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618222737477 DEFAULT CHARSET=utf8 COMMENT='积分商城';

/*Data for the table `jifenshangcheng` */

insert  into `jifenshangcheng`(`id`,`addtime`,`shangpinmingcheng`,`leibie`,`pinpai`,`shengchanchangjia`,`shengchandizhi`,`tupian`,`shangpinjieshao`,`jifen`,`price`,`onelimittimes`,`alllimittimes`) values (41,'2021-04-12 18:10:16','商品名称1','类别1','品牌1','生产厂家1','生产地址1','http://localhost:8080/ssm3s0eb/upload/jifenshangcheng_tupian1.jpg','商品介绍1',10000,99.9,1,99),(42,'2021-04-12 18:10:16','商品名称2','类别2','品牌2','生产厂家2','生产地址2','http://localhost:8080/ssm3s0eb/upload/jifenshangcheng_tupian2.jpg','商品介绍2',10000,99.9,2,99),(43,'2021-04-12 18:10:16','商品名称3','类别3','品牌3','生产厂家3','生产地址3','http://localhost:8080/ssm3s0eb/upload/jifenshangcheng_tupian3.jpg','商品介绍3',10000,99.9,3,99),(44,'2021-04-12 18:10:16','商品名称4','类别4','品牌4','生产厂家4','生产地址4','http://localhost:8080/ssm3s0eb/upload/jifenshangcheng_tupian4.jpg','商品介绍4',10000,99.9,4,99),(45,'2021-04-12 18:10:16','商品名称5','类别5','品牌5','生产厂家5','生产地址5','http://localhost:8080/ssm3s0eb/upload/jifenshangcheng_tupian5.jpg','商品介绍5',10000,99.9,5,99),(46,'2021-04-12 18:10:16','商品名称6','类别6','品牌6','生产厂家6','生产地址6','http://localhost:8080/ssm3s0eb/upload/jifenshangcheng_tupian6.jpg','商品介绍6',10000,99.9,6,99),(1618222737476,'2021-04-12 18:18:56','商品测试','日常用品','XX品牌','XX厂家','XX地点','http://localhost:8080/ssm3s0eb/upload/1618222711338.jpg','<p>商品测试</p>',5000,50,99999999,99);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618222971048 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-04-12 18:10:17','标题1','简介1','http://localhost:8080/ssm3s0eb/upload/news_picture1.jpg','内容1'),(132,'2021-04-12 18:10:17','标题2','简介2','http://localhost:8080/ssm3s0eb/upload/news_picture2.jpg','内容2'),(133,'2021-04-12 18:10:17','标题3','简介3','http://localhost:8080/ssm3s0eb/upload/news_picture3.jpg','内容3'),(134,'2021-04-12 18:10:17','标题4','简介4','http://localhost:8080/ssm3s0eb/upload/news_picture4.jpg','内容4'),(135,'2021-04-12 18:10:17','标题5','简介5','http://localhost:8080/ssm3s0eb/upload/news_picture5.jpg','内容5'),(136,'2021-04-12 18:10:17','标题6','简介6','http://localhost:8080/ssm3s0eb/upload/news_picture6.jpg','内容6'),(1618222971047,'2021-04-12 18:22:50','新闻测试','测试','http://localhost:8080/ssm3s0eb/upload/1618222967735.jpg','<p>测试</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'jifenshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618222670303 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`leibie`) values (51,'2021-04-12 18:10:16','类别1'),(52,'2021-04-12 18:10:16','类别2'),(53,'2021-04-12 18:10:16','类别3'),(54,'2021-04-12 18:10:16','类别4'),(55,'2021-04-12 18:10:16','类别5'),(56,'2021-04-12 18:10:17','类别6'),(1618222670302,'2021-04-12 18:17:49','日常用品');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618223035915 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618223035914,'2021-04-12 18:23:55',1618223004867,1618222646379,'anquankechengxuexi','安全课程测试','http://localhost:8080/ssm3s0eb/upload/1618222623319.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','c2rhvcke1sagoemcxktk4psfcfgwdpf6','2021-04-12 18:15:20','2021-04-12 19:15:20'),(2,1618223004867,'1','yonghu','用户','e93mltercwv6rs3829vvwri57ysb65w4','2021-04-12 18:23:30','2021-04-12 19:23:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-12 18:10:17');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618223004868 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`jifen`,`money`) values (11,'2021-04-12 18:10:16','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm3s0eb/upload/yonghu_zhaopian1.jpg',10000,100),(12,'2021-04-12 18:10:16','用户2','123456','姓名2','女','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm3s0eb/upload/yonghu_zhaopian2.jpg',10000,100),(14,'2021-04-12 18:10:16','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm3s0eb/upload/yonghu_zhaopian4.jpg',10000,100),(15,'2021-04-12 18:10:16','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm3s0eb/upload/yonghu_zhaopian5.jpg',10000,100),(16,'2021-04-12 18:10:16','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm3s0eb/upload/yonghu_zhaopian6.jpg',10000,100),(1618223004867,'2021-04-12 18:23:24','1','1','1','男','12345678900','','440582199905125833','http://localhost:8080/ssm3s0eb/upload/1618223119100.jpg',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
