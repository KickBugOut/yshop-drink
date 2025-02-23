/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.19 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `system_dept` (
	`id` bigint (20),
	`name` varchar (90),
	`parent_id` bigint (20),
	`sort` int (11),
	`leader_user_id` bigint (20),
	`phone` varchar (33),
	`email` varchar (150),
	`status` tinyint (4),
	`creator` varchar (192),
	`create_time` datetime ,
	`updater` varchar (192),
	`update_time` datetime ,
	`deleted` bit (1),
	`tenant_id` bigint (20)
); 
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('100','yshop公司','0','0','1','15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','1','2023-09-05 10:22:19','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('101','深圳总公司','100','1','104','15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','1','2022-05-16 20:25:23','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('102','长沙分公司','100','2',NULL,'15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','','2021-12-15 05:01:40','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('103','研发部门','101','1','104','15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','103','2022-01-14 01:04:14','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('104','市场部门','101','2',NULL,'15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','','2021-12-15 05:01:38','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('105','测试部门','101','3',NULL,'15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','1','2022-05-16 20:25:15','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('106','财务部门','101','4','103','15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','103','2022-01-15 21:32:22','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('107','运维部门','101','5',NULL,'15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','','2021-12-15 05:01:33','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('108','市场部门','102','1',NULL,'15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','1','2022-02-16 08:35:45','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('109','财务部门','102','2',NULL,'15888888888','ry@qq.com','0','admin','2021-01-05 17:03:47','','2021-12-15 05:01:29','','1');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('110','新部门','0','1',NULL,NULL,NULL,'0','110','2022-02-23 20:46:30','110','2022-02-23 20:46:30','','121');
insert into `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) values('111','顶级部门','0','1',NULL,NULL,NULL,'0','113','2022-03-07 21:44:50','113','2022-03-07 21:44:50','','122');
