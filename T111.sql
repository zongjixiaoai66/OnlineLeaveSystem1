/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t111`;
CREATE DATABASE IF NOT EXISTS `t111` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t111`;

DROP TABLE IF EXISTS `banjixinxi`;
CREATE TABLE IF NOT EXISTS `banjixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjihao` varchar(200) DEFAULT NULL COMMENT '班级号',
  `banjirenshu` varchar(200) DEFAULT NULL COMMENT '班级人数',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `banzhuren` varchar(200) DEFAULT NULL COMMENT '班主任',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banjixiangqing` longtext COMMENT '班级详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620413865749 DEFAULT CHARSET=utf8mb3 COMMENT='班级信息';

DELETE FROM `banjixinxi`;
INSERT INTO `banjixinxi` (`id`, `addtime`, `banjihao`, `banjirenshu`, `weizhi`, `banzhuren`, `jiaoshixingming`, `banjixiangqing`, `clicktime`, `clicknum`) VALUES
	(31, '2021-05-07 18:39:20', '班级号1', '班级人数1', '位置1', '班主任1', '教师姓名1', '班级详情1', '2024-03-16 11:09:01', 2),
	(32, '2021-05-07 18:39:20', '班级号2', '班级人数2', '位置2', '班主任2', '教师姓名2', '班级详情2', '2024-03-16 11:12:28', 3),
	(33, '2021-05-07 18:39:20', '班级号3', '班级人数3', '位置3', '班主任3', '教师姓名3', '班级详情3', '2024-03-16 11:12:26', 4),
	(34, '2021-05-07 18:39:20', '班级号4', '班级人数4', '位置4', '班主任4', '教师姓名4', '班级详情4', '2021-05-08 02:39:20', 4),
	(35, '2021-05-07 18:39:20', '班级号5', '班级人数5', '位置5', '班主任5', '教师姓名5', '班级详情5', '2021-05-08 02:39:20', 5),
	(36, '2021-05-07 18:39:20', '班级号6', '班级人数6', '位置6', '班主任6', '教师姓名6', '班级详情6', '2021-05-08 02:39:20', 6),
	(1620413865748, '2021-05-07 18:57:44', '333', '44', '多个豆腐干豆腐给对方', '教师6', '教师姓名6', '<p>水电费打算删掉发送到发送到发送到分数发送到</p>', '2021-05-08 03:00:58', 3);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot0e3m2/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot0e3m2/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot0e3m2/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) NOT NULL COMMENT '教师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `nianling` int NOT NULL COMMENT '年龄',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshizhanghao` (`jiaoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620413880493 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `jiaoshizhanghao`, `mima`, `jiaoshixingming`, `nianling`, `zhuanye`, `xingbie`, `shouji`, `zhaopian`) VALUES
	(21, '2021-05-07 18:39:20', '教师1', '123456', '教师姓名1', 1, '专业1', '男', '13823888881', 'http://localhost:8080/springboot0e3m2/upload/jiaoshi_zhaopian1.jpg'),
	(22, '2021-05-07 18:39:20', '教师2', '123456', '教师姓名2', 2, '专业2', '男', '13823888882', 'http://localhost:8080/springboot0e3m2/upload/jiaoshi_zhaopian2.jpg'),
	(23, '2021-05-07 18:39:20', '教师3', '123456', '教师姓名3', 3, '专业3', '男', '13823888883', 'http://localhost:8080/springboot0e3m2/upload/jiaoshi_zhaopian3.jpg'),
	(24, '2021-05-07 18:39:20', '教师4', '123456', '教师姓名4', 4, '专业4', '男', '13823888884', 'http://localhost:8080/springboot0e3m2/upload/jiaoshi_zhaopian4.jpg'),
	(25, '2021-05-07 18:39:20', '教师5', '123456', '教师姓名5', 5, '专业5', '男', '13823888885', 'http://localhost:8080/springboot0e3m2/upload/jiaoshi_zhaopian5.jpg'),
	(26, '2021-05-07 18:39:20', '教师6', '123456', '教师姓名6', 6, '专业6', '男', '13823888886', 'http://localhost:8080/springboot0e3m2/upload/jiaoshi_zhaopian6.jpg'),
	(1620413880492, '2021-05-07 18:58:00', '22', '22', '发给', 22, '发给电饭锅d', '男', '11122233333', 'http://localhost:8080/springboot0e3m2/upload/1620413890465.jpg');

DROP TABLE IF EXISTS `qingjiabiaoge`;
CREATE TABLE IF NOT EXISTS `qingjiabiaoge` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `qingjiabiao` varchar(200) DEFAULT NULL COMMENT '请假表',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620413918924 DEFAULT CHARSET=utf8mb3 COMMENT='请假表格';

DELETE FROM `qingjiabiaoge`;
INSERT INTO `qingjiabiaoge` (`id`, `addtime`, `biaoti`, `qingjiabiao`, `fabushijian`, `jiaoshizhanghao`, `jiaoshixingming`) VALUES
	(41, '2021-05-07 18:39:20', '标题1', 'http://localhost:8080/springboot0e3m2/upload/qingjiabiaoge_qingjiabiao1.jpg', '2021-05-08', '教师账号1', '教师姓名1'),
	(42, '2021-05-07 18:39:20', '标题2', 'http://localhost:8080/springboot0e3m2/upload/qingjiabiaoge_qingjiabiao2.jpg', '2021-05-08', '教师账号2', '教师姓名2'),
	(43, '2021-05-07 18:39:20', '标题3', 'http://localhost:8080/springboot0e3m2/upload/qingjiabiaoge_qingjiabiao3.jpg', '2021-05-08', '教师账号3', '教师姓名3'),
	(44, '2021-05-07 18:39:20', '标题4', 'http://localhost:8080/springboot0e3m2/upload/qingjiabiaoge_qingjiabiao4.jpg', '2021-05-08', '教师账号4', '教师姓名4'),
	(45, '2021-05-07 18:39:20', '标题5', 'http://localhost:8080/springboot0e3m2/upload/qingjiabiaoge_qingjiabiao5.jpg', '2021-05-08', '教师账号5', '教师姓名5'),
	(46, '2021-05-07 18:39:20', '标题6', 'http://localhost:8080/springboot0e3m2/upload/qingjiabiaoge_qingjiabiao6.jpg', '2021-05-08', '教师账号6', '教师姓名6'),
	(1620413918923, '2021-05-07 18:58:38', '地方删掉给对方广电', 'http://localhost:8080/springboot0e3m2/upload/1620413915286.jpg', '2021-05-08', '22', '发给');

DROP TABLE IF EXISTS `quekejilu`;
CREATE TABLE IF NOT EXISTS `quekejilu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `queqincishu` int DEFAULT NULL COMMENT '缺勤次数',
  `beizhu` longtext COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620414018359 DEFAULT CHARSET=utf8mb3 COMMENT='缺课记录';

DELETE FROM `quekejilu`;
INSERT INTO `quekejilu` (`id`, `addtime`, `xuehao`, `xingming`, `queqincishu`, `beizhu`, `dengjiriqi`, `jiaoshizhanghao`, `jiaoshixingming`, `userid`) VALUES
	(71, '2021-05-07 18:39:20', '学号1', '姓名1', 1, '备注1', '2021-05-08', '教师账号1', '教师姓名1', 1),
	(72, '2021-05-07 18:39:20', '学号2', '姓名2', 2, '备注2', '2021-05-08', '教师账号2', '教师姓名2', 2),
	(73, '2021-05-07 18:39:20', '学号3', '姓名3', 3, '备注3', '2021-05-08', '教师账号3', '教师姓名3', 3),
	(74, '2021-05-07 18:39:20', '学号4', '姓名4', 4, '备注4', '2021-05-08', '教师账号4', '教师姓名4', 4),
	(75, '2021-05-07 18:39:20', '学号5', '姓名5', 5, '备注5', '2021-05-08', '教师账号5', '教师姓名5', 5),
	(76, '2021-05-07 18:39:20', '学号6', '姓名6', 6, '备注6', '2021-05-08', '教师账号6', '教师姓名6', 6),
	(1620414018358, '2021-05-07 19:00:17', '11', '是否', 444, '<p>电饭锅发给发的鬼地方个地方</p>', '2021-05-08', '22', '发给', NULL);

DROP TABLE IF EXISTS `tijiaoqingjiabiao`;
CREATE TABLE IF NOT EXISTS `tijiaoqingjiabiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabiaoti` varchar(200) DEFAULT NULL COMMENT '请假标题',
  `tianxieqingjiabiao` varchar(200) DEFAULT NULL COMMENT '填写请假表',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620413976760 DEFAULT CHARSET=utf8mb3 COMMENT='提交请假表';

DELETE FROM `tijiaoqingjiabiao`;
INSERT INTO `tijiaoqingjiabiao` (`id`, `addtime`, `qingjiabiaoti`, `tianxieqingjiabiao`, `tijiaoshijian`, `jiaoshizhanghao`, `jiaoshixingming`, `xuehao`, `xingming`, `banji`, `sfsh`, `shhf`) VALUES
	(51, '2021-05-07 18:39:20', '请假标题1', 'http://localhost:8080/springboot0e3m2/upload/tijiaoqingjiabiao_tianxieqingjiabiao1.jpg', '2021-05-08 02:39:20', '教师账号1', '教师姓名1', '学号1', '姓名1', '班级1', '是', ''),
	(52, '2021-05-07 18:39:20', '请假标题2', 'http://localhost:8080/springboot0e3m2/upload/tijiaoqingjiabiao_tianxieqingjiabiao2.jpg', '2021-05-08 02:39:20', '教师账号2', '教师姓名2', '学号2', '姓名2', '班级2', '是', ''),
	(53, '2021-05-07 18:39:20', '请假标题3', 'http://localhost:8080/springboot0e3m2/upload/tijiaoqingjiabiao_tianxieqingjiabiao3.jpg', '2021-05-08 02:39:20', '教师账号3', '教师姓名3', '学号3', '姓名3', '班级3', '是', ''),
	(54, '2021-05-07 18:39:20', '请假标题4', 'http://localhost:8080/springboot0e3m2/upload/tijiaoqingjiabiao_tianxieqingjiabiao4.jpg', '2021-05-08 02:39:20', '教师账号4', '教师姓名4', '学号4', '姓名4', '班级4', '是', ''),
	(55, '2021-05-07 18:39:20', '请假标题5', 'http://localhost:8080/springboot0e3m2/upload/tijiaoqingjiabiao_tianxieqingjiabiao5.jpg', '2021-05-08 02:39:20', '教师账号5', '教师姓名5', '学号5', '姓名5', '班级5', '是', ''),
	(56, '2021-05-07 18:39:20', '请假标题6', 'http://localhost:8080/springboot0e3m2/upload/tijiaoqingjiabiao_tianxieqingjiabiao6.jpg', '2021-05-08 02:39:20', '教师账号6', '教师姓名6', '学号6', '姓名6', '班级6', '是', ''),
	(1620413976759, '2021-05-07 18:59:36', '电饭锅电饭锅地方给对方', 'http://localhost:8080/springboot0e3m2/upload/1620413968193.jpg', '2021-05-14 03:58:05', '22', '发给', '11', '是否', '333', '是', '通过');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'ybzayxm6f7vlswzfi8nnoi3gw4rcjjeq', '2021-05-07 18:41:45', '2024-03-16 04:12:08'),
	(2, 1620413056499, '11', 'xuesheng', '学生', 'q7l5u1spsdgpawy5eb4mik89mtle2fvl', '2021-05-07 18:44:19', '2021-05-07 19:44:20'),
	(3, 1620413815503, '11', 'xuesheng', '学生', '1hi8tktce45el588t1jgksf0ksr46k44', '2021-05-07 18:56:58', '2021-05-07 20:00:24'),
	(4, 1620413880492, '22', 'jiaoshi', '教师', 'ilhnaq2zhiezvr1bx5zw0ha17gswrjyp', '2021-05-07 18:58:04', '2021-05-07 19:59:44'),
	(5, 11, '学生1', 'xuesheng', '学生', 'lfaqcwrm78xzif6ljiqsj224lnd2bde2', '2024-03-16 03:12:53', '2024-03-16 04:12:54'),
	(6, 21, '教师1', 'jiaoshi', '教师', 'gmsddmhmfokeuyne46rhjomggchtfb0l', '2024-03-16 03:13:10', '2024-03-16 04:13:10');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-07 18:39:20');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620413815504 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xingming`, `nianling`, `xingbie`, `banji`, `shouji`, `zhaopian`) VALUES
	(11, '2021-05-07 18:39:20', '学生1', '123456', '姓名1', 1, '男', '班级1', '13823888881', 'http://localhost:8080/springboot0e3m2/upload/xuesheng_zhaopian1.jpg'),
	(12, '2021-05-07 18:39:20', '学生2', '123456', '姓名2', 2, '男', '班级2', '13823888882', 'http://localhost:8080/springboot0e3m2/upload/xuesheng_zhaopian2.jpg'),
	(13, '2021-05-07 18:39:20', '学生3', '123456', '姓名3', 3, '男', '班级3', '13823888883', 'http://localhost:8080/springboot0e3m2/upload/xuesheng_zhaopian3.jpg'),
	(14, '2021-05-07 18:39:20', '学生4', '123456', '姓名4', 4, '男', '班级4', '13823888884', 'http://localhost:8080/springboot0e3m2/upload/xuesheng_zhaopian4.jpg'),
	(15, '2021-05-07 18:39:20', '学生5', '123456', '姓名5', 5, '男', '班级5', '13823888885', 'http://localhost:8080/springboot0e3m2/upload/xuesheng_zhaopian5.jpg'),
	(16, '2021-05-07 18:39:20', '学生6', '123456', '姓名6', 6, '男', '班级6', '13823888886', 'http://localhost:8080/springboot0e3m2/upload/xuesheng_zhaopian6.jpg'),
	(1620413815503, '2021-05-07 18:56:55', '11', '11', '是否', 11, '男', '333', '11122211111', 'http://localhost:8080/springboot0e3m2/upload/1620413829241.jpg');

