/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1b8u6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1b8u6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1b8u6`;

/*Table structure for table `biaobaiqiang` */

DROP TABLE IF EXISTS `biaobaiqiang`;

CREATE TABLE `biaobaiqiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `ziwojieshao` longtext COMMENT '自我介绍',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='表白墙';

/*Data for the table `biaobaiqiang` */

insert  into `biaobaiqiang`(`id`,`addtime`,`xingming`,`yuanxi`,`banji`,`shouji`,`youxiang`,`ziwojieshao`,`fabushijian`,`zhaopian`) values (51,'2021-04-08 21:36:28','姓名1','院系1','班级1','13823888881','773890001@qq.com','自我介绍1','2021-04-08','http://localhost:8080/ssm1b8u6/upload/biaobaiqiang_zhaopian1.jpg'),(52,'2021-04-08 21:36:28','姓名2','院系2','班级2','13823888882','773890002@qq.com','自我介绍2','2021-04-08','http://localhost:8080/ssm1b8u6/upload/biaobaiqiang_zhaopian2.jpg'),(53,'2021-04-08 21:36:28','姓名3','院系3','班级3','13823888883','773890003@qq.com','自我介绍3','2021-04-08','http://localhost:8080/ssm1b8u6/upload/biaobaiqiang_zhaopian3.jpg'),(54,'2021-04-08 21:36:28','姓名4','院系4','班级4','13823888884','773890004@qq.com','自我介绍4','2021-04-08','http://localhost:8080/ssm1b8u6/upload/biaobaiqiang_zhaopian4.jpg'),(55,'2021-04-08 21:36:28','姓名5','院系5','班级5','13823888885','773890005@qq.com','自我介绍5','2021-04-08','http://localhost:8080/ssm1b8u6/upload/biaobaiqiang_zhaopian5.jpg'),(56,'2021-04-08 21:36:28','姓名6','院系6','班级6','13823888886','773890006@qq.com','自我介绍6','2021-04-08','http://localhost:8080/ssm1b8u6/upload/biaobaiqiang_zhaopian6.jpg');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1b8u6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm1b8u6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm1b8u6/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshenghuomokuai` */

DROP TABLE IF EXISTS `discussshenghuomokuai`;

CREATE TABLE `discussshenghuomokuai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='生活模块评论表';

/*Data for the table `discussshenghuomokuai` */

insert  into `discussshenghuomokuai`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-08 21:36:28',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-08 21:36:28',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-08 21:36:28',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-08 21:36:28',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-08 21:36:28',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-08 21:36:28',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='校友论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (61,'2021-04-08 21:36:28','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-04-08 21:36:28','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-04-08 21:36:28','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-04-08 21:36:28','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-04-08 21:36:28','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-04-08 21:36:28','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jianzhixinxi` */

DROP TABLE IF EXISTS `jianzhixinxi`;

CREATE TABLE `jianzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `gongsileixing` varchar(200) DEFAULT NULL COMMENT '公司类型',
  `chenglishijian` date DEFAULT NULL COMMENT '成立时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhaopinyaoqiu` longtext COMMENT '招聘要求',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhaopinzhuangtai` varchar(200) DEFAULT NULL COMMENT '招聘状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='兼职信息';

/*Data for the table `jianzhixinxi` */

insert  into `jianzhixinxi`(`id`,`addtime`,`gongsimingcheng`,`gongsileixing`,`chenglishijian`,`fengmian`,`zhaopinyaoqiu`,`zhaopinrenshu`,`fabushijian`,`zhaopinzhuangtai`,`sfsh`,`shhf`) values (41,'2021-04-08 21:36:28','公司名称1','公司类型1','2021-04-08','http://localhost:8080/ssm1b8u6/upload/jianzhixinxi_fengmian1.jpg','招聘要求1',1,'2021-04-08 21:36:28','未满','是',''),(42,'2021-04-08 21:36:28','公司名称2','公司类型2','2021-04-08','http://localhost:8080/ssm1b8u6/upload/jianzhixinxi_fengmian2.jpg','招聘要求2',2,'2021-04-08 21:36:28','未满','是',''),(43,'2021-04-08 21:36:28','公司名称3','公司类型3','2021-04-08','http://localhost:8080/ssm1b8u6/upload/jianzhixinxi_fengmian3.jpg','招聘要求3',3,'2021-04-08 21:36:28','未满','是',''),(44,'2021-04-08 21:36:28','公司名称4','公司类型4','2021-04-08','http://localhost:8080/ssm1b8u6/upload/jianzhixinxi_fengmian4.jpg','招聘要求4',4,'2021-04-08 21:36:28','未满','是',''),(45,'2021-04-08 21:36:28','公司名称5','公司类型5','2021-04-08','http://localhost:8080/ssm1b8u6/upload/jianzhixinxi_fengmian5.jpg','招聘要求5',5,'2021-04-08 21:36:28','未满','是',''),(46,'2021-04-08 21:36:28','公司名称6','公司类型6','2021-04-08','http://localhost:8080/ssm1b8u6/upload/jianzhixinxi_fengmian6.jpg','招聘要求6',6,'2021-04-08 21:36:28','未满','是','');

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='校园新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-08 21:36:28','标题1','简介1','http://localhost:8080/ssm1b8u6/upload/news_picture1.jpg','内容1'),(82,'2021-04-08 21:36:28','标题2','简介2','http://localhost:8080/ssm1b8u6/upload/news_picture2.jpg','内容2'),(83,'2021-04-08 21:36:28','标题3','简介3','http://localhost:8080/ssm1b8u6/upload/news_picture3.jpg','内容3'),(84,'2021-04-08 21:36:28','标题4','简介4','http://localhost:8080/ssm1b8u6/upload/news_picture4.jpg','内容4'),(85,'2021-04-08 21:36:28','标题5','简介5','http://localhost:8080/ssm1b8u6/upload/news_picture5.jpg','内容5'),(86,'2021-04-08 21:36:28','标题6','简介6','http://localhost:8080/ssm1b8u6/upload/news_picture6.jpg','内容6');

