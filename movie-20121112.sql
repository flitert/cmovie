/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-11-12 17:04:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `vq_area`
-- ----------------------------
DROP TABLE IF EXISTS `vq_area`;
CREATE TABLE `vq_area` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vq_area
-- ----------------------------
INSERT INTO `vq_area` VALUES ('1', '日本');
INSERT INTO `vq_area` VALUES ('2', '美国');
INSERT INTO `vq_area` VALUES ('3', '香港');
INSERT INTO `vq_area` VALUES ('4', '台湾');
INSERT INTO `vq_area` VALUES ('5', '韩国');
INSERT INTO `vq_area` VALUES ('6', '法国');

-- ----------------------------
-- Table structure for `vq_back_editor`
-- ----------------------------
DROP TABLE IF EXISTS `vq_back_editor`;
CREATE TABLE `vq_back_editor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(16) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vq_back_editor
-- ----------------------------
INSERT INTO `vq_back_editor` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1352708359');

-- ----------------------------
-- Table structure for `vq_back_list`
-- ----------------------------
DROP TABLE IF EXISTS `vq_back_list`;
CREATE TABLE `vq_back_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='榜单';

-- ----------------------------
-- Records of vq_back_list
-- ----------------------------
INSERT INTO `vq_back_list` VALUES ('1', '1', '无敌破坏王 系类推荐', '　无敌破坏王（约翰·C·赖利 John C. Reilly 配音）生活在一个80年代出品的低精度游戏中。他的设定身份是一个反派，每天的生活就是在游戏《快手阿修》中大搞破坏，其后由玩家操作的英雄人物快手阿修（杰克·麦克布瑞尔 Jack McBrayer 配音） 会及时赶到进行修补，赢得奖牌，包揽一切荣耀。身为反派，破坏王厌倦了自己的生活，眼看阿修被胜利者的光环围绕，自己却日复一日在无趣中过活，他终于决定改变。单纯的他以为只要自己也能得到一枚奖牌，就可以摆脱反派的身份，于是某日在游戏厅歇业后，破坏王偷偷离开了自己的游戏，前去闯荡其他电子游戏的世界。', '1352708762');
INSERT INTO `vq_back_list` VALUES ('2', '1', '辛普森一家 系类推荐', '《辛普森一家》即将推出一部3D短片，并将贴片7月13日北美公映的《冰河世纪4：大陆漂移》与观众见面', '1352708827');

