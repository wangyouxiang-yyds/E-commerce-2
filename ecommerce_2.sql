-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_2
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  `create_date` date NOT NULL,
  `article_photo` varchar(200) NOT NULL,
  `article_category_id` bigint(20) NOT NULL,
  `small_content` longtext NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  KEY `article_article_category_id_365a0c8c_fk_article_category_id` (`article_category_id`),
  CONSTRAINT `article_article_category_id_365a0c8c_fk_article_category_id` FOREIGN KEY (`article_category_id`) REFERENCES `article_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (2,'2023 BMW S Series 1000 RR ABS璅???,'S Series隞?”?BMW??擃扯??頠?頝??剛??MW?啁??潛??游??撓撘?嚗隞?”雿?S 1000 RR?湔撽??嚗?脩??扯銝??瘨祥?末閰??刻魚?葉銋敺?唳?蝮曇??扔擃?漲?r\n\r\n甇文?掃??001cc?偌?瑞??蝻詨?銵?瘙賣硃撘?嚗??10hp?憭折收??11.52kgm??頛詨???S 1000 RR銝敺?脰”?橘??澆銵??澈? 1000 R?DV閮湔?? 1000 XR銋?璅???抬??????隤輸?嚗?隞??曉銝銝銝???擳r\n\r\n2023撟游?S 1000 RR?瑟?BMW ShiftCam?銵???銝血??璅???Shift Assistant Pro嚗??頛?畾萄隤踵?TC蝟餌絞?????摨行??亙嚗?頠?銵??拙?皛??批嚗撠??游末?扯??雿喟???擃?嚗?,'Louis','2023-11-20 10:11:56.815886','2023-11-20','article_photo/2023_BMW_S_Series_1000_RR_ABS璅???jpeg',2,'S Series隞?”?BMW??擃扯??頠?頝??剛??MW?啁??潛??游??撓撘?嚗隞?”雿?S 1000 RR?湔撽??嚗?脩??扯銝??瘨祥?末閰??刻魚?葉銋敺?唳?蝮曇??扔擃?漲??),(3,'2023 BMW S Series 1000 R ABS 璅???,'S Series隞?”?BMW??擃扯??頠?頝??剛??MW?啁??潛??游??撓撘?嚗隞?”雿?S 1000 RR?湔撽??嚗?脩??扯銝??瘨祥?末閰??刻魚?葉銋敺?唳?蝮曇??扔擃?漲?r\n\r\n甇文?掃??001cc?偌?瑞??蝻詨?銵?瘙賣硃撘?嚗??10hp?憭折收??11.52kgm??頛詨???S 1000 RR銝敺?脰”?橘??澆銵??澈? 1000 R?DV閮湔?? 1000 XR銋?璅???抬??????隤輸?嚗?隞??曉銝銝銝???擳r\n\r\n2023撟游?S 1000 RR?瑟?BMW ShiftCam?銵???銝血??璅???Shift Assistant Pro嚗??頛?畾萄隤踵?TC蝟餌絞?????摨行??亙嚗?頠?銵??拙?皛??批嚗撠??游末?扯??雿喟???擃?嚗?,'Alan','2023-11-20 10:13:23.010471','2023-11-20','article_photo/2023_BMW_S_Series_1000_R_ABS_璅??1.jpeg',2,'S Series隞?”?BMW??擃扯??頠?頝??剛??MW?啁??潛??游??撓撘?嚗隞?”雿?S 1000 RR?湔撽??嚗?脩??扯銝??瘨祥?末閰??刻魚?葉銋敺?唳?蝮曇??扔擃?漲??),(4,'2023 Ducati Panigale V2 ABS','anigale?浴ucati?刻?蝟颱葉??蝝葉??隞輯魚頝?嚗2銋暸???76kg嚗頛?55c.c?撓撘?嚗????55?寥收??撘瑟?撖血?嚗頠摮??抒頂蝯梯?頠?詨?閮剖?銋銝???賂??臭?甈曉????抒?銵??魚頠r\n\r\nPanigale V2 Bayliss 20?勗僑蝝敹萄?頠??祆蟡府撱???????Troy Bayliss嚗頠??函?亦?憛?雿??嚗?????Bayliss ??2001 撟湧?銋?996 R 韐?蝚砌?????頠????Ohlins ?輸??剁?霈?Panigale V2 Bayliss 20?勗僑蝝敹萄?頠????喳銝??啁?蝑??r\n\r\n2023撟游???Panigale V4 S ?典???靘???靽嚗??振??閫霈犖銝?澆停?質??粹靘 Borgo Panigale ?????瘚蔗閮剛??刻?閬箔??游??圈洛嚗??儔憭批??憛???蝬游?嚗漲憓溶鈭嗾?答瞍怒?S ???蝝摨扳??憚獢?蝐歹??剝?銝?啁???Logo 嚗????撥????憸冽嚗??渡?貊??r\n\r\n?祈??剛?鈭?Ducati Desmosedici Stradale 90簞 V4撘?嚗??望?餉????瘞?頂蝯梁??芸?嚗?甇文???寥?? 1.5 hp ?????憭折收????215.5 hp 嚗蒂??13,000 頧?????????蝻訾???嗥頂蝯梧??賢???喳???圈??孵??畾菜?嚗?????孵?掃蝻賂?雿?Panigale V4 S ?游??銝行??憟賜?擉?擃??r\n\r\n?唬?隞??霈拳?∠ WSBK ???暹?銵?銝行???啁?鞈賡?朣??迨?孵?銝?撱園鈭?1 瑼? 2 瑼?????嚗?鈭?6 瑼?撱嗡撓?改?銝虫蝙頠?璆菟?銝???5 km/h ??頠澈?寥??靘?閮勗??寡?嚗甈銷anigale V4 S ????頠訾?蝵桐??? 4 mm 嚗鈭?撘瑞帘摰?頨思蒂鋆?敺銝???瘜?銋?葆憓?鈭??隤踵蝭??硃蝞梯?摨扳?閮剛?霈??渡泵?犖擃極摮賂?憓脖?擉ㄚ?函?頠??湔????舀??迨憭?瘝寧拳摰寥??之鈭? ?砍?嚗蜇閮?7 ?砍?嚗?撘瑕?鈭?頛?蝥??摨扳???摨虫?????50 mm嚗??其漲霈??渡撟喳嚗??擉ㄚ?游末???扯?蝛拙??扼r\n\r\n?冽??憸函蕉?瘚蔗嚗??質?鈭箸?憿舀???寞狡敺?Panigale V4 S?函征瘞???飛銝?銝雲?井???蝧潛???摰◢蝧潸?F1?偏蝧澆??隡潘?銝血??箔蜓蝧潸?镼蕉?見?身閮??頛撠概嚗?憓?鈭雿??嚗???唳?撠?300 ?祇?嚗?憸函蕉?Ｙ???憯?撠??37 ?祆嚗隞亥??抵?頛蒂?脫迫?憚瘚株??r\n\r\n?湔?蝵拐??寧??矽?湛??質??啁?摰◢蝧潛鈭??剁?銝???典?憭鈭?憸典嚗隞亙?撘瑟?望扼迨霈?銝??孵?鈭?憯怎??摨佗?銋隞亙??????DQS 敹急???冽?瑟???皞恍?雿??扯????ｇ?Panigale V4 S隞雁????Ohlins?詨?蝟餌絞??hlins?脩?剔??蔭?????荔????箸?典?記hlins NPX 25/30?典隤踵除憯??迨??雿輻皞MotoGP?SBK??憯撠潛頂蝯梧?銝血??瑚?5 mm ??蝔??支??臭誑??瘚?蝛箄??◢?迎?銝阡????????\r\n?改?銋霈?頛??憟賜??舀???蝛拙??改??舐???Ｖ葉?擃???????Ohlins?其辣??Ohlins Smart EC 2.0蝟餌絞?脰??餃??批嚗?擉ㄚ?臭誑靘?犖憸冽閮剖??詨??寞改?銝虫耨?孵?蝔格?雿??詻r\n\r\n?餅??銋??拇?Ｖ??港誑靘??Ducati ?虜瘜券????典???Panigale V4 S ??2023撟渡??銝頛? 2 蝔格???芋撘? Full ??Low ??Full 璅∪????璆萇垢??瘝?Map 嚗雿踹雿?雿??賣?靘?憭扳???剖????銝瑼?嚗?撱箄降?函畾??????鞈賡?雿輻??Low 璅∪???擐砍????150 hp 嚗蒂霈???敺??潭??改?雿輯?頛?隞支犖???頝航”?整r\n\r\n?啁? 5 ??TFT ?典蔗??園鈭 Road ??Track 憿舐內璅∪?銝剜?唬???閮???找??亥?頞?霅衣內???撘?雿踹?游捆?霈嚗?剛?鈭?啁? Track EVO 憿舐內璅∪??車皞??Superleggera V4 ?＊蝷箸芋撘??擉ㄚ?刻魚??銋??遙雿??鞈?嚗??急?雿???詻??貉??餅?閮剖?蝑??找???嚗撠???璅??單???靘???憯恬?憒迨?＊蝷箸撘????拇隤踵?身摰?頛?2023 Panigale V4 SP2??撣嗥楊??頠???嚗?典之?４蝥雁?其辣嚗????荔??嗉?甈????鞈賡??拍摰r\n\r\n頨怨?摰嗆?蝟餃??垢?anigale V4 SP2?∠?砍迤皜祈岫憛?嚗??皞MotoGP?SBK摮??皜祈岫?ucati Corse頠???頨思誑瘨?暺銝駁?嚗蒂?求ucati蝝?靽桅ˇ嚗??剝?銝??脩?擃桃結蝝???瘝寧拳嚗釭?瘞?失?荔??⊥?澆???蝺刻???頛?蝔梁?頠???嚗??瑕???噗anigale V4 SP2?????銝?閫?P2蝟餃?????蝣喟?蝬剖?憸函蕉?之?４蝥雁?其辣?鈭蝣喟?蝬剛憚獢?韏惹??Marchesini?????憚獢?鈭?.4 ?祆嚗?憭批?皜?鈭?敺?蝪找?????扼r\n\r\n?函?頠??蝝?嚗P2蝟餃?頠???步rembo Stylema R?⊿?嚗鈭??撥憭批?扯嚗?曹漲?游??臬末嚗鞈賡?銝??銝????函???銝??舐雁?帘摰扼??賣扔???izoma???隤踹??唾?敺宏嚗?SP2蝟餃???憯怨靘??芾澈????擉?憸冽嚗??唾?隤踵?唳??拙???蝵殷?銝虫??臭誑閮剖?????鞈質???嚗?頠??湔?蝡嗆?瘞??r\n\r\n甇文?嚗anigale V4 SP2???葆??隤踵?函?Brembo MCS蝮賣陬?椰??銝????▼頝??隤踵鋆蔭嚗?閮梯?擉ㄚ?券?銋?嚗??矽蝭???▼??????嚗漲銝?閬隞颱?撌亙??頠??Ｗ??冽?獢輻?蝬??極??嚗??賣?撠蝙?冽???r\n\r\n雿?刻??辣嚗GPS 璅∠???頠???(DDA+) 撠?頠?銝雿萎漱?anigale V4 SP2??銝颯魚??嚗DA+?臭誑?箄?炎皜砍???葉????嚗蒂憿舐內?雿喳???雿喃葉暺?霈?憯怠?交?蝮暹?血?脫郊?DA+?舫?頠???瘞???漲???????TC敺芾楚蝟餌絞????鞈?靘???隡圈?憯怨?頠??”?橘?銝衣擉ㄚ蝝????0 ???桀????葉??????憭扯???憭批祕?漲?閫??湔?閫??豢???,'?恭蝧?,'2023-11-20 10:20:33.098640','2023-11-20','article_photo/Ducati_1.jpeg',2,'Panigale?浴ucati?刻?蝟颱葉??蝝葉??隞輯魚頝?嚗2銋暸???76kg嚗頛?55c.c?撓撘?嚗????55?寥收??撘瑟?撖血?嚗頠摮??抒頂蝯梯?頠?詨?閮剖?銋銝???賂??臭?甈曉????抒?銵??魚頠?),(5,'2023 Honda CB1000 R嚗?ABS','雿Neo Sports Cafe 摰嗆?銝剔??璈車嚗B1000R隞仿?鞈芣???閫???賣????”?暹楛????2023撟游?CB1000R 隞亙?唳???撱嗥??啣??文??摮賂?瘥??敦蝭?賢?皛蹂??瑚犖?寞?瘙?敦?拙極??蹂???Honda 撘誑?箏?蒂??蝻詨???隤踵???雿??????撓?綽?憓溶?亙虜雿輻?扛????銋芋撘?蝟餌絞霈?憯怨靘楝瘜?梁?隤踵嚗??怠?????頠? HSTC 敺芾楚?批?r\n\r\n隞丘B1000R頠?箏蝷?憓溶?刻?暺???閫蝝啁?嚗??銝挾?航矽?渡??脯瑼翰???湧???啣??亦??????蝟餌絞(HSVCS)嚗?銵??喳控?澈???惜?Ｙ?撣亙???????銋?撽?2023撟游?CB1000R+隞亙?唳???隞??漁??嚗??啣?蝢拚???憯怎?擳???,'Jay','2023-11-20 10:21:55.554716','2023-11-20','article_photo/Honda_CB1000_R_ABS_1.jpeg',2,'雿Neo Sports Cafe 摰嗆?銝剔??璈車嚗B1000R隞仿?鞈芣???閫???賣????”?暹楛????),(6,'2023 Kawasaki Z H2 ABS','Z頠頂????啣?雿400嚗SpuerNaked蝎暸??瘜其?銝??潛?湛??inja 400?摮輻?頠車嚗?璅????鈭??脰?擃扯??頠?蝯?銝???鈭?撘瑕漲銝????脣?????隞???300?豢?嚗??啁?Z400???渲?撌抒??????扼誑???????賜敺?瘝???隢詨??芷?銋?嚗蝙Z400?遛????瘣餌??寞扯?其??祇?頝臭????潭嚗蒂銝?擉???亙虜?暑銝剖停?脣?璆萄之??擏?頞???卵蝟餃??桀??勗??交?Z400?650?650 RS?900?900 RS? H2蝑?甈整900?支?撣嗡??游靘萇?抒??剔?憭??頠ED?嚗蒂?啣?鈭TRC嚗awasaki Traction Control嚗儐頝⊥?嗥頂蝯晞ower Mode???航矽璅∪?嚗???銝??.3??TFT 嚗hin-film transistor嚗敶拙??塚??湧?銋?瑕撘??r\n\r\n2017蝐唾頠?Kawasaki?典??隞???1?儔?餉?甈銲900 RS嚗??銵其???Cafe Racer???900 RS Cafe嚗??∠948c.c.瘞游?游??撓撘???撖??餅蝘??隞????嚗????班900 RS Cafe?游??afe Racer?移蟡?憒??貊??剔??湔?蝵押??桐犖撘漣雿?雿????雿韌??憯思?閫?嚗????啣儔?方??曆誨??蝢??r\n\r\nKawasaki?箸遛頞喃葉??撣頠蕙????敺???箸?文摰嗆??洵鈭頠狡-Z650 RS???Z900 RS?嚗?剖?蝎暹???頨怒?瑞?瘝寧拳?誑?移蝺餌?頠偏嚗蝙?嗆????潭??批?????擐剔?扼650 RS??擃?瑽?蝬??隤踵嚗?87kg頠澈頛??????靘??3.5kg???嗡蜓蝯?嚗?嗅??1,405mm?剛遘頝?.6m??敶?敺??賣?嗆??折?撌抒???銋?嚗?潸?頨怠????擃?摨血??墮650?身閮????拇?嗉?撠曉像?游?嚗?????拍?銋?銵函?r\n\r\n?剛?璈１憓?撘???蝝?頠?Z H2嚗SUGOMI?身閮?敹萎??脣??游?銵??脣?嚗膳?乩??????◢鞎???Ram Air?脫除???撠迂???剜????撘菟???頠銝誨銵典?撏?撌亦?撌??啗?嚗??曉????憟賣??寧??祆扼璆萇陛銝餌儔??敹萎?嚗?頨怎?皝??單樴之隞支犖????撘?隞園隞亦樴????孵??嚗撥憭抒???餃?銝仃?暑???扼遛頛??餅???券???憟?鈭 H2?汶摰嗆???撠雿???撌??極??蝘?蝯????潔?嚗?撠曹?Z摰嗆??唬?隞??蝭???,'Jordan','2023-11-20 10:23:59.446901','2023-11-20','article_photo/Kawasaki_Z_H2_ABS_ulFAsRi.jpeg',2,'Z頠頂????啣?雿400嚗SpuerNaked蝎暸??瘜其?銝??潛?湛??inja 400?摮輻?頠車嚗?璅????鈭??脰?擃扯??頠?蝯?銝???鈭?撘瑕漲銝????脣?????隞???300?豢?嚗??啁?Z400???渲?撌抒???????),(7,'Bravo 15 C7VFK-231TW (R7/ RTX 4060)','?剛? AMD Ryzen??7 7735HS ???沔r\nWindows 11 Home (MSI recommends Windows 11 Pro for business.)\r\nNVIDIA簧 GeForce RTX??4060 Laptop GPUUp to 2250MHz Boost Clock 105W Maximum Graphics Power with Dynamic Boost. *May vary by scenario\r\n15.6\" FHD(1920x1080), 144Hz Refresh Rate, IPS-Level\r\n?函?憿臬璅∪?(MUX?券＊?湧?身閮? 嚗???質?冽憓?\r\n?典振Cooler Boost 5 擃???閮剛?\r\nMSI Center頠?嚗?靘摰園蝡嗆芋撘r\nMSI APP Player頠?嚗?餌奎蝑?Ｙ??\r\n?舀?剜Hi-Res擃圾?璅?,'Ausor','2023-11-20 10:26:29.973866','2023-11-20','article_photo/Bravo_15.webp',3,'?剛? AMD Ryzen??7 7735HS ????);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_category` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` VALUES (1,'?暑'),(2,'憭批???璈?'),(3,'3C');
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 擐?Banner',7,'add_bannermodel'),(26,'Can change 擐?Banner',7,'change_bannermodel'),(27,'Can delete 擐?Banner',7,'delete_bannermodel'),(28,'Can view 擐?Banner',7,'view_bannermodel'),(29,'Can add PayPal IPN',8,'add_paypalipn'),(30,'Can change PayPal IPN',8,'change_paypalipn'),(31,'Can delete PayPal IPN',8,'delete_paypalipn'),(32,'Can view PayPal IPN',8,'view_paypalipn'),(33,'Can add ?蝞∠?',9,'add_membermodels'),(34,'Can change ?蝞∠?',9,'change_membermodels'),(35,'Can delete ?蝞∠?',9,'delete_membermodels'),(36,'Can view ?蝞∠?',9,'view_membermodels'),(37,'Can add ??憿',10,'add_articlecategory'),(38,'Can change ??憿',10,'change_articlecategory'),(39,'Can delete ??憿',10,'delete_articlecategory'),(40,'Can view ??憿',10,'view_articlecategory'),(41,'Can add ??',11,'add_article'),(42,'Can change ??',11,'change_article'),(43,'Can delete ??',11,'delete_article'),(44,'Can view ??',11,'view_article'),(45,'Can add 憿?”',12,'add_category'),(46,'Can change 憿?”',12,'change_category'),(47,'Can delete 憿?”',12,'delete_category'),(48,'Can view 憿?”',12,'view_category'),(49,'Can add ?Ｗ??”',13,'add_product'),(50,'Can change ?Ｗ??”',13,'change_product'),(51,'Can delete ?Ｗ??”',13,'delete_product'),(52,'Can view ?Ｗ??”',13,'view_product'),(53,'Can add ?Ｗ????”',14,'add_productphoto'),(54,'Can change ?Ｗ????”',14,'change_productphoto'),(55,'Can delete ?Ｗ????”',14,'delete_productphoto'),(56,'Can view ?Ｗ????”',14,'view_productphoto'),(57,'Can add 閮蝞∠?',15,'add_order'),(58,'Can change 閮蝞∠?',15,'change_order'),(59,'Can delete 閮蝞∠?',15,'delete_order'),(60,'Can view 閮蝞∠?',15,'view_order'),(61,'Can add 閮?敦',16,'add_orderitem'),(62,'Can change 閮?敦',16,'change_orderitem'),(63,'Can delete 閮?敦',16,'delete_orderitem'),(64,'Can view 閮?敦',16,'view_orderitem'),(65,'Can add ?舐窗??,17,'add_contactmodels'),(66,'Can change ?舐窗??,17,'change_contactmodels'),(67,'Can delete ?舐窗??,17,'delete_contactmodels'),(68,'Can view ?舐窗??,17,'view_contactmodels'),(69,'Can add 撣貉???',18,'add_faqmodels'),(70,'Can change 撣貉???',18,'change_faqmodels'),(71,'Can delete 撣貉???',18,'delete_faqmodels'),(72,'Can view 撣貉???',18,'view_faqmodels'),(73,'Can add 閮?敦',19,'add_orderitem'),(74,'Can change 閮?敦',19,'change_orderitem'),(75,'Can delete 閮?敦',19,'delete_orderitem'),(76,'Can view 閮?敦',19,'view_orderitem'),(77,'Can add 閮蝞∠?',20,'add_order'),(78,'Can change 閮蝞∠?',20,'change_order'),(79,'Can delete 閮蝞∠?',20,'delete_order'),(80,'Can view 閮蝞∠?',20,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$hitwWdhbx8s1iWZZF1I3GJ$DZl8eSEyQbyichjkHwwXF5YqiumUREzh6AdCDVNFfj8=','2023-11-22 17:37:24.727038',1,'admin','','','admin@gmail.com',1,1,'2023-11-17 09:22:00.496577');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) NOT NULL,
  `c_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'banner/1111-2800x845_1903x700_crop_center_T7p6OcC.webp','2023-11-17'),(2,'banner/iphone15banner_rYbVNuG.jpg','2023-11-17'),(3,'banner/slider-1_9eB6Gqe.jpg','2023-11-17'),(4,'banner/watch_b3ZqLM9.jpg','2023-11-17');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  `category_photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'3C','category_photo/tech_0ChUsAX.jpg'),(2,'憭批???璈?','category_photo/motor_categpry_djxoms4.jpeg'),(3,'?暑','category_photo/live_2yQoUy1.jpg'),(4,'?亙虜','category_photo/normallife_ldwmk0E.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'?恭蝧?,'zx1010364@gmail.com','sleep p','?閬?,'2023-11-22 14:25:50.016254','2023-11-22 14:25:50.016254');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-17 09:22:38.222700','1','3C',1,'[{\"added\": {}}]',12,1),(2,'2023-11-17 09:22:45.029005','2','憭批???璈?',1,'[{\"added\": {}}]',12,1),(3,'2023-11-17 09:22:53.150911','3','?暑',1,'[{\"added\": {}}]',12,1),(4,'2023-11-17 09:23:23.807925','1','CB750',1,'[{\"added\": {}}]',13,1),(5,'2023-11-17 09:23:33.426682','1','ProductPhoto object (1)',1,'[{\"added\": {}}]',14,1),(6,'2023-11-17 09:24:08.254856','2','CB1000',1,'[{\"added\": {}}]',13,1),(7,'2023-11-17 09:24:15.676579','2','ProductPhoto object (2)',1,'[{\"added\": {}}]',14,1),(8,'2023-11-17 10:57:40.910054','2','Order:2',3,'',20,1),(9,'2023-11-17 10:57:41.011633','1','Order:1',3,'',20,1),(10,'2023-11-17 10:59:12.513676','6','CB1000',3,'',19,1),(11,'2023-11-17 10:59:12.592504','5','CB750',3,'',19,1),(12,'2023-11-17 10:59:21.324085','3','Order:3',3,'',20,1),(13,'2023-11-17 13:37:40.697462','16','Order:16',3,'',20,1),(14,'2023-11-17 13:37:40.774888','15','Order:15',3,'',20,1),(15,'2023-11-17 13:37:40.824958','14','Order:14',3,'',20,1),(16,'2023-11-17 13:37:40.916583','13','Order:13',3,'',20,1),(17,'2023-11-17 13:37:41.032974','12','Order:12',3,'',20,1),(18,'2023-11-17 13:37:41.083703','11','Order:11',3,'',20,1),(19,'2023-11-17 13:37:41.124601','10','Order:10',3,'',20,1),(20,'2023-11-17 13:37:41.177189','9','Order:9',3,'',20,1),(21,'2023-11-17 13:37:41.237142','8','Order:8',3,'',20,1),(22,'2023-11-17 13:37:41.278487','7','Order:7',3,'',20,1),(23,'2023-11-17 13:37:41.320715','6','Order:6',3,'',20,1),(24,'2023-11-17 13:37:41.378650','5','Order:5',3,'',20,1),(25,'2023-11-17 13:37:41.420768','4','Order:4',3,'',20,1),(26,'2023-11-17 15:13:14.359049','21','Order:21',3,'',20,1),(27,'2023-11-17 15:13:14.427522','20','Order:20',3,'',20,1),(28,'2023-11-17 15:29:17.407248','23','Order:23',3,'',20,1),(29,'2023-11-17 15:29:17.505624','22','Order:22',3,'',20,1),(30,'2023-11-17 15:30:16.647390','24','Order:24',3,'',20,1),(31,'2023-11-17 15:43:53.434020','27','Order:27',3,'',20,1),(32,'2023-11-17 15:43:53.536723','26','Order:26',3,'',20,1),(33,'2023-11-17 15:43:53.594642','25','Order:25',3,'',20,1),(34,'2023-11-17 15:43:53.636810','19','Order:19',3,'',20,1),(35,'2023-11-17 15:43:53.745367','18','Order:18',3,'',20,1),(36,'2023-11-17 15:43:53.845711','17','Order:17',3,'',20,1),(37,'2023-11-17 15:53:55.066136','29','Order:29',3,'',20,1),(38,'2023-11-17 15:53:55.134499','28','Order:28',3,'',20,1),(39,'2023-11-17 16:19:18.585119','1','BannerModel object (1)',1,'[{\"added\": {}}]',7,1),(40,'2023-11-17 16:19:22.000633','2','BannerModel object (2)',1,'[{\"added\": {}}]',7,1),(41,'2023-11-17 16:19:24.884471','3','BannerModel object (3)',1,'[{\"added\": {}}]',7,1),(42,'2023-11-17 16:19:30.385385','4','BannerModel object (4)',1,'[{\"added\": {}}]',7,1),(43,'2023-11-17 16:20:02.996887','3','ProductPhoto object (3)',1,'[{\"added\": {}}]',14,1),(44,'2023-11-17 16:20:06.167267','4','ProductPhoto object (4)',1,'[{\"added\": {}}]',14,1),(45,'2023-11-17 16:20:10.422502','5','ProductPhoto object (5)',1,'[{\"added\": {}}]',14,1),(46,'2023-11-17 16:25:10.300150','3','2023 BMW S Series 1000 RR ABS璅???,1,'[{\"added\": {}}]',13,1),(47,'2023-11-17 16:25:20.914642','6','ProductPhoto object (6)',1,'[{\"added\": {}}]',14,1),(48,'2023-11-17 16:25:24.024975','7','ProductPhoto object (7)',1,'[{\"added\": {}}]',14,1),(49,'2023-11-17 16:25:27.531153','8','ProductPhoto object (8)',1,'[{\"added\": {}}]',14,1),(50,'2023-11-17 16:25:31.449411','9','ProductPhoto object (9)',1,'[{\"added\": {}}]',14,1),(51,'2023-11-17 16:25:34.631865','10','ProductPhoto object (10)',1,'[{\"added\": {}}]',14,1),(52,'2023-11-17 16:25:38.870250','11','ProductPhoto object (11)',1,'[{\"added\": {}}]',14,1),(53,'2023-11-17 16:25:42.191839','12','ProductPhoto object (12)',1,'[{\"added\": {}}]',14,1),(54,'2023-11-17 19:55:29.593208','4','銵?蝝?,1,'[{\"added\": {}}]',13,1),(55,'2023-11-17 19:55:36.764634','13','ProductPhoto object (13)',1,'[{\"added\": {}}]',14,1),(56,'2023-11-17 19:55:40.114077','14','ProductPhoto object (14)',1,'[{\"added\": {}}]',14,1),(57,'2023-11-17 19:55:43.529934','15','ProductPhoto object (15)',1,'[{\"added\": {}}]',14,1),(58,'2023-11-17 19:55:47.072186','16','ProductPhoto object (16)',1,'[{\"added\": {}}]',14,1),(59,'2023-11-17 19:55:50.254753','17','ProductPhoto object (17)',1,'[{\"added\": {}}]',14,1),(60,'2023-11-17 20:07:51.422827','5','RTX4070',1,'[{\"added\": {}}]',13,1),(61,'2023-11-17 20:07:58.163076','18','ProductPhoto object (18)',1,'[{\"added\": {}}]',14,1),(62,'2023-11-17 20:08:02.286332','19','ProductPhoto object (19)',1,'[{\"added\": {}}]',14,1),(63,'2023-11-17 20:08:05.634014','20','ProductPhoto object (20)',1,'[{\"added\": {}}]',14,1),(64,'2023-11-17 20:08:11.888273','21','ProductPhoto object (21)',1,'[{\"added\": {}}]',14,1),(65,'2023-11-17 20:35:46.589647','1','?暑',1,'[{\"added\": {}}]',10,1),(66,'2023-11-17 20:36:05.980443','1','?暑??',1,'[{\"added\": {}}]',11,1),(67,'2023-11-20 10:06:19.349815','1','FAQModels object (1)',1,'[{\"added\": {}}]',18,1),(68,'2023-11-20 10:09:43.585087','1','?暑??',3,'',11,1),(69,'2023-11-20 10:10:38.513187','2','憭批???璈?',1,'[{\"added\": {}}]',10,1),(70,'2023-11-20 10:10:42.307871','3','3C',1,'[{\"added\": {}}]',10,1),(71,'2023-11-20 10:11:56.839065','2','2023 BMW S Series 1000 RR ABS璅???,1,'[{\"added\": {}}]',11,1),(72,'2023-11-20 10:13:23.033469','3','2023 BMW S Series 1000 R ABS 璅???,1,'[{\"added\": {}}]',11,1),(73,'2023-11-20 10:20:33.106641','4','2023 Ducati Panigale V2 ABS',1,'[{\"added\": {}}]',11,1),(74,'2023-11-20 10:21:55.578755','5','2023 Honda CB1000 R嚗?ABS',1,'[{\"added\": {}}]',11,1),(75,'2023-11-20 10:23:59.465900','6','2023 Kawasaki Z H2 ABS',1,'[{\"added\": {}}]',11,1),(76,'2023-11-20 10:26:29.988679','7','Bravo 15 C7VFK-231TW (R7/ RTX 4060)',1,'[{\"added\": {}}]',11,1),(77,'2023-11-20 10:39:58.218890','4','?亙虜',1,'[{\"added\": {}}]',12,1),(78,'2023-11-20 10:53:38.620377','6','?云?極?踴R55蝟餃???瘞游ㄩ700ml (憭?舫)',1,'[{\"added\": {}}]',13,1),(79,'2023-11-20 10:53:47.982652','22','ProductPhoto object (22)',1,'[{\"added\": {}}]',14,1),(80,'2023-11-20 10:55:16.049876','7','?勗旨撖ａˇ ?脰馳????100%瘜?蝢?鋡??犖)',1,'[{\"added\": {}}]',13,1),(81,'2023-11-20 10:55:31.354239','23','ProductPhoto object (23)',1,'[{\"added\": {}}]',14,1),(82,'2023-11-20 10:57:02.309814','8','Tefal瘜??寧? ?冽?血?蝝??芰?舐頂??8CM(撟喳?????)',1,'[{\"added\": {}}]',13,1),(83,'2023-11-20 10:57:11.719679','24','ProductPhoto object (24)',1,'[{\"added\": {}}]',14,1),(84,'2023-11-20 10:57:19.212180','25','ProductPhoto object (25)',1,'[{\"added\": {}}]',14,1),(85,'2023-11-20 10:59:53.284311','9','?UJI ?∪?臬??撉券瘝(?園爸?剜?憟??蝥雁撟喟?.瘛梯?)',1,'[{\"added\": {}}]',13,1),(86,'2023-11-20 10:59:59.691527','26','ProductPhoto object (26)',1,'[{\"added\": {}}]',14,1),(87,'2023-11-20 11:01:38.035170','10','GeForce RTX 4090 SUPRIM X 24G 憿舐內??,1,'[{\"added\": {}}]',13,1),(88,'2023-11-20 11:01:46.731592','27','ProductPhoto object (27)',1,'[{\"added\": {}}]',14,1),(89,'2023-11-20 11:01:50.313137','28','ProductPhoto object (28)',1,'[{\"added\": {}}]',14,1),(90,'2023-11-20 11:01:53.923935','29','ProductPhoto object (29)',1,'[{\"added\": {}}]',14,1),(91,'2023-11-20 11:01:57.945635','30','ProductPhoto object (30)',1,'[{\"added\": {}}]',14,1),(92,'2023-11-20 15:25:45.734758','3','2023 BMW S Series 1000 RR ABS璅???,2,'[]',13,1),(93,'2023-11-20 15:53:10.416648','34','Order:34',2,'[{\"changed\": {\"fields\": [\"\\u9280\\u884c\\u5e33\\u865f\", \"\\u4ed8\\u6b3e\\u72c0\\u614b\"]}}]',20,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(11,'blog','article'),(10,'blog','articlecategory'),(17,'contact','contactmodels'),(5,'contenttypes','contenttype'),(7,'django_shop','bannermodel'),(18,'faq','faqmodels'),(8,'ipn','paypalipn'),(9,'member','membermodels'),(15,'order','order'),(16,'order','orderitem'),(6,'sessions','session'),(12,'shop','category'),(20,'shop','order'),(19,'shop','orderitem'),(13,'shop','product'),(14,'shop','productphoto');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-17 09:18:11.681814'),(2,'auth','0001_initial','2023-11-17 09:18:34.462409'),(3,'admin','0001_initial','2023-11-17 09:18:45.374113'),(4,'admin','0002_logentry_remove_auto_add','2023-11-17 09:18:45.448039'),(5,'admin','0003_logentry_add_action_flag_choices','2023-11-17 09:18:45.581638'),(6,'contenttypes','0002_remove_content_type_name','2023-11-17 09:18:48.175265'),(7,'auth','0002_alter_permission_name_max_length','2023-11-17 09:18:50.098623'),(8,'auth','0003_alter_user_email_max_length','2023-11-17 09:18:50.474683'),(9,'auth','0004_alter_user_username_opts','2023-11-17 09:18:50.535155'),(10,'auth','0005_alter_user_last_login_null','2023-11-17 09:18:51.743844'),(11,'auth','0006_require_contenttypes_0002','2023-11-17 09:18:51.980160'),(12,'auth','0007_alter_validators_add_error_messages','2023-11-17 09:18:52.068000'),(13,'auth','0008_alter_user_username_max_length','2023-11-17 09:18:54.505528'),(14,'auth','0009_alter_user_last_name_max_length','2023-11-17 09:18:59.527228'),(15,'auth','0010_alter_group_name_max_length','2023-11-17 09:19:00.319116'),(16,'auth','0011_update_proxy_permissions','2023-11-17 09:19:00.389133'),(17,'auth','0012_alter_user_first_name_max_length','2023-11-17 09:19:03.708771'),(18,'blog','0001_initial','2023-11-17 09:19:06.342554'),(19,'blog','0002_article_small_content','2023-11-17 09:19:07.728140'),(20,'blog','0003_alter_article_options_alter_articlecategory_options','2023-11-17 09:19:07.787631'),(21,'contact','0001_initial','2023-11-17 09:19:08.546831'),(22,'contact','0002_alter_contactmodels_options','2023-11-17 09:19:08.673816'),(23,'django_shop','0001_initial','2023-11-17 09:19:09.322841'),(24,'django_shop','0002_alter_bannermodel_options','2023-11-17 09:19:09.373856'),(25,'faq','0001_initial','2023-11-17 09:19:09.753709'),(26,'faq','0002_alter_faqmodels_order_status_alter_faqmodels_payment_and_more','2023-11-17 09:19:22.975646'),(27,'ipn','0001_initial','2023-11-17 09:19:24.207308'),(28,'ipn','0002_paypalipn_mp_id','2023-11-17 09:19:24.996055'),(29,'ipn','0003_auto_20141117_1647','2023-11-17 09:19:29.363405'),(30,'ipn','0004_auto_20150612_1826','2023-11-17 09:20:32.823213'),(31,'ipn','0005_auto_20151217_0948','2023-11-17 09:20:33.688282'),(32,'ipn','0006_auto_20160108_1112','2023-11-17 09:20:35.175015'),(33,'ipn','0007_auto_20160219_1135','2023-11-17 09:20:35.238506'),(34,'ipn','0008_auto_20181128_1032','2023-11-17 09:20:35.385413'),(35,'ipn','0009_alter_paypalipn_id','2023-11-17 09:20:37.382484'),(36,'member','0001_initial','2023-11-17 09:20:38.061882'),(37,'member','0002_membermodels_user_img','2023-11-17 09:20:38.679178'),(38,'member','0003_alter_membermodels_options','2023-11-17 09:20:38.730346'),(39,'shop','0001_initial','2023-11-17 09:20:50.249270'),(40,'shop','0002_alter_product_options_alter_productphoto_options_and_more','2023-11-17 09:20:50.421206'),(41,'shop','0003_product_is_onsale_alter_product_available','2023-11-17 09:20:51.363914'),(42,'shop','0004_product_image','2023-11-17 09:20:52.381984'),(43,'shop','0005_remove_product_image','2023-11-17 09:20:53.907499'),(44,'shop','0006_category_category_photo','2023-11-17 09:20:54.289838'),(45,'shop','0007_product_product_photo','2023-11-17 09:20:55.064518'),(46,'shop','0008_rename_product_photo_product_image','2023-11-17 09:20:55.199001'),(47,'order','0001_initial','2023-11-17 09:21:07.151027'),(48,'order','0002_remove_order_county_order_address','2023-11-17 09:21:10.184962'),(49,'order','0003_alter_orderitem_order_alter_orderitem_product_and_more','2023-11-17 09:21:10.242470'),(50,'order','0004_alter_order_options_alter_orderitem_options','2023-11-17 09:21:10.321109'),(51,'sessions','0001_initial','2023-11-17 09:21:11.268119'),(52,'shop','0009_alter_category_options_alter_product_options_and_more','2023-11-17 09:21:11.324057'),(53,'order','0002_alter_order_table_alter_orderitem_table','2023-11-17 10:21:54.155716'),(54,'shop','0010_order_orderitem','2023-11-17 10:29:22.681729'),(55,'shop','0011_alter_product_description','2023-11-17 16:23:48.850154');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0vtm1bdr22yj8aorbyt5d05as7s9j092','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r4tkN:qLIKlDF9xgELfEt4B6FNZgjVJ6q9oX9KceUTe5IiTDE','2023-12-04 10:10:47.319666'),('1gwpcb3khrjyl9xl6kfqfswcc6l4jqb6','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r4yfB:c0keLWWd4Av1ed_oqyRjiNscYC4P8LX3vIUb_X-4eV0','2023-12-04 15:25:45.881914'),('4ks99jum1jthq71glpaxh89n8yvn1u32','.eJyrViotTi2Kz0xRsjLUAbNdcxMzc5SslKoqkg2NjB3SQVy95PxcJR2lzGLHnMyyVCWrkqLSVB0lx5zEPKBCMKWjlJxYVJKTWVyiZBUdq6OUX5SSWgQy1cSoFgCAlSCo:1r5SvE:va6zoq6vscKWpH2lOGEWYJLyl5ZFk_9AQOcJJcdBWGk','2023-12-05 23:44:20.516434'),('7izvq7sii66eza483fnyn96czwtx0bf1','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r4tez:ujvSpjhlmIXg6HJr-4zXLez2Wh-jqwDIcrTGGGaR8jg','2023-12-04 10:05:13.364304'),('853thli4v3xo22vo6xzckh0o7sv4a1n6','e30:1r3uT4:72JK9-cDxjnFbJhg31luzPpKg4bl3m6Vjzs_de6YNnY','2023-12-01 16:44:50.206978'),('a51gv11bow6jtb9xfxao4cuojxbfl2zn','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r4tmz:YzjkscclxUmXjdYPDQkIzD9988OLVWhNfO_n3kBmI6M','2023-12-04 10:13:29.018287'),('iera1joabfory4ynxky9ptjrin5i803l','.eJxVjEsOgjAURffSsan9Aa1DHLsCQki_UEUgLYwIe7cEYnTyct89N2cFjVzmrlmiDY034AYwuPx2SuqXHXZgnnJoR6jHYQ5ewX0CTxrhYzS2L8_tn6CTsdu1miiRaYeZ1YxijnKcU1dgwxDCgglHFVFccEwlEYTzwnDrhGDSGsYIcUmqZZjBbd2O1PuYvqoC97LIUMLHxd80hdEsem78W7b2qlVq4TS0oK63D_qPTLA:1r4ybh:6hZ_DuUtmz12IXjh8o_sabu1XkLj_2Qq_a5LJPt8Oc8','2023-12-04 15:22:09.931158'),('il1d2q4gfl1nt0jmiqfi9n6wezf4tzkz','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r4tgJ:cHRReBo06VNqp_3Q30zM9aTWKuHcTVCE4UUgdMjs3-o','2023-12-04 10:06:35.559103'),('m1jzpyk12vagdv7tohhobkt9fnadq10t','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r4teK:OJcQcqvrsFSl_EiV7EFcPDyrHmvmT8uNg7AH7nKTkio','2023-12-04 10:04:32.028040'),('m6m8m6l79egn5l408n2vbwaqdnx6sk4e','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r50Ct:JuWlQ9UOvsBVdvR4Z3r8qiz1IIQAi1WRew-6nwkfdfQ','2023-12-04 17:04:39.262908'),('qu8zp04kgfzclb7igim9pk0ule1mm9x8','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r4tja:tmQMC5on6PnXtHq8qRm8ZvnsG2tTxOyEgqnkGIiY6-U','2023-12-04 10:09:58.378540'),('rnnizee69hxslzfej14634ir975b5al9','.eJxVjMsOgjAQAP-lZ9Ow7Qpdjt79hmb7EtS0CS0nwr8rCQe9zkxmE5bXNtm1xsXOQYwCxOWXOfavmA8RnpwfRfqS2zI7eSTytFXeS4jv29n-DSau07H1ytHVJ8DoUYPpeuh1GiBg1wEhJe2UM2RAsyJlzBBMTETIMSAqlb5Tz0sT47bvH_HsOjw:1r5jhT:EaTyHsKJ_0uYK-6RJvoZg25Pvq7Jh9D4ZBUoVJXWyt4','2023-12-06 17:39:15.213411'),('y4ziht7s3t9skcj6b1hq1x3bzdzifbi4','e30:1r5Gze:-vurzvxrcz2GVOlmeCYev2gxiGoHE6wrwI8hu9QtaRs','2023-12-05 11:00:06.544810'),('zckae06qcjph1bcs3wditmy88i0y4726','.eJxFik0KwjAUBu_yrUN90eIiK6t4ilJKTEN4ktiSH5GKd7ctiKsZhnmjJBt7HqD2YvNr0OyhML8kSToc65NbS2XGAAFOjeenhcqxWIHG68fybhAwOmbPKUO1LS5nSURL_eGvUxyHYnLPQTu7M7c1V_fJoes-X7PWK1I:1r3y5l:SIHDlS4g8BX5Y-Gspgh3u9drPkjmUlxblsR9AG9l5wA','2023-12-01 20:37:01.801161');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_status` longtext NOT NULL,
  `shipping_delivery` longtext NOT NULL,
  `payment` longtext NOT NULL,
  `return_exchange` longtext NOT NULL,
  `privacy_policy` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'?ㄐ?航迂憭恥?嗆?????嚗?閮梢??臭誑?曄??唳閬?蝑?嚗?甇∟??潮ail????,'鞎函?撘?賣?隞亦征???孵??雿?雿?嚗??航?◤憸典韏啗??芸楛?踹?','?曉?芣?雿輻Paypal?歇嚗????嗡???湔?舀狡蝯行?700-04011000960984','?函?停銝隞仿鞎典?~','瘝憟賡蝘? 嚗??Ｙ?????銝?摰? 嚗?雿?瘞?);
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `c_date` date NOT NULL,
  `user_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'?恭蝧?,'zxc123@gmail.com','96601e9660b4507f7f90b7c026821d0ab6b68c1d6a4414996dc235dfe80922ff','1987-06-21','0963982828','??頝?17撌?7??,'2023-11-17','user_img/BMW_S_Series_1000_RR_ABS璅???jpeg'),(2,'bearqqqqq','zx1010364@gmail.com','3db99874363950903962ded995300b6eb04a5414a374841c4bed43a45396f2e9','1999-12-04','0988919460','??頝?17撌?7??,'2023-11-22','user_img/e3aa20a2fe6e734efeccce399f5de9de.jpeg'),(3,'????,'wangyuhsiang1204@gmail.com','aee36b0f4ae2db65374c6a67ace535f0574d758fa401cdb7f41f2f4bedd5b833','1999-12-04','0963982828','??蝮??撅舫??頝?17撌?7??,'2023-11-21','');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_class`