DROP TABLE IF EXISTS `xueshengkaoqin`;
CREATE TABLE IF NOT EXISTS `xueshengkaoqin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `kaoqinzhuangkuang` varchar(200) DEFAULT NULL COMMENT '考勤状况',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620414008078 DEFAULT CHARSET=utf8mb3 COMMENT='学生考勤';

DELETE FROM `xueshengkaoqin`;
INSERT INTO `xueshengkaoqin` (`id`, `addtime`, `xuehao`, `xingming`, `banji`, `kaoqinriqi`, `kaoqinzhuangkuang`, `beizhu`, `jiaoshizhanghao`, `jiaoshixingming`) VALUES
	(61, '2021-05-07 18:39:20', '学号1', '姓名1', '班级1', '2021-05-08', '正常', '备注1', '教师账号1', '教师姓名1'),
	(62, '2021-05-07 18:39:20', '学号2', '姓名2', '班级2', '2021-05-08', '正常', '备注2', '教师账号2', '教师姓名2'),
	(63, '2021-05-07 18:39:20', '学号3', '姓名3', '班级3', '2021-05-08', '正常', '备注3', '教师账号3', '教师姓名3'),
	(64, '2021-05-07 18:39:20', '学号4', '姓名4', '班级4', '2021-05-08', '正常', '备注4', '教师账号4', '教师姓名4'),
	(65, '2021-05-07 18:39:20', '学号5', '姓名5', '班级5', '2021-05-08', '正常', '备注5', '教师账号5', '教师姓名5'),
	(66, '2021-05-07 18:39:20', '学号6', '姓名6', '班级6', '2021-05-08', '正常', '备注6', '教师账号6', '教师姓名6'),
	(1620414008077, '2021-05-07 19:00:07', '11', '是否', '333', '2021-05-08', '正常', '大方向鬼地方个地方给对方', '22', '发给');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
