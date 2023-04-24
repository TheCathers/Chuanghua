/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.20-log : Database - chuanghua
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- CREATE DATABASE /*!32312 IF NOT EXISTS*/`chuanghua` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chuanghua`;

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '评论内容',
  `like` int(11) DEFAULT NULL COMMENT '点赞数',
  `commentObject` int(11) DEFAULT NULL COMMENT '评论对象',
  `state` varchar(5) DEFAULT NULL COMMENT '状态（审核中，已发布）',
  `creatBy` varchar(20) DEFAULT NULL,
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifyBy` int(11) DEFAULT NULL,
  `modifyDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `comment` */

insert  into `comment`(`id`,`content`,`like`,`commentObject`,`state`,`creatBy`,`creationDate`,`modifyBy`,`modifyDate`) values 
(1,'年轻人的第一个项目。',5,1,'已发布','ZhouSit','2021-02-20 00:00:00',NULL,'2021-03-10 11:29:44'),
(2,'泪目泪目',0,1,'已发布','ZhouSit','2021-03-12 14:43:00',0,'2021-03-12 14:43:47'),
(3,'泪目泪目',0,1,'已发布','ZhouSit','2021-03-12 14:43:00',0,'2021-03-12 14:44:08');

/*Table structure for table `topic` */

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL COMMENT '话题分类',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `like` int(11) NOT NULL COMMENT '点赞数',
  `state` varchar(5) DEFAULT NULL COMMENT '状态（审核中，已发布）',
  `creatBy` varchar(20) DEFAULT NULL,
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifyBy` int(11) DEFAULT NULL,
  `modifyDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `topic` */

insert  into `topic`(`id`,`type`,`title`,`content`,`like`,`state`,`creatBy`,`creationDate`,`modifyBy`,`modifyDate`) values 
(1,'science','Hello,World!','年轻人的第一个项目写完啦！',20,'已发布','ZhouSit','2021-03-12 14:20:06',NULL,'2021-03-12 14:20:16'),
(5,'science','大家来发明一个避免车祸的装置啊！',' 我觉得的汽车达到一定的速度后，应该做一个限制方向幅度的方向控制器，这样的话可以避免好多交通事故的发生！\r\n\r\n\r\n',0,'已发布','Linxinhua','2021-03-11 16:27:00',0,'2021-03-11 17:02:28'),
(6,'science','积分反弹后付费','太烦人的同时让爱',0,'已发布','Linxinhua','2021-03-11 16:37:00',0,'2021-03-11 17:03:12'),
(7,'science','有没有大佬能知道上面写了什么？','今天整理奶奶的遗物，发现了一张照片，照片后面写着一段代码，但不知道写的是什么，发上来求哪位懂的大佬帮看看，这用的是什么密码？内容是什么？',0,'已发布','Linxinhua','2021-03-11 16:47:00',0,'2021-03-11 17:03:12'),
(8,'science','路上看见的，是不是有什么惊天大秘密','风吹开树叶后把我吓一跳。',0,'已发布','Linxinhua','2021-03-11 16:48:00',0,'2021-03-11 17:03:12'),
(9,'science','科技型企业科技创新风险防范化解','2007年Hansen和Birkinshaw提出的创新价值链理论，即IVC（innovationvaluechain）。他们通过创新过程进行细分，把创新过程分为创意产生、创意转化和创意传播三个环节。随着时代的发展，价值链被应用到各个领域，创新价值链被应用到科技创新领域。具有持续竞争力的科技型企业都是在创新前调研策划、科技创新研发、科技成果转化（产品生产）、科技成果市场化（产品销售）、成果市场化反馈（产品销售及售后反馈）、再创新调研策划等过程中进行种种活动的集合体，产品质量在各个企业的竞争中不断改进，形成良性循环，不断提升创新能力，以适应竞争日益激励的市场环境。企业的价值创造是通过一系列活动构成的，这些互不相同但又相互关联的生产经营活动，构成了一个创造价值的动态过程，即创新价值链（见图1）。\r\n　　',0,'已发布','Linxinhua','2021-03-11 16:49:00',0,'2021-03-11 17:03:12'),
(10,'science','生物技术在畜牧业的应用','　摘 要：本文通过对生物技术在畜禽新品种培育、畜禽遗传资源的保护、饲料资源的开发利用、畜禽疾病的预防与治疗、生物环境的净化等方面成功运用的分析，旨在探讨生物技术这一前沿技术在畜牧业生产领域的广阔发展前景，在畜牧业生产技术革新中具有现实的指导意义。\r\n　　关键词：生物技术；畜牧业；自然科学\r\n　　黄建伟\r\n　　二十一世纪是生物技术的鼎盛时代，生物技术依然是自然科学领域中的带头学科。生物技术是一个含义相当深广的概念，广义上是生物系统的控制和应用，狭义上又称为生物工程，或称为生物工程技术，是利用生物的特定功能，通过现代工程技术的设计方法和手段来生产人类所需的各种物质，或直接应用于工业、农业、医药卫生等领域改造生物，赋予生物以新的功能和培育出生物新品种等的工艺性综合技术 。\r\n　　随着现代农业的快速发展，生物技术已成为农业新技术革命的重要组成部分。特别是近些年来转基因技术、重组DNA技术等技术的不断完善和成熟，生物技术已成为畜牧业发展的必然选择和强大动力，畜牧业发展成为现代生物技术应用最广阔、最活跃、最富有挑战性的领域，生物技术在畜禽品种培育，遗传资源保护，饲料资源开发，疾病预防和诊断等多个方面应用广泛，发挥着越来越重要的作用。',0,'已发布','Linxinhua','2021-03-11 16:50:00',0,'2021-03-11 17:03:12'),
(11,'science','基于资源整合方面的科研档案价值实现途径',' 　　高校科研档案作为科学研究进程及其思维的重要储备形式，包含大量社会科学、自然科学知识，真实记录了高校科研人员从事科研活动的情况，是一笔有极高价值的无形资产。如何把高校科研档案的潜在价值转化为现实价值，最大限度发挥其使用价值，是档案工作者迫切需要思考的问题。\r\n　　一、西安石油大学科研档案资源及其利用现状\r\n　　科研档案内容丰富，涵盖理、工、经、管、文、法、教等多门学科；特色突出，以石油石化研究为主体，数量多，价值高，是石油石化研究的重要参考，是学校发展的重要历史见证和宝贵财富。\r\n　　科研档案是课题立项、申报、研究的重要凭证，也是教学改革和学科建设的重要参考。科研档案利用对象有限，学校科研档案只针对课题组成员开放；利用地点有限，仅限在档案馆查阅、复印，还未开展网上查阅业务；利用数量有限，解密开放工作不及时，导致科研档案利用率低。\r\n　　二、基于资源整合视角的科研档案价值实现\r\n　　解放思想，开阔思路。利用数字信息技术，整合资源优势，拓展利用渠道，是解决科研档案资源的丰富与利用的有限这一矛盾的有效途径。',0,'已发布','Linxinhua','2021-03-11 16:50:00',0,'2021-03-11 17:03:12'),
(12,'science','浅谈农机工程科技创新策略',' 1当前农机科技现状\r\n \r\n1．1重视程度不够\r\n \r\n科技是第一生产力。在现在科技取胜的时代，只有借助科学技术的发展，农业现代化进程发展才会更加迅速。科技的发展成为人们生产劳动过程的一种必要的手段，给人们的生活带来了便捷。在大力发展科学技术的今天，我国的农机工程水平也在不断的提高，虽然农机工程在科研方面取得不错的成就，但是实际的农业生产过程中并没有充分运用到农机科研的成果。无法有效的将科研成果与农业生产相结合，转换成实际的社会效益，科研成果仅仅局限于农业科研，没有与实际相联系起来。\r\n \r\n1．2技术水平滞后\r\n \r\n农业技术的创新和发展虽然都在不断的进步，我国也开始将农机工程作为重点发展对象，但是在实际的农机科研中，相较农业发达国家来说，我国的农业技术一直处于落后的地位。在农业现代化进程中除了我国一直在发展着的农业机械化之外，对于农产品的加工和农业机械设备仍然处在落后的地位，尤其在农村地区依旧面临无法全面普及农业技术的情况。在农业化进程发展的过程中，我国的工业化也在不断发展，并且远远快于农业的发展，工业化发展带来的一系列生态问题在很大程度上影响着农作物的生长环境，同时给农业技术发展也带来一定的挑战。\r\n ',0,'已发布','Linxinhua','2021-03-11 16:51:00',0,'2021-03-11 17:03:12'),
(13,'science','高等院校酒店管理专业建设探析','　　高等院校的酒店管理专业教育随着旅游业的快速发展和酒店的大批兴建已经开始发展起来了。提高酒店服务与管理的水平，酒店服务与管理的人员素质一直以来是业内外人士的关注点，而服务与管理人员素质的提高主要通过职业培训和专业教育两条途径来实现。从长期着眼，专业教育对人员素质至关重要，特别是对酒店高层管理人员的培养更是如此。因此，酒店管理专业教育的质量将直接影响我国整个酒店业。基于这一点，探讨酒店管理专业教学模式的问题就显得非常迫切。笔者现在河南商业高等专科学校担任酒店管理专业教师，主要教授餐饮服务技能实训、酒店实务、客房管理与实务、饭店服务管理等多门酒店管理的专业课程。并于2008年参与了航空城酒店管理公司的酒店主管级培训班培训课程，主讲团队意识与执行力等课程，也曾到酒店实习与挂职锻炼过。这里就根据自己学习、工作的体会，对我国高等学校酒店管理专业建设模式中的问题做一些初步探讨。\r\n　　一、酒店管理专业理论课与操作课的有机结合按我国高等教育的规定，酒店管理专业本科学生的学习年限为四年，而专科学生的学习年限为三年。在这样的学习年限当中，理论学习课与实际操作课时间的比例分配尤为重要。酒店管理专业与其他专业相比，有其独特之处，针对毕业生求职的现状，招聘的酒店往往看重学生的实际操作能力，因此酒店管理专业课程设置必须考虑到学生要有相当长的酒店实习时间。\r\n　　在国外，许多酒店管理专业学院都有自己实习用的餐厅等教学设施，学生一面学习，一面到餐厅实习。另外，学员还必须利用一整段时间到社会上进行真正的实习锻炼。\r\n　　在国内，许多院校则是着重理论课教学，学生在校期间，往往只有一学期的实践操作课程，专业实习期也很短，甚至没有成型。',0,'已发布','Linxinhua','2021-03-11 16:52:00',0,'2021-03-11 17:03:12'),
(14,'science','浅谈煤矿企业管理的体系','　　一、前言\r\n　　在煤矿企业产销两旺的可喜形势下，一些煤矿企业往往只顾追求增产的积极性，而忽略了抓内部的经营管理，特别是在追求大上产量的时候，经营工作常常会放在从属位置，这给管理带来了很大困难。所以煤矿企业一定要遵循关键重点岗位控制原则，力求精细管理把握大方向，做到以点带面，以关键岗位为龙头进行管理拓展。任何工作都是始于足下，行在过程，只有抓住过程，才会有好的结果和效果。\r\n　　二、煤矿企业管理的创新体制\r\n　　对于煤矿企业来说，企业的管理体制是非常重要的。这里所指的管理创新体系是指的在原来的管理体系上从各方面来完善体系的内容，这里所包含的有企业内部的各生产要素进行计划、组织、控制、协调和优化资源分配方面，从这几方面来不断的完善以实现企业生产的目标。这里所说的管理体制是指的组织框架，框架分五个方面：\r\n　　上下层次的总体组织框架；集团公司总部的法人管理结构：总部职能部门的组织架构：上下单位、部门的权责界定和职能划分；组织结构的运行机制和流程。矿企业的管理体制创新的目的是为了及时适应企业内部环境的不断变化而不断完善，针对内部环境的变化而对管理体系进行适当的调整和改造创新。这里所说的创新，主要包括罗管理人员机构的调整，管理人员的职权、管理人员的职责范围、管理人员的职能根据情况重新划分，另外还要对企业管理的运行程序和运行流程进行重新的设计，以不断适应企业发展的需要，创新体系的目的就是配合不断发展的企业内部环境随着变化而不断变化创新完善。\r\n　　三、煤矿企业管理体系创新的思路及目标\r\n　　整体来说，对于多数的煤矿企业而言，在原油基础上求发展的话，就要在企业的发展模式和管理模式上不断的有创新，尤其是管理模式，需要根据我国的不断发展的经济模式而不断提高和改变新的管理模式，实现在管理体系的不断创新，从而实现以人力资源为发展基础，计划管理及成本控制为主导的新的管理体系。\r\n　　1)煤矿企业管理体系创新模式的思路',0,'已发布','Linxinhua','2021-03-11 16:53:00',0,'2021-03-11 17:03:12'),
(15,'science','农村中学科技创新教育的手段研究','【导读】发表科技论文口碑优秀机构中学科技创新教育是整个中等教育阶段教育事业的重要组成部分，通过对农村中学科技创新教育的现状进行了调查和分析，目前广大农村中学特别是农村初中校，科技创新教育现状存在一定的不足和困难。论文从学校管理机制、经费投入、外部舆论氛围等入手分析了原因，提出了一定的应对策略。\r\n　　一、农村中学科技创新教育的现状\r\n　　中学科技创新教育是整个中等教育阶段教育事业的重要组成部分。它的主要任务是提高在校生的科学素质，着力培养青少年学生的创新精神和实践能力。中学科技创新教育主要类型为科技活动、科普宣传、科技竞赛、科技教育在课程中的整合等四大方面；科技创新教育要素包括教学资源、教师、学生等三个因素；体现在学生科学素质、创新精神和实践能力等的提升。科技论文网\r\n　　(一)农村中学开展科技创新教育的主要形式\r\n　　目前农村巾学科技创新教育的形式包括科普宣传、科技小论文、兴趣小组、讲座、课外科技实践、科技节、科技比赛和游园等，形式多样，科协等部门组织的科技活动丰富，但其中科技兴趣小组活动、科技实践活动等这种具有较强全员性的实践性活动在农村中学近年来有减少的趋势，在所调查的学校中只有少数开展了课外科技兴趣小组活动、科技实践活动，且学校老师反映成效一般，科技小论文、科技创新大赛、学科比赛则大多数属于为了参加上级比赛而开展的选拔性活动，上级科技创新大赛、学科比赛主要是由教师从拔尖学生中直接选拔参加上级的相关比赛。1996年全国人大八届四次会议提出“科教兴国”以来，农村中学掀起了一股开展全员性课外科技兴趣小组、科技实践活动的热潮，但近年来农村中学课外科技兴趣小组、科技实践活动逐步减少，教师、领导积极性也普遍不高，真正面向全体学生的科技活动则较少。科技论文网\r\n　　(二)学生参与科技创新活动的现状\r\n　　学生对科技创新活动兴趣度极高，但在农村中学参与科技创新活动的机会很少，一方面学生对科技活动探索欲望强烈，另一方面参与科技活动的机会很少，这两方面之间形成鲜明的对比。\r\n　　(三)农村中学科技活动的栽体和资源分析\r\n　　通过调查发现，青少年宫、青少年科技活动中心等仅存在于市区，农村中学难于得到有效辐射，而乡镇基本没有设立公共科技活动中心、活动室；同时由于教育经费投入的不均衡，农村中学特别是初中校的财政投入不足，特别是农村初中校由于实行义务教育，没有收取学费，经费更加紧张，难于投入资金来添置科技活动设备和资源，科技活动载体和资源普遍缺乏，科技活动室只有少量的设备和工具。\r\n　　二、农村中学科技创新教育困境的成因分析\r\n　　(一)学校管理层对待科技创新教育的认识误区\r\n　　不少农村中学领导对待科技创新教育存在一定的认识误区：首先学校管理层尤其是校领导对科技活动的重视程度普遍不高，不少校领导认为这只是课外活动的一种，没有上升到科技素质教育的高度来给予重视。科技',0,'已发布','Linxinhua','2021-03-11 16:53:00',0,'2021-03-11 17:03:12'),
(16,'science','机械通气重症肺炎中床旁超声的应用价值',' 摘要：探讨床旁超声在机械通气重症肺炎患者诊断及预后评估中的价值。方法选取我院重症医学科呼吸机通气肺炎患者87例，分别行床旁超声、CT及实验室检查；根据患者肺炎严重程度分为重症肺炎组47例和非重症肺炎组40例，评估床旁超声对重症肺炎的诊断价值，并比较不同预后患者床旁超声特征。结果床旁超声显示重症肺炎组患者肺实变、胸膜下病变数、胸膜改变肋间数及肺超声评分与非重症肺炎组比较差异均有统计学意义（均P<0.05）；重症肺炎组胸膜腔积液患者比例与非重症肺炎组比较差异无统计学意义。床旁超声准确诊断重症肺炎40例，CT准确诊断41例，两者对重症肺炎的诊断敏感性、特异性、准确率分别为85.11%、82.50%、83.91%和87.23%、85.00%、86.21%，差异均无统计学意义。重症肺炎组死亡9例，存活38例，床旁超声显示重症肺炎组死亡患者肺实变、胸膜下病变数、胸膜改变肋间数及肺超声评分与存活患者比较差异均有统计学意义（均P<0.05）；死亡患者胸膜腔积液比例与存活患者比较差异无统计学意义。结论床旁超声在机械通气重症肺炎患者诊断及预后评估中均有较高价值。\r\n \r\n关键词：超声检查，床旁；重症肺炎；机械通气；预后\r\n \r\n重症肺炎起病快，可引起呼吸衰竭，导致多个脏器出现功能障碍，对患者生命造成威胁，死亡率高［1］。早期诊断重症肺炎患者对其治疗和预后十分重要。目前，临床诊断肺炎主要根据实验室检查、临床表现及影像学检查，其中X线和CT是肺部检查最常用的方法，但具有一定局限性［2］。床旁超声具有无创、使用便捷、可移动性好等优点，能及时对患者进行检查，但目前关于床旁超声对重症肺炎机械通气患者的诊断、预后等评估存在一定争议［3-4］。本研究通过对重症肺炎患者行床旁超声检查，旨在探讨其在重症肺炎诊断及预后中的应用价值。\r\n \r\n资料与方法\r\n \r\n一、临床资料\r\n \r\n选取2016年5月至2018年8月我院重症医学科收治的呼吸机通气肺炎患者87例，根据患者肺炎严重程度分为重症肺炎组47例和非重症肺炎组40例。纳入标准：①患者机械通气时间>48h；②年龄>18岁，体温>38℃；③氧合指数（PaO2/FiO2）<300mmHg（1mmHg=0.133kPa），白细胞计数>10×109/L或<4×109/L。排除标准：①因胸部手术或外伤无法完成检查者；②合并肿瘤或免疫系统疾病者；③肺结核患者。重症肺炎诊断标准［4］：①患者呼吸≥30次/min；②动脉收缩压<90mmHg；③意识障碍；④尿量<20ml/h或合并急性肾功能衰竭需行透析治疗；⑤合并脓毒症；⑥血氧分压（PaO2）<90mmHg，且PaO2/FiO2<300mmHg；⑦X线检查示双侧或多侧肺叶受累。两组一般资料比较差异均无统计学意义，见表1。本研究经我院医学伦理委员会批准，所有患者及家属均知情同意。\r\n ',0,'已发布','Linxinhua','2021-03-11 16:55:00',0,'2021-03-11 17:03:12'),
(17,'science','水泥机械设备检维修问题及方法',' 摘要：机械设备是水泥企业生产活动中的关键因素，其是否能稳定运行，直接影响企业的产品质量和效益高低。企业生产中所用到的各种机械设备在日常作业过程中难免会出现各种损耗与故障，只有充分重视对各种机械设备的维护，才能确保其性能始终处于健康状态，从而提高运转率。本文就机械设备检维修的必要性及重要性进行了探究，并根据工作经验就机械设备检维修的措施做了进一步阐述。\r\n \r\n关键词：水泥机械设备；检维修；改进措施；管理制度\r\n \r\n引言\r\n \r\n近年来，水泥企业的机械设备，尤其是大型设备事故频出，给水泥企业造成了严重的损失，因此，水泥企业在生产过程中进行机械设备检修及维护管理时，需要给予相关问题必要的重视和措施，确保机械设备检修及维护管理的有效性，从而有利于延长机械设备的使用寿命，全面提升设备检修及维护管理工作水平。\r\n \r\n1机械设备维护的必要性及重要性\r\n \r\n机械设备维护是企业日常管理工作中的核心内容之一，其性能是否稳定、安全，对所生产的产品质量及成本将产生巨大影响。因此，企业应加强对各种机械设备性能的维护力度，从而为企业产品的质量优化提供保障，最终降低企业的生产成本。企业做好生产设备的维护工作，是稳定企业经济收益的有效形式。具体来讲，加强企业中各种机械设备的维护工作，不仅可提升产品产量、优化生产效益，而且可降低消耗、节约成本，可帮助企业获得最大化的经济收益。机械设备使用的前提和基础是设备日常使用的维护和保养。设备在长期的、不同环境的使用过程中，机械部件的磨损、间隙的增大、使用性能的改变，都可以直接影响到设备原有的设计平衡。设备的可靠性、稳定性、使用效益都会降低，甚至会导致机械设备丧失其固有的基本性能，改变运行状态造成不必要的事故，企业生产无法正常运行。在迫不得已的情况下进行大修或者更换新设备，既增加了企业成本，又占用企业资源配置。因此，必须建立科学有效的管理机制，加大设备日常管理维护，科学合理的制定设备维护计划，并且在每次检维修中总结出现的问题，进一步消除隐患，完善设备管理制度，为企业高效运行提供保障。\r\n \r\n2实际生产中机械设备的检维修及维护管理过程存在的问题\r\n \r\n2.1备件质量问题\r\n \r\n在水泥机械设备检修及维护管理中，发现其备件质量存在一定的问题，下面以链勾和磨机衬板为例说明。环链提升机的链勾在检修期间发现了因链勾生产材质缺陷导致的磨损快、不耐用等缺陷。链勾在设计制造方面的问题主要有：（1）链勾的承重圆弧部分未采用耐磨处理，导致链条在链轮齿顶硬性磨损，磨损加剧后频繁更换链勾，提升机难以正常工作，设备检修及维护管理工作落实未能达到预期效果。（2）链勾材质过于追求刚性，硬度提高，极易出现断折，影响了机械设备的工作性能，加大了设备使用中的故障发生率，严重威胁安全生产。磨机衬板的质量问题同样是我们应该重点关注的问题。衬板是磨机最重要的关键部件，也是易损件，需要定期更换。在设计理念上，磨机衬板属于铸造件，除了衬板的长、宽、高需要严格按照图纸加工外，衬板的材质更需要兼顾硬度和耐磨两种需求。在某次磨机衬板更换中，考虑增加衬板的耐磨性，对其加工厂家提出了增加衬板的耐磨性能的要求，厂家按照要求加工了一批耐磨程度高的衬板。更换后经过试验，虽然耐磨程度得到提高，但衬板的硬度大大降低，不到三个月的时间，磨机衬板陆续出现掉块、碎裂现象。究其原因，是衬板的刚性远远低于磨机内部研磨体的撞击力，经不住研磨体的连续撞击。无奈之下，只能又更换衬板。可见，备件的质量至关重要。市场上的生产厂家不计其数，材质千差万别，有时候并不是只有贵的才是最好，关键是要与自己的生产需要符合，只有合适的才是最好的。\r\n ',0,'已发布','Linxinhua','2021-03-11 16:55:00',0,'2021-03-11 17:03:12'),
(18,'science','钻井机械设备失效影响及对策分析','摘要：随着科学技术的快速发展，我国石油开采技术不断提高。在这样的情况下，钻井设备的性能是影响钻井技术的主要因素。在实际钻进的时候经常会出现机械性能失效现象。针对此现象，要采取科学合理的措施才能解决钻井机械设备的失效问题。基于此，本文分析了钻井机械设备失效影响因素，提出了钻井机械设备失效影响因素的解决对策，期望为未来有关研究提供相应的参考。\r\n　　\r\n　　关键词：钻井机械设备；失效；影响因素；对策\r\n　　\r\n　　在现代社会当中，石油行业与我国国民经济发展与资源储备等情况紧密关联。石油开采没有办法和钻井机械设备相分离。然而，在这样的情况下，钻井机械设备经常出现失效现象，会影响正常生产，所以需要探寻该类设施设备出现失效的多种影响因素，运用科学合理的维修与管理策略，保障钻井机械设备实际运用的质量与成效，有效延长此类设备的实际寿命，保证石油开采质量与具体成果。因此，加强钻井机械设备失效影响因素及对策研究具备现实意义。\r\n　　\r\n　　1钻井机械设备失效影响因素分析\r\n　　\r\n　　1.1钻井机械设备零件的局部塑性变形\r\n　　\r\n　　在现阶段的石油钻井作业活动当中，会对钻井机械设备起到很大程度上的影响以及冲击。再加之此类设备所承担的符合非常重，十分容易出现多种零部件的挤压，进而造成钻井机械设备出现变形现象，这样便会造成该类设备的失效。将石油开采作业钻井泵上部位置的传动齿轮当做是案例，如若该齿轮并不坚固，导致其坚固程度没有办法和实际设计要求相满足，这样在长期负荷条件下会由于挤压而出现变形现象。长此以往，非常容易造成齿轮出现失效情况。\r\n　　\r\n　　1.2钻井机械设备疲劳失效\r\n　　\r\n　　对于当前的多种钻井机械设施设备而言，不管是实际作业环境，还是具体作业条件，都非常恶劣。这样会对钻井机械设备的具体维修作业次数与实践起到很大的影响。由于长期缺少科学合理的维修作业，非常容易造成钻井机械设备长时间处在疲劳状态当中，进而出现失效现象。因为此方面的因素造成失效现象难以进行修复。比如，发电机在钻井机械设施设备当中占据着十分重要的位置，由于其实际作业时间比较上，缺少科学合理的维修作业，非常容易造成设施设备出现断裂现象，最后造成失效。\r\n　　\r\n　　1.3钻井机械设备负荷过重引起失效\r\n　　\r\n　　由于钻井机械设备所面临的符合比较重，这样费海沧容易造成零部件出现变形以及断裂等情况。由于在当前的实际钻井作业活动当中，设施设备非常容易遭遇冲击，在遭遇这样的冲击以后，其峰值会逐步提高。在该过程当中，大部分传动都处在硬连接的状态当中。比如，在实际运用钻杆动力钳卸扣的时候，会因为其使用力度比较大，造成其主轴发生变形以及断裂等现象。\r\n　　\r\n　　1.4钻井机械设备由于摩擦损耗引起',0,'已发布','Linxinhua','2021-03-11 16:56:00',0,'2021-03-11 17:03:12'),
(19,'science','包装机械自动化技术应用及展望',' 摘要：包装机械行业对于其他工业飞速发展所起到的促进作用是有目共睹的，为了适应新时期的发展需要，包装机械行业应当与自动化技术有效融合，以提升行业的综合水平。基于此，文章简要介绍了自动化技术在包装机械中的应用要点，详细阐述了自动化包装机械设计的有关内容，并对未来包装机械行业自动化技术的应用进行了展望，以期为相关从业人员提供参考。\r\n \r\n关键词：包装机械；自动控制系统；自动化技术\r\n \r\n1自动化技术在包装机械中的应用\r\n \r\n1.1传动系统\r\n \r\n传动系统的作用是根据实际生产任务需要，来灵活调整生产过程的周期变化。目前，在自动化包装机械的传动系统中，通过变频器，将计算机技术、自动控制技术和互联网技术进行了紧密结合，具有精度高、响应快、运行效率高和调节范围广等诸多优点，在包装生产线上已经得到了广泛的应用[1]。',0,'已发布','Linxinhua','2021-03-11 16:56:00',0,'2021-03-11 17:03:12'),
(20,'science','谈铁路工程现场施工机械设备管理','　1概述\r\n　　\r\n　　铁路施工现场主要位于露天环境下，风吹日晒雨淋，部分铁路工程施工还会饱受风沙等恶劣气候影响，且施工周期较长、施工难度大，机械设备容易出现损坏、故障等一系列问题，进而对施工过程、工期安排等造成影响，因此，铁路工程机械设备的管理工作已成为影响工程进度、施工质量和施工成本的重要因素之一。机械设备管理是施工中的必要程序，随着施工技术、施工安全及质量标准不断提高，对机械设备管理工作的要求也越来越高。但是，仍有部分现场设备管理人员缺乏重视，使设备管理成为施工过程中的一个薄弱环节，很多时候都存在管理实施不到位的情况。\r\n　　\r\n　　2现状\r\n　　\r\n　　（1）机械设备管理制度更新过慢。在现代化铁路工程施工过程中，仍有部分现场设备管理人员对设备的管理工作存在不规范问题，时常出现错误，有时还会忽略一些重要的细节，导致设备出现故障、损坏等情况，不仅造成了一定损失，也耽误了铁路工程施工正常进展，延误了部分施工工期。籍此，加强管理力度、完善管理制度、约束和指导现场管理人员对施工机械设备的管理、细化管理人员培训内容、提高管理人员业务水平是提高现场机械设备管理的重要举措，将其贯彻到实际工作中，使管理人员水平从根本上得到提高，合理利用资源。这是因为部分现场设备管理人员仍保留着旧有观念，忽视管理的重要性，主观意识上并不认同管理工作，不主动去配合相关制度的完善。甚至少部分人员基础知识不牢固，少部分人员无相关专业学习经历，进而管理工作不能妥善的完成而造成后续出现许多问题，也为之后可能发生的因管理工作不当导致施工成本增加、施工工期整体延误留下了隐患，这都是因为制度不完善导致的。\r\n　　\r\n　　（2）机械设备没有得到合理的维护保养。机械设备需要定期维护来保证其始终处于最佳的工作状态，只有这样，才可以在施工中发挥出良好的作用。当前现场施工过程中的维护工作只限于在出现故障后进行维修，不仅会导致故障频发，还有可能缩短机械设备的使用年限，间接地加快了机械设备的折旧，增加施工成本。如果施工过程中对机械设备的日常维护管理缺乏重视，没有进行必要的日常维护或平时保养不足，那么，设备的使用年限就必然会缩短，在其使用过程中也更容易出现各种类型的故障，这对于整个铁路工程施工建设是非常不利的。机械设备的使用随着时间的推移，其故障率是成U字型呈现，设备刚开始投入使用时，因为没有得到必要的保养与维护，又因使用需要一段较长时间的磨合期，所以故障的概率很难被控制。在设备使用一段时间后，故障率会逐渐降低，最后逐渐呈现平稳的趋势，类似于U字的底部，这时期的机械故障最少。但这段时间同样应该重视机械设备的保养工作，如果没有及时跟进维修保养，那么故障率也会呈上升趋势。当前，我国大多数机械设备使用周期年限并不长，这与维护与保养的缺失直接相关。很多时候设备的故障率会提前进入磨损故障期，加速设备的损坏，给施工单位造成一定的损失。\r\n　　',0,'已发布','Linxinhua','2021-03-11 16:57:00',0,'2021-03-11 17:03:12'),
(21,'science','机电一体化数控技术在矿山机械的应用',' 1引言\r\n \r\n在工业化进程快速发展的背景下，工业生产对金属矿的需求量日益增加，为了满足现代化工业生产对金属矿的需求，相关部门需要不断优化并升级现有的金属矿山机械和设备，这就为金属矿山机械提出了更加严格的要求[1]。现阶段，我国金属矿山采矿行业的机械设备具有大型化、智能化发展趋势。基于此，本文阐述了机电一体化数控技术的相关内容，分析了金属矿山机械中机电一体化数控技术的应用，希望能够推动社会经济的进一步发展。\r\n \r\n2机电一体化数控技术概述\r\n \r\n机电一体化数控技术将机械技术、液压技术和电子技术进行了融合，综合控制程序方式加工零件，机电一体化数控技术的有效应用能够提升机械的拆除速度和安装速度，为机械维修工作的顺利开展提供支持。在金属矿山机械的应用中，由于我国地质环境相对复杂、资源消耗量大，为矿山生产带来了一定的难度，使机械设备结构日益复杂，而传统的机械设备无法满足新时期的高标准和高要求。因此，在金属矿山机械中，需要引进机电一体化数控技术，提升机电的经济性、安全性和自动化。\r\n \r\n3机电一体化数控技术在金属矿山机械中的应用\r\n \r\n在工业化进程的快速推进中，科学技术水平得到了很大的提升，机电一体化数控技术的类型越来越多，在社会各界的发展中应用十分广泛，以下主要介绍机电一体化数控技术在金属矿山机械中的应用。\r\n \r\n3.1开关磁阻电动机调速系统\r\n \r\n金属矿山机械机电一体化数控技术的发展前景越来越广阔，由于各项技术的不断研发，相互之间得到了有效融合，开关磁阻电动机调速系统应运而生。开关磁阻电动机是在20世纪被研发的，但在其他技术的影响下，未得到广泛开发和应用，而现阶段环境条件越来越好，开关磁阻电动机的智能化日益凸显出来，尤其在调速电动机的智能化过程中，具有突出优势。这一设备主要由单片进行控制，在实际中得到了有效应用，既能节省经济成本，又能减少人力资源的投入，有助于提升社会的整体生产效率。并且随着在社会的发展，金属矿山机械的开关磁阻电动机调速系统的应用范围越来越广泛，金属矿山开采、加工中应用的机械设备具有很强的集成性，通过引进智能化、数字化、微型化网络技术，提升了机械设备的机动性，并在金属矿山开采中呈现出很强的可靠性。\r\n \r\n3.2集成驱动技术',0,'已发布','Linxinhua','2021-03-11 16:57:00',0,'2021-03-11 17:03:12'),
(22,'science','机械制造智能化发展探索',' 摘要：目前，机械制造已从传统的手工方法转向智能操作，新的机械制造技术也在升级，因此出现了降低劳动力成本的趋势，发展机械制造方面的智能化的新趋势，这种趋势会一直提高生产的精确度，提高生产效率，为未来机械工业的蓬勃发展创造机会。\r\n \r\n关键词：机械制造；智能化；科技进步\r\n \r\n1现代机械制造智能化有助于劳动力的释放\r\n \r\n降低生产成本、提高效率和分析劳动数据收集等，通过机械制造发展生产，可以有效地生产和造福于人类，机械智能化一旦在机械制造业中全面使用，就可以扩大到造福所有人。机械制造已从传统的手工方法转向智能操作，新的机械制造技术也在升级，因此出现了降低劳动力成本的趋势，发展机械制造方面的智能化的新趋势，我们在生产过程中，所需要投入的人力成本和时间就会大幅度的减少，这会直接导致我们的社会财富的增多，人民生活水平的提高和劳动力成本的降低，将带来革命性的改变，劳动力将得到彻底解放。在产品的整个生产周期内，各种先进技术都得到了深入整合，生产和管理也实现了自动化和合理化。\r\n \r\n2目前机械制造智能化发展的具体现状\r\n \r\n机械制造的智能市场正处在快速增长的发展阶段，实现这一方式的公司数目增加了近50%，机械制造中的智能化应用正在得到改进，其应用范围正在扩大。机械制造已从传统的手工方法转向智能操作，新的机械制造技术也在升级，因此出现了降低劳动力成本的趋势，发展机械制造方面的智能化的新趋势，这种趋势会一直提高生产的精确度，提高生产效率，为未来机械工业的蓬勃发展创造机会。例如，在高污染工业、高风险工业和地下作业中，明智地将其用于机械制造有助于人的生命和财产的安全。当前，我们最熟悉的智能化莫过于我们手机制造的智能化了，手机属于小型机械，目前这类的人工智能化的发展是飞跃性的，我们在生活中的方方面面都会用到这些智能化的东西，手机可以遥控空调、电视、冰箱、甚至在公司和学校就可以遥控家里做饭。当然，这些智能化的科技会更多的偏向于我们迫切需要的领域或者是备受大家欢迎的领域。但是目前除了在一些大城市和大型领域，其它一般的机械制造中智能化利用率低，管理系统尚未大规模发展，这在某种程度上妨碍了机械制造中智能化的发展。所以，我们在工作的分工和以后的长远发展方向上，我们应该有全面系统的智能化发展的规划和蓝图。\r\n \r\n3目前机械制造智能化发展技术方面的相关问题\r\n ',0,'已发布','Linxinhua','2021-03-11 16:58:00',0,'2021-03-11 17:03:12'),
(23,'science','单片机的机械臂研究',' 摘要：工业机器人是现代科学技术的融合下的产物，属于机电自动化设备的一种。机械臂作为工业机器人的核心，在提高工业生产效率的同时，也保障了工作人员的身心安全。本文以某款基于单片机的机械臂为例，对机械臂的设计方法和实现功能进行简要概述，希望为相关行业提供借鉴。\r\n \r\n关键词：单片机；机械臂；定时器\r\n \r\n引言\r\n \r\n在科学技术高速发展的今天，工业机器人实现了普及应用，尤其是在工业生产领域，工业制造、机械制造行业的部分工业生产链已经完全由工业机器人组成，工作人员仅需通过程序控制，即可在规定时间内保质保量的完成生产任务。机械臂作为工业机器人的核心，受到了技术人员的高度关注。因此对此项课题进行研究，其意义十分重大。\r\n \r\n1机械结构和控制系统\r\n \r\n1.1机械结构\r\n \r\n现阶段，机械臂的动力驱动方式主要包括三种：第一种是绳索式；第二种是气动式；第三种为齿轮式。在这三种驱动方式中，应用频率是最高的驱动方式为齿轮式，究其原因，主要是这种驱动方式与其他两种相比，在传动精度、体积、运行效率和稳定性方面优势显著[1]。制造工业的高速发展，对机械臂而言可谓是严峻的考验，多自由度、高速度和精度逐渐成为了机械臂未来发展的方向，本文所研究的机械臂其运动方式为齿轮式。这种基于单片机的机械臂，属于四自由度机械臂，所采取的控制方式为舵机控制，其中1号舵机可以对底座进行控制、是自由旋转功能实现的保障。机械臂的上下运动由2号舵机控制。末端机械抓水平倾角由3号舵机控制，而最后一个舵机可以起到控制机械爪开合的作用。在机械臂运动过程中，为了确保机械臂运行的精度，将数字舵机作为2号舵机的主要内容。\r\n \r\n1.2控制系统',0,'已发布','Linxinhua','2021-03-11 16:59:00',0,'2021-03-11 17:03:12'),
(24,'science','机械制造工艺及精密加工技术的应用',' 摘要：随着我国经济的蓬勃发展，我国科学技术也日新月异，尤其对于机械制造行业来说，科学技术的利用帮助这个行业获得了更多的经济效益。目前，传统的机械制造工艺已经无法满足当代社会对于机械设备的需求，为了促进机械制造行业的发展，我们需要融入先进的发展理念，将优秀的现代机械制造工艺以及精密的加工技术融入到机械制造行业中。本文就针对现代机械制造工艺及紧密加工技术的应用进行分析。\r\n \r\n关键词：现代机械制造工艺；精密加工技术；应用分析\r\n \r\n1现代机械制造工艺及精密加工技术的特性\r\n \r\n1.1相关性\r\n \r\n现代机械制造工艺及精密加工技术属于新型的技术之一，这种技术将科学技术和机械制造工艺完美的结合起来，在生产机械的每个过程中都有所参与。现代机械制造工艺及精密加工技术在机械的设计、生产、制作以及养护等过程中都起着非常重要的作用，具有较广的应用范围。这就是我们所说的相关性，主要体现在现代机械制造工艺和精密加工技术的结合上。在进行机械生产的过程中，我们需要重视每一个生产环节，尽可能减少出错，生产的过程需要严格按照有关规定进行操作，充分发挥出现代机械制造工艺及精密加工技术的作用，确保机械生产企业未来的发展[1]。\r\n \r\n1.2系统性\r\n \r\n现代机械制造工艺及精密加工技术在生产时是比较系统的一个过程，其中融入了信息管理技术、计算机技术、无人化生产技术以及传感技术，这些先进的技术在实际的机械生产过程中，实现了生产的智能化和自动化，并且应用这种工艺和技术时，我们也需要应用更加高效的管理方法，由此可见现代机械制造工艺及精密加工技术的系统性[2]。\r\n \r\n1.3全球性\r\n \r\n近年来，各个国家之间的竞争越来越激烈，想要让中国的机械制造企业在国际市场上站稳脚跟，我们就需要不断的吸取国外先进的技术，将我们传统的制造工艺和先进的技术结合起来，才能够促进企业未来的快速发展，提高企业机械制造的水平和能力。\r\n \r\n2现代机械制造工艺及精密加工技术的应用方法\r\n ',0,'已发布','Linxinhua','2021-03-11 17:00:00',0,'2021-03-11 17:03:12'),
(25,'science','没有错都是我发的','哈哈哈哈哈哈哈哈哈哈或',0,'已发布','Linxinhua','2021-03-11 17:00:00',0,'2021-03-11 17:03:12');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userRole` varchar(10) NOT NULL DEFAULT '普通用户' COMMENT '用户角色',
  `email` varchar(20) DEFAULT NULL,
  `creatBy` int(11) NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyBy` int(11) DEFAULT NULL,
  `modifyDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`userRole`,`email`,`creatBy`,`creationDate`,`modifyBy`,`modifyDate`) values 
(1,'ZhouSit','1234567','管理员','758725259@qq.com',1,'2021-02-20 00:00:00',1,'2021-03-09 23:43:41'),
(2,'Linxinhua','123456','管理员','2812409188@qq.com',1,'2021-02-27 16:52:26',1,'2021-02-27 16:52:48'),
(3,'Leiqide','123456','管理员','2287329869@qq.com',1,'2021-02-27 16:53:27',1,'2021-02-27 16:53:51'),
(4,'Zhenwenhao','123456','管理员','3267794019@qq.com',1,'2021-02-27 16:54:21',1,'2021-02-27 16:54:56'),
(5,'sh2ina','123456','管理员','542108402@qq.com',1,'2021-02-27 16:55:48',1,'2021-02-27 16:55:48'),
(15,'ZhouSit1','1234567','普通用户','1641586@qq.com',0,'2021-03-09 23:25:00',0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;