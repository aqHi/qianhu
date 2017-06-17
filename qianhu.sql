-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hahu
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_content` text,
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `question_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,'<p>回答1</p>',3,1493522121495,'1',12),(2,'<p>回答2</p>',2,1493522128825,'1',12),(3,'<p>回答3</p>',0,1493522142803,'2',12),(4,'<p>回答4</p>',0,1493522147411,'2',12),(5,'<p>回答5</p>',2,1493555276539,'1',12),(6,'<p><img src=\"/uploads/pic/python.jpg\" alt=\"v2-256a26769ba3c47e236371c5340c8917_r\" style=\"max-width:100%;\"><br></p><p><br></p>',2,1493555627945,'3',12),(7,'<p>回答6</p>',0,1493617010248,'2',12),(8,'<p>回答7</p>',0,1493620560186,'2',12),(9,'<p>回答8</p>',0,1493620568125,'2',12),(10,'<p>回答9</p>',0,1493620572354,'2',12),(11,'<p><img src=\"/uploads/pic/python.jpg\" alt=\"timg\" style=\"max-width:100%;\"><br></p><p><br></p>',1,1493621303315,'1',12),(12,'<p>dsds</p>',1,1493645184138,'1',12),(13,'<p>回答测试</p>',0,1493691258116,'4',12),(14,'<p>测试回答</p>',0,1493691656392,'5',12),(15,'<p>回答测试啊</p>',0,1493731706743,'4',12),(16,'<p>灰</p>',0,1493798622439,'1',12),(17,'<p>白</p>',0,1493798727753,'1',12),(18,'<p>嗨</p><p><br></p>',0,1493798746337,'1',12),(19,'<p>红</p><p><br></p>',0,1493798762705,'1',12),(20,'<p>率</p>',0,1493798870937,'1',12),(21,'<p>gdfs ds&nbsp;</p>',0,1494033521207,'1',12),(22,'<p>gdfs ds&nbsp;</p>',0,1494033530792,'1',12),(23,'<p>ml;ml;</p>',0,1494059427137,'37',12),(24,'<p>ml;ml;lkn&nbsp;</p>',0,1494059543048,'37',12),(25,'<p>ds</p>',0,1494144947731,'1',12),(26,'<p>zx</p>',0,1494144964398,'1',12),(27,'<p>zzz</p>',0,1494145044271,'1',12),(28,'<p>test!<br></p>',1,1496741526904,'38',12),(29,'<p>1111<br></p>',0,1496741544287,'38',12),(30,'<p>wtf</p>',1,1496742676503,'1',12),(31,'<p>苟利<br></p>',1,1496830433915,'39',13),(32,'<p><span>无可奉告</span></p><p><br></p>',1,1497098867416,'41',13),(33,'<p>建议提到胸口，要穿个朴素的白衬衫，再配上个黑方框眼镜，与人交流的时候手要跟着激情的挥舞这样你就很有魅力了<br></p><p><br></p>',1,1497099029024,'41',9),(34,'<p><span>主要有三个特点：不断学习知识 不断提高跑步速度 对西方的媒体也要非常熟悉</span></p><p><br></p>',1,1497099766478,'42',13),(35,'<p>不是很懂，唯一的印象就是香港记者跑的非常快</p>',0,1497099843213,'42',9);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_comment`
--

DROP TABLE IF EXISTS `answer_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer_comment` (
  `answer_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_comment_content` text,
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `at_user_id` int(11) DEFAULT NULL,
  `at_user_name` varchar(100) DEFAULT NULL,
  `answer_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`answer_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_comment`
--

