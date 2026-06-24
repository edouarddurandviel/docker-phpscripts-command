-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB-1:11.3.2+maria~ubu2204

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
-- Table structure for table `analytics`
--

DROP TABLE IF EXISTS `analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `analytics_unique` (`task`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics`
--

LOCK TABLES `analytics` WRITE;
/*!40000 ALTER TABLE `analytics` DISABLE KEYS */;
INSERT INTO `analytics` VALUES (1,'User Story','Create new website Wed : Wed Jan 21 2026 19:23:38 GMT+0100 (heure normale d’Europe centrale)'),(2,'Feature','Task list with description: Wed Jan 21 2026 19:23:58 GMT+0100 (heure normale d’Europe centrale)'),(3,'Task','Make cron jobs for daily data imports: Thu Jan 22 2026 15:39:51 GMT+0100 (heure normale d’Europe centrale)');
/*!40000 ALTER TABLE `analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `short` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'what-is-lorem-ipsum','What is Lorem Ipsum?','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','short Lorem Ipsum is simply dummy text of the printing'),(2,'where-does-it-come-from','Where does it come from?','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.','short Contrary to popular belief, Lorem Ipsum is not simply');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imports` (
  `userId` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=712 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
INSERT INTO `imports` VALUES (1,'delectus aut autem',512,NULL),(1,'quis ut nam facilis et officia qui',513,NULL),(1,'fugiat veniam minus',514,NULL),(1,'et porro tempora',515,NULL),(1,'laboriosam mollitia et enim quasi adipisci quia provident illum',516,NULL),(1,'qui ullam ratione quibusdam voluptatem quia omnis',517,NULL),(1,'illo expedita consequatur quia in',518,NULL),(1,'quo adipisci enim quam ut ab',519,NULL),(1,'molestiae perspiciatis ipsa',520,NULL),(1,'illo est ratione doloremque quia maiores aut',521,NULL),(1,'vero rerum temporibus dolor',522,NULL),(1,'ipsa repellendus fugit nisi',523,NULL),(1,'et doloremque nulla',524,NULL),(1,'repellendus sunt dolores architecto voluptatum',525,NULL),(1,'ab voluptatum amet voluptas',526,NULL),(1,'accusamus eos facilis sint et aut voluptatem',527,NULL),(1,'quo laboriosam deleniti aut qui',528,NULL),(1,'dolorum est consequatur ea mollitia in culpa',529,NULL),(1,'molestiae ipsa aut voluptatibus pariatur dolor nihil',530,NULL),(1,'ullam nobis libero sapiente ad optio sint',531,NULL),(2,'suscipit repellat esse quibusdam voluptatem incidunt',532,NULL),(2,'distinctio vitae autem nihil ut molestias quo',533,NULL),(2,'et itaque necessitatibus maxime molestiae qui quas velit',534,NULL),(2,'adipisci non ad dicta qui amet quaerat doloribus ea',535,NULL),(2,'voluptas quo tenetur perspiciatis explicabo natus',536,NULL),(2,'aliquam aut quasi',537,NULL),(2,'veritatis pariatur delectus',538,NULL),(2,'nesciunt totam sit blanditiis sit',539,NULL),(2,'laborum aut in quam',540,NULL),(2,'nemo perspiciatis repellat ut dolor libero commodi blanditiis omnis',541,NULL),(2,'repudiandae totam in est sint facere fuga',542,NULL),(2,'earum doloribus ea doloremque quis',543,NULL),(2,'sint sit aut vero',544,NULL),(2,'porro aut necessitatibus eaque distinctio',545,NULL),(2,'repellendus veritatis molestias dicta incidunt',546,NULL),(2,'excepturi deleniti adipisci voluptatem et neque optio illum ad',547,NULL),(2,'sunt cum tempora',548,NULL),(2,'totam quia non',549,NULL),(2,'doloremque quibusdam asperiores libero corrupti illum qui omnis',550,NULL),(2,'totam atque quo nesciunt',551,NULL),(3,'aliquid amet impedit consequatur aspernatur placeat eaque fugiat suscipit',552,NULL),(3,'rerum perferendis error quia ut eveniet',553,NULL),(3,'tempore ut sint quis recusandae',554,NULL),(3,'cum debitis quis accusamus doloremque ipsa natus sapiente omnis',555,NULL),(3,'velit soluta adipisci molestias reiciendis harum',556,NULL),(3,'vel voluptatem repellat nihil placeat corporis',557,NULL),(3,'nam qui rerum fugiat accusamus',558,NULL),(3,'sit reprehenderit omnis quia',559,NULL),(3,'ut necessitatibus aut maiores debitis officia blanditiis velit et',560,NULL),(3,'cupiditate necessitatibus ullam aut quis dolor voluptate',561,NULL),(3,'distinctio exercitationem ab doloribus',562,NULL),(3,'nesciunt dolorum quis recusandae ad pariatur ratione',563,NULL),(3,'qui labore est occaecati recusandae aliquid quam',564,NULL),(3,'quis et est ut voluptate quam dolor',565,NULL),(3,'voluptatum omnis minima qui occaecati provident nulla voluptatem ratione',566,NULL),(3,'deleniti ea temporibus enim',567,NULL),(3,'pariatur et magnam ea doloribus similique voluptatem rerum quia',568,NULL),(3,'est dicta totam qui explicabo doloribus qui dignissimos',569,NULL),(3,'perspiciatis velit id laborum placeat iusto et aliquam odio',570,NULL),(3,'et sequi qui architecto ut adipisci',571,NULL),(4,'odit optio omnis qui sunt',572,NULL),(4,'et placeat et tempore aspernatur sint numquam',573,NULL),(4,'doloremque aut dolores quidem fuga qui nulla',574,NULL),(4,'voluptas consequatur qui ut quia magnam nemo esse',575,NULL),(4,'fugiat pariatur ratione ut asperiores necessitatibus magni',576,NULL),(4,'rerum eum molestias autem voluptatum sit optio',577,NULL),(4,'quia voluptatibus voluptatem quos similique maiores repellat',578,NULL),(4,'aut id perspiciatis voluptatem iusto',579,NULL),(4,'doloribus sint dolorum ab adipisci itaque dignissimos aliquam suscipit',580,NULL),(4,'ut sequi accusantium et mollitia delectus sunt',581,NULL),(4,'aut velit saepe ullam',582,NULL),(4,'praesentium facilis facere quis harum voluptatibus voluptatem eum',583,NULL),(4,'sint amet quia totam corporis qui exercitationem commodi',584,NULL),(4,'expedita tempore nobis eveniet laborum maiores',585,NULL),(4,'occaecati adipisci est possimus totam',586,NULL),(4,'sequi dolorem sed',587,NULL),(4,'maiores aut nesciunt delectus exercitationem vel assumenda eligendi at',588,NULL),(4,'reiciendis est magnam amet nemo iste recusandae impedit quaerat',589,NULL),(4,'eum ipsa maxime ut',590,NULL),(4,'tempore molestias dolores rerum sequi voluptates ipsum consequatur',591,NULL),(5,'suscipit qui totam',592,NULL),(5,'voluptates eum voluptas et dicta',593,NULL),(5,'quidem at rerum quis ex aut sit quam',594,NULL),(5,'sunt veritatis ut voluptate',595,NULL),(5,'et quia ad iste a',596,NULL),(5,'incidunt ut saepe autem',597,NULL),(5,'laudantium quae eligendi consequatur quia et vero autem',598,NULL),(5,'vitae aut excepturi laboriosam sint aliquam et et accusantium',599,NULL),(5,'sequi ut omnis et',600,NULL),(5,'molestiae nisi accusantium tenetur dolorem et',601,NULL),(5,'nulla quis consequatur saepe qui id expedita',602,NULL),(5,'in omnis laboriosam',603,NULL),(5,'odio iure consequatur molestiae quibusdam necessitatibus quia sint',604,NULL),(5,'facilis modi saepe mollitia',605,NULL),(5,'vel nihil et molestiae iusto assumenda nemo quo ut',606,NULL),(5,'nobis suscipit ducimus enim asperiores voluptas',607,NULL),(5,'dolorum laboriosam eos qui iure aliquam',608,NULL),(5,'debitis accusantium ut quo facilis nihil quis sapiente necessitatibus',609,NULL),(5,'neque voluptates ratione',610,NULL),(5,'excepturi a et neque qui expedita vel voluptate',611,NULL),(6,'explicabo enim cumque porro aperiam occaecati minima',612,NULL),(6,'sed ab consequatur',613,NULL),(6,'non sunt delectus illo nulla tenetur enim omnis',614,NULL),(6,'excepturi non laudantium quo',615,NULL),(6,'totam quia dolorem et illum repellat voluptas optio',616,NULL),(6,'ad illo quis voluptatem temporibus',617,NULL),(6,'praesentium facilis omnis laudantium fugit ad iusto nihil nesciunt',618,NULL),(6,'a eos eaque nihil et exercitationem incidunt delectus',619,NULL),(6,'autem temporibus harum quisquam in culpa',620,NULL),(6,'aut aut ea corporis',621,NULL),(6,'magni accusantium labore et id quis provident',622,NULL),(6,'consectetur impedit quisquam qui deserunt non rerum consequuntur eius',623,NULL),(6,'quia atque aliquam sunt impedit voluptatum rerum assumenda nisi',624,NULL),(6,'cupiditate quos possimus corporis quisquam exercitationem beatae',625,NULL),(6,'sed et ea eum',626,NULL),(6,'ipsa dolores vel facilis ut',627,NULL),(6,'sequi quae est et qui qui eveniet asperiores',628,NULL),(6,'quia modi consequatur vero fugiat',629,NULL),(6,'corporis ducimus ea perspiciatis iste',630,NULL),(6,'dolorem laboriosam vel voluptas et aliquam quasi',631,NULL),(7,'inventore aut nihil minima laudantium hic qui omnis',632,NULL),(7,'provident aut nobis culpa',633,NULL),(7,'esse et quis iste est earum aut impedit',634,NULL),(7,'qui consectetur id',635,NULL),(7,'aut quasi autem iste tempore illum possimus',636,NULL),(7,'ut asperiores perspiciatis veniam ipsum rerum saepe',637,NULL),(7,'voluptatem libero consectetur rerum ut',638,NULL),(7,'eius omnis est qui voluptatem autem',639,NULL),(7,'rerum culpa quis harum',640,NULL),(7,'nulla aliquid eveniet harum laborum libero alias ut unde',641,NULL),(7,'qui ea incidunt quis',642,NULL),(7,'qui molestiae voluptatibus velit iure harum quisquam',643,NULL),(7,'et labore eos enim rerum consequatur sunt',644,NULL),(7,'molestiae doloribus et laborum quod ea',645,NULL),(7,'facere ipsa nam eum voluptates reiciendis vero qui',646,NULL),(7,'asperiores illo tempora fuga sed ut quasi adipisci',647,NULL),(7,'qui sit non',648,NULL),(7,'placeat minima consequatur rem qui ut',649,NULL),(7,'consequatur doloribus id possimus voluptas a voluptatem',650,NULL),(7,'aut consectetur in blanditiis deserunt quia sed laboriosam',651,NULL),(8,'explicabo consectetur debitis voluptates quas quae culpa rerum non',652,NULL),(8,'maiores accusantium architecto necessitatibus reiciendis ea aut',653,NULL),(8,'eum non recusandae cupiditate animi',654,NULL),(8,'ut eum exercitationem sint',655,NULL),(8,'beatae qui ullam incidunt voluptatem non nisi aliquam',656,NULL),(8,'molestiae suscipit ratione nihil odio libero impedit vero totam',657,NULL),(8,'eum itaque quod reprehenderit et facilis dolor autem ut',658,NULL),(8,'esse quas et quo quasi exercitationem',659,NULL),(8,'animi voluptas quod perferendis est',660,NULL),(8,'eos amet tempore laudantium fugit a',661,NULL),(8,'accusamus adipisci dicta qui quo ea explicabo sed vero',662,NULL),(8,'odit eligendi recusandae doloremque cumque non',663,NULL),(8,'ea aperiam consequatur qui repellat eos',664,NULL),(8,'rerum non ex sapiente',665,NULL),(8,'voluptatem nobis consequatur et assumenda magnam',666,NULL),(8,'nam quia quia nulla repellat assumenda quibusdam sit nobis',667,NULL),(8,'dolorem veniam quisquam deserunt repellendus',668,NULL),(8,'debitis vitae delectus et harum accusamus aut deleniti a',669,NULL),(8,'debitis adipisci quibusdam aliquam sed dolore ea praesentium nobis',670,NULL),(8,'et praesentium aliquam est',671,NULL),(9,'ex hic consequuntur earum omnis alias ut occaecati culpa',672,NULL),(9,'omnis laboriosam molestias animi sunt dolore',673,NULL),(9,'natus corrupti maxime laudantium et voluptatem laboriosam odit',674,NULL),(9,'reprehenderit quos aut aut consequatur est sed',675,NULL),(9,'fugiat perferendis sed aut quidem',676,NULL),(9,'quos quo possimus suscipit minima ut',677,NULL),(9,'et quis minus quo a asperiores molestiae',678,NULL),(9,'recusandae quia qui sunt libero',679,NULL),(9,'ea odio perferendis officiis',680,NULL),(9,'quisquam aliquam quia doloribus aut',681,NULL),(9,'fugiat aut voluptatibus corrupti deleniti velit iste odio',682,NULL),(9,'et provident amet rerum consectetur et voluptatum',683,NULL),(9,'harum ad aperiam quis',684,NULL),(9,'similique aut quo',685,NULL),(9,'laudantium eius officia perferendis provident perspiciatis asperiores',686,NULL),(9,'magni soluta corrupti ut maiores rem quidem',687,NULL),(9,'et placeat temporibus voluptas est tempora quos quibusdam',688,NULL),(9,'nesciunt itaque commodi tempore',689,NULL),(9,'omnis consequuntur cupiditate impedit itaque ipsam quo',690,NULL),(9,'debitis nisi et dolorem repellat et',691,NULL),(10,'ut cupiditate sequi aliquam fuga maiores',692,NULL),(10,'inventore saepe cumque et aut illum enim',693,NULL),(10,'omnis nulla eum aliquam distinctio',694,NULL),(10,'molestias modi perferendis perspiciatis',695,NULL),(10,'voluptates dignissimos sed doloribus animi quaerat aut',696,NULL),(10,'explicabo odio est et',697,NULL),(10,'consequuntur animi possimus',698,NULL),(10,'vel non beatae est',699,NULL),(10,'culpa eius et voluptatem et',700,NULL),(10,'accusamus sint iusto et voluptatem exercitationem',701,NULL),(10,'temporibus atque distinctio omnis eius impedit tempore molestias pariatur',702,NULL),(10,'ut quas possimus exercitationem sint voluptates',703,NULL),(10,'rerum debitis voluptatem qui eveniet tempora distinctio a',704,NULL),(10,'sed ut vero sit molestiae',705,NULL),(10,'rerum ex veniam mollitia voluptatibus pariatur',706,NULL),(10,'consequuntur aut ut fugit similique',707,NULL),(10,'dignissimos quo nobis earum saepe',708,NULL),(10,'quis eius est sint explicabo',709,NULL),(10,'numquam repellendus a magnam',710,NULL),(10,'ipsam aperiam voluptates qui',711,NULL);
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'edurand.viel@gmail.com','$argon2id$v=19$m=65536,t=3,p=4$naw1nErcNkPRGzeVnUM/4w$h//Udl4ofbgspdJqd0lIZAVdkFNp6EaRl0Bkmn1bfJo'),(2,'test@test.com','$argon2id$v=19$m=65536,t=3,p=4$o7UgtaBC5JESb8DZzSbaIw$kqAWI68orBd+uaC4INtTGM0Kl7BEBf2jWeE3IzcCJbM'),(3,'test@test1.com','$argon2id$v=19$m=65536,t=3,p=4$hY6kk6WKCXweaSTKo/K/Bg$wzK4DlmAhnTWYVNbCQ9Ft34eg9U+thJZ5Afs275QdJM'),(4,'test@test2.com','$argon2id$v=19$m=65536,t=3,p=4$kDKyVhZTLmCjXXEJGXMD8g$snz11ucnhZWVvKAJO18KVge1i2L/OwE2G+RJo6AEBG8'),(5,'test@test5.com','$argon2id$v=19$m=65536,t=3,p=4$3/a8lQUX3C8/PoG3oLQ34A$cXBDYesS7YxSS82U3U0t6DuSEIhkrA4ywe0wQ4B0ep8'),(6,'e@e.com','$argon2id$v=19$m=65536,t=3,p=4$MelYc7mQez0swtyfubOEeQ$9npafnlSV8U5sjIJDf4a0KKQAfxuZEbTBJl7jHGRaSE');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-25 11:36:51
