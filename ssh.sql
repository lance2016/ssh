# Host: localhost  (Version 5.7.14)
# Date: 2016-12-25 20:28:25
# Generator: MySQL-Front 5.4  (Build 4.12)
# Internet: http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "book"
#

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `press` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "book"
#

/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'web编程','张三','清华大学出版社',30.5),(3,'web','sggfd','范德萨',0),(4,'???','??','??',0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

#
# Structure for table "inform"
#

DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `important` varchar(255) DEFAULT '0',
  `visitedtime` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "inform"
#

/*!40000 ALTER TABLE `inform` DISABLE KEYS */;
INSERT INTO `inform` VALUES (1,'信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>','2014-11-11','1',0),(2,'信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>','2014-11-11','0',0),(3,'信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>','2014-11-11','0',0),(4,'信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>','2014-11-11','0',0),(5,'信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>','2014-11-11','0',0),(6,'信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示','<p>&nbsp; 孔子思想以立身为出发点，而人能立身于世的首要条件就是具有&ldquo;君子&rdquo;人格。君子具备仁爱之心，自重自律；表里如一，言行一致；积极进取，德才兼备；孜孜于学，注重实践；安贫乐道，谨守正义等等；始终坚守人之间的相处之道，遵从不同的伦理关系，构建着和谐友爱的人际关系和社会环境。</p>','2014-11-11','0',0),(7,'信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示','<p>&nbsp; 这本书以权威版本为底本，约请张燕婴作了晓畅通俗的白话翻译。文白对照，并以对开的方式排版，以为读者提供阅读最方便的文本。</p>','2014-11-11','0',0);
/*!40000 ALTER TABLE `inform` ENABLE KEYS */;

#
# Structure for table "nav"
#

DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

#
# Data for table "nav"
#

/*!40000 ALTER TABLE `nav` DISABLE KEYS */;
INSERT INTO `nav` VALUES (2,'学院概况',0),(3,'师资队伍',0),(4,'人才培养',0),(5,'科学研究',0),(6,'学生工作',0),(7,'创新创业',0),(8,'党建工作',0),(9,'实验中心',0),(10,'师生风采',0),(11,'校友联谊',0),(12,'文件下载',0),(13,'厉害了',2),(14,'师资配备',3),(15,'人才',4),(16,'科学',5),(17,'学生',6),(18,'创新',7),(19,'创业',7),(20,'党建',8),(21,'实验',9),(22,'师生',10),(23,'校友',11),(24,'文件',12),(25,'厉害哦额',-1),(26,'学生工作1',17),(27,'1',0),(28,'2',0),(29,'3',0),(30,'4',0),(31,'5',0),(32,'6',0),(33,'7',0),(34,'8',0),(35,'9',0),(36,'10',0),(37,'11',0),(38,'学院概况',0),(39,'师资队伍',0),(40,'人才培养',0),(41,'科学研究',0),(42,'学生工作',0),(43,'创新创业',0),(44,'党建工作',0),(45,'实验中心',0),(46,'师生风采',0),(47,'校友联谊',0),(48,'文件下载',0);
/*!40000 ALTER TABLE `nav` ENABLE KEYS */;

#
# Structure for table "studentwork"
#

DROP TABLE IF EXISTS `studentwork`;
CREATE TABLE `studentwork` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `important` varchar(255) DEFAULT '0',
  `visitedtime` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "studentwork"
#

/*!40000 ALTER TABLE `studentwork` DISABLE KEYS */;
INSERT INTO `studentwork` VALUES (1,'学生工作','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，${pageContext.request.contextPath}/front/carousel/1.jpg最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》<img src=\"front/images/head.jpg\">主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>','2016-11-2','1',0),(2,'xuesheng','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。<img src=\"${pageContext.request.contextPath}/front/carousel/1.jpg\">《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>','2016-11-11','0',0);
/*!40000 ALTER TABLE `studentwork` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'20141223','lihaile','5'),(3,'20140045','sad','2345'),(4,'20140001','123','345'),(5,'2','3','4'),(6,'??','???','fdsaf '),(7,'???','??','fda '),(8,'fdsa','fdsa','fdsa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

#
# Structure for table "work"
#

DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `important` varchar(255) DEFAULT '0',
  `visitedtime` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "work"
#

/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (1,'就业工作','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>',NULL,'1',0),(2,'4321','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>',NULL,'0',0),(3,'2143','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>',NULL,'0',0),(4,'2144','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>',NULL,'0',0);
/*!40000 ALTER TABLE `work` ENABLE KEYS */;

#
# Structure for table "xueshunews"
#

DROP TABLE IF EXISTS `xueshunews`;
CREATE TABLE `xueshunews` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `important` varchar(1) DEFAULT '0',
  `visitedtime` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "xueshunews"
#

/*!40000 ALTER TABLE `xueshunews` DISABLE KEYS */;
INSERT INTO `xueshunews` VALUES (1,'学术动态','123',NULL,'1',0),(2,'学术动态','信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示',NULL,'0',0),(3,'学术动态','信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示',NULL,'0',0),(4,'学术动态','信息学院2015-2016学年国家奖学金、省政府奖学金获得者拟推荐名单公示',NULL,'0',0);
/*!40000 ALTER TABLE `xueshunews` ENABLE KEYS */;

#
# Structure for table "xueyuannews"
#

DROP TABLE IF EXISTS `xueyuannews`;
CREATE TABLE `xueyuannews` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `important` int(1) DEFAULT '0',
  `visitedtime` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "xueyuannews"
#

/*!40000 ALTER TABLE `xueyuannews` DISABLE KEYS */;
INSERT INTO `xueyuannews` VALUES (1,'什么鬼','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>\n\n<p>&nbsp; 孔子思想以立身为出发点，而人能立身于世的首要条件就是具有&ldquo;君子&rdquo;人格。君子具备仁爱之心，自重自律；表里如一，言行一致；积极进取，德才兼备；孜孜于学，注重实践；安贫乐道，谨守正义等等；始终坚守人之间的相处之道，遵从不同的伦理关系，构建着和谐友爱的人际关系和社会环境。</p>\n\n<p>&nbsp; 这本书以权威版本为底本，约请张燕婴作了晓畅通俗的白话翻译。文白对照，并以对开的方式排版，以为读者提供阅读最方便的文本。</p>\n','2015-11-11',1,0),(14,'厉害了word哥','<p>&nbsp; 《论语》是一部语录体思想散文集。早在春秋后期孔子设坛讲学时期，其主体内容就已初始创成；孔子去世以后，他的辫子和再传弟子代代传授他的言论，并逐渐将这些口头记诵的语录言行记录下来，集腋成裘，最终在战国初年汇辑论纂成书，因此称&ldquo;论&rdquo;。《论语》主要记载孔子及其弟子的言行，因此称为&ldquo;语&rdquo;。</p>\n\n<p>&nbsp; 孔子思想以立身为出发点，而人能立身于世的首要条件就是具有&ldquo;君子&rdquo;人格。君子具备仁爱之心，自重自律；表里如一，言行一致；积极进取，德才兼备；孜孜于学，注重实践；安贫乐道，谨守正义等等；始终坚守人之间的相处之道，遵从不同的伦理关系，构建着和谐友爱的人际关系和社会环境。</p>\n\n<p>&nbsp; 这本书以权威版本为底本，约请张燕婴作了晓畅通俗的白话翻译。文白对照，并以对开的方式排版，以为读者提供阅读最方便的文本。</p>\n','2015-11-11',0,0);
/*!40000 ALTER TABLE `xueyuannews` ENABLE KEYS */;