LOCK TABLES `answer_comment` WRITE;
/*!40000 ALTER TABLE `answer_comment` DISABLE KEYS */;
INSERT INTO `answer_comment` VALUES (1,'sdfds',0,1494033512432,NULL,NULL,'2',12),(2,'non',0,1494060723764,12,'张三','2',12);
/*!40000 ALTER TABLE `answer_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_name` varchar(100) NOT NULL DEFAULT '',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `followed_count` int(11) DEFAULT '0',
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (1,'笔记',1493375258619,1493375258619,12,0),(2,'收藏夹1',1493434965693,1493434965693,12,0),(3,'收藏夹2',1493437777932,1493437777932,12,0),(4,'张三的收藏夹',1493690361735,1493690361735,12,0),(5,'张三的收藏夹2',1493690373713,1493690373713,12,0),(6,'test',1496829828250,1496829828250,13,0);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `second_type` int(11) DEFAULT NULL,
  `message_date` varchar(50) DEFAULT NULL,
  `message_time` bigint(20) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `from_user_name` varchar(50) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,1,1,'2017-05-01',1493641882710,12,'李四',NULL,NULL,NULL,NULL,13),(3,2,1,'2017-05-01',1493643671005,12,'李四',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',11,NULL,13),(4,3,1,'2017-05-01',1493644376398,12,'李四',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',1,2,13),(5,4,1,'2017-05-01',1493645184174,12,'李四',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',12,NULL,13),(6,2,1,'2017-05-02',1493691192097,12,'fanchao',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',12,NULL,13),(7,3,1,'2017-05-02',1493691199548,12,'fanchao',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',12,3,13),(8,4,1,'2017-05-02',1493691258161,12,'fanchao',4,'Java程序员，最常用的20％技术有哪些？',13,NULL,13),(9,4,1,'2017-05-02',1493691656481,12,'fanchao',5,'测试问题',14,NULL,13),(10,4,1,'2017-05-02',1493731706962,12,'张三',4,'Java程序员，最常用的20％技术有哪些？',15,NULL,13),(11,4,1,'2017-05-03',1493798622663,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',16,NULL,13),(12,4,1,'2017-05-03',1493798727798,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',17,NULL,13),(13,4,1,'2017-05-03',1493798746350,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',18,NULL,13),(14,4,1,'2017-05-03',1493798762756,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',19,NULL,13),(15,4,1,'2017-05-03',1493798870961,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',20,NULL,13),(16,3,1,'2017-05-03',1493799014622,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',1,4,13),(17,2,1,'2017-05-06',1494033497565,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',5,NULL,13),(18,3,1,'2017-05-06',1494033512515,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',2,1,13),(19,4,1,'2017-05-06',1494033521273,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',21,NULL,13),(20,4,1,'2017-05-06',1494033530817,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',22,NULL,13),(21,4,1,'2017-05-06',1494059427168,12,'张三',37,'koko',23,NULL,13),(22,4,1,'2017-05-06',1494059543098,12,'张三',37,'koko',24,NULL,13),(23,4,1,'2017-05-07',1494144947975,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',25,NULL,13),(24,4,1,'2017-05-07',1494144964421,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',26,NULL,13),(25,4,1,'2017-05-07',1494145044288,12,'张三',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',27,NULL,13),(26,4,1,'2017-06-06',1496741527034,12,'aqh',38,'123',28,NULL,13),(27,2,1,'2017-06-06',1496741533443,12,'aqh',38,'123',28,NULL,13),(28,4,1,'2017-06-06',1496741544324,12,'aqh',38,'123',29,NULL,13),(29,4,1,'2017-06-06',1496742676629,12,'666',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',30,NULL,13),(30,2,1,'2017-06-06',1496742680338,12,'666',1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？',30,NULL,12),(31,4,1,'2017-06-07',1496830434038,13,'lee',39,'裤腰带提多高才算好？',31,NULL,13),(32,2,1,'2017-06-07',1496830857218,9,'aqh',39,'裤腰带提多高才算好？',31,NULL,13),(33,1,1,'2017-06-10',1497098337150,9,'艾琴海',NULL,NULL,NULL,NULL,12),(34,1,1,'2017-06-10',1497098596915,9,'艾琴海',NULL,NULL,NULL,NULL,12),(35,4,1,'2017-06-10',1497098867457,13,'lee',41,'为什么老人总喜欢把裤腰带系的很高？',32,NULL,13),(36,2,1,'2017-06-10',1497098939686,9,'艾琴海',41,'为什么老人总喜欢把裤腰带系的很高？',32,NULL,13),(37,4,1,'2017-06-10',1497099029152,9,'艾琴海',41,'为什么老人总喜欢把裤腰带系的很高？',33,NULL,13),(38,2,1,'2017-06-10',1497099035738,9,'艾琴海',41,'为什么老人总喜欢把裤腰带系的很高？',33,NULL,9),(39,1,1,'2017-06-10',1497099197130,9,'艾琴海',NULL,NULL,NULL,NULL,13),(40,4,1,'2017-06-10',1497099766605,13,'Zarathustra',42,'在香港当记者是一种怎样的体验？',34,NULL,13),(41,2,1,'2017-06-10',1497099769979,13,'Zarathustra',42,'在香港当记者是一种怎样的体验？',34,NULL,13),(42,4,1,'2017-06-10',1497099843340,9,'艾琴海',42,'在香港当记者是一种怎样的体验？',35,NULL,13),(43,1,1,'2017-06-10',1497100278374,9,'艾琴海',NULL,NULL,NULL,NULL,13),(44,1,1,'2017-06-10',1497100622659,9,'艾琴海',NULL,NULL,NULL,NULL,13),(45,1,1,'2017-06-10',1497100680289,9,'艾琴海',NULL,NULL,NULL,NULL,13),(46,1,1,'2017-06-10',1497106614570,9,'艾琴海',NULL,NULL,NULL,NULL,13),(47,1,1,'2017-06-10',1497107712308,9,'艾琴海',NULL,NULL,NULL,NULL,13),(48,1,1,'2017-06-10',1497107726464,9,'艾琴海',NULL,NULL,NULL,NULL,13),(49,1,1,'2017-06-10',1497108259949,9,'艾琴海',NULL,NULL,NULL,NULL,13),(50,1,1,'2017-06-10',1497108272612,9,'艾琴海',NULL,NULL,NULL,NULL,13),(51,1,1,'2017-06-10',1497108281600,9,'艾琴海',NULL,NULL,NULL,NULL,13),(52,1,1,'2017-06-10',1497108496567,9,'艾琴海',NULL,NULL,NULL,NULL,13);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) NOT NULL DEFAULT '',
  `question_content` text,
  `topic_kv_list` varchar(200) NOT NULL DEFAULT '',
  `followed_count` int(11) NOT NULL DEFAULT '0',
  `scaned_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？','<p>问题1</p>','{180:\"算法\",40:\"java\"}',0,0,1493520121386,12),(2,'零基础应该选择学习 java、php、前端 还是 python？','<p>问题2&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br></p>','{160:\"c++\",40:\"java\"}',0,0,1493520177143,12),(3,'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？','<p>如题</p>','{181:\"javaee\",40:\"java\"}',0,0,1493555405611,12),(4,'Java程序员，最常用的20％技术有哪些？','<p>如题</p>','{40:\"java\"}',0,0,1493688528417,12),(5,'测试问题','<p>测试问题</p>','{3:\"python\"}',0,0,1493691571605,12),(7,'Java 的开发效率究竟比 C++ 高在哪里？','muyou','{160:\"C++\",182:\"面向对象编程\",183:\"编程语言比较\",40:\"Java\"}',0,0,1493871034055,12),(8,'在北京做Java开发如何月薪达到两万，需要技术水平达到什么程度？','muyou','{176:\"编程\",184:\"程序员\",40:\"Java\",185:\"互联网工作\"}',0,0,1493871034175,12),(9,'中国现在有多少程序员？','muyou','{184:\"程序员\",186:\"IT 行业\",187:\"Java 程序员\"}',0,0,1493871034352,12),(10,'如何评价招行的手机APP和招行信用卡app“掌上生活”？','muyou','{96:\"Android 开发\",188:\"社交网络\",189:\"手机\",190:\"用户界面设计\",191:\"招商银行\"}',0,0,1493871034411,12),(11,'如何自学 Android 编程？','muyou','{176:\"编程\",96:\"Android 开发\",192:\"学习方法\",97:\"Android\",193:\"Android 应用设计\"}',0,0,1493871034498,12),(12,'什么促使你走上独立开发者之路？','muyou','{96:\"Android 开发\",194:\"调查类问题\",195:\"独立开发者\",184:\"程序员\",122:\"iOS 开发\"}',0,0,1493871034594,12),(13,'当你学会了什么之后感觉自己的编程算是入门了?','muyou','{176:\"编程\",177:\"编程语言\",196:\"C（编程语言）\",197:\"Java 编程\",198:\"自学编程\"}',0,0,1493871034799,12),(14,'阿里巴巴、美团等各大互联网公司的 Java 类校招对本科生的要求是什么？','muyou','{176:\"编程\",197:\"Java 编程\",199:\"互联网\",40:\"Java\",200:\"BAT（公司集合）\"}',0,0,1493871034899,12),(15,'如何用一段简单的代码讲述一个悲伤的故事？','muyou','{3:\"Python\",196:\"C（编程语言）\",184:\"程序员\",40:\"Java\",173:\"Bash\"}',0,0,1493871035060,12),(16,'长沙的计算机行业怎么样？','muyou','{197:\"Java 编程\",201:\"计算机\",202:\"长沙\"}',0,0,1493871035111,12),(17,'一个web项目，多个用户从不同的客户端浏览器同时访问需要考虑哪些问题？','muyou','{40:\"Java\",203:\"高并发\"}',0,0,1493871035153,12),(18,'会计转行从事IT，如何在一年时间内全职学习？','muyou','{176:\"编程\",40:\"Java\",201:\"计算机\",74:\".NET\",204:\"转行\"}',0,0,1493871035207,12),(19,'有哪些IT初学者（新人）成长为技术大牛的真实经历？','muyou','{96:\"Android 开发\",199:\"互联网\",184:\"程序员\",186:\"IT 行业\"}',0,0,1493871035274,12),(20,'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？','muyou','{33:\"JavaScript\",199:\"互联网\",40:\"Java\",205:\"产品\",31:\"CSS\"}',0,0,1493871035370,12),(21,'开发一个 Flappy Bird 需要多少行代码，多少时间？','muyou','{96:\"Android 开发\",208:\"Flappy Bird\",209:\"CocosEditor\",206:\"手机游戏\",207:\"Cocos2d-x\"}',0,0,1493871035436,12),(22,'IT 大牛是怎样炼成的？','muyou','{113:\"Linux\",199:\"互联网\",184:\"程序员\",40:\"Java\",186:\"IT 行业\"}',0,0,1493871035534,12),(23,'学习 JAVA，有什么书籍推荐？学习的方法和过程是怎样的？','muyou','{177:\"编程语言\",210:\"Java EE\",197:\"Java 编程\",40:\"Java\"}',0,0,1493871035620,12),(24,'码农们最常说的谎言是什么？','muyou','{176:\"编程\",211:\"软件开发\",212:\"C / C++\",184:\"程序员\",40:\"Java\"}',0,0,1493871035665,12),(25,'零基础应该选择学习 java、php、前端 还是 python？','muyou','{176:\"编程\",3:\"Python\",51:\"PHP\",184:\"程序员\",40:\"Java\"}',0,0,1493871035705,12),(26,'计算机专业即将毕业是否要去培训（Java ）？','muyou','{213:\"电子信息工程\",40:\"Java\"}',0,0,1493871035759,12),(27,'Java培训哪家好？','muyou','{214:\"IT 培训\",215:\"教育培训机构\",40:\"Java\",187:\"Java 程序员\"}',0,0,1493871035797,12),(28,'请问一个JavaScript、java高手，node.js的一个问题？','muyou','{64:\"Node.js\",40:\"Java\",216:\"Java Web\"}',0,0,1493871035832,12),(29,'程序员带孩子是怎样一种体验？','muyou','{184:\"程序员\",217:\"IT 男\",186:\"IT 行业\",218:\"女程序员\",187:\"Java 程序员\"}',0,0,1493871035878,12),(30,'零基础自学 Android 并去找工作可行性大么？','muyou','{176:\"编程\",96:\"Android 开发\",197:\"Java 编程\",184:\"程序员\"}',0,0,1493871035929,12),(31,'为什么程序代码被编译成机器码就不能跨平台运行？','muyou','{196:\"C（编程语言）\",212:\"C / C++\",40:\"Java\",219:\"计算机科学\"}',0,0,1493871035977,12),(32,'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？','muyou','{43:\"Spring\",220:\"Ruby on Rails\",221:\"Django（框架）\",222:\"设计模式\",223:\"Express（框架）\"}',0,0,1493871036084,12),(33,'请问有详细介绍threadlocal的书籍吗？或者有哪位大神能详细说明下threadlocal？','muyou','{224:\"ThreadLocal\",40:\"Java\"}',0,0,1493871036160,12),(34,'由于高中没怎么学，上了大专，想做java开发，但是看见基本要求就是本科，请问我该继续吗？应该怎么做？','muyou','{176:\"编程\",40:\"Java\",186:\"IT 行业\"}',0,0,1493871036189,12),(35,'Java新手如何学习Spring、Struts、Hibernate三大框架？','muyou','{197:\"Java 编程\",216:\"Java Web\",43:\"Spring\",44:\"Hibernate\",45:\"Struts\"}',0,0,1493871036226,12),(36,'家政服务app开发的发展前景如何？','muyou','{96:\"Android 开发\",225:\"移动互联网\",97:\"Android\",226:\"移动开发\",122:\"iOS 开发\"}',0,0,1493871036281,12),(37,'koko','<p>gkg&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br></p>','{40:\"java\"}',0,0,1494059413364,12),(38,'123','','{227:\"123\"}',0,0,1496740036961,9),(39,'裤腰带提多高才算好？','<p>如题<br></p>','{228:\"膜法\"}',0,0,1496830377880,13),(40,'test2','<p><img src=\"/uploads/pic/eec640a4-f09f-4bde-ad1d-f589185d6642.png\" alt=\"ie\" style=\"max-width:100%;\">hello<br></p><p><br></p>','{229:\"what\"}',0,0,1496852279461,9),(41,'为什么老人总喜欢把裤腰带系的很高？','<p><span>身边的很多老人都是这样，是为了保暖吗？</span></p><p><br></p>','{230:\"长者，膜法\"}',0,0,1497098833572,13),(42,'在香港当记者是一种怎样的体验？','<p><span>这个对体能的要求是很大的，比如要跑得快。<br>还要有一定的批判技巧<br>对突如其来的暴力场面要有可控力<br>最重要的一点是要有自己的判断力，不能见着风是得雨。</span></p><p><br></p>','{231:\"记者\"}',0,0,1497099727264,13);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_comment`
--

DROP TABLE IF EXISTS `question_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_comment` (
  `question_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_comment_content` text,
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `at_user_id` int(11) DEFAULT NULL,
  `at_user_name` varchar(100) DEFAULT NULL,
  `question_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`question_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_comment`
--

LOCK TABLES `question_comment` WRITE;
/*!40000 ALTER TABLE `question_comment` DISABLE KEYS */;
INSERT INTO `question_comment` VALUES (1,'11',0,1494033474466,NULL,NULL,'1',9),(2,'dfs ',0,1494033479601,5,'张三','1',9),(3,'nk;ln',0,1494059420208,NULL,NULL,'37',9),(4,'111111111',0,1496740044818,NULL,NULL,'38',9);
/*!40000 ALTER TABLE `question_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_topic`
--

DROP TABLE IF EXISTS `question_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_topic` (
  `qt_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`qt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_topic`
--

LOCK TABLES `question_topic` WRITE;
/*!40000 ALTER TABLE `question_topic` DISABLE KEYS */;
INSERT INTO `question_topic` VALUES (1,1,40),(2,1,180),(3,2,40),(4,2,160),(5,3,40),(6,3,181),(7,4,40),(8,5,3),(9,6,40),(10,6,182),(11,6,160),(12,6,183),(13,7,40),(14,7,182),(15,7,160),(16,7,183),(17,8,184),(18,8,176),(19,8,40),(20,8,185),(21,9,184),(22,9,186),(23,9,187),(24,10,188),(25,10,189),(26,10,96),(27,10,190),(28,10,191),(29,11,176),(30,11,96),(31,11,192),(32,11,97),(33,11,193),(34,12,184),(35,12,194),(36,12,122),(37,12,195),(38,12,96),(39,13,177),(40,13,176),(41,13,196),(42,13,197),(43,13,198),(44,14,199),(45,14,176),(46,14,40),(47,14,197),(48,14,200),(49,15,184),(50,15,3),(51,15,40),(52,15,196),(53,15,173),(54,16,201),(55,16,202),(56,16,197),(57,17,40),(58,17,203),(59,18,176),(60,18,201),(61,18,204),(62,18,40),(63,18,74),(64,19,199),(65,19,184),(66,19,96),(67,19,186),(68,20,199),(69,20,31),(70,20,205),(71,20,33),(72,20,40),(73,21,206),(74,21,96),(75,21,207),(76,21,208),(77,21,209),(78,22,199),(79,22,184),(80,22,113),(81,22,40),(82,22,186),(83,23,177),(84,23,40),(85,23,197),(86,23,210),(87,24,184),(88,24,211),(89,24,176),(90,24,40),(91,24,212),(92,25,184),(93,25,3),(94,25,51),(95,25,176),(96,25,40),(97,26,40),(98,26,213),(99,27,40),(100,27,214),(101,27,187),(102,27,215),(103,28,40),(104,28,64),(105,28,216),(106,29,184),(107,29,217),(108,29,186),(109,29,218),(110,29,187),(111,30,184),(112,30,176),(113,30,96),(114,30,197),(115,31,40),(116,31,196),(117,31,219),(118,31,212),(119,32,220),(120,32,221),(121,32,43),(122,32,222),(123,32,223),(124,33,40),(125,33,224),(126,34,176),(127,34,40),(128,34,186),(129,35,45),(130,35,197),(131,35,43),(132,35,44),(133,35,216),(134,36,225),(135,36,122),(136,36,96),(137,36,97),(138,36,226),(139,37,40),(140,38,227),(141,39,228),(142,40,229),(143,41,230),(144,42,231);
/*!40000 ALTER TABLE `question_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(30) NOT NULL DEFAULT '',
  `topic_desc` text,
  `topic_image` varchar(255) NOT NULL DEFAULT 'http://localhost:8080/hahu/image/topic3.png',
  `parent_topic_id` int(11) DEFAULT '1',
  `followed_count` int(11) DEFAULT '0',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'根话题','根话题','/uploads/pic/python.jpg',0,0),(2,'Python 开发','暂无描述','/uploads/pic/python.jpg',0,0),(3,'python','暂无描述','/uploads/pic/python.jpg',2,0),(4,'list','暂无描述','/uploads/pic/list.jpg',2,0),(5,'django','暂无描述','/uploads/pic/django.jpg',2,0),(6,'flask','暂无描述','/uploads/pic/flask.png',2,0),(7,'tornado','暂无描述','/uploads/pic/tornado.png',2,0),(8,'web.py','暂无描述','/uploads/pic/webpy.gif',2,0),(9,'sqlalchemy','暂无描述','/uploads/pic/sqla_logo.png',2,0),(10,'virtualenv','暂无描述','/uploads/pic/tornado.png',2,0),(11,'搜索','暂无描述','/uploads/pic/sousuo.jpg',0,0),(12,'搜索引擎','暂无描述','/uploads/pic/sousuo.jpg',11,0),(13,'中文分词','暂无描述','/uploads/pic/zhongwenfenci.jpg',11,0),(14,'全文检索','暂无描述','/uploads/pic/seo.jpg',11,0),(15,'lucene','暂无描述','/uploads/pic/lucene.jpg',11,0),(16,'solr','暂无描述','/uploads/pic/solr.jpg',11,0),(17,'sphinx','暂无描述','/uploads/pic/sphinx.jpg',11,0),(18,'analyzer','暂无描述','/uploads/pic/analyzer.jpg',11,0),(19,'elasticsearch','暂无描述','/uploads/pic/elasticsearch.jpg',11,0),(20,'开放平台','暂无描述','/uploads/pic/kaifang.jpg',0,0),(21,'新浪微博','暂无描述','/uploads/pic/snia_logo.jpg',20,0),(22,'人人网','暂无描述','/uploads/pic/renren.jpg',20,0),(23,'微信','暂无描述','/uploads/pic/wechat.jpg',20,0),(24,'腾讯微博','暂无描述','/uploads/pic/weibo.jpg',20,0),(25,'百度','暂无描述','/uploads/pic/logo_top_ca79a146.png',20,0),(26,'facebook','暂无描述','/uploads/pic/facebook.jpg',20,0),(27,'twitter','暂无描述','/uploads/pic/twitter.jpg',20,0),(28,'前端开发','暂无描述','/uploads/pic/seo.jpg',0,0),(29,'html','暂无描述','/uploads/pic/html.jpg',28,0),(30,'html5','暂无描述','/uploads/pic/html5.jpg',28,0),(31,'css','暂无描述','/uploads/pic/css.jpg',28,0),(32,'css3','暂无描述','/uploads/pic/css3.jpg',28,0),(33,'javascript','暂无描述','/uploads/pic/javascript.jpg',28,0),(34,'jquery','暂无描述','/uploads/pic/jquery.jpg',28,0),(35,'json','暂无描述','/uploads/pic/json.jpg',28,0),(36,'ajax','暂无描述','/uploads/pic/ajax.jpg',28,0),(37,'正则表达式','暂无描述','/uploads/pic/regex.jpg',28,0),(38,'bootstrap','暂无描述','/uploads/pic/bootstrap.jpg',28,0),(39,'JAVA 开发','暂无描述','/uploads/pic/java.jpg',0,0),(40,'java','暂无描述','/uploads/pic/java_logo.jpg',39,1),(41,'java-ee','暂无描述','/uploads/pic/javaee.jpg',39,0),(42,'jar','暂无描述','/uploads/pic/java.jpg',39,0),(43,'spring','暂无描述','/uploads/pic/spring.png',39,0),(44,'hibernate','暂无描述','/uploads/pic/hibernate.jpg',39,0),(45,'struts','暂无描述','/uploads/pic/struts.jpg',39,0),(46,'tomcat','暂无描述','/uploads/pic/tomcat.jpg',39,0),(47,'maven','暂无描述','/uploads/pic/maven.jpg',39,0),(48,'eclipse','暂无描述','/uploads/pic/eclipse.jpg',39,0),(49,'intellij-idea','暂无描述','/uploads/pic/intellij-idea.jpg',39,0),(50,'PHP 开发','暂无描述','/uploads/pic/php.jpg',0,0),(51,'php','暂无描述','/uploads/pic/php.jpg',50,0),(52,'mysql','暂无描述','/uploads/pic/mysql.jpg',50,0),(53,'apache','暂无描述','/uploads/pic/apache.jpg',50,0),(54,'nginx','暂无描述','/uploads/pic/nginx.jpg',50,0),(55,'mvc','暂无描述','/uploads/pic/mvc.jpg',50,0),(56,'codeigniter','暂无描述','/uploads/pic/codeigniter.jpg',50,0),(57,'symfony','暂无描述','/uploads/pic/symfony.jpg',50,0),(58,'zend-framework','暂无描述','/uploads/pic/zend-framework.jpg',50,0),(59,'composer','暂无描述','/uploads/pic/composer.jpg',50,0),(60,'laravel','暂无描述','/uploads/pic/laravel.jpg',50,0),(61,'JavaScript 开发','暂无描述','/uploads/pic/javascript.jpg',0,0),(62,'javascript','暂无描述','/uploads/pic/javascript.jpg',61,0),(63,'jquery','暂无描述','/uploads/pic/jquery.jpg',61,0),(64,'node.js','暂无描述','/uploads/pic/node.js.jpg',61,0),(65,'chrome','暂无描述','/uploads/pic/chrome.jpg',61,0),(66,'firefox','暂无描述','/uploads/pic/firefox.jpg',61,0),(67,'internet-explorer','暂无描述','/uploads/pic/internet-explorer.jpg',61,0),(68,'angular.js','暂无描述','/uploads/pic/angular.js.jpg',61,0),(69,'typescript','暂无描述','/uploads/pic/typescript.jpg',61,0),(70,'ecmascript','暂无描述','/uploads/pic/ecmascript.jpg',61,0),(71,'vue.js','暂无描述','/uploads/pic/vue.js',61,0),(72,'react.js','暂无描述','/uploads/pic/react.js.jpg',61,0),(73,'.NET 开发','暂无描述','/uploads/pic/.net.jpg',0,0),(74,'.net','暂无描述','/uploads/pic/.net.jpg',73,0),(75,'c#','暂无描述','/uploads/pic/c__.jpg',73,0),(76,'asp.net','暂无描述','/uploads/pic/.net.jpg',73,0),(77,'visual-studio','暂无描述','/uploads/pic/visual-studio.jpg',73,0),(78,'mvc','暂无描述','/uploads/pic/mvc.jpg',73,0),(79,'microsoft','暂无描述','/uploads/pic/microsoft.jpg',73,0),(80,'开发工具','暂无描述','/uploads/pic/开发工具.jpg',0,0),(81,'vim','暂无描述','/uploads/pic/vim.jpg',80,0),(82,'emacs','暂无描述','/uploads/pic/emacs.jpg',80,0),(83,'ide','暂无描述','/uploads/pic/ide.jpg',80,0),(84,'eclipse','暂无描述','/uploads/pic/eclipse.jpg',80,0),(85,'xcode','暂无描述','/uploads/pic/xcode.jpg',80,0),(86,'intellij-idea','暂无描述','/uploads/pic/intellij-idea.jpg',80,0),(87,'textmate','暂无描述','/uploads/pic/textmate.jpg',80,0),(88,'sublime-text','暂无描述','/uploads/pic/sublime-text.jpg',80,0),(89,'visual-studio','暂无描述','/uploads/pic/visual-studio.jpg',80,0),(90,'git','暂无描述','/uploads/pic/git.jpg',80,0),(91,'github','暂无描述','/uploads/pic/github.jpg',80,0),(92,'svn','暂无描述','/uploads/pic/svn.jpg',80,0),(93,'hg','暂无描述','/uploads/pic/TortoiseHg.jpg',80,0),(94,'docker','暂无描述','/uploads/pic/docker.jpg',80,0),(95,'ci','暂无描述','/uploads/pic/ci.jpg',80,0),(96,'Android 开发','暂无描述','/uploads/pic/android.jpg',0,0),(97,'android','暂无描述','/uploads/pic/android.jpg',96,0),(98,'java','暂无描述','/uploads/pic/java.jpg',96,0),(99,'eclipse','暂无描述','/uploads/pic/eclipse.jpg',96,0),(100,'xml','暂无描述','/uploads/pic/xml.jpg',96,0),(101,'phonegap','暂无描述','/uploads/pic/phonegap.jpg',96,0),(102,'json','暂无描述','/uploads/pic/json.jpg',96,0),(103,'webview','暂无描述','/uploads/pic/webview.jpg',96,0),(104,'android-studio','暂无描述','/uploads/pic/android-studio.jpg',96,0),(105,'Ruby 开发','暂无描述','/uploads/pic/ruby.png',0,0),(106,'ruby','暂无描述','/uploads/pic/ruby.jpg',105,0),(107,'ruby-on-rails','暂无描述','/uploads/pic/ruby-on-rails.jpg',105,0),(108,'rubygems','暂无描述','/uploads/pic/rubygems.png',105,0),(109,'rvm','暂无描述','/uploads/pic/rvm.jpg',105,0),(110,'macosx','暂无描述','/uploads/pic/macosx.jpg',105,0),(111,'bundle','暂无描述','/uploads/pic/android.jpg',105,0),(112,'服务器','暂无描述','/uploads/pic/服务器.jpg',0,0),(113,'linux','暂无描述','/uploads/pic/linux.jpg',112,0),(114,'unix','暂无描述','/uploads/pic/unix.jpg',112,0),(115,'ubuntu','暂无描述','/uploads/pic/ubuntu.jpg',112,0),(116,'windows-server','暂无描述','/uploads/pic/windows-server.jpg',112,0),(117,'centos','暂无描述','/uploads/pic/centos.jpg',112,0),(118,'负载均衡','暂无描述','/uploads/pic/负载均衡.jpg',112,0),(119,'缓存','暂无描述','/uploads/pic/java.jpg',112,0),(120,'apache','暂无描述','/uploads/pic/apache.jpg',112,0),(121,'nginx','暂无描述','/uploads/pic/nginx.jpg',112,0),(122,'iOS 开发','暂无描述','/uploads/pic/ios.jpg',0,0),(123,'ios','暂无描述','/uploads/pic/ios.jpg',122,0),(124,'objective-c','暂无描述','/uploads/pic/list.jpg',122,0),(125,'sqlite','暂无描述','/uploads/pic/sqlite.jpg',122,0),(126,'safari','暂无描述','/uploads/pic/safari.jpg',122,0),(127,'xcode','暂无描述','/uploads/pic/xcode.jpg',122,0),(128,'phonegap','暂无描述','/uploads/pic/phonegap.jpg',122,0),(129,'cocoa','暂无描述','/uploads/pic/cocoa.jpg',122,0),(130,'javascript','暂无描述','/uploads/pic/javascript.jpg',122,0),(131,'macos','暂无描述','/uploads/pic/macos.jpg',122,0),(132,'iphone','暂无描述','/uploads/pic/iphone.jpg',122,0),(133,'ipad','暂无描述','/uploads/pic/ipad.jpg',122,0),(134,'swift','暂无描述','/uploads/pic/swift.jpg',122,0),(135,'数据库','暂无描述','/uploads/pic/数据库.jpg',0,0),(136,'数据库','暂无描述','/uploads/pic/数据库.jpg',135,0),(137,'mysql','暂无描述','/uploads/pic/mysql.jpg',135,0),(138,'sqlite','暂无描述','/uploads/pic/sqlite.jpg',135,0),(139,'oracle','暂无描述','/uploads/pic/oracle.jpg',135,0),(140,'sql','暂无描述','/uploads/pic/sql.jpg',135,0),(141,'nosql','暂无描述','/uploads/pic/nosql.jpg',135,0),(142,'redis','暂无描述','/uploads/pic/redis.jpg',135,0),(143,'mongodb','暂无描述','/uploads/pic/mongodb.jpg',135,0),(144,'memcached','暂无描述','/uploads/pic/memcached.jpg',135,0),(145,'postgresql','暂无描述','/uploads/pic/postgresql.jpg',135,0),(146,'云计算','暂无描述','/uploads/pic/云计算.jpg',0,0),(147,'云计算','暂无描述','/uploads/pic/云计算.jpg',146,0),(148,'又拍云存储','暂无描述','/uploads/pic/又拍云存储.jpg',146,0),(149,'七牛云存储','暂无描述','/uploads/pic/七牛云存储.jpg',146,0),(150,'google-app-engine','暂无描述','/uploads/pic/google-app-engine.jpg',146,0),(151,'sina-app-engine','暂无描述','/uploads/pic/sina-app-engine.jpg',146,0),(152,'amazon-web-services','暂无描述','/uploads/pic/amazon-web-services.jpg',146,0),(153,'百度云','暂无描述','/uploads/pic/百度云.jpg',146,0),(154,'金山云','暂无描述','/uploads/pic/金山云.jpg',146,0),(155,'美团云','暂无描述','/uploads/pic/美团云.jpg',146,0),(156,'腾讯云','暂无描述','/uploads/pic/腾讯云.jpg',146,0),(157,'开发语言','暂无描述','/uploads/pic/开发语言.jpg',0,0),(158,'java','暂无描述','/uploads/pic/java.jpg',157,0),(159,'c','暂无描述','/uploads/pic/c.jpg',157,0),(160,'c++','暂无描述','/uploads/pic/c++.jpg',157,0),(161,'php','暂无描述','/uploads/pic/php.jpg',157,0),(162,'perl','暂无描述','/uploads/pic/perl.jpg',157,0),(163,'python','暂无描述','/uploads/pic/python.jpg',157,0),(164,'javascript','暂无描述','/uploads/pic/javascript.jpg',157,0),(165,'c#','暂无描述','/uploads/pic/c__.jpg',157,0),(166,'ruby','暂无描述','/uploads/pic/ruby.jpg',157,0),(167,'objective-c','暂无描述','/uploads/pic/objective-c.jpg',157,0),(168,'go','暂无描述','/uploads/pic/go.jpg',157,0),(169,'lua','暂无描述','/uploads/pic/lua.jpg',157,0),(170,'node.js','暂无描述','/uploads/pic/node.js.jpg',157,0),(171,'erlang','暂无描述','/uploads/pic/erlang.jpg',157,0),(172,'scala','暂无描述','/uploads/pic/scala.jpg',157,0),(173,'bash','暂无描述','/uploads/pic/bash.jpg',157,0),(174,'actionscript','暂无描述','/uploads/pic/actionscript.jpg',157,0),(176,'编程','暂无描述','/uploads/pic/编程.jpg',1,1),(177,'编程语言','暂无描述','/uploads/pic/编程.jpg',1,0),(178,'数据结构','暂无描述','/uploads/pic/数据结构.jpg',1,0),(180,'算法','暂无描述','/uploads/pic/算法.jpg',1,0),(181,'javaee','暂无描述','/uploads/pic/javaee.jpg',1,0),(182,'面向对象编程','暂无描述','/uploads/pic/面向对象编程.jpg',1,0),(183,'编程语言比较','暂无描述','/uploads/pic/编程语言比较.jpg',1,0),(184,'程序员','暂无描述','/uploads/pic/程序员.jpg',1,0),(185,'互联网工作','暂无描述','/uploads/pic/互联网工作.jpg',1,0),(186,'IT 行业','暂无描述','/uploads/pic/IT.jpg',1,0),(187,'Java 程序员','暂无描述','/uploads/pic/Javachengxuyuan.jpg',1,0),(188,'社交网络','暂无描述','/uploads/pic/社交网络.jpg',1,0),(189,'手机','暂无描述','/uploads/pic/手机.jpg',1,0),(190,'用户界面设计','暂无描述','/uploads/pic/用户界面设计.jpg',1,0),(191,'招商银行','暂无描述','/uploads/pic/招商银行.jpg',1,0),(192,'学习方法','暂无描述','/uploads/pic/学习方法.jpg',1,0),(193,'Android 应用设计','暂无描述','/uploads/pic/Android应用设计.jpg',1,0),(194,'调查类问题','暂无描述','/uploads/pic/调查类问题.jpg',1,0),(195,'独立开发者','暂无描述','/uploads/pic/独立开发者.jpg',1,0),(196,'C（编程语言）','暂无描述','/uploads/pic/c.jpg',1,0),(197,'Java 编程','暂无描述','/uploads/pic/java.jpg',1,0),(198,'自学编程','暂无描述','/uploads/pic/自学编程.jpg',1,0),(199,'互联网','暂无描述','/uploads/pic/互联网.jpg',1,0),(200,'BAT（公司集合）','暂无描述','/uploads/pic/bat.jpg',1,0),(201,'计算机','暂无描述','/uploads/pic/计算机.jpg',1,0),(202,'长沙','暂无描述','/uploads/pic/长沙.jpg',1,0),(203,'高并发','暂无描述','/uploads/pic/高并发.jpg',1,0),(204,'转行','暂无描述','/uploads/pic/转行.jpg',1,0),(205,'产品','暂无描述','/uploads/pic/产品.jpg',1,0),(206,'手机游戏','暂无描述','/uploads/pic/手机游戏.jpg',1,0),(207,'Cocos2d-x','暂无描述','/uploads/pic/Cocos2d-x.jpg',1,0),(208,'Flappy Bird','暂无描述','/uploads/pic/FlappyBird.jpg',1,0),(209,'CocosEditor','暂无描述','/uploads/pic/CocosEditor.jpg',1,0),(210,'Java EE','暂无描述','/uploads/pic/javaee.jpg',1,0),(211,'软件开发','暂无描述','/uploads/pic/软件开发.jpg',1,0),(212,'C / C++','暂无描述','/uploads/pic/c.jpg',1,0),(213,'电子信息工程','暂无描述','/uploads/pic/电子信息工程.jpg',1,0),(214,'IT 培训','暂无描述','/uploads/pic/IT.jpg',1,0),(215,'教育培训机构','暂无描述','/uploads/pic/教育培训机构.jpg',1,0),(216,'Java Web','暂无描述','/uploads/pic/java.jpg',1,0),(217,'IT 男','暂无描述','/uploads/pic/IT男.jpg',1,0),(218,'女程序员','暂无描述','/uploads/pic/女程序员.jpg',1,0),(219,'计算机科学','暂无描述','/uploads/pic/计算机科学.jpg',1,0),(220,'Ruby on Rails','暂无描述','/uploads/pic/RubyonRails.jpg',1,0),(221,'Django（框架）','暂无描述','/uploads/pic/django.jpg',1,0),(222,'设计模式','暂无描述','/uploads/pic/设计模式.jpg',1,0),(223,'Express（框架）','暂无描述','/uploads/pic/Express.jpg',1,0),(224,'ThreadLocal','暂无描述','/uploads/pic/ThreadLocal.jpg',1,0),(225,'移动互联网','暂无描述','/uploads/pic/移动互联网.jpg',1,0),(226,'移动开发','暂无描述','/uploads/pic/移动开发.png',1,0),(227,'123','暂无描述','/uploads/pic/facebook.jpg',1,0),(228,'膜法','暂无描述','/uploads/pic/twitter.jpg',1,0),(229,'what','暂无描述','/uploads/pic/seo.jpg',1,0),(230,'长者，膜法','暂无描述','/uploads/pic/html.jpg',1,0),(231,'记者','暂无描述','/uploads/pic/html5.jpg',1,0);
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `activation_state` int(11) NOT NULL DEFAULT '0',
  `activation_code` varchar(50) NOT NULL,
  `join_time` bigint(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `avatar_url` varchar(200) DEFAULT NULL,
  `gender` int(11) DEFAULT '1',
  `simple_desc` varchar(50) DEFAULT '',
  `position` varchar(100) DEFAULT '',
  `industry` varchar(100) DEFAULT '',
  `career` varchar(100) DEFAULT '',
  `education` varchar(100) DEFAULT '',
  `full_desc` varchar(300) DEFAULT '',
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `collected_count` int(11) NOT NULL DEFAULT '0',
  `follow_count` int(11) NOT NULL DEFAULT '0',
  `followed_count` int(11) NOT NULL DEFAULT '0',
  `scaned_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'123@qq.com','e10adc3949ba59abbe56e057f20f883e',1,'14967389422030de3710218ee40a9a17dc91ed1ad9bc8',1496738942203,'艾琴海','/uploads/avatars/70b01b26-2f73-4f57-b2ef-08325f448c00.jpg',1,'Life is short','湖北','It','无','本科','不详',2,0,0,0,0),(10,'123456789@qq.com','e10adc3949ba59abbe56e057f20f883e',1,'1496738953386732c5ae3d9764ba2b152efbf50b66d8c',1496738953387,'aqh','/uploads/avatars/avatar1.jpg',1,'','','','','','',0,0,0,0,0),(12,'626375661@qq.com','e10adc3949ba59abbe56e057f20f883e',1,'149674208891689ab5bbcd5384561987ef4566350fafc',1496742088916,'Anmy','/uploads/avatars/avatar3.jpg',1,'','','','','','',1,0,0,0,0),(13,'1350099468@qq.com','e10adc3949ba59abbe56e057f20f883e',1,'14968277091189071d87013a3444997dc51bcc6563c14',1496827709118,'Zarathustra','/uploads/avatars/avatar4.jpg',1,'正义的伙伴！','圣地亚哥','IT','','','正义的伙伴！',3,0,0,0,0),(14,'makakucityactor@gmail.com','e10adc3949ba59abbe56e057f20f883e',1,'1497100030578a00198e701f04da4abf98ad0f88eba67',1497100030578,'Lennon','/uploads/avatars/avatar5.jpg',1,'','','','','','',0,0,0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-11 10:53:19