/*Table structure for table `shenghuomokuai` */

DROP TABLE IF EXISTS `shenghuomokuai`;

CREATE TABLE `shenghuomokuai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoyouming` varchar(200) DEFAULT NULL COMMENT '校友名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shenghuodongtai` longtext COMMENT '生活动态',
  `gongzuoxinde` longtext COMMENT '工作心得',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='生活模块';

/*Data for the table `shenghuomokuai` */

insert  into `shenghuomokuai`(`id`,`addtime`,`xiaoyouming`,`yuanxi`,`banji`,`fabushijian`,`fengmian`,`shenghuodongtai`,`gongzuoxinde`,`thumbsupnum`,`crazilynum`) values (31,'2021-04-08 21:36:28','校友名1','院系1','班级1','2021-04-08 21:36:28','http://localhost:8080/ssm1b8u6/upload/shenghuomokuai_fengmian1.jpg','生活动态1','工作心得1',1,1),(32,'2021-04-08 21:36:28','校友名2','院系2','班级2','2021-04-08 21:36:28','http://localhost:8080/ssm1b8u6/upload/shenghuomokuai_fengmian2.jpg','生活动态2','工作心得2',2,2),(33,'2021-04-08 21:36:28','校友名3','院系3','班级3','2021-04-08 21:36:28','http://localhost:8080/ssm1b8u6/upload/shenghuomokuai_fengmian3.jpg','生活动态3','工作心得3',3,3),(34,'2021-04-08 21:36:28','校友名4','院系4','班级4','2021-04-08 21:36:28','http://localhost:8080/ssm1b8u6/upload/shenghuomokuai_fengmian4.jpg','生活动态4','工作心得4',4,4),(35,'2021-04-08 21:36:28','校友名5','院系5','班级5','2021-04-08 21:36:28','http://localhost:8080/ssm1b8u6/upload/shenghuomokuai_fengmian5.jpg','生活动态5','工作心得5',5,5),(36,'2021-04-08 21:36:28','校友名6','院系6','班级6','2021-04-08 21:36:28','http://localhost:8080/ssm1b8u6/upload/shenghuomokuai_fengmian6.jpg','生活动态6','工作心得6',6,6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-08 21:36:28');

/*Table structure for table `xiaoyou` */

DROP TABLE IF EXISTS `xiaoyou`;

CREATE TABLE `xiaoyou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoyouming` varchar(200) DEFAULT NULL COMMENT '校友名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `biyenianfen` date DEFAULT NULL COMMENT '毕业年份',
  `gongzuogangwei` varchar(200) DEFAULT NULL COMMENT '工作岗位',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='校友';

/*Data for the table `xiaoyou` */

insert  into `xiaoyou`(`id`,`addtime`,`xiaoyouming`,`mima`,`yuanxi`,`banji`,`xingbie`,`shouji`,`youxiang`,`biyenianfen`,`gongzuogangwei`,`zhaopian`) values (21,'2021-04-08 21:36:28','校友1','123456','院系1','班级1','男','13823888881','773890001@qq.com','2021-04-08','工作岗位1','http://localhost:8080/ssm1b8u6/upload/xiaoyou_zhaopian1.jpg'),(22,'2021-04-08 21:36:28','校友2','123456','院系2','班级2','男','13823888882','773890002@qq.com','2021-04-08','工作岗位2','http://localhost:8080/ssm1b8u6/upload/xiaoyou_zhaopian2.jpg'),(23,'2021-04-08 21:36:28','校友3','123456','院系3','班级3','男','13823888883','773890003@qq.com','2021-04-08','工作岗位3','http://localhost:8080/ssm1b8u6/upload/xiaoyou_zhaopian3.jpg'),(24,'2021-04-08 21:36:28','校友4','123456','院系4','班级4','男','13823888884','773890004@qq.com','2021-04-08','工作岗位4','http://localhost:8080/ssm1b8u6/upload/xiaoyou_zhaopian4.jpg'),(25,'2021-04-08 21:36:28','校友5','123456','院系5','班级5','男','13823888885','773890005@qq.com','2021-04-08','工作岗位5','http://localhost:8080/ssm1b8u6/upload/xiaoyou_zhaopian5.jpg'),(26,'2021-04-08 21:36:28','校友6','123456','院系6','班级6','男','13823888886','773890006@qq.com','2021-04-08','工作岗位6','http://localhost:8080/ssm1b8u6/upload/xiaoyou_zhaopian6.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-08 21:36:28','用户1','123456','姓名1','男','院系1','班级1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm1b8u6/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-08 21:36:28','用户2','123456','姓名2','男','院系2','班级2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm1b8u6/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-08 21:36:28','用户3','123456','姓名3','男','院系3','班级3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm1b8u6/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-08 21:36:28','用户4','123456','姓名4','男','院系4','班级4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm1b8u6/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-08 21:36:28','用户5','123456','姓名5','男','院系5','班级5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm1b8u6/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-08 21:36:28','用户6','123456','姓名6','男','院系6','班级6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm1b8u6/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
