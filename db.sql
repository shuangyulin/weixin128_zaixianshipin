/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7nmw0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7nmw0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7nmw0`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7nmw0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm7nmw0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7nmw0/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dakaxinxi` */

DROP TABLE IF EXISTS `dakaxinxi`;

CREATE TABLE `dakaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `dakaneirong` longtext COMMENT '打卡内容',
  `guankanfenzhong` int(11) NOT NULL COMMENT '观看分钟',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='打卡信息';

/*Data for the table `dakaxinxi` */

insert  into `dakaxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`gonghao`,`jiaoshixingming`,`dakashijian`,`dakaneirong`,`guankanfenzhong`,`xuehao`,`xueshengxingming`,`userid`) values (61,'2021-04-17 11:46:37','课程名称1','课程类型1','http://localhost:8080/ssm7nmw0/upload/dakaxinxi_tupian1.jpg','工号1','教师姓名1','2021-04-17 11:46:37','打卡内容1',1,'学号1','学生姓名1',1),(62,'2021-04-17 11:46:37','课程名称2','课程类型2','http://localhost:8080/ssm7nmw0/upload/dakaxinxi_tupian2.jpg','工号2','教师姓名2','2021-04-17 11:46:37','打卡内容2',2,'学号2','学生姓名2',2),(63,'2021-04-17 11:46:37','课程名称3','课程类型3','http://localhost:8080/ssm7nmw0/upload/dakaxinxi_tupian3.jpg','工号3','教师姓名3','2021-04-17 11:46:37','打卡内容3',3,'学号3','学生姓名3',3),(64,'2021-04-17 11:46:37','课程名称4','课程类型4','http://localhost:8080/ssm7nmw0/upload/dakaxinxi_tupian4.jpg','工号4','教师姓名4','2021-04-17 11:46:37','打卡内容4',4,'学号4','学生姓名4',4),(65,'2021-04-17 11:46:37','课程名称5','课程类型5','http://localhost:8080/ssm7nmw0/upload/dakaxinxi_tupian5.jpg','工号5','教师姓名5','2021-04-17 11:46:37','打卡内容5',5,'学号5','学生姓名5',5),(66,'2021-04-17 11:46:37','课程名称6','课程类型6','http://localhost:8080/ssm7nmw0/upload/dakaxinxi_tupian6.jpg','工号6','教师姓名6','2021-04-17 11:46:37','打卡内容6',6,'学号6','学生姓名6',6);

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-17 11:46:37',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-17 11:46:37',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-17 11:46:37',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-17 11:46:37',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-17 11:46:37',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-17 11:46:37',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`zhicheng`,`dianhua`,`youxiang`) values (21,'2021-04-17 11:46:37','001','001','教师姓名1','男','http://localhost:8080/ssm7nmw0/upload/jiaoshi_touxiang1.jpg','职称1','13823888881','773890001@qq.com'),(22,'2021-04-17 11:46:37','教师2','123456','教师姓名2','男','http://localhost:8080/ssm7nmw0/upload/jiaoshi_touxiang2.jpg','职称2','13823888882','773890002@qq.com'),(23,'2021-04-17 11:46:37','教师3','123456','教师姓名3','男','http://localhost:8080/ssm7nmw0/upload/jiaoshi_touxiang3.jpg','职称3','13823888883','773890003@qq.com'),(24,'2021-04-17 11:46:37','教师4','123456','教师姓名4','男','http://localhost:8080/ssm7nmw0/upload/jiaoshi_touxiang4.jpg','职称4','13823888884','773890004@qq.com'),(25,'2021-04-17 11:46:37','教师5','123456','教师姓名5','男','http://localhost:8080/ssm7nmw0/upload/jiaoshi_touxiang5.jpg','职称5','13823888885','773890005@qq.com'),(26,'2021-04-17 11:46:37','教师6','123456','教师姓名6','男','http://localhost:8080/ssm7nmw0/upload/jiaoshi_touxiang6.jpg','职称6','13823888886','773890006@qq.com');

/*Table structure for table `kechenggoumai` */

DROP TABLE IF EXISTS `kechenggoumai`;