--

DROP TABLE IF EXISTS `order_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `bank_account` varchar(10) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL,
  `pay_type` varchar(10) DEFAULT NULL,
  `subtotal` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `in_total` int(11) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_class`
--

LOCK TABLES `order_class` WRITE;
/*!40000 ALTER TABLE `order_class` DISABLE KEYS */;
INSERT INTO `order_class` VALUES (30,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'靽∠??,92250,0,92250,'2023-11-17 15:54:14.589524','2023-11-17 15:54:14.589524'),(31,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'靽∠??,12750,0,12750,'2023-11-17 15:58:19.335547','2023-11-17 15:58:19.335547'),(32,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'靽∠??,800,200,1000,'2023-11-17 20:14:53.629343','2023-11-17 20:14:53.629343'),(33,'yyyyy','zx1010364@gmail.com','0963982828','taipei','ssssssssssssssssssss','888',NULL,0,'靽∠??,5508095,0,5508095,'2023-11-17 20:32:27.794535','2023-11-17 20:32:27.794535'),(34,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542','5269',1,'靽∠??,1098999,0,1098999,'2023-11-20 15:49:06.663144','2023-11-20 15:53:10.402190'),(35,'','zxc123@gmail.com','','','','',NULL,0,'靽∠??,750,200,950,'2023-11-21 23:11:17.389165','2023-11-21 23:11:17.389165'),(36,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'paypal',750,200,950,'2023-11-21 23:19:15.973713','2023-11-21 23:19:15.973713'),(37,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'paypal',750,200,950,'2023-11-21 23:21:35.481798','2023-11-21 23:21:35.481798'),(38,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'paypal',1099999,0,1099999,'2023-11-21 23:22:25.778753','2023-11-21 23:22:25.778753'),(39,'Yabe  Emi','zxc123@gmail.com','0485550154','Gyoda  Cit','4-4-16 Mochida','361-0056',NULL,0,'ecpay',50,200,250,'2023-11-21 23:23:55.062556','2023-11-21 23:23:55.062556'),(40,'Yabe  Emi','zxc123@gmail.com','0485550154','Gyoda  Cit','4-4-16 Mochida','361-0056',NULL,0,'ecpay',0,200,200,'2023-11-21 23:24:33.248102','2023-11-21 23:24:33.248102'),(41,'Yabe  Emi','zxc123@gmail.com','0485550154','Gyoda  Cit','4-4-16 Mochida','361-0056',NULL,0,'ecpay',0,200,200,'2023-11-21 23:24:36.827128','2023-11-21 23:24:36.827128'),(42,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'paypal',0,200,200,'2023-11-21 23:24:43.082818','2023-11-21 23:24:43.083819'),(43,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',888,200,1088,'2023-11-21 23:44:20.328398','2023-11-21 23:44:20.328398'),(44,'?恭蝧?,'zxc123@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,1,'paypal',2380,0,2380,'2023-11-22 09:25:54.465259','2023-11-22 09:26:09.797490'),(45,'?之??,'zxc123@gmail.com','0987654321','?啁?蝮?,'?啁???,'525',NULL,0,'ecpay',60135,0,60135,'2023-11-22 09:38:08.076286','2023-11-22 09:38:08.076286'),(46,'888','zx1010364@gmail.com','0988888888888','000','949494499','78',NULL,1,'paypal',1105428,0,1105428,'2023-11-22 14:19:43.612168','2023-11-22 14:20:09.990074'),(47,'999','zx1010364@gmail.com','99999999999999','556','8888','4848',NULL,0,'ecpay',1000,0,1000,'2023-11-22 14:22:49.908615','2023-11-22 14:22:49.908615'),(48,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',3999,0,3999,'2023-11-22 14:24:16.682694','2023-11-22 14:24:16.682694'),(49,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',2380,0,2380,'2023-11-22 14:32:58.078111','2023-11-22 14:32:58.078111'),(50,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',750,200,950,'2023-11-22 14:33:42.334959','2023-11-22 14:33:42.334959'),(51,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',3380,0,3380,'2023-11-22 14:34:15.366267','2023-11-22 14:34:15.366267'),(52,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',750,200,950,'2023-11-22 14:34:51.717400','2023-11-22 14:34:51.717400'),(53,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',50,200,250,'2023-11-22 14:36:17.687517','2023-11-22 14:36:17.687517'),(54,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',850,200,1050,'2023-11-22 14:36:57.343589','2023-11-22 14:36:57.343589'),(55,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'ecpay',888,200,1088,'2023-11-22 14:37:11.552867','2023-11-22 14:37:11.552867'),(56,'?恭蝧?,'zx1010364@gmail.com','0963982828','?扈??,'??頝?17撌?7??,'542',NULL,0,'paypal',100,200,300,'2023-11-22 14:37:27.448839','2023-11-22 14:37:27.448839');
/*!40000 ALTER TABLE `order_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dtotal` int(11) NOT NULL,
  `dorder_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_detail_dorder_id_9d860832_fk_order_class_id` (`dorder_id`),
  CONSTRAINT `order_detail_dorder_id_9d860832_fk_order_class_id` FOREIGN KEY (`dorder_id`) REFERENCES `order_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (28,'CB750',750,123,69187500,30),(29,'CB750',750,1,562500,31),(30,'CB1000',1000,12,12000000,31),(31,'CB750',750,1,562500,32),(32,'RTX4070',50,1,2500,32),(33,'CB1000',1000,12,12000000,33),(34,'2023 BMW S Series 1000 RR ABS璅???,1098999,5,2147483647,33),(35,'銵?蝝?,100,11,110000,33),(36,'2023 BMW S Series 1000 RR ABS璅???,1098999,1,2147483647,34),(37,'CB750',750,1,562500,35),(38,'CB750',750,1,562500,36),(39,'CB750',750,1,562500,37),(40,'CB1000',1000,1,1000000,38),(41,'2023 BMW S Series 1000 RR ABS璅???,1098999,1,2147483647,38),(42,'RTX4070',50,1,2500,39),(43,'?云?極?踴R55蝟餃???瘞游ㄩ700ml (憭?舫)',888,1,788544,43),(44,'?勗旨撖ａˇ ?脰馳????100%瘜?蝢?鋡??犖)',2380,1,5664400,44),(45,'銵?蝝?,100,1,10000,45),(46,'RTX4070',50,1,2500,45),(47,'?UJI ?∪?臬??撉券瘝(?園爸?剜?憟??蝥雁撟喟?.瘛梯?)',3999,15,239880015,45),(48,'RTX4070',50,1,2500,46),(49,'2023 BMW S Series 1000 RR ABS璅???,1098999,1,2147483647,46),(50,'?UJI ?∪?臬??撉券瘝(?園爸?剜?憟??蝥雁撟喟?.瘛梯?)',3999,1,15992001,46),(51,'?勗旨撖ａˇ ?脰馳????100%瘜?蝢?鋡??犖)',2380,1,5664400,46),(52,'CB1000',1000,1,1000000,47),(53,'?UJI ?∪?臬??撉券瘝(?園爸?剜?憟??蝥雁撟喟?.瘛梯?)',3999,1,15992001,48),(54,'?勗旨撖ａˇ ?脰馳????100%瘜?蝢?鋡??犖)',2380,1,5664400,49),(55,'CB750',750,1,562500,50),(56,'?勗旨撖ａˇ ?脰馳????100%瘜?蝢?鋡??犖)',2380,1,5664400,51),(57,'CB1000',1000,1,1000000,51),(58,'CB750',750,1,562500,52),(59,'RTX4070',50,1,2500,53),(60,'CB750',750,1,562500,54),(61,'銵?蝝?,100,1,10000,54),(62,'?云?極?踴R55蝟餃???瘞游ㄩ700ml (憭?舫)',888,1,788544,55),(63,'銵?蝝?,100,1,10000,56);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_ipn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn`
--

LOCK TABLES `paypal_ipn` WRITE;
/*!40000 ALTER TABLE `paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pc_id` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `small_description` longtext NOT NULL,
  `description` longtext NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `price` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  `create_date` date NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `is_onsale` tinyint(1) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_id_640030a0_fk_category_id` (`category_id`),
  CONSTRAINT `product_category_id_640030a0_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `product_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'202311170923','CB750','CB750CB750CB750','CB750CB750CB750',750,750,1,'2023-11-17 09:23:23.779686','2023-11-17',2,1,'product_image/cb750.png'),(2,'202311170924','CB1000','CB1000CB1000CB1000','CB1000CB1000CB1000CB1000',1000,1000,1,'2023-11-17 09:24:08.231842','2023-11-17',2,1,'product_image/cb1000.jpg'),(3,'2023111171624','2023 BMW S Series 1000 RR ABS璅???,'S Series隞?”?BMW??擃扯??頠?頝??剛??MW?啁??潛??游??撓撘?嚗隞?”雿?S 1000 RR?湔撽??嚗?脩??扯銝??瘨祥?末閰??刻魚?葉銋敺?唳?蝮曇??扔擃?漲??,'S Series隞?”?BMW??擃扯??頠?頝??剛??MW?啁??潛??游??撓撘?嚗隞?”雿?S 1000 RR?湔撽??嚗?脩??扯銝??瘨祥?末閰??刻魚?葉銋敺?唳?蝮曇??扔擃?漲?r\n\r\n甇文?掃??001cc?偌?瑞??蝻詨?銵?瘙賣硃撘?嚗??10hp?憭折收??11.52kgm??頛詨???S 1000 RR銝敺?脰”?橘??澆銵??澈? 1000 R?DV閮湔?? 1000 XR銋?璅???抬??????隤輸?嚗?隞??曉銝銝銝???擳r\n\r\n2023撟游?S 1000 RR?瑟?BMW ShiftCam?銵???銝血??璅???Shift Assistant Pro嚗??頛?畾萄隤踵?TC蝟餌絞?????摨行??亙嚗?頠?銵??拙?皛??批嚗撠??游末?扯??雿喟???擃?嚗?,100,1098999,1,'2023-11-20 15:25:45.722085','2023-11-17',2,1,'product_image/2023_BMW_S_Series_1000_RR_ABS璅???jpeg'),(4,'202311171954','銵?蝝?,'頞末?刻???','頞末?刻???頞末?刻???頞末?刻???頞末?刻???頞末?刻???',5400,100,1,'2023-11-17 19:55:29.577029','2023-11-17',3,0,'product_image/common_1.webp'),(5,'202311172007','RTX4070','RTX4070RTX4070RTX4070RTX4070','RTX4070RTX4070RTX4070RTX4070RTX4070',100,50,1,'2023-11-17 20:07:51.411197','2023-11-17',1,0,'product_image/rtx4070_1_dBetWU2.webp'),(6,'2023111201051','?云?極?踴R55蝟餃???瘞游ㄩ700ml (憭?舫)','憭芸?撌交?閮剛?嚗??豢狡','憭芸?撌交?閮剛?嚗??豢狡\r\n瘞游ㄩ???瑟???憭?撠閮剛?\r\n銝??脤??嚗?撣嗅??粹憭?',999,888,1,'2023-11-20 10:53:38.613347','2023-11-20',4,1,'product_image/000001_1700216081.webp'),(7,'202311201054','?勗旨撖ａˇ ?脰馳????100%瘜?蝢?鋡??犖)','?湧100%瘜???蝢?','?湧100%瘜???蝢?\r\n摰瘣楊?４?蝮柴?脰??r\n銵典?瘛餃??交憭批??脰馳?亙?',50,2380,1,'2023-11-20 10:55:16.036835','2023-11-20',3,0,'product_image/000001_1699668452.webp'),(8,'202311201056','Tefal瘜??寧? ?冽?血?蝝??芰?舐頂??8CM(撟喳?????)','???ˊ???箸雿單澈蝝?嚗??⊥?雿喟隤踵澈摨?,'???ˊ???箸雿單澈蝝?嚗??⊥?雿喟隤踵澈摨吒r\n擃??勗??湔??嚗??勗翰???蓋r\n鈭粹?撌亙飛???踹???',50,1299,1,'2023-11-20 10:57:02.288052','2023-11-20',3,0,'product_image/yt000001_1700216332.jpg'),(9,'202311201059','?UJI ?∪?臬??撉券瘝(?園爸?剜?憟??蝥雁撟喟?.瘛梯?)','?園爸?剖??具?冽??潭?瞏雁霅瑞??蝥雁?Ｘ?鋆賣?瘝憟?,'?園爸?剖??具?冽??潭?瞏雁霅瑞??蝥雁?Ｘ?鋆賣?瘝憟r\n?扯ㄐ憛怠???敺桃?瘜⊥?撅?函???交??r\n閬嚗楛??撖?5*瘛?5*擃?3cm',50,3999,1,'2023-11-20 10:59:53.262701','2023-11-20',3,0,'product_image/000001_1699355128.webp'),(10,'202311201100','GeForce RTX 4090 SUPRIM X 24G 憿舐內??,'NVIDIA簧 GeForce RTX簧 4090 ?箇?璆湟eForce GPU??????鈭箏極?箸撽?,'NVIDIA簧 GeForce RTX簧 4090 ?箇?璆湟eForce GPU??????鈭箏極?箸撽???敶Ｘ?Ｗ葆靘?撌典之????撽?擃??賡??脯葆??蝺蕭頦芸??賜?璆萄閰喟敦???砌?????芣????Ｗ???雿撘NVIDIA Ada Lovelace?嗆??舀?嚗蒂??24 GB G6X閮擃??粹??脩摰嗅??萎???靘?璆菟?撽r\nTRI FROZR 3 ??閮剛?\r\n\r\nTORX Fan 5.0: ?梁敶Ｗ憫???◢????憸冽?蝵拙??極雿誑蝛拙?????憯除瘚r\n?豢除摰? GPU???園?閬??潸瘙賢恕嚗撠?翰???詨?撠蝞﹏r\n撠蝞∴??孵耦撠蝞∠??移撖?撌伐??臭誑?憭折蝛閫詨GPU嚗蒂瘝輯????脰??澈??嚗誑??雿單?望??r\n瘞???批嚗?銝??????駁?銝?閬?瘞??隢扳郭嚗??圈??芣??r\n \r\n\r\n?IOS\r\n\r\n?IOS霈頛??豢?蝣箔???券????脫芋撘?隞乩??芰?芸????單芋撘r\n \r\n\r\nMSI Center\r\n\r\n敺格??典振MSI Center霈?單????矽?游??芸?MSI?Ｗ?\r\n \r\n\r\nMystic Light\r\n\r\nMystic Light?航??典??冽??MSI ?Ｗ?嚗????航??嗡?RGB閮剖??脰?RGB?????',10,61900,1,'2023-11-20 11:01:38.023651','2023-11-20',1,0,'product_image/rtx4090_1_cPrn62F.webp');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_photo`
--

DROP TABLE IF EXISTS `product_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_photo` varchar(200) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_photo_product_id_83328935_fk_product_id` (`product_id`),
  CONSTRAINT `product_photo_product_id_83328935_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_photo`
--

LOCK TABLES `product_photo` WRITE;
/*!40000 ALTER TABLE `product_photo` DISABLE KEYS */;
INSERT INTO `product_photo` VALUES (1,'product_photo/cb750.png',1),(2,'product_photo/cb1000.jpg',2),(3,'product_photo/Honda_CB1000_R_ABS_1.jpeg',2),(4,'product_photo/Honda_CB1000_R_ABS_2.jpeg',2),(5,'product_photo/Honda_CB1000_R_ABS_3.jpeg',2),(6,'product_photo/2023_BMW_S_Series_1000_RR_ABS璅???jpeg',3),(7,'product_photo/BMW_S_Series_1000_RR_ABS璅??2_xgpLHvg.jpeg',3),(8,'product_photo/BMW_S_Series_1000_RR_ABS璅??3_gCjjf3d.jpeg',3),(9,'product_photo/BMW_S_Series_1000_RR_ABS璅??4_d44zY0I.jpeg',3),(10,'product_photo/BMW_S_Series_1000_RR_ABS璅??5_ElPCd9R.jpeg',3),(11,'product_photo/BMW_S_Series_1000_RR_ABS璅??6_sKtY01O.jpeg',3),(12,'product_photo/BMW_S_Series_1000_RR_ABS璅??9XYry9l.jpeg',3),(13,'product_photo/common_1.webp',4),(14,'product_photo/common_2.webp',4),(15,'product_photo/common_3.webp',4),(16,'product_photo/common_4.webp',4),(17,'product_photo/common_5.webp',4),(18,'product_photo/rtx4070_1_BSeFCXq.webp',5),(19,'product_photo/rtx4070_2.webp',5),(20,'product_photo/rtx4070_3.webp',5),(21,'product_photo/rtx4070_4.webp',5),(22,'product_photo/000001_1700216081.webp',6),(23,'product_photo/000001_1699668452.webp',7),(24,'product_photo/l000001_1700216331.webp',8),(25,'product_photo/l000002_1700216332.webp',8),(26,'product_photo/000001_1699355128.webp',9),(27,'product_photo/rtx4090_1_LDBM4u0.webp',10),(28,'product_photo/rtx4090_2.webp',10),(29,'product_photo/rtx4090_3.webp',10),(30,'product_photo/rtx4090_4.webp',10);
/*!40000 ALTER TABLE `product_photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 16:33:11
