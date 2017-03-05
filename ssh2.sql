# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: ssh2
# ------------------------------------------------------
# Server version 5.6.17

#
# Source for table allcontent
#

DROP TABLE IF EXISTS `allcontent`;
CREATE TABLE `allcontent` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `link` varchar(255) DEFAULT '1',
  `time` varchar(20) DEFAULT '2016-11-18',
  `visitedtime` int(11) DEFAULT '0',
  `important` int(1) DEFAULT '0',
  `parentid` varchar(10) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

#
# Dumping data for table allcontent
#

LOCK TABLES `allcontent` WRITE;
/*!40000 ALTER TABLE `allcontent` DISABLE KEYS */;
INSERT INTO `allcontent` VALUES (11,'创新活动','<p>&nbsp; &nbsp; &nbsp; 《抗日战争》站在全民族抗战的立场上，在世界反法西斯战争的大背景下，以重大战役战斗为轴，以重大历史事件及相关人物为经纬，突出反映并全景式地记叙1937&mdash;1945年这八年抗战中的主要战役战斗。对敌我双方的计划，兵力部署，作战行动和战役经过，都做了详尽的记叙，特别是对战役战斗结局及其经验教训，从军事学术的高度给以分析、总结与点评。</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp;这部作品以波澜壮阔的文学叙述向最广大的读者解读中日之间为什么会发生如此持久的战争。记录了中华民族在山河破碎、艰难困苦、牺牲巨大的历史现实下如何同仇敌忾浴血奋战，最终赢得了这场伟大的民族战争。对于这场残酷的战争所揭示的历史经验和教训，对于广大读者认识战争的本质，在实践民族复兴伟业的今日中国，都有着巨大的认知意义和价值。</p>\n','#','11',2,0,'B1');
INSERT INTO `allcontent` VALUES (12,'红色文化','<p>&nbsp; &nbsp; &nbsp; &nbsp;中国是有着悠久历史与传统的国家，优秀的传统文化滋养着中华文明走过了五千多年的历程，从未间断，它是中国民族精神的根基，也坚定了我们的民族走向未来的信心。中华传统美德培养的是身为一个中国人的骨气和底气。人民出版社推出了《中华传统美德壹百句》，希望与读者共同重温和品读中国传统文化中的经典智慧，并用它们指导我们的现实人生。</p>\n\n<p>　　《中华传统美德壹百句》由饶宗颐、戴逸、汤一介、程毅中、傅璇琮、王蒙、袁行霈等国学大师担任编写顾问。他们使该书的品质有了可靠的保障，使读者能够准确体会书中美德箴言的魅力。</p>\n\n<p>　　《中华传统美德壹百句》精选了上自先秦下迄晚清，涵盖文、史、哲、政等多个领域的经典名句，按自强、诚信、仁义、智勇、正气、孝慈、廉耻、礼敬、勤俭、中和十个修身德目分类。全书坚持古为今用，在中国传统文化中精心选摘，为读者呈现出中华传统美德中最为精华的部分。书中的一百句美德箴言都用书法作品来表现，文字深刻的内涵，由逸动的书法作艺术的演绎，使其更具神韵。这些书法有的来自学术名家，如袁行霈、霍松林、薛永年、刘大钧，有的来自书画家，如韩美林、孙晓云、刘小晴，有的来自著名作家如王蒙、贾平凹。在这部书中，读者都可领略他们书法作品的风采。</p>\n','#','7',4,0,'B0');
INSERT INTO `allcontent` VALUES (15,'校友留言','<p>&nbsp; &nbsp; 《习近平总书记系列重要讲话读本（2016年版）》，围绕实现中华民族伟大复兴的中国梦、坚持和发展中国特色社会主义，围绕协调推进全面建成小康社会、全面深化改革、全面依法治国、全面从严治党&ldquo;四个全面&rdquo;战略布局，围绕牢固树立创新、协调、绿色、开放、共享的发展理念，统筹推进经济、政治、文化、社会、生态文明五位一体建设，围绕加强国防和军队建设，推动构建以合作共赢为核心的新型国际关系，学习掌握科学的思想方法和工作方法等十六个专题，全面准确深入阐释了以习近平同志为总书记的党中央治国理政新理念新思想新战略。</p>\n','#','6',6,0,'A1');
INSERT INTO `allcontent` VALUES (17,'学院简介',' <table width=\"98%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr>\r\n              <td width=\"22\">&nbsp;</td>\r\n              <td class=\"content\"><div id=newslist>\r\n                <p><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">学院概况 <span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋;font-size:16px\">信</span><span style=\"font-family:仿宋;font-size:16px\">息科学</span><span style=\"font-family:仿宋;font-size:16px\">与工程学院成立于<span lang=\"EN-US\">2002</span>年<span lang=\"EN-US\">10</span>月，其前身是<span lang=\"EN-US\">1999</span>年成立的理学院和<span lang=\"EN-US\">1963</span>年成立的基础部。</span><span style=\"font-family:仿宋;font-size:medium;line-height:26px;\">学院建有3个省部级科技创新平台（山东省数字农业工程技术研究中心，农业部全国农业农村信息化示范基地（技术创新型）、山东省农业大数据工程实验室）、2 个厅级科技创新平台（山东省国土资源厅新农村建设土地资源空间数据采集与利用实验室、山东省国土资源厅智慧村镇重点实验室）、1个校级科技创新平台（山东农业大学农业智能化研究重点实验室）、1个校企合作科技创新平台（山东农业大学亿利绿土地技术研究院）。</span></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋;font-size:16px\">设有计算</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">机科学与技术系、数学与</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\"></span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">信息科学系、应用物理系、测绘科学与工程系、电子与通信工程系等</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;5 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">个系；</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">3 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">个校级实验教学中心（计算机实验教学中心、物理实验教学中心、测绘实验教学中心）。现有教职工</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;169</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，其中专任教师</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;138</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，教授</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;16</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，副教授</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;49</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，博士生导师 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">4</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，硕士生导师</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;14 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人；具有博士学位</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;56</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人、硕士学位</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">74</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人。</span><br /></p><p style=\"line-height:29px;mso-para-:exactly\" class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">学科建设<span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋\"><span style=\"font-size:16px\">学院拥有数学、物理学、电子科学与技术、计算机科学与技术、测绘科学与技术、信息与通信工程6个一级学科,设有计算机科学与技术、信息与计算科学、电子信息科学与技术、测绘工程、网络工程、遥感科学与技术、空间信息与数字技术、数学与应用数学、通信工程、物联网工程等10个本科专业，其中信息与计算科学、测绘工程专业为校级特色专业；测绘工程专业为山东省卓越工程师教育试点改革专业；拥有计算机科学与技术和测绘科学与技术<span lang=\"EN-US\">2</span>个一级学科硕士学位授权点（包括计算机系统结构、计算机软件与理论、计算机应用技术、大地测量学与测量工程、摄影测量与遥感、地图制图学与地理信息工程、农业信息化等<span lang=\"EN-US\">7</span>个二级硕士学位授权点）；农业信息化领域农业推广硕士学位授权点<span lang=\"EN-US\">1</span>个，计算机科学与技术辅修专业<span lang=\"EN-US\">1</span>个。</span><span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"line-height:29px;mso-para-:exactly\" class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">教学科研<span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋\"><span style=\"font-size:16px\">2011年至今，学院教师主持国家和省级科研项目总计<span lang=\"EN-US\">89</span>项，到位经费<span lang=\"EN-US\">2925.4</span>万元。先后获得国家专利<span lang=\"EN-US\">28</span>项，软件著作权<span lang=\"EN-US\">33</span>项；发表科研论文<span lang=\"EN-US\">172</span>篇，其中被<span lang=\"EN-US\">SCI</span>、<span lang=\"EN-US\">EI</span>、<span lang=\"EN-US\">ISTP</span>收录<span lang=\"EN-US\">75</span>篇；科研项目获省厅级奖<span lang=\"EN-US\">6</span>项，校级奖<span lang=\"EN-US\">20</span>余项。<span lang=\"EN-US\">2012</span>年新增《高等数学<span lang=\"EN-US\">A</span>》、《高等数学<span lang=\"EN-US\">C</span>》、《计算机网络》、《普通物理学》、《线性代数》<span lang=\"EN-US\">5</span>项校级精品课程；<span lang=\"EN-US\">98</span>位青年教师获得校级以上各种教学奖励，获得学校教学先锋先进集体<span lang=\"EN-US\">2</span>个、校教学名师<span lang=\"EN-US\">1</span>名，先进个人<span lang=\"EN-US\">1</span>名。</span><span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"line-height:29px;mso-para-:exactly\" class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">人才培养<span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋\"><span style=\"font-size:16px\">学院现有在校本科生2838人，硕士研究生<span lang=\"EN-US\">66</span>人。学院历来重视学生创新能力的培养，成立了<span lang=\"EN-US\">4</span>个大学生创新创业工作室、<span lang=\"EN-US\">5</span>个在校大学生创业团队，<span lang=\"EN-US\">6</span>个专业社团。仅<span lang=\"EN-US\">2012</span>年在全国普通高等学校大学生测量技能竞赛、大学生数学竞赛、齐鲁软件设计大赛、全国数学建模竞赛等国家级省级专业技能竞赛活动中有<span lang=\"EN-US\">12</span>人次获得国家级一等奖，<span lang=\"EN-US\">8</span>人次获得国家级二等奖，<span lang=\"EN-US\">12</span>人次获得国家级三等奖，<span lang=\"EN-US\">3</span>人次获得国家铜奖；<span lang=\"EN-US\">125</span>人次获得山东省级一、二、三等奖。学院不断加强学生实践能力的培养，先后在校内外建立十多个教学、科研实习基地，与企业保持密切联系，并邀请企业技术人员来校对学生实习、实训课程进行上课指导，有效提高了学生解决实际问题的能力，获得了用人企业的一致好评。学院连续多年获得学校招生就业先进单位荣誉称号，本科生一次性就业率平均超过<span lang=\"EN-US\">95%</span>，推荐、考取研究生的人数已占毕业生总数的<span lang=\"EN-US\">30%</span>以上，其中半数以上的学生被包括清华、北大在内的国内一流高校录取。</span><span lang=\"EN-US\"><o:p></o:p></span></span></p><image src=\"/sitecount/addarticlecount?siteId=50&pageId=2108&articleId=32600\" style=\"display:none\" width=\"0\" height=\"0\"></image>\r\n\r\n              </div></td>\r\n            </tr>\r\n        </table></td>\r\n    <td width=\"25\">&nbsp;</td>\r\n  </tr>\r\n</table>\r','#','#',5,0,'A0');
INSERT INTO `allcontent` VALUES (20,'信息学院','<p>信息学院举办&ldquo;我与院长面对面&rdquo;院长论坛</p>\n','#','2016-11-18',7,1,'Z3');
INSERT INTO `allcontent` VALUES (21,'信息学院举办“我与院长面对面”院长论坛','fdsafds','#','2016-11-18',4,0,'Z2');
INSERT INTO `allcontent` VALUES (23,'信息学院举办“我与院长面对面”院长论坛','<p>什么a法师法as</p>\n','#','2016-11-11',1,1,'Z1');
INSERT INTO `allcontent` VALUES (25,'信息学院举办“我与院长面对面”院长论坛','<p>fdsadf</p>\n','#','aaa',4,0,'Z1');
INSERT INTO `allcontent` VALUES (27,'信息学院举办“我与院长面对面”院长论坛','<p>???</p>\n','#','#fsa',6,0,'Z1');
INSERT INTO `allcontent` VALUES (28,'信息学院举办“我与院长面对面”院长论坛','fdsafd','#','#',65,0,'Z1');
INSERT INTO `allcontent` VALUES (29,'第二届互联网+大赛通知',' <table width=\"98%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n            <tr>\r\n              <td width=\"22\">&nbsp;</td>\r\n              <td class=\"content\"><div id=newslist>\r\n                <p><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">学院概况 <span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋;font-size:16px\">信</span><span style=\"font-family:仿宋;font-size:16px\">息科学</span><span style=\"font-family:仿宋;font-size:16px\">与工程学院成立于<span lang=\"EN-US\">2002</span>年<span lang=\"EN-US\">10</span>月，其前身是<span lang=\"EN-US\">1999</span>年成立的理学院和<span lang=\"EN-US\">1963</span>年成立的基础部。</span><span style=\"font-family:仿宋;font-size:medium;line-height:26px;\">学院建有3个省部级科技创新平台（山东省数字农业工程技术研究中心，农业部全国农业农村信息化示范基地（技术创新型）、山东省农业大数据工程实验室）、2 个厅级科技创新平台（山东省国土资源厅新农村建设土地资源空间数据采集与利用实验室、山东省国土资源厅智慧村镇重点实验室）、1个校级科技创新平台（山东农业大学农业智能化研究重点实验室）、1个校企合作科技创新平台（山东农业大学亿利绿土地技术研究院）。</span></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋;font-size:16px\">设有计算</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">机科学与技术系、数学与</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\"></span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">信息科学系、应用物理系、测绘科学与工程系、电子与通信工程系等</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;5 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">个系；</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">3 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">个校级实验教学中心（计算机实验教学中心、物理实验教学中心、测绘实验教学中心）。现有教职工</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;169</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，其中专任教师</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;138</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，教授</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;16</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，副教授</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;49</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，博士生导师 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">4</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人，硕士生导师</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;14 </span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人；具有博士学位</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">&nbsp;56</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人、硕士学位</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\" lang=\"EN-US\">74</span><span style=\"line-height:26px;text-indent:37px;font-family:仿宋;font-size:medium\">人。</span><br /></p><p style=\"line-height:29px;mso-para-:exactly\" class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">学科建设<span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋\"><span style=\"font-size:16px\">学院拥有数学、物理学、电子科学与技术、计算机科学与技术、测绘科学与技术、信息与通信工程6个一级学科,设有计算机科学与技术、信息与计算科学、电子信息科学与技术、测绘工程、网络工程、遥感科学与技术、空间信息与数字技术、数学与应用数学、通信工程、物联网工程等10个本科专业，其中信息与计算科学、测绘工程专业为校级特色专业；测绘工程专业为山东省卓越工程师教育试点改革专业；拥有计算机科学与技术和测绘科学与技术<span lang=\"EN-US\">2</span>个一级学科硕士学位授权点（包括计算机系统结构、计算机软件与理论、计算机应用技术、大地测量学与测量工程、摄影测量与遥感、地图制图学与地理信息工程、农业信息化等<span lang=\"EN-US\">7</span>个二级硕士学位授权点）；农业信息化领域农业推广硕士学位授权点<span lang=\"EN-US\">1</span>个，计算机科学与技术辅修专业<span lang=\"EN-US\">1</span>个。</span><span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"line-height:29px;mso-para-:exactly\" class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">教学科研<span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋\"><span style=\"font-size:16px\">2011年至今，学院教师主持国家和省级科研项目总计<span lang=\"EN-US\">89</span>项，到位经费<span lang=\"EN-US\">2925.4</span>万元。先后获得国家专利<span lang=\"EN-US\">28</span>项，软件著作权<span lang=\"EN-US\">33</span>项；发表科研论文<span lang=\"EN-US\">172</span>篇，其中被<span lang=\"EN-US\">SCI</span>、<span lang=\"EN-US\">EI</span>、<span lang=\"EN-US\">ISTP</span>收录<span lang=\"EN-US\">75</span>篇；科研项目获省厅级奖<span lang=\"EN-US\">6</span>项，校级奖<span lang=\"EN-US\">20</span>余项。<span lang=\"EN-US\">2012</span>年新增《高等数学<span lang=\"EN-US\">A</span>》、《高等数学<span lang=\"EN-US\">C</span>》、《计算机网络》、《普通物理学》、《线性代数》<span lang=\"EN-US\">5</span>项校级精品课程；<span lang=\"EN-US\">98</span>位青年教师获得校级以上各种教学奖励，获得学校教学先锋先进集体<span lang=\"EN-US\">2</span>个、校教学名师<span lang=\"EN-US\">1</span>名，先进个人<span lang=\"EN-US\">1</span>名。</span><span lang=\"EN-US\"><o:p></o:p></span></span></p><p style=\"line-height:29px;mso-para-:exactly\" class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight:normal\"><span style=\"font-family:宋体;font-size:19px\">人才培养<span lang=\"EN-US\"><o:p></o:p></span></span></strong></p><p style=\"text-align:left;line-height:29px;text-indent:37px;margin-bottom:8px;\" class=\"MsoNormal\"><span style=\"font-family:仿宋\"><span style=\"font-size:16px\">学院现有在校本科生2838人，硕士研究生<span lang=\"EN-US\">66</span>人。学院历来重视学生创新能力的培养，成立了<span lang=\"EN-US\">4</span>个大学生创新创业工作室、<span lang=\"EN-US\">5</span>个在校大学生创业团队，<span lang=\"EN-US\">6</span>个专业社团。仅<span lang=\"EN-US\">2012</span>年在全国普通高等学校大学生测量技能竞赛、大学生数学竞赛、齐鲁软件设计大赛、全国数学建模竞赛等国家级省级专业技能竞赛活动中有<span lang=\"EN-US\">12</span>人次获得国家级一等奖，<span lang=\"EN-US\">8</span>人次获得国家级二等奖，<span lang=\"EN-US\">12</span>人次获得国家级三等奖，<span lang=\"EN-US\">3</span>人次获得国家铜奖；<span lang=\"EN-US\">125</span>人次获得山东省级一、二、三等奖。学院不断加强学生实践能力的培养，先后在校内外建立十多个教学、科研实习基地，与企业保持密切联系，并邀请企业技术人员来校对学生实习、实训课程进行上课指导，有效提高了学生解决实际问题的能力，获得了用人企业的一致好评。学院连续多年获得学校招生就业先进单位荣誉称号，本科生一次性就业率平均超过<span lang=\"EN-US\">95%</span>，推荐、考取研究生的人数已占毕业生总数的<span lang=\"EN-US\">30%</span>以上，其中半数以上的学生被包括清华、北大在内的国内一流高校录取。</span><span lang=\"EN-US\"><o:p></o:p></span></span></p><image src=\"/sitecount/addarticlecount?siteId=50&pageId=2108&articleId=32600\" style=\"display:none\" width=\"0\" height=\"0\"></image>\r\n\r\n              </div></td>\r\n            </tr>\r\n        </table></td>\r\n    <td width=\"25\">&nbsp;</td>\r\n  </tr>\r\n</table>\r','1','#',1,0,'E0');
INSERT INTO `allcontent` VALUES (31,'信息学院举办“我与院长面对面”院长论坛','<p>厉害了</p>\n','1','2016-11-11',1,1,'Z1');
INSERT INTO `allcontent` VALUES (32,'信息学院召开“双结对”师生座谈会','<p>厉害了啊大兄弟</p>\n','1','1',1,0,'Z0');
INSERT INTO `allcontent` VALUES (33,'信息学院测绘系开展专业教育系列活动','123','1','2',3,0,'Z0');
INSERT INTO `allcontent` VALUES (35,'信息学院举办“我与院长面对面”院长论坛','<div>&nbsp; &nbsp; 古典名句，是中华文化长河中历经砥砺的智慧结晶，是传承中华民族优秀传统文化的经典载体。在习近平总书记系列重要讲话文章中多处引经据典，生动传神，寓意深邃，极具启迪意义。据此，人民日报社特别组织编写《习近平用典》一书，全书由敬民篇、为政篇、立德篇、修身篇、笃行篇、劝学篇、任贤篇、天下篇、廉政篇、信念篇、创新篇、法治篇、辩证篇共13个篇章组成，旨在对习近平总书记重要讲话（文章）引用典故追根溯源的同时，并究其现实意义进行解读，以期帮助广大党员干部深入学习习近平总书记的重要讲话（文章）精神，准确理解习近平总书记的思想精髓。</div>\n\n<div>&nbsp; &nbsp; 由人民日报社社长杨振武主持编写并作序，人民日报社副总编辑卢新宁组织撰写解读文字，约26万字。</div>\n\n<div>&nbsp; &nbsp; 本书从总书记的讲话和文章中遴选出他使用频率高、影响深远、最能体现他治国理政理念的典故135则，分敬民、为政、修身、任贤、天下、法治等13个篇章；每则典故，采用解读、释义结合，解读部分阐述总书记用典的现实意义，释义部分解说古典名句的出处和义理。</div>\n','#','2016-11-18',1,0,'B2');
INSERT INTO `allcontent` VALUES (36,'信息学院举办“我与院长面对面”院长论坛','<p>&nbsp; &nbsp; 《家教与门风》共约14万字，作者以深厚的中国传统文化功力，生动阐述了中国传统礼乐文化的起源、发展与其核心精神，并从&ldquo;家教与门风&rdquo;、&ldquo;风俗与社会&rdquo;、&ldquo;传统文化与当代社会&rdquo;等几个方面系统剖析了儒家礼乐文化对我们今天社会生活的方方面面所能带来的启发和指导作用，深度揭示了礼乐文化的当代价值。</p>\n\n<p>　</p>\n','#','2016-11-18',1,0,'B3');
INSERT INTO `allcontent` VALUES (37,'信息与计算科学专业','<p>&nbsp; &nbsp; 《家教与门风》共约14万字，作者以深厚的中国传统文化功力，生动阐述了中国传统礼乐文化的起源、发展与其核心精神，并从&ldquo;家教与门风&rdquo;、&ldquo;风俗与社会&rdquo;、&ldquo;传统文化与当代社会&rdquo;等几个方面系统剖析了儒家礼乐文化对我们今天社会生活的方方面面所能带来的启发和指导作用，深度揭示了礼乐文化的当代价值。</p>\n\n<p>　</p>\n','1','2016-11-18',1,0,'C0');
INSERT INTO `allcontent` VALUES (38,'数学与应用数学1','<p>&nbsp; &nbsp; 《家教与门风》共约14万字，作者以深厚的中国传统文化功力，生动阐述了中国传统礼乐文化的起源、发展与其核心精神，并从&ldquo;家教与门风&rdquo;、&ldquo;风俗与社会&rdquo;、&ldquo;传统文化与当代社会&rdquo;等几个方面系统剖析了儒家礼乐文化对我们今天社会生活的方方面面所能带来的启发和指导作用，深度揭示了礼乐文化的当代价值。</p>\n\n<p>　</p>\n','1','2016-11-18',1,0,'C0');
INSERT INTO `allcontent` VALUES (39,'学科介绍',NULL,'1','2016-11-18',1,0,'C1');
INSERT INTO `allcontent` VALUES (40,'招生简章','234','1','2016-11-18',1,0,'C1');
INSERT INTO `allcontent` VALUES (41,'大学生防骗安全提示','word哥','1','2016-11-18',1,0,'E0');
INSERT INTO `allcontent` VALUES (42,'大学生医疗保险报销须知','lihaile','1','2016-11-18',1,0,'E0');
INSERT INTO `allcontent` VALUES (43,'2015年校田径运动会信息风采之教工篇','234','1','2016-11-18',1,0,'I0');
INSERT INTO `allcontent` VALUES (44,'2015年校田径运动会信息风采之学生篇','23456','1','2016-11-18',1,0,'I0');
INSERT INTO `allcontent` VALUES (45,'山东省数字农业工程技术研究中心','','1','2016-11-18',1,0,'D0');
INSERT INTO `allcontent` VALUES (46,'信息学院举办“我与院长面对面”院长论坛','信息学院举办“我与院长面对面”院长论坛','1','#',1,0,'Z0');
INSERT INTO `allcontent` VALUES (47,'信息学院召开“双结对”师生座谈会','信息学院召开“双结对”师生座谈会','1','1',1,0,'Z0');
INSERT INTO `allcontent` VALUES (48,'信息学院测绘系开展专业教育系列活动','信息学院测绘系开展专业教育系列活动','1','1',2,0,'Z0');
INSERT INTO `allcontent` VALUES (49,'信息学院举办“我与院长面对面”院长论坛','信息学院举办“我与院长面对面”院长论坛','#','2016-11-18',1,0,'Z4');
INSERT INTO `allcontent` VALUES (52,'复习参考题','文件','download.action?filename=复习参考题.doc','2016-11-18',1,0,'K0');
INSERT INTO `allcontent` VALUES (57,'为什么我的眼里常含泪水','<p>不知道啊</p>\n','1','2011-11-11',0,1,'Z0');
INSERT INTO `allcontent` VALUES (58,'计算机网络信息安全考试资料整理2.pdf','12345','download.action?filename=计算机网络信息安全考试资料整理2.pdf',NULL,0,0,'K0');
INSERT INTO `allcontent` VALUES (59,'复习参考题1参考答案.doc','234','download.action?filename=复习参考题1参考答案.doc',NULL,0,0,'K0');
INSERT INTO `allcontent` VALUES (60,'没有标题','<p>123</p>\n','1','2016-11-11',0,1,'Z0');
INSERT INTO `allcontent` VALUES (61,'1123','<p>23456</p>\n','1','123',0,1,'Z0');
INSERT INTO `allcontent` VALUES (62,'数学与应用数学4','<p>发斯蒂芬大</p>\n','1','2016-11-11',0,1,'C0');
INSERT INTO `allcontent` VALUES (63,'厉害了我的哥','<p>123456</p>\n','1','12345',0,1,'C1');
INSERT INTO `allcontent` VALUES (65,'23456','<p>12345676543</p>\n','1','2345',0,1,'C0');
INSERT INTO `allcontent` VALUES (66,'fdadf','<p>fasdsdfasd</p>\n','1','fdsadf',0,1,'C0');
INSERT INTO `allcontent` VALUES (67,'厉害了','<p>飞天花雕与寂寞寂寞</p>\n','1','而实体店与云表格',0,1,'C0');
INSERT INTO `allcontent` VALUES (68,'1232','<p>1234567654321</p>\n','1','1234',0,0,'Z0');
INSERT INTO `allcontent` VALUES (73,'1','<p>3</p>\n','1','2',0,0,'C0');
INSERT INTO `allcontent` VALUES (75,'FFFFFFFFFasdfghjh','1234','1','2016-11-18',0,0,'H0');
INSERT INTO `allcontent` VALUES (76,'123456','1234','1','2016-11-18',0,0,'H1');
INSERT INTO `allcontent` VALUES (77,'我的世界','12345','1','2016-11-18',0,0,'H2');
INSERT INTO `allcontent` VALUES (78,'fadsdfsa','fdasfd','1','2016-11-18',0,0,'J0');
INSERT INTO `allcontent` VALUES (79,'数学与应用数学3','<p>&nbsp; &nbsp; &nbsp; 《抗日战争》站在全民族抗战的立场上，在世界反法西斯战争的大背景下，以重大战役战斗为轴，以重大历史事件及相关人物为经纬，突出反映并全景式地记叙1937&mdash;1945年这八年抗战中的主要战役战斗。对敌我双方的计划，兵力部署，作战行动和战役经过，都做了详尽的记叙，特别是对战役战斗结局及其经验教训，从军事学术的高度给以分析、总结与点评。</p>','1','2016-11-18',0,0,'C0');
INSERT INTO `allcontent` VALUES (80,'数学与应用数学2','<p>&nbsp; &nbsp; &nbsp; &nbsp;这部作品以波澜壮阔的文学叙述向最广大的读者解读中日之间为什么会发生如此持久的战争。记录了中华民族在山河破碎、艰难困苦、牺牲巨大的历史现实下如何同仇敌忾浴血奋战，最终赢得了这场伟大的民族战争。对于这场残酷的战争所揭示的历史经验和教训，对于广大读者认识战争的本质，在实践民族复兴伟业的今日中国，都有着巨大的认知意义和价值。</p>','1','2016-11-18',0,0,'C0');
INSERT INTO `allcontent` VALUES (81,'123456','1234','1','2016-11-18',0,74,'G0');
INSERT INTO `allcontent` VALUES (82,'2345','12345','1','2016-11-18',0,0,'G1');
INSERT INTO `allcontent` VALUES (83,'sgsd','gsdfg','1','2016-11-18',0,0,'G1');
INSERT INTO `allcontent` VALUES (84,'fasfds','fdsada','1','2016-11-18',0,0,'G3');
/*!40000 ALTER TABLE `allcontent` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table nav
#

DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `Id` varchar(5) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `parentid` varchar(5) DEFAULT '0',
  `link` varchar(255) DEFAULT '#',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

#
# Dumping data for table nav
#

LOCK TABLES `nav` WRITE;
/*!40000 ALTER TABLE `nav` DISABLE KEYS */;
INSERT INTO `nav` VALUES ('A','学院概况','0','#');
INSERT INTO `nav` VALUES ('A0','学院简介','A','static');
INSERT INTO `nav` VALUES ('A1','机构设置','A','static');
INSERT INTO `nav` VALUES ('B','师资队伍','0','#');
INSERT INTO `nav` VALUES ('B0','计算机科学与技术系','B','static');
INSERT INTO `nav` VALUES ('B1','数学与科学信息系','B','static');
INSERT INTO `nav` VALUES ('B2','应用物理系','B','static');
INSERT INTO `nav` VALUES ('B3','\t测绘科学与工程系','B','static');
INSERT INTO `nav` VALUES ('C','人才培养','0','#');
INSERT INTO `nav` VALUES ('C0','本科生教育','C','#');
INSERT INTO `nav` VALUES ('C1','研究生教育','C','#');
INSERT INTO `nav` VALUES ('D','科学研究','0','#');
INSERT INTO `nav` VALUES ('D0','科研平台','D','#');
INSERT INTO `nav` VALUES ('D1','科研团队','D','#');
INSERT INTO `nav` VALUES ('D2','科研项目','D','#');
INSERT INTO `nav` VALUES ('D3','科研论文','D','#');
INSERT INTO `nav` VALUES ('D4','国家专利','D','#');
INSERT INTO `nav` VALUES ('D5','软件著作权','D','#');
INSERT INTO `nav` VALUES ('E','学生工作','0','#');
INSERT INTO `nav` VALUES ('E0','学生工作','E','#');
INSERT INTO `nav` VALUES ('F','创新创业','0','http://web01.sdau.edu.cn/s/244/t/2111/main.jspy');
INSERT INTO `nav` VALUES ('F0','list1','F','static');
INSERT INTO `nav` VALUES ('G','党建工作','0','#');
INSERT INTO `nav` VALUES ('G0','党建学习','G','#');
INSERT INTO `nav` VALUES ('G1','党建专题','G','#');
INSERT INTO `nav` VALUES ('G2','党建活动','G','#');
INSERT INTO `nav` VALUES ('G3','党建发展','G','#');
INSERT INTO `nav` VALUES ('H','实验中心','0','#');
INSERT INTO `nav` VALUES ('H0','计算机实验教学中心','H','#');
INSERT INTO `nav` VALUES ('H1','\t物理实验教学中心','H','#');
INSERT INTO `nav` VALUES ('H2','\t测绘实验教学中心','H','#');
INSERT INTO `nav` VALUES ('I','师生风采','0','#');
INSERT INTO `nav` VALUES ('I0','师生风采','I','#');
INSERT INTO `nav` VALUES ('J','校友联谊','0','#');
INSERT INTO `nav` VALUES ('J0','校友名录','J','#');
INSERT INTO `nav` VALUES ('K','文件下载','0','#');
INSERT INTO `nav` VALUES ('K0','文件','K','#');
INSERT INTO `nav` VALUES ('X','轮播','x','static');
INSERT INTO `nav` VALUES ('Z','首页','-1','static');
INSERT INTO `nav` VALUES ('Z0','学院动态','Z','index');
INSERT INTO `nav` VALUES ('Z1','通知公告','Z','index');
INSERT INTO `nav` VALUES ('Z2','学生工作','Z','index');
INSERT INTO `nav` VALUES ('Z3','就业工作','Z','index');
INSERT INTO `nav` VALUES ('Z4','学术动态','Z','index');
/*!40000 ALTER TABLE `nav` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table user
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table user
#

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (20143679,'陈飞龙','svPLaEkLF9S4TFaedZDSYA==');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