CREATE TABLE `kechenggoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `keshijiage` int(11) NOT NULL COMMENT '课时价格',
  `keshi` int(11) NOT NULL COMMENT '课时',
  `zongjiage` varchar(200) NOT NULL COMMENT '总价格',
  `goumairiqi` datetime DEFAULT NULL COMMENT '购买日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程购买';

/*Data for the table `kechenggoumai` */

insert  into `kechenggoumai`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`tupian`,`gonghao`,`jiaoshixingming`,`keshijiage`,`keshi`,`zongjiage`,`goumairiqi`,`xuehao`,`xueshengxingming`,`ispay`,`userid`) values (51,'2021-04-17 11:46:37','订单编号1','课程名称1','课程类型1','http://localhost:8080/ssm7nmw0/upload/kechenggoumai_tupian1.jpg','工号1','教师姓名1',1,1,'总价格1','2021-04-17 11:46:37','学号1','学生姓名1','未支付',1),(52,'2021-04-17 11:46:37','订单编号2','课程名称2','课程类型2','http://localhost:8080/ssm7nmw0/upload/kechenggoumai_tupian2.jpg','工号2','教师姓名2',2,2,'总价格2','2021-04-17 11:46:37','学号2','学生姓名2','未支付',2),(53,'2021-04-17 11:46:37','订单编号3','课程名称3','课程类型3','http://localhost:8080/ssm7nmw0/upload/kechenggoumai_tupian3.jpg','工号3','教师姓名3',3,3,'总价格3','2021-04-17 11:46:37','学号3','学生姓名3','未支付',3),(54,'2021-04-17 11:46:37','订单编号4','课程名称4','课程类型4','http://localhost:8080/ssm7nmw0/upload/kechenggoumai_tupian4.jpg','工号4','教师姓名4',4,4,'总价格4','2021-04-17 11:46:37','学号4','学生姓名4','未支付',4),(55,'2021-04-17 11:46:37','订单编号5','课程名称5','课程类型5','http://localhost:8080/ssm7nmw0/upload/kechenggoumai_tupian5.jpg','工号5','教师姓名5',5,5,'总价格5','2021-04-17 11:46:37','学号5','学生姓名5','未支付',5),(56,'2021-04-17 11:46:37','订单编号6','课程名称6','课程类型6','http://localhost:8080/ssm7nmw0/upload/kechenggoumai_tupian6.jpg','工号6','教师姓名6',6,6,'总价格6','2021-04-17 11:46:37','学号6','学生姓名6','未支付',6);

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (31,'2021-04-17 11:46:37','课程类型1'),(32,'2021-04-17 11:46:37','课程类型2'),(33,'2021-04-17 11:46:37','课程类型3'),(34,'2021-04-17 11:46:37','课程类型4'),(35,'2021-04-17 11:46:37','课程类型5'),(36,'2021-04-17 11:46:37','课程类型6');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `keshijiage` int(11) NOT NULL COMMENT '课时价格',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhangjiemulu` longtext COMMENT '章节目录',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`keshijiage`,`kechengshipin`,`fabushijian`,`gonghao`,`jiaoshixingming`,`zhangjiemulu`,`kechengxiangqing`,`clicktime`,`clicknum`) values (41,'2021-04-17 11:46:37','课程名称1','课程类型1','http://localhost:8080/ssm7nmw0/upload/kechengxinxi_tupian1.jpg',1,'','2021-04-17 11:46:37','工号1','教师姓名1','章节目录1','课程详情1','2021-04-17 11:46:37',1),(42,'2021-04-17 11:46:37','课程名称2','课程类型2','http://localhost:8080/ssm7nmw0/upload/kechengxinxi_tupian2.jpg',2,'','2021-04-17 11:46:37','工号2','教师姓名2','章节目录2','课程详情2','2021-04-17 11:46:37',2),(43,'2021-04-17 11:46:37','课程名称3','课程类型3','http://localhost:8080/ssm7nmw0/upload/kechengxinxi_tupian3.jpg',3,'','2021-04-17 11:46:37','工号3','教师姓名3','章节目录3','课程详情3','2021-04-17 11:46:37',3),(44,'2021-04-17 11:46:37','课程名称4','课程类型4','http://localhost:8080/ssm7nmw0/upload/kechengxinxi_tupian4.jpg',4,'','2021-04-17 11:46:37','工号4','教师姓名4','章节目录4','课程详情4','2021-04-17 11:46:37',4),(45,'2021-04-17 11:46:37','课程名称5','课程类型5','http://localhost:8080/ssm7nmw0/upload/kechengxinxi_tupian5.jpg',5,'','2021-04-17 11:46:37','工号5','教师姓名5','章节目录5','课程详情5','2021-04-17 11:46:37',5),(46,'2021-04-17 11:46:37','课程名称6','课程类型6','http://localhost:8080/ssm7nmw0/upload/kechengxinxi_tupian6.jpg',6,'','2021-04-17 11:46:37','工号6','教师姓名6','章节目录6','课程详情6','2021-04-17 11:46:37',6);

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-17 11:46:37','标题1','简介1','http://localhost:8080/ssm7nmw0/upload/news_picture1.jpg','内容1'),(92,'2021-04-17 11:46:37','标题2','简介2','http://localhost:8080/ssm7nmw0/upload/news_picture2.jpg','内容2'),(93,'2021-04-17 11:46:37','标题3','简介3','http://localhost:8080/ssm7nmw0/upload/news_picture3.jpg','内容3'),(94,'2021-04-17 11:46:37','标题4','简介4','http://localhost:8080/ssm7nmw0/upload/news_picture4.jpg','内容4'),(95,'2021-04-17 11:46:37','标题5','简介5','http://localhost:8080/ssm7nmw0/upload/news_picture5.jpg','内容5'),(96,'2021-04-17 11:46:37','标题6','简介6','http://localhost:8080/ssm7nmw0/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','a8dhd5m2s4q7rgi94ixyox7hn93jnebw','2021-04-17 11:50:01','2021-04-17 12:50:01');

