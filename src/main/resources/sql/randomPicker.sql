/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.31 : Database - randompicker
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`randompicker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `randompicker`;

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `event_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `events` */

insert  into `events`(`event_id`,`start_date`,`end_date`) values (1,'2022-01-01','2022-01-03'),(2,'2022-01-02','2022-01-02'),(3,'2022-01-05','2022-01-07'),(1,'2022-01-01','2022-01-02');

/*Table structure for table `server_onoff` */

DROP TABLE IF EXISTS `server_onoff`;

CREATE TABLE `server_onoff` (
  `id` varchar(50) NOT NULL,
  `soleid` varchar(50) NOT NULL DEFAULT '',
  `ondate` varchar(10) DEFAULT '' COMMENT '上线日期',
  `ontime` datetime DEFAULT NULL COMMENT '上线时间',
  `offdate` varchar(10) DEFAULT '' COMMENT '离线日期',
  `offtime` datetime DEFAULT NULL COMMENT '离线时间',
  `duration` int unsigned DEFAULT '0' COMMENT '在线时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='设备在线离线';

/*Data for the table `server_onoff` */

insert  into `server_onoff`(`id`,`soleid`,`ondate`,`ontime`,`offdate`,`offtime`,`duration`) values ('023b0bad-9842-43fd-a7b5-5b05a035c6ec','b82f1a500e7211efbb329cc2c42d8061','2024-05-10','2024-05-10 14:14:03','2024-05-10','2024-05-10 14:16:03',0),('2b741df1-4824-4892-bb9c-ef00dc1cb929','b82f1a500e7211efbb329cc2c42d8061','2024-05-10','2024-05-10 14:22:22','2024-05-10','2024-05-11 14:28:43',381),('34956c21-f7fd-4925-b63e-c953427feb6a','b82f1a500e7211efbb329cc2c42d8061','2024-05-10','2024-05-10 06:54:26','2024-05-10','2024-05-10 10:12:56',62310),('40016fde-8776-45b0-83e3-80cd12f3c9ac','559c3910effd11eeb9af00e93a8e1d2b','2024-05-13','2024-05-13 15:02:49','2024-05-13','2024-05-13 15:05:54',185),('69b27a41-f57a-465b-856b-b4f2f1a5a219','559c3910effd11eeb9af00e93a8e1d2b','2024-05-14','2024-05-14 07:09:24','2024-05-14','2024-05-14 16:13:36',47052),('7b368b92-6b54-4d80-b915-339fae6b9632','559c3910effd11eeb9af00e93a8e1d2b','2024-05-15','2024-05-15 05:01:05',NULL,NULL,0),('9e153048-cf52-40da-85c5-feedd81916e2','b82f1a500e7211efbb329cc2c42d8061','2024-05-16','2024-05-16 14:28:57','2024-05-16','2024-05-16 14:45:17',980),('a64725f6-35b1-4c61-9a1d-448e16af87f2','b82f1a500e7211efbb329cc2c42d8061','2024-05-17','2024-05-17 16:54:11','2024-05-17','2024-05-17 16:54:15',4),('ac56eeef-1eb5-4e5d-844f-fc48129b546f','b82f1a500e7211efbb329cc2c42d8061','2024-05-18','2024-05-18 13:53:18','2024-05-18','2024-05-18 13:53:23',5),('c24212d9-123c-4587-9004-be3141e1ab0b','559c3910effd11eeb9af00e93a8e1d2b','2024-05-19','2024-05-19 06:29:36','2024-05-19','2024-05-19 09:43:37',11641),('d9bc5050-c89d-46f9-b75f-09147f6bda04','b82f1a500e7211efbb329cc2c42d8061','2024-05-20','2024-05-20 14:01:22','2024-05-20','2024-05-20 14:13:59',757),('ec27eb8b-ac6d-4252-8a15-4321523ee51c','559c3910effd11eeb9af00e93a8e1d2b','2024-05-21','2024-05-21 09:59:26','2024-05-21','2024-05-21 10:09:38',612);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` int DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`perms`,`status`) values (1,'perm1',0),(2,'perm2',0),(3,'perm3',1),(4,'perm4',0);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`status`) values (1,0),(2,1),(3,0);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (1,1),(1,2),(2,3),(3,1);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `nick_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(32) DEFAULT NULL COMMENT '手机号',
  `sex` char(1) DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  `user_type` char(1) NOT NULL DEFAULT '1' COMMENT '用户类型（0管理员，1普通用户）',
  `create_by` bigint DEFAULT NULL COMMENT '创建人的用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`user_name`,`nick_name`,`password`,`status`,`email`,`phonenumber`,`sex`,`avatar`,`user_type`,`create_by`,`create_time`,`update_by`,`update_time`,`del_flag`) values (2,'mk','mukeke','1234','0',NULL,NULL,NULL,NULL,'1',NULL,'2024-05-14 17:04:42',NULL,NULL,0),(3,'sg','NULL','$2a$10$RCQYhsPOGVucDUfePyH5eeRf1jBJpYfxBlIfSeZ45ymq57VXr6hxy','0',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,0);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1),(1,2),(2,1);

/*Table structure for table `todos` */

DROP TABLE IF EXISTS `todos`;

CREATE TABLE `todos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `weight` int DEFAULT '1',
  `outdated` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `todos` */

insert  into `todos`(`id`,`text`,`weight`,`outdated`) values (61,'book',4,0),(71,'test',1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
