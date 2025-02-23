/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.19 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `test`;

/*Table structure for table `system_user_post` */

DROP TABLE IF EXISTS `system_user_post`;

CREATE TABLE `system_user_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '岗位ID',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户岗位表';

/*Data for the table `system_user_post` */

LOCK TABLES `system_user_post` WRITE;

insert  into `system_user_post`(`id`,`user_id`,`post_id`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values (112,1,1,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24','\0',1),(113,100,1,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24','\0',1),(114,114,3,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24','\0',1),(115,104,1,'1','2022-05-16 19:36:28','1','2022-05-16 19:36:28','\0',1),(116,117,2,'1','2022-07-09 17:40:26','1','2022-07-09 17:40:26','\0',1),(117,118,1,'1','2022-07-09 17:44:44','1','2022-07-09 17:44:44','\0',1);

UNLOCK TABLES;

/*Table structure for table `system_user_role` */

DROP TABLE IF EXISTS `system_user_role`;

CREATE TABLE `system_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户和角色关联表';

/*Data for the table `system_user_role` */

LOCK TABLES `system_user_role` WRITE;

insert  into `system_user_role`(`id`,`user_id`,`role_id`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values (1,1,1,'','2022-01-11 13:19:45','','2022-05-12 12:35:17','\0',1),(2,2,2,'','2022-01-11 13:19:45','','2022-05-12 12:35:13','\0',1),(4,100,101,'','2022-01-11 13:19:45','','2023-09-05 14:42:07','',1),(5,100,1,'','2022-01-11 13:19:45','','2023-09-05 14:42:07','',1),(6,100,2,'','2022-01-11 13:19:45','','2022-05-12 12:35:11','\0',1),(10,103,1,'1','2022-01-11 13:19:45','1','2022-01-11 13:19:45','\0',1),(11,107,106,'1','2022-02-20 22:59:33','1','2022-02-20 22:59:33','\0',118),(12,108,107,'1','2022-02-20 23:00:50','1','2022-02-20 23:00:50','\0',119),(13,109,108,'1','2022-02-20 23:11:50','1','2022-02-20 23:11:50','\0',120),(14,110,109,'1','2022-02-22 00:56:14','1','2022-02-22 00:56:14','\0',121),(15,111,110,'110','2022-02-23 13:14:38','110','2022-02-23 13:14:38','\0',121),(16,113,111,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58','\0',122),(17,114,101,'1','2022-03-19 21:51:13','1','2022-03-19 21:51:13','\0',1),(18,1,2,'1','2022-05-12 20:39:29','1','2023-05-17 15:32:04','',1),(19,116,113,'1','2022-05-17 10:07:10','1','2022-05-17 10:07:10','\0',124),(20,104,101,'1','2022-05-28 15:43:57','1','2022-05-28 15:43:57','\0',1),(22,115,2,'1','2022-07-21 22:08:30','1','2022-07-21 22:08:30','\0',1),(23,119,114,'1','2022-12-30 11:32:04','1','2022-12-30 11:32:04','\0',125),(24,120,115,'1','2022-12-30 11:33:42','1','2022-12-30 11:33:42','\0',126),(25,121,116,'1','2022-12-30 11:33:49','1','2022-12-30 11:33:49','\0',127),(26,122,118,'1','2022-12-30 11:47:53','1','2022-12-30 11:47:53','\0',129),(27,112,101,'1','2023-02-09 23:18:51','1','2023-02-09 23:18:51','\0',1),(28,123,136,'1','2023-03-05 21:23:35','1','2023-03-05 21:23:35','\0',147),(29,124,137,'1','2023-03-05 21:42:27','1','2023-03-05 21:42:27','\0',148),(30,125,138,'1','2023-03-05 21:59:03','1','2023-03-05 21:59:03','\0',149),(31,126,2,'1','2023-09-05 14:42:51','1','2023-09-05 14:42:51','\0',0);

UNLOCK TABLES;

/*Table structure for table `system_users` */

DROP TABLE IF EXISTS `system_users`;

CREATE TABLE `system_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `post_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '岗位编号数组',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `sex` tinyint(4) DEFAULT '0' COMMENT '用户性别',
  `avatar` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像地址',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `login_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_username` (`username`,`update_time`,`tenant_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';

/*Data for the table `system_users` */

LOCK TABLES `system_users` WRITE;

insert  into `system_users`(`id`,`username`,`password`,`nickname`,`remark`,`dept_id`,`post_ids`,`email`,`mobile`,`sex`,`avatar`,`status`,`login_ip`,`login_date`,`creator`,`create_time`,`updater`,`update_time`,`deleted`,`tenant_id`) values (1,'admin','$2a$10$mRMIYLDtRHlf6.9ipiqH1.Z.bh/R9dO9d5iHiGYPigi6r5KOoR2Wm','yshop','管理员',103,'[1]','yshop@yixaing.co','18000000000',1,'https://app2.yixiang.co/avatar/20200705181403641316.png',0,'0:0:0:0:0:0:0:1','2024-12-01 10:37:37','admin','2021-01-05 17:03:47',NULL,'2024-12-01 10:37:37','\0',1),(100,'yshop','$2a$10$11U48RhyJ5pSBYWSn12AD./ld671.ycSzJHbyrtpeoMeYiw31eo8a','yixiang','不要吓我',104,'[1]','yshop@iocoder.cn','15601691300',1,'',0,'127.0.0.1','2022-07-09 23:03:33','','2021-01-07 09:07:17','1','2023-08-06 10:11:13','\0',1),(126,'yixiang001','$2a$04$JTIqo.OqDIy/QnGD8DyalOuD2S10Rdz20abG1Vw7uaU5xDjBqEWky','意向餐饮管理员','',110,'[]','','18888888888',0,'',0,'0:0:0:0:0:0:0:1','2023-10-07 11:05:53','1','2023-09-05 10:23:17',NULL,'2023-10-07 11:05:53','\0',0);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