/*Table structure for table `tongzhixinxi` */

DROP TABLE IF EXISTS `tongzhixinxi`;

CREATE TABLE `tongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `tongzhineirong` longtext COMMENT '通知内容',
  `tongzhiriqi` datetime DEFAULT NULL COMMENT '通知日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='通知信息';

/*Data for the table `tongzhixinxi` */

insert  into `tongzhixinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`tupian`,`xuehao`,`xueshengxingming`,`tongzhineirong`,`tongzhiriqi`,`gonghao`,`jiaoshixingming`,`userid`) values (71,'2021-04-17 11:46:37','订单编号1','课程名称1','http://localhost:8080/ssm7nmw0/upload/tongzhixinxi_tupian1.jpg','学号1','学生姓名1','通知内容1','2021-04-17 11:46:37','工号1','教师姓名1',1),(72,'2021-04-17 11:46:37','订单编号2','课程名称2','http://localhost:8080/ssm7nmw0/upload/tongzhixinxi_tupian2.jpg','学号2','学生姓名2','通知内容2','2021-04-17 11:46:37','工号2','教师姓名2',2),(73,'2021-04-17 11:46:37','订单编号3','课程名称3','http://localhost:8080/ssm7nmw0/upload/tongzhixinxi_tupian3.jpg','学号3','学生姓名3','通知内容3','2021-04-17 11:46:37','工号3','教师姓名3',3),(74,'2021-04-17 11:46:37','订单编号4','课程名称4','http://localhost:8080/ssm7nmw0/upload/tongzhixinxi_tupian4.jpg','学号4','学生姓名4','通知内容4','2021-04-17 11:46:37','工号4','教师姓名4',4),(75,'2021-04-17 11:46:37','订单编号5','课程名称5','http://localhost:8080/ssm7nmw0/upload/tongzhixinxi_tupian5.jpg','学号5','学生姓名5','通知内容5','2021-04-17 11:46:37','工号5','教师姓名5',5),(76,'2021-04-17 11:46:37','订单编号6','课程名称6','http://localhost:8080/ssm7nmw0/upload/tongzhixinxi_tupian6.jpg','学号6','学生姓名6','通知内容6','2021-04-17 11:46:37','工号6','教师姓名6',6);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 11:46:37');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`zhuanye`,`shouji`) values (11,'2021-04-17 11:46:37','001','001','学生姓名1','男','http://localhost:8080/ssm7nmw0/upload/xuesheng_touxiang1.jpg','学院1','专业1','13823888881'),(12,'2021-04-17 11:46:37','学生2','123456','学生姓名2','男','http://localhost:8080/ssm7nmw0/upload/xuesheng_touxiang2.jpg','学院2','专业2','13823888882'),(13,'2021-04-17 11:46:37','学生3','123456','学生姓名3','男','http://localhost:8080/ssm7nmw0/upload/xuesheng_touxiang3.jpg','学院3','专业3','13823888883'),(14,'2021-04-17 11:46:37','学生4','123456','学生姓名4','男','http://localhost:8080/ssm7nmw0/upload/xuesheng_touxiang4.jpg','学院4','专业4','13823888884'),(15,'2021-04-17 11:46:37','学生5','123456','学生姓名5','男','http://localhost:8080/ssm7nmw0/upload/xuesheng_touxiang5.jpg','学院5','专业5','13823888885'),(16,'2021-04-17 11:46:37','学生6','123456','学生姓名6','男','http://localhost:8080/ssm7nmw0/upload/xuesheng_touxiang6.jpg','学院6','专业6','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