-- ----------------------------
-- Table structure for `vq_down`
-- ----------------------------
DROP TABLE IF EXISTS `vq_down`;
CREATE TABLE `vq_down` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(3) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vq_down
-- ----------------------------
INSERT INTO `vq_down` VALUES ('1', 'b94623cc-d34b-fc31-f276-f6152c0bb8a3', '1', 'thunder://QUFodHRwOi8vd3d3Lmlxc2h3LmNvbS91cmwvWlo=');
INSERT INTO `vq_down` VALUES ('2', 'b94623cc-d34b-fc31-f276-f6152c0bb8a3', '2', 'Flashget://W0ZMQVNIR0VUXWh0dHA6Ly93d3cuaXFzaHcuY29tL3VybC9bRkxBU0hHRVRd&1926');
INSERT INTO `vq_down` VALUES ('3', 'b94623cc-d34b-fc31-f276-f6152c0bb8a3', '3', 'qqdl://aHR0cDovL3d3dy5pcXNody5jb20vdXJsLw==');
INSERT INTO `vq_down` VALUES ('4', '13488f39-4b70-d675-76ee-7e94afc53d3f', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('5', '13488f39-4b70-d675-76ee-7e94afc53d3f', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('6', '13488f39-4b70-d675-76ee-7e94afc53d3f', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('7', 'ff1dc510-b2b8-b3c5-eb92-3dfc710d29a6', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('8', 'ff1dc510-b2b8-b3c5-eb92-3dfc710d29a6', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('9', 'ff1dc510-b2b8-b3c5-eb92-3dfc710d29a6', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('10', 'a3c8501e-b341-bc72-1747-0918a0cd17dd', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('11', 'a3c8501e-b341-bc72-1747-0918a0cd17dd', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('12', 'a3c8501e-b341-bc72-1747-0918a0cd17dd', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('13', '9d008fe8-3daf-e438-60f6-cf759161f063', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('14', '9d008fe8-3daf-e438-60f6-cf759161f063', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('15', '9d008fe8-3daf-e438-60f6-cf759161f063', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('16', 'edef1832-fde2-b232-139b-e2abea8e484b', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('17', 'edef1832-fde2-b232-139b-e2abea8e484b', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('18', 'edef1832-fde2-b232-139b-e2abea8e484b', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('19', '06fb856c-6cff-46c8-fd43-ced5bc069339', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('20', '06fb856c-6cff-46c8-fd43-ced5bc069339', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('21', '06fb856c-6cff-46c8-fd43-ced5bc069339', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('22', '8d89be84-3f14-a416-0ff3-e4d5be9d55a9', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('23', '8d89be84-3f14-a416-0ff3-e4d5be9d55a9', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('24', '8d89be84-3f14-a416-0ff3-e4d5be9d55a9', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('25', '1d1d51dd-9797-764d-4661-3c123d47fb0a', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('26', '1d1d51dd-9797-764d-4661-3c123d47fb0a', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('27', '1d1d51dd-9797-764d-4661-3c123d47fb0a', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('28', 'a6ee1c89-5bbe-0c4d-34bf-7bccaa523476', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('29', 'a6ee1c89-5bbe-0c4d-34bf-7bccaa523476', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('30', 'a6ee1c89-5bbe-0c4d-34bf-7bccaa523476', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('31', '15b5b49e-b09f-a243-95a5-1fc8559c9691', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('32', '15b5b49e-b09f-a243-95a5-1fc8559c9691', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('33', '15b5b49e-b09f-a243-95a5-1fc8559c9691', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('34', '1c4d6e06-cbe4-ea57-a189-cac31edcb6ba', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('35', '1c4d6e06-cbe4-ea57-a189-cac31edcb6ba', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('36', '1c4d6e06-cbe4-ea57-a189-cac31edcb6ba', '3', 'baidu');
INSERT INTO `vq_down` VALUES ('37', '7fcb3ae3-52fb-33ba-51d7-6f328b02d59a', '1', 'thunder');
INSERT INTO `vq_down` VALUES ('38', '7fcb3ae3-52fb-33ba-51d7-6f328b02d59a', '2', 'qvod');
INSERT INTO `vq_down` VALUES ('39', '7fcb3ae3-52fb-33ba-51d7-6f328b02d59a', '3', 'baidu');

-- ----------------------------
-- Table structure for `vq_movie`
-- ----------------------------
DROP TABLE IF EXISTS `vq_movie`;
CREATE TABLE `vq_movie` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `movie_name` varchar(50) DEFAULT NULL,
  `Thumb` varchar(150) DEFAULT NULL,
  `director` varchar(30) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `release_date` smallint(4) DEFAULT NULL,
  `introduction` text,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='ä¸»è¡¨';

-- ----------------------------
-- Records of vq_movie
-- ----------------------------
INSERT INTO `vq_movie` VALUES ('1', 'b94623cc-d34b-fc31-f276-f6152c0bb8a3', '1138618081', '环形使者', 'http://img3.douban.com/mpic/s9017457.jpg', '莱恩·约翰逊', '2', '2', '英语', '2012', '未来，2044年。时间旅行从被发明的一开始就属于非法，只有当黑帮组织想清理某个特定对象、又不愿意在此世界留下任何痕迹时，才会出动“环形使者”。他们专门负责处决那些被时间传送回彼世界的目标。之所以称为“环形使者”，因为他们最终必须杀死未来的自己——这样才不会给未来主顾留下任何的麻烦。这个过程被称为“封环”。杀手乔（约瑟夫·高登-莱维特 Joseph Gordon-Levitt 饰）是最年轻的环形使者，弹无虚发，然而当他想处决来自未来的自己（布鲁斯·威利斯 Bruce Willis 饰）时，却遭到激烈反抗而失手。老年乔希望杀死未来封环计划中的关键人物——唤雨师，从而改变妻子（许晴 饰）的命运；青年乔在追杀过程中遇到了农场单亲妈妈莎拉（艾米莉·布朗特 Emily Blunt 饰），意外的成为了一对母子的保护人。两个版本的乔在这场改变未来（和现在）的豪赌中各... (展开全部) ');
INSERT INTO `vq_movie` VALUES ('2', '13488f39-4b70-d675-76ee-7e94afc53d3f', '1138618081', '全面回忆', 'http://img3.douban.com/mpic/s8993125.jpg', '伦·怀斯曼', '2', '2', '英语', '2012', '欢迎来到Rekall，它是一个能够把你的梦境变成现实的工厂。主人公道格拉斯·奎德（柯林·法瑞尔 Colin Farrell 饰）是一名普通的工厂工人。尽管他有一位漂亮的妻子（凯特·贝金赛尔 Kate Beckinsale 饰），两人看似恩爱，但他内心似乎依然不满足。思绪旅行听起来像是个完美的假期，让他从沮丧的生活中得到放松——作为一名特工的真实记忆可能正是他所需要的。但是当这个过程出现可怕的异常时，奎德变成了一个被追杀的逃犯。他发现自己正在躲避受考哈根长官（布莱恩·科兰斯顿 Bryan Cranston 饰）控制的警察，没有一个人是奎德可以信任的，除了一名叛军的女战士（杰西卡·贝尔 Jessica Biel 饰），她为地下抵抗组织的首领（比尔·奈伊 Bill Nighy 饰）工作。幻想和现实之间的界线变得模糊，他的命运凶吉难卜，因为奎德发现了他的真实.');
INSERT INTO `vq_movie` VALUES ('3', 'ff1dc510-b2b8-b3c5-eb92-3dfc710d29a6', '1138618081', '黑衣人3', 'http://img3.douban.com/mpic/s8904327.jpg', '巴里·索南菲尔德', '2', '2', '英语', '2012', '月球最高监狱，穷凶极恶的伯格罗多星人鲍里斯（杰梅奈·克莱门特 Jemaine Clement 饰）越狱逃亡。他在1969年犯下邪恶罪行，最终被年轻的K（乔什·布洛林 Josh Brolin 饰） 砍掉一只手臂，送入监狱。此次他逃脱的目的，就是穿越时空杀死K。与此同时，J （威尔·史密斯 Will Smith 饰）和K（汤米·李·琼斯 Tommy Lee Jones 饰）一如既往处理各种外星人引起的混乱，因对鲍里斯的案件三缄其口，两个好搭档心生隔阂。\r\n　　崭新的一天，J发现K消失不见，周围更几乎没人知道K这个人。此时的K已在40年前被鲍里斯杀死，他所建立的A网也不复存在。在这危急时刻，伯格罗多星人大举入侵地球。为了保护家园，J必须穿越时空再次改变历史');
INSERT INTO `vq_movie` VALUES ('4', 'a3c8501e-b341-bc72-1747-0918a0cd17dd', '1138618081', '保罗', 'http://img3.douban.com/mpic/s4540021.jpg', '格雷格·莫托拉', '2', '2', '英语', '2011', '格雷姆（西蒙·佩吉 Simon Pegg 饰）与克莱夫（尼克·弗罗斯特 Nick Frost 饰）是一对来自英国的极客好友，每天生活中充斥着外星人事件、漫画故事、科幻点子，今次又跑到美国来参加漫展，顺道探访外星人爱好者圣地：内华达州51区，没想到在路上偶遇一个真正的外星 人——60年前被困在地球，又被科研基地囚禁研究，而今终于逃出来的保罗（塞斯·罗根 Seth Rogen 配音）。不出所料的是，保罗长得一副ET样，超能力一流，而出乎他们意料的是，保罗是个满口美式俏皮话和脏话的“痞子”外星人，三个难兄难弟走上“帮保罗回家”的路途，后面紧追不舍的是国土安全局探员佐尔（杰森·贝特曼 Jason Bateman 饰）和他的笨搭档，一心想抓保罗回研究基地……');
INSERT INTO `vq_movie` VALUES ('5', '9d008fe8-3daf-e438-60f6-cf759161f063', '1138618081', '银河系漫游指南', 'http://img3.douban.com/mpic/s4082614.jpg', 'Alan J.W. Bell', '2', '2', '英语', '1981', 'Douglas Adams暢銷系列小說改編。地球人亞瑟(馬丁福曼)今天運氣糟透了，他的房子即將面臨拆遷命運，發現自己最好的朋友竟然是異形，更慘的是地球因為擋到 宇宙高鐵而必須被爆破，亞瑟眼前唯一的生路便是搭上太空船漫遊宇宙，這趟星際旅程讓他大開眼界，同時思索了從前壓根兒沒想到過的生命課題。 ');
INSERT INTO `vq_movie` VALUES ('6', 'edef1832-fde2-b232-139b-e2abea8e484b', '1138618081', '十二猴子', 'http://img3.douban.com/mpic/s1640133.jpg', '特瑞·吉列姆', '2', '2', '英语', '2012', '　公元2035年，人类被12只猴子军研制的一种病毒侵袭，大部分人类都在这场病毒灾难中死亡，只有少数人侥幸逃生，但也只能在阴暗的地下，苟且偷生。\r\n　　科学家们决定派人穿越时光回到1996年追查12只猴子军的来历。囚徒詹姆斯•科尔(布鲁斯•威利斯 Bruce Willis 饰)被挑选为志愿者。阴差阳错，科尔回到了1990年，当他向当时的人们描述未来的那场大灾难时，被当作精神病捉了起来并被医生凯瑟琳•雪莉（玛德琳•斯通 Madeleine Stowe 饰）诊断为精神分裂症。科尔在病友病友杰弗里•戈因斯帮助下逃脱，回到了未来。因为没查清12只猴子军的来历，科尔再次被派回了1996年。\r\n　　科尔这次发现了12只猴子军的起源地在费城，他找到了医生凯瑟琳，二人一起展开了追查12只猴子军的冒');
INSERT INTO `vq_movie` VALUES ('7', '06fb856c-6cff-46c8-fd43-ced5bc069339', '1352525796', '超凡蜘蛛侠', 'http://img3.douban.com/mpic/s9084762.jpg', '马克·韦布', '2', '2', '英语', '2012', '　童年的一起突发事件，令彼得·帕克（安德鲁·加菲尔德 Andrew Garfield 饰）和父母生离死别。转眼彼得成为一名高中生，他偶然发现父亲的公文包，并从叔父本（马丁·辛 Martin Sheen 饰）处得到线索，于是启程前往奥斯库公司拜访父亲当年的合作伙伴——科特·康纳斯博士（瑞斯·伊凡斯 Rhys Ifans 饰）。在公司内四处寻找线索的彼得意外被蜘蛛咬了一口，回程途中他的身体发生奇异的变化。在康纳斯博士德引导下，彼得不断了解并发掘体内着超乎寻常的能力，喜怒哀乐，各种意想不到的事情迅速向他袭来。直到某日，他便成了影响深远的超级战士蜘蛛侠。');
INSERT INTO `vq_movie` VALUES ('8', '8d89be84-3f14-a416-0ff3-e4d5be9d55a9', '1352526060', '盗梦空间', 'http://img3.douban.com/mpic/s4356687.jpg', '克里斯托弗·诺兰', '2', '2', '英语', '2010', '道姆·柯布（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）与同事阿瑟（约瑟夫·戈登-莱维特 Joseph Gordon-Levitt 饰）和纳什（卢卡斯·哈斯 Lukas Haas 饰）在一次针对日本能源大亨齐藤（渡边谦 饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲 Cillian Murphy 饰）的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯（迈克尔·凯恩 Michael Caine 饰），吸收了年轻的梦境设计师艾里阿德妮（艾伦·佩吉 Ellen Page 饰）、梦境演员艾姆斯（汤姆·哈迪 Tom Hardy 饰）和药剂师约瑟夫（迪利普·劳 Dileep Rao 饰）加入行动。在一层层');
INSERT INTO `vq_movie` VALUES ('9', '1d1d51dd-9797-764d-4661-3c123d47fb0a', '1352526112', '云图', 'http://img3.douban.com/mpic/s22705883.jpg', ' 汤姆·提克威', '2', '2', '英语', '2012', '《Cloud Atlas》是大卫.米切尔的第三部小说。这本书由六段故事构成，从1840年一位美国人从悉尼旅行到旧金山的日记、二十世纪三十年代初居住在比利时的年轻作曲家、1975年卷入加利福尼亚灾难的年轻记者、当今伦敦出版回忆录的黑道、1984年韩国发生的故事与一个老人叙述当时在夏威夷的青春自语为终结。 《Cloud Atlas》入围2004年布克奖（Man Booker Prize）。 ');
INSERT INTO `vq_movie` VALUES ('10', 'a6ee1c89-5bbe-0c4d-34bf-7bccaa523476', '1352528657', '情敌大战', 'http://img.kankanba.com/cs/250X350/35/f29b6be2deb45d54ee8654feeeba547.jpg', '约瑟夫·麦克金提·尼彻', '1', '2', '英语', '2012', '塔克（汤姆·哈迪 Tom Hardy 饰）和FDR（克里斯·派恩 Chris Pine 饰）是美国中情局的顶尖探员，两人各自身怀绝技，并且是生死与共的最佳拍档，出任务都是屡屡告捷，即使在工作上一帆风顺，两人都还是大光棍一个，藉由使用交友网站Match.com，他们都找到了自己迷恋不已的对象，认定可长相厮守，万万没 想到的是，这二位挚友竟然连私事都默契十足，爱上同一人:事业有成女强人的萝拉（瑞茜·威瑟斯彭 Reese Witherspoon 饰）。\r\n　　为了赢得美人芳心，兄弟阋墙在所难免，两人各自使出独门看家本领，而萝拉也因他们各自拥独树一格的特有魅力陷入两难，在好友兼损友崔尔丝敲边鼓，究竟她会选择哪位男士担任她的伴侣呢?');
INSERT INTO `vq_movie` VALUES ('11', '15b5b49e-b09f-a243-95a5-1fc8559c9691', '1352554610', '泰坦尼克号', 'http://img3.douban.com/mpic/s3939938.jpg', '詹姆斯·卡梅隆', '4', '2', '英语', '1997', '1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。\r\n　　罗丝厌倦了上流社会虚伪的生活，不愿嫁给卡尔，打算投海自尽，被杰克救起。很快，美丽活泼的罗丝与英俊开朗的杰克相爱，杰克带罗丝参加下等舱的舞会、为她画像，二人的感情逐渐升温。\r\n　　1912年4月14日，星期天晚上，一个风平浪静的夜晚。泰坦尼克号撞上了冰山，“永不沉没的”泰坦尼克号面临沉船的命运，罗丝和杰克刚萌芽的爱情也将经历生死的考验');
INSERT INTO `vq_movie` VALUES ('12', '1c4d6e06-cbe4-ea57-a189-cac31edcb6ba', '1352554699', '林中小屋', 'http://img5.douban.com/mpic/s7009449.jpg', '德鲁·高达', '6', '2', '英语', '2012', '　在一个明媚的日子里，同在一所大学的荷登（杰西·威廉姆斯 Jesse Williams 饰）、马提（弗兰·克朗茨 Fran Kranz 饰）、茱尔丝（安娜·哈彻森 Anna Hutchison 饰）、戴娜（克里斯汀·康奈利 Kristen Connolly 饰）以及科特（克里斯·海姆斯沃斯 Chris Hemsworth 饰）等5人驱车前往位于深山老林的小木屋中度假。他们不知道的是，自己的一举一动都在一个神秘机构的监视之下，甚至会自觉不自觉按照那群人的引导进入圈套。“无意”之中，戴娜用拉丁文念出一段咒语，在此之后，长眠泥土之下的丧尸爬了出来，对年轻人们展开血腥大屠杀。而镜头的另一边，神秘机构的成员喜滋滋看着镜头前的一切。\r\n　　无知的年轻人们，为了一个神秘的目的必须死去……    　　罗丝厌倦了上流社会虚伪的生活，不愿嫁给卡尔，打算投海自尽，被杰克救起。很快，美丽活泼的罗丝与英俊开朗的杰克相爱，杰克带罗丝参加下等舱的舞会、为她画像，二人的感情逐渐升温。\r\n　　1912年4月14日，星期天晚上，一个风平浪静的夜晚。泰坦尼克号撞上了冰山，“永不沉没的”泰坦尼克号面临沉船的命运，罗丝和杰克刚萌芽的爱情也将经历生死的考验');
INSERT INTO `vq_movie` VALUES ('13', '7fcb3ae3-52fb-33ba-51d7-6f328b02d59a', '1352554782', '冰川时代4', 'http://img3.douban.com/mpic/s10387444.jpg', '史蒂夫·马蒂诺', '9', '2', '英语', '2012', '《冰川时代4》讲述的依然是那些生活在冰川时期的特殊动物“家庭”经历的冒险故事。那只永远追着松果的无敌贱，又苦逼的小松鼠奎特（克里斯·韦奇 Chris Wedge 配音 ）这次搞出了更大的事件，一个不小心让大陆板块四分五裂，使得猛犸象曼尼（雷·罗马诺 Ray Roman o 配音）、树懒希德（约翰·雷吉扎莫 John Leguizamo 配音）以及剑齿虎迪亚哥（丹尼斯·利瑞 Denis Leary 配音）因此和家人、伙伴失散分离，在板块激烈的运动并分裂漂移后，只能使用一块流冰作为临时的船只，展开一段惊奇的海上大冒险，在海上他们会遭遇险恶的自然环境，也会遇到海盗，而回家与家人团聚是他们的终极愿望，他们最后能否顺利回家呢？　　无知的年轻人们，为了一个神秘的目的必须死去……    　　罗丝厌倦了上流社会虚伪的生活，不愿嫁给卡尔，打算投海自尽，被杰克救起。很快，美丽活泼的罗丝与英俊开朗的杰克相爱，杰克带罗丝参加下等舱的舞会、为她画像，二人的感情逐渐升温。\r\n　　1912年4月14日，星期天晚上，一个风平浪静的夜晚。泰坦尼克号撞上了冰山，“永不沉没的”泰坦尼克号面临沉船的命运，罗丝和杰克刚萌芽的爱情也将经历生死的考验');

-- ----------------------------
-- Table structure for `vq_nav`
-- ----------------------------
DROP TABLE IF EXISTS `vq_nav`;
CREATE TABLE `vq_nav` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(20) DEFAULT NULL COMMENT 'é“¾æŽ¥å',
  `name` varchar(20) DEFAULT NULL COMMENT 'åç§°',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vq_nav
-- ----------------------------
INSERT INTO `vq_nav` VALUES ('1', 'index', '首页');
INSERT INTO `vq_nav` VALUES ('2', 't_2-a_0-y_0/p_1', '科幻');
INSERT INTO `vq_nav` VALUES ('3', 't_1-a_0-y_0/p_1', '动作');
INSERT INTO `vq_nav` VALUES ('4', 't_3-a_0-y_0/p_1', '喜剧');
INSERT INTO `vq_nav` VALUES ('5', 't_4-a_0-y_0/p_1', '爱情');
INSERT INTO `vq_nav` VALUES ('6', 't_6-a_0-y_0/p_1', '恐怖');

-- ----------------------------
-- Table structure for `vq_ranking`
-- ----------------------------
DROP TABLE IF EXISTS `vq_ranking`;
CREATE TABLE `vq_ranking` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='排行榜数据';

-- ----------------------------
-- Records of vq_ranking
-- ----------------------------
INSERT INTO `vq_ranking` VALUES ('1', '13', '9', '1352643945');
INSERT INTO `vq_ranking` VALUES ('2', '11', '4', '1352646492');
INSERT INTO `vq_ranking` VALUES ('3', '11', '4', '1352646494');
INSERT INTO `vq_ranking` VALUES ('4', '8', '2', '1352646496');
INSERT INTO `vq_ranking` VALUES ('5', '8', '2', '1352646497');
INSERT INTO `vq_ranking` VALUES ('6', '8', '2', '1352646498');
INSERT INTO `vq_ranking` VALUES ('7', '8', '2', '1352646498');
INSERT INTO `vq_ranking` VALUES ('8', '8', '2', '1352646498');
INSERT INTO `vq_ranking` VALUES ('9', '8', '2', '1352646498');
INSERT INTO `vq_ranking` VALUES ('10', '3', '2', '1352647172');
INSERT INTO `vq_ranking` VALUES ('11', '3', '2', '1352647174');
INSERT INTO `vq_ranking` VALUES ('12', '3', '2', '1352647175');
INSERT INTO `vq_ranking` VALUES ('13', '3', '2', '1352647481');
INSERT INTO `vq_ranking` VALUES ('14', '3', '2', '1352647482');
INSERT INTO `vq_ranking` VALUES ('15', '3', '2', '1352647482');
INSERT INTO `vq_ranking` VALUES ('16', '2', '2', '1352650145');
INSERT INTO `vq_ranking` VALUES ('17', '2', '2', '1352652055');
INSERT INTO `vq_ranking` VALUES ('18', '13', '9', '1352652185');
INSERT INTO `vq_ranking` VALUES ('19', '5', '2', '1352652195');
INSERT INTO `vq_ranking` VALUES ('20', '1', '2', '1352652277');
INSERT INTO `vq_ranking` VALUES ('21', '5', '2', '1352652357');
INSERT INTO `vq_ranking` VALUES ('22', '10', '1', '1352652376');
INSERT INTO `vq_ranking` VALUES ('23', '8', '2', '1352699206');
INSERT INTO `vq_ranking` VALUES ('24', '2', '2', '1352699228');

-- ----------------------------
-- Table structure for `vq_type`
-- ----------------------------
DROP TABLE IF EXISTS `vq_type`;
CREATE TABLE `vq_type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vq_type
-- ----------------------------
INSERT INTO `vq_type` VALUES ('1', '动作');
INSERT INTO `vq_type` VALUES ('2', '科幻');
INSERT INTO `vq_type` VALUES ('3', '喜剧');
INSERT INTO `vq_type` VALUES ('4', '爱情');
INSERT INTO `vq_type` VALUES ('5', '剧情');
INSERT INTO `vq_type` VALUES ('6', '恐怖');
INSERT INTO `vq_type` VALUES ('7', '惊险');
INSERT INTO `vq_type` VALUES ('8', '冒险');
INSERT INTO `vq_type` VALUES ('9', '动画');
