-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: photo_longtail
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `tbl_applicants`
--

DROP TABLE IF EXISTS `tbl_applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_applicants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `citizenship` varchar(255) NOT NULL,
  `cover_letter` varchar(255) NOT NULL,
  `qualification` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_applicants`
--

LOCK TABLES `tbl_applicants` WRITE;
/*!40000 ALTER TABLE `tbl_applicants` DISABLE KEYS */;
INSERT INTO `tbl_applicants` VALUES (6,'','swarna shakya','','9849','','swarna@longtail.info',1,'Photographer','hB8s9-admin.jpg','oFIBY-admin.jpg','ENmQt-admin.jpg','QZSfv-admin.jpg','');
/*!40000 ALTER TABLE `tbl_applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_articles`
--

DROP TABLE IF EXISTS `tbl_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `homepage` int NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_articles`
--

LOCK TABLES `tbl_articles` WRITE;
/*!40000 ALTER TABLE `tbl_articles` DISABLE KEYS */;
INSERT INTO `tbl_articles` VALUES (11,0,'about-us','about us','Capturing Moments, Crafting Stories – Photo Longtail','<style type=\"text/css\">\r\n.row.get_in_touch a {\r\n    color: unset;\r\n    text-decoration: none;\r\n}</style>\r\n<div class=\"row get_in_touch\">\r\n	<h3 class=\"text-center mb-5\">\r\n		About Us</h3>\r\n	<div class=\"col-sm-12 text-center mb-5\">\r\n		<h5>\r\n			Capturing Elegance, Elevating Experiences</h5>\r\n		<p>\r\n			Welcome to Photo Longtail, where we go beyond capturing images; we create visual stories that resonate with your audience and elevate your brand to new heights. With a passion for photography and a commitment to excellence, we bring a decade of expertise to every project, ensuring that every pixel reflects the essence of your property and the experiences it offers.where every click captures unforgettable narratives. We specialize in hotel photography for OTAs, websites, print, and digital marketing, crafting visual tales that speak volumes.&quot;</p>\r\n	</div>\r\n	<div class=\"col-sm-3\">\r\n		<h5>\r\n			Get in Touch</h5>\r\n		<p>\r\n			Ready to elevate your hotel&#39;s visual appeal? Contact us today at <a href=\"tel:9779851092983\">9851092983</a> or email us at <a href=\"mailto:photo@longtail.info\">photo@longtail.info</a> to discuss your photography needs. Visit our website at photo.longtail.info to view our portfolio and learn more about our services.</p>\r\n		<p>\r\n			&nbsp;</p>\r\n		<h5>\r\n			Our Journey:</h5>\r\n		<p>\r\n			Founded on the belief that photography is more than just a profession&mdash;it&#39;s an art form that evokes emotions and memories&mdash;Photo Longtail has been at the forefront of hotel and property photography for over a decade. Our journey is fueled by a relentless pursuit of excellence, a keen eye for detail, and a dedication to showcasing the unique allure of every space we photograph</p>\r\n	</div>\r\n	<div class=\"col-sm-8 offset-sm-1\">\r\n		<h5>\r\n			&nbsp;</h5>\r\n		<h5>\r\n			<span>Our Mission:</span></h5>\r\n		<p>\r\n			At Photo Longtail, we believe that a picture is not just worth a thousand words; it&#39;s the gateway to a thousand experiences. Our mission is to capture the essence of your property, showcasing the unique ambiance, luxurious amenities, and the minute details that set you apart. We aim to create images that not only attract guests but also transport them into the comfort and allure of your hospitality.</p>\r\n		<p>\r\n			&nbsp;</p>\r\n		<h5>\r\n			Our Vision:</h5>\r\n		<p>\r\n			Our vision is simple yet powerful: to be the catalyst that transforms ordinary visuals into extraordinary experiences. We believe that every image we create has the potential to inspire, inform, and ignite curiosity, ultimately driving engagement and fostering lasting connections between your brand and your audience.</p>\r\n		<p>\r\n			&nbsp;</p>\r\n		<h5>\r\n			Our Expertise:</h5>\r\n		<p>\r\n			With a decade of experience under our belts, our team of professional photographers and creative directors has mastered the art of hotel photography. We understand the power of visual persuasion and employ state-of-the-art equipment and cutting-edge techniques to deliver stunning high-resolution images.</p>\r\n		<p>\r\n			&nbsp;</p>\r\n		<h5>\r\n			Our Services</h5>\r\n		<ul>\r\n			<li>\r\n				OTA Optimized Photography: Tailored to meet the specifications of top OTAs, our photos are designed to boost your visibility and bookings.</li>\r\n			<li>\r\n				Website and Social Media Imagery: Engaging, SEO-friendly content that resonates with viewers and enhances your online presence.</li>\r\n			<li>\r\n				Print Media Production: From brochures to billboards, our print-ready images are polished to perfection.</li>\r\n			<li>\r\n				Digital Marketing Campaigns: Visual content that captivates and converts, perfect for email campaigns, online ads, and more.</li>\r\n		</ul>\r\n		<p>\r\n			&nbsp;</p>\r\n		<h5>\r\n			Our Commitment</h5>\r\n		<p>\r\n			We are committed to excellence and client satisfaction. From the initial consultation to the final delivery, we work closely with you to ensure that our photographs align with your brand&#39;s vision and marketing strategy.</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',0,'',1,'','','',0,'2023-09-03 15:53:53','2024-04-26 17:29:38',2,0,_binary 'a:1:{i:0;s:11:\"skOTU-1.jpg\";}','',''),(2,0,'capture-the-extraordinary-with-photo-longtail','Capture the Extraordinary with Photo Longtail','Photo Longtail – Picturing Perfection','<style type=\"text/css\">\r\n.image__container {\r\n			row-gap: 40px;\r\n		}\r\n		.image__container .image__logo{\r\n			width: 106px;\r\n			margin-inline: auto;\r\n	\r\n		}\r\n		.image__container .image__logo img {\r\n			width: 100%;\r\n			height: 100%;\r\n			object-fit: contain;\r\n		}\r\n	\r\n		.image__container .col-sm-2:nth-child(n + 6) .image__logo {\r\n			width: 80px;\r\n		}</style>\r\n<div class=\"row justify-content-center\">\r\n	<div class=\"col-xl-8 col-lg-8 col-md-12 col-sm-12\">\r\n		<h2 class=\"about___title text-center\">\r\n			Beyond the Lens Photo Longtail&rsquo;s Visionary Craft</h2>\r\n		<p class=\"mt-5\">\r\n			Photo Longtail is a visionary photography agency that specializes in capturing the essence of hospitality. With a keen eye for detail and a passion for storytelling, our team excels in hotel photography, bringing out the character and charm of each property. We understand that every hotel has its own narrative, and our photographs aim to convey that story to the world.</p>\r\n		<p class=\"mt-4\">\r\n			Whether it&rsquo;s for OTA listings, website galleries, print media, or digital marketing campaigns, Photo Longtail&rsquo;s images are meticulously crafted to engage viewers and entice travelers.</p>\r\n		<div class=\"trusted_by text-center mt-5\">\r\n			<h3 class=\"trusted_by\">\r\n				Trusted by</h3>\r\n			<div class=\"row mt-4 image__container gx-5 align-items-center\">\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/2.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/11.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/9.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/15.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/17.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/14.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/8.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/10.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/19.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/3.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/1.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/4.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/5.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/7.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/12.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/13.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/16.png\" /></div>\r\n				</div>\r\n				<div class=\"col-sm-2\">\r\n					<div class=\"image__logo\">\r\n						<img alt=\"logo\" src=\"./userfiles/files/18.png\" /></div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',0,'',1,'','','',0,'2023-06-05 13:41:34','2024-10-25 15:28:47',1,1,_binary 'a:0:{}','',''),(17,0,'section-1','Section 1','section sub','<div class=\"container-fluid p-5\">\r\n	<div class=\"py-5\">\r\n		&nbsp;</div>\r\n	<div class=\"row\">\r\n		<div class=\"col-12\">\r\n			<h2>\r\n				Grow your audience</h2>\r\n			<p>\r\n				&nbsp;</p>\r\n			<p>\r\n				&nbsp;</p>\r\n		</div>\r\n		<div class=\"col-md-5\">\r\n			<p>\r\n				Our platform is a visual feast, showcasing the finest moments of hospitality through the lens of world-class photography. With intuitive SEO tools, we ensure your brand stands out in the digital landscape, attracting a global audience with ease.</p>\r\n			<p>\r\n				Our social media integrations foster a dynamic community where engagement turns viewers into loyal customers. Crafted with passion, our content is not just seen&mdash;it&rsquo;s felt, leaving a lasting impression that beckons travelers to explore the luxury and comfort that await at Photolongtail.</p>\r\n			<p>\r\n				Step into the spotlight, where your story unfolds in every frame, and let us help you capture the hearts of your audience.</p>\r\n		</div>\r\n		<div class=\"col-md-6 offset-md-1\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/lens.jpg\" class=\"img-fluid\" /></div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',0,'',0,'','','',0,'2024-04-12 17:23:41','2024-04-12 19:12:01',3,1,_binary 'a:0:{}','',''),(18,0,'career-with-us','Career','Join us at Photo Longtail','',0,'',1,'','','',0,'2024-04-12 17:26:06','2024-04-26 17:52:55',4,0,_binary 'a:0:{}','',''),(19,0,'grow-your-business-online','Grow your business online','Grow your business online','<div class=\"py-5\">\r\n	&nbsp;</div>\r\n<div class=\"container-fluid p-5\">\r\n	<div class=\"grow__text\">\r\n		<div class=\"row\">\r\n			<div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-12\">\r\n				<h2 class=\"lh-1\">\r\n					Grow your business online</h2>\r\n			</div>\r\n		</div>\r\n		<h6 class=\"mt-5 w-50 lh-base\">\r\n			&quot;Transform your hotel&#39;s online presence and watch your business soar with our comprehensive digital marketing solutions. From captivating website imagery and engaging social media campaigns to targeted SEO strategies and online advertising, we help you reach your target audience effectively and boost bookings. Let us amplify your brand&#39;s visibility and showcase your hotel&#39;s unique charm to the world, driving growth and success in the competitive hospitality&nbsp;industry.&quot;</h6>\r\n		<img class=\"mt-5\" src=\"https://mayurstay.com/photolongtail/images/gallery/galleryimages/KSeV5-de-crown-inn-building.jpeg\" width=\"100%\" /></div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',0,'',0,'','','',0,'2024-04-12 18:16:02','2024-04-12 19:08:42',5,1,_binary 'a:0:{}','',''),(22,0,'all-over-nepal','All over Nepal','All over Nepal','<div class=\"all_over_nepal text-center\">\r\n	<div class=\"nepal_text\">\r\n		<h2>\r\n			All over Nepal</h2>\r\n		<p>\r\n			Photo Longtail is a visionary photography agency that specializes in capturing the essence of hospitality.</p>\r\n	</div>\r\n	<div class=\"image_nepal mt-5\">\r\n		<img alt=\"\" class=\"w-50\" src=\"/photolongtail/userfiles/files/map.svg\" style=\"width: 100%;\" /></div>\r\n	<div class=\"province_name d-flex justify-content-evenly mt-5\">\r\n		<div class=\"province_one\">\r\n			<h5>\r\n				Province 1</h5>\r\n			<ul class=\"province_one list-unstyled\">\r\n				<li>\r\n					Illam</li>\r\n				<li>\r\n					Jhapa</li>\r\n				<li>\r\n					Morang</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"bagmati\">\r\n			<h5>\r\n				Bagmati</h5>\r\n			<ul class=\"bagmati list-unstyled\">\r\n				<li>\r\n					Bhaktapur</li>\r\n				<li>\r\n					Kathmandu</li>\r\n				<li>\r\n					Lalitpur</li>\r\n				<li>\r\n					Nuwakot</li>\r\n				<li>\r\n					Chitwan</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"bagmatitwo\">\r\n			<h5>\r\n				Bagmati</h5>\r\n			<ul class=\"bagmati list-unstyled\">\r\n				<li>\r\n					Bhaktapur</li>\r\n				<li>\r\n					Kathmandu</li>\r\n				<li>\r\n					Lalitpur</li>\r\n				<li>\r\n					Nuwakot</li>\r\n				<li>\r\n					Chitwan</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"Gandaki\">\r\n			<h5>\r\n				Gandaki</h5>\r\n			<ul class=\"Gandaki list-unstyled\">\r\n				<li>\r\n					Gorkha</li>\r\n				<li>\r\n					Lamjung</li>\r\n				<li>\r\n					Manang</li>\r\n				<li>\r\n					Parbat</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"Province_5\">\r\n			<h5>\r\n				Province 5</h5>\r\n			<ul class=\"Province_five list-unstyled\">\r\n				<li>\r\n					Kapilvastu</li>\r\n				<li>\r\n					Bardiya</li>\r\n				<li>\r\n					Banke</li>\r\n				<li>\r\n					Palpa</li>\r\n				<li>\r\n					Rupandehi</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"Province__5\">\r\n			<h5>\r\n				Province 5</h5>\r\n			<ul class=\"Province_five list-unstyled\">\r\n				<li>\r\n					Kapilvastu</li>\r\n				<li>\r\n					Bardiya</li>\r\n				<li>\r\n					Banke</li>\r\n				<li>\r\n					Palpa</li>\r\n				<li>\r\n					Rupandehi</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"Karnali\">\r\n			<h5>\r\n				Karnali</h5>\r\n			<ul class=\"Province_five list-unstyled\">\r\n				<li>\r\n					Surkhet</li>\r\n				<li>\r\n					Jumla</li>\r\n				<li>\r\n					Salyan</li>\r\n				<li>\r\n					Mugu</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n',0,'',0,'','','',0,'2024-04-22 11:14:49','2024-04-22 11:15:21',7,1,_binary 'a:0:{}','',''),(21,0,'hotels-and-hospitality-portfolio','Hotels and Hospitality Portfolio','  Crafting Experiences, Building Memories: Explore Our Hotels and Hospitality Portfolio!','<div class=\"hotel___hospitality text-center mt-5\">\r\n	<div class=\"nepal_text\">\r\n		<h2>\r\n			Hotels and Hospitality Portfolio</h2>\r\n		<div>\r\n			&quot;Crafting Experiences, Building Memories: Explore Our Hotels and Hospitality Portfolio!&quot;</div>\r\n		<div>\r\n			&nbsp;</div>\r\n	</div>\r\n	<div class=\"hotel_hospitality\">\r\n		<div class=\"div_1\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/1.jpg\" /></div>\r\n		<div class=\"div_2\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/2.jpg\" /></div>\r\n		<div class=\"div_4\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/8.jpg\" /></div>\r\n		<div class=\"div_5\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/5.jpg\" /></div>\r\n		<div class=\"div_7\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/6.jpg\" /></div>\r\n		<div class=\"div_8\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/7.jpg\" /></div>\r\n		<div class=\"div_9\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/1.jpg\" /></div>\r\n		<div class=\"div_11\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/5.jpg\" /></div>\r\n		<div class=\"div_12\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/8.jpg\" /></div>\r\n		<div class=\"div_13\">\r\n			<img alt=\"\" src=\"/photolongtail/userfiles/files/images/3.jpg\" /></div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',0,'',0,'','','',0,'2024-04-22 10:49:51','2024-04-26 17:55:31',6,1,_binary 'a:0:{}','','');
/*!40000 ALTER TABLE `tbl_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_blog`
--

DROP TABLE IF EXISTS `tbl_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `sortorder` int NOT NULL,
  `status` int NOT NULL,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int NOT NULL,
  `viewcount` int NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linktype` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_blog`
--

LOCK TABLES `tbl_blog` WRITE;
/*!40000 ALTER TABLE `tbl_blog` DISABLE KEYS */;
INSERT INTO `tbl_blog` VALUES (14,'brief-on-club-himalaya','Brief On Club Himalaya','ClubHimalaya','A Rare Blend Of Nature And Modern Amenities and has become synonymous with Nagarkot.','<div style=\"text-align: center;\">\r\n	<span style=\"font-size:16px;\"><cite><span style=\"font-family:comic sans ms,cursive;\">The hotel offers a rare blend of nature and modern amenities and has become synonymous with Nagarkot. Each room opens to a private balcony, where one can view the most splendid sunrise and sunsets. The interior is traditional and simple yet stylish and elegant. Club Himalaya&#39;s comfortable accommodation, cozy ambiance, delicious food and the welcoming and gracious staff creates a true &#39;comfort above the clouds&#39; experience.</span></cite></span></div>\r\n<p>\r\n	&nbsp;</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<div style=\"text-align: justify;\">\r\n			Club Himalaya is a place to relax your mind and body, to get in touch with nature, experience Nepali hospitality, and escape the hectic demands of the city life all in the comfort of a superb resort in a magnificent setting. Club Himalaya is for high altitude adventurers a place to acclimatize; for philosophers, a place to listen to the sounds of silence; and for honeymooners, a setting to romance with nature.<br />\r\n			<br />\r\n			Resting on a single independent hill called the Windy Hill, Club Himalaya has become the pride of Nagarkot. Besides the fresh air and peaceful atmosphere, we offer you fine dining, superb facilities, outdoor activities to bring you closer to nature, and services to cover your business and conference needs We welcome you to lose yourself in its lush greenery, listen to the sounds of the silence and commune with nature high up on a ridge and enjoy our unparalleled hospitality.<br />\r\n			<br />\r\n			The hotel is managed by <a href=\"https://acehotelsnepal.com/\" target=\"_blank\">Ace Hotels &amp; Resorts:</a> a local, family owned chain of hotels with 40 years of experience in the hospitality industry.</div>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/ch.jpg\" /></div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n<div>\r\n	<strong style=\"font-size: 15px;\">Club Himalaya Experience</strong><br />\r\n	<br />\r\n	Sitting 7200 feet above sea level on Windy Hill, Club Himalaya Nagarkot enjoys amazing views of the Himalayas. Away from the busy city, it features an indoor pool, spa treatments and a shopping arcade. There are 2 on-site restaurants and a bar.<br />\r\n	<br />\r\n	Featuring high ceilings and a private balcony, all the air-conditioned rooms are equipped with a cable TV. Beautiful mountain views can be enjoyed from all rooms. En suite bathrooms have a bathtub and free toiletries.<br />\r\n	<br />\r\n	Club Himalaya, Nagarkot is a 30-minute drive from Bhaktapur, a 45-minute drive from Tribhuvan International Airport and an hour&#39;s drive from Kathmandu. Taking a helicopter, it is just a 7-minutes&#39; ride from Tribuhavan International Airport.<br />\r\n	<br />\r\n	<div class=\"row\">\r\n		<div class=\"col-md-4\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/ch4(1).jpg\" /></div>\r\n		<div class=\"col-md-4\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/ch1.jpg\" /></div>\r\n		<div class=\"col-md-4\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/ch3(1).jpg\" /></div>\r\n	</div>\r\n	<siv><br />\r\n	Guests can relax with a massage at the spa, visit the sauna, or read a book in the library. For a day out, the hotel also provides a city shuttle service, car rentals and a tour desk.<br />\r\n	<br />\r\n	Restaurant Kantipur serves a selection of Nepali, Continental, Chinese and Indian cuisines, while drinks can be enjoyed at Bar Indrawati.<br />\r\n	<br />\r\n	32 kms or 1 hr drive from Kathmandu. 2175 mtrs or 7200 ft. above sea level (ideal for acclimatization before trekking in high altitudes or going to Tibet).<br />\r\n	<br />\r\n	Atop Windy Hills with 360 unrestricted view of Kathmandu, Lalitpur, Bhaktapur, Sankhu, Changu Narayan in the West; Mt. Annapurna in the North West; Mt. Everest in the North-East; Indrawati Valley in the East; and the Nagarkot Hill on the South.<br />\r\n	<br />\r\n	Rooms: 72, Room Types: Standard &amp; Deluxe, Check in Time: 2.00 PM, Check out Time: 12.00 Noon.</siv></div>\r\n<p>\r\n	&nbsp;</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/ch5.jpg\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/ch2.jpg\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"\" src=\"/assets/userfiles/images/yoga.jpg\" /></div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','2023-09-04','0000-00-00',1,1,'hK6Gb-lobby.jpg','',0,0,'','','2023-09-04 11:54:01','','0'),(15,'excursions-to-nearby-places','Excursions to nearby places','ClubHimalaya',' Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.','<p>\r\n	Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.</p>\r\n','2023-09-04','0000-00-00',2,1,'eOE5n-interest.jpg','',0,0,'','','2023-09-04 11:54:38','','0'),(16,'places-of-interest','Places-of-interest','ClubHimalaya','Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.','<div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\">\r\n	Club Himalaya is a part of The ACE Hotels, a home-grown, local hospitality brand with world-class standards and over 40 years of experience.</div>\r\n','2023-09-04','0000-00-00',3,1,'tF8Jz-place.jpg','',0,0,'','','2023-09-04 11:55:59','','0'),(17,'test-1','test 1','ClubHimalaya','random stuff ','<p>\r\n	random stuff</p>\r\n','2023-09-04','0000-00-00',4,1,'fwebZ-lobby.jpg','',0,0,'','','2023-09-04 11:56:28','','0'),(18,'qwseasdas','qwseasdas','ClubHimalaya','asdasd','<p>\r\n	asdasdasd</p>\r\n','2023-09-04','0000-00-00',5,1,'bZ2J8-interest.jpg','',0,0,'','','2023-09-04 12:25:01','','0'),(19,'nagarkot-nepal','Nagarkot Nepal ','Club Himalaya','Nagarkot thrills visitors with its unrestricted view of the mountain range from Annapurna in the west to the mighty Everest in the East.','<h2>\r\n	Escape the chaos of Kathmandu</h2>\r\n<div style=\"text-align: justify;\">\r\n	Nagarkot is located 32 kms, east of Kathmandu <a href=\"https://www.google.com.np/maps/place/Club+Himalaya,+Nagarkot+Resort/@27.7168054,85.5183755,17z/data=!3m1!4b1!4m5!3m4!1s0x39eb0681e69f4d5f:0xd75300924c37f8c7!8m2!3d27.7168054!4d85.5205642\" target=\"_blank\">(see map)</a>, Nepal. Nagarkot thrills visitors with its unrestricted view of the mountain range from Annapurna in the west to the mighty Everest in the East.The hotel is a 30-minute drive from Bhaktapur, a 45-minute drive from Tribhuvan International Airport and an hour&rsquo;s drive from Kathmandu. Taking a helicopter, it is just a 7-minutes&rsquo; ride from Tribuhavan International Airport.</div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	Historically, Nagarkot was a place for the royals of Nepal to escape the scorching heat of summer and a hectic city life. In the 60&rsquo;s explorers would battle the shivering winds and sleepless nights to see the stupendous sunrise and sunsets. Today, still people from all over World, from different walks of life, travel to Nagarkot, to enjoy the picturesque rural scenery of terraced rice fields, green pastures, the sunrise and sunsets; but all in the comforts of a world renowned hotel- Club Himalaya.<br />\r\n	&nbsp;</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<ul list-style-type:=\"\">\r\n			<li>\r\n				7200 ft above sea level : ideal for acclimatization if you are going to high altitude treks or to Tibet or Bhutan .</li>\r\n			<li>\r\n				Summer (May-September) : Nagarkot is windy throughout the year and is 7 Deg C cooler than Kathmandu in summers</li>\r\n			<li>\r\n				Himalayan View : One can view Mt Everest on the North &ndash; East to the Annapurna in the North- West with a maximum range of the Himalayan peaks.</li>\r\n			<li>\r\n				Full of legends &amp; History :<br />\r\n				<br />\r\n				Birth of the world &ndash; Mahadev Pokhari<br />\r\n				Birth of Kathmandu &ndash; Manjushree gufa<br />\r\n				Unification of Nepal &ndash; Prithivi Narayan Shah &amp; his Fort<br />\r\n				Summer Palace of the Ranas &ndash; Bhangeri Durbar<br />\r\n				Sun Risies &amp; Sets with hashish &ndash; The Hippie era<br />\r\n				&nbsp;</li>\r\n			<li style=\"text-align: justify;\">\r\n				So near, yet so far away from the hustle and bustle of caotic Kathmandu</li>\r\n			<li style=\"text-align: justify;\">\r\n				Near the international airport (25km/45minutes) ideal to relax and recover*recoup from jet lag before starting a hectic tour or trekking.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Village walks to experience rural Nepal &ndash; Tamang, Newar, Chhetri &amp; Bahun villages within walking distance.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Nagarkot now a tourist hub with many hotels and restaurants to choose from.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Forest walks to see the flora and fauna o the hills as well as bird watching.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Club Himalaya is the jewel on the crown of Nagarkot.</li>\r\n			<li style=\"text-align: justify;\">\r\n				Mountain biking or hiking to Changunarayan, Bhaktapur or Swayambhu.</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','2023-09-17','0000-00-00',6,1,'tAtSO-5d3_3269_sm.jpg','',0,0,'','','2023-09-17 17:22:38','','0');
/*!40000 ALTER TABLE `tbl_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_conbined_news`
--

DROP TABLE IF EXISTS `tbl_conbined_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_conbined_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_conbined_news`
--

LOCK TABLES `tbl_conbined_news` WRITE;
/*!40000 ALTER TABLE `tbl_conbined_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_conbined_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_configs`
--

DROP TABLE IF EXISTS `tbl_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_configs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `gallery_upload` varchar(255) NOT NULL,
  `contact_upload` varchar(255) NOT NULL,
  `other_upload` varchar(255) NOT NULL,
  `facility_upload` varchar(240) NOT NULL,
  `offer_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT '1',
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `schema_code` tinytext NOT NULL,
  `book_type` tinyint NOT NULL DEFAULT '1',
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `booking_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text,
  `footer` text,
  `search_box` text,
  `search_result` text,
  `action` tinyint(1) NOT NULL DEFAULT '0',
  `contact_info2` varchar(100) NOT NULL,
  `pobox` varchar(50) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `whatsapp_a` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configs`
--

LOCK TABLES `tbl_configs` WRITE;
/*!40000 ALTER TABLE `tbl_configs` DISABLE KEYS */;
INSERT INTO `tbl_configs` VALUES (1,'Photo Longtail','Wl00p-favicons.png','WoQma-photo_longtail.png','','','ynTdT-safetyphoto.jpg','ZqxTh-safetyphoto.jpg','V8ucM-background_image.jpg','','','Photo Longtail',1,'https://www.google.com/maps/embed?pb=!1m19!1m8!1m3!1d342.8376753853078!2d85.3158253356994!3d27.67728231548199!3m2!1i1024!2i768!4f13.1!4m8!3e0!4m0!4m5!1s0x39eb196760d68d39%3A0xcff5b96bdc5c0764!2sLongtail%20e-media%2C%20Lalitpur%2044600!3m2!1d27.6773278!2d85.3159484!5e0!3m2!1sen!2snp!4v1712924684059!5m2!1sen!2snp','aHQyy-map.jpg','Pulchowk, Lalitpur','ktm location','','980-1092983','photo@longtail.info','','© Copyright {year}. All Rights Reserved.','Photo Longtail','Photo Longtail','Photo Longtail','','','#','User-agent: *\r\nDisallow: /cgi-bin/','',1,'result.php','','','web','blue','','','Develop By Amit prajapati','Develop By Amit prajapati',0,'email@email.com','https://www.google.com/maps/dir//Lalitpur+44600/@2','','+977 9767649416','');
/*!40000 ALTER TABLE `tbl_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
INSERT INTO `tbl_countries` VALUES (1,'United States',1),(2,'Canada',1),(3,'Mexico',1),(4,'Afghanistan',1),(5,'Albania',1),(6,'Algeria',1),(7,'Andorra',1),(8,'Angola',1),(9,'Anguilla',1),(10,'Antarctica',1),(11,'Antigua and Barbuda',1),(12,'Argentina',1),(13,'Armenia',1),(14,'Aruba',1),(15,'Ascension Island',1),(16,'Australia',1),(17,'Austria',1),(18,'Azerbaijan',1),(19,'Bahamas',1),(20,'Bahrain',1),(21,'Bangladesh',1),(22,'Barbados',1),(23,'Belarus',1),(24,'Belgium',1),(25,'Belize',1),(26,'Benin',1),(27,'Bermuda',1),(28,'Bhutan',1),(29,'Bolivia',1),(30,'Bophuthatswana',1),(31,'Bosnia-Herzegovina',1),(32,'Botswana',1),(33,'Bouvet Island',1),(34,'Brazil',1),(35,'British Indian Ocean',1),(36,'British Virgin Islands',1),(37,'Brunei Darussalam',1),(38,'Bulgaria',1),(39,'Burkina Faso',1),(40,'Burundi',1),(41,'Cambodia',1),(42,'Cameroon',1),(44,'Cape Verde Island',1),(45,'Cayman Islands',1),(46,'Central Africa',1),(47,'Chad',1),(48,'Channel Islands',1),(49,'Chile',1),(50,'China, Peoples Republic',1),(51,'Christmas Island',1),(52,'Cocos (Keeling) Islands',1),(53,'Colombia',1),(54,'Comoros Islands',1),(55,'Congo',1),(56,'Cook Islands',1),(57,'Costa Rica',1),(58,'Croatia',1),(59,'Cuba',1),(60,'Cyprus',1),(61,'Czech Republic',1),(62,'Denmark',1),(63,'Djibouti',1),(64,'Dominica',1),(65,'Dominican Republic',1),(66,'Easter Island',1),(67,'Ecuador',1),(68,'Egypt',1),(69,'El Salvador',1),(70,'England',1),(71,'Equatorial Guinea',1),(72,'Estonia',1),(73,'Ethiopia',1),(74,'Falkland Islands',1),(75,'Faeroe Islands',1),(76,'Fiji',1),(77,'Finland',1),(78,'France',1),(79,'French Guyana',1),(80,'French Polynesia',1),(81,'Gabon',1),(82,'Gambia',1),(83,'Georgia Republic',1),(84,'Germany',1),(85,'Gibraltar',1),(86,'Greece',1),(87,'Greenland',1),(88,'Grenada',1),(89,'Guadeloupe (French)',1),(90,'Guatemala',1),(91,'Guernsey Island',1),(92,'Guinea Bissau',1),(93,'Guinea',1),(94,'Guyana',1),(95,'Haiti',1),(96,'Heard and McDonald Isls',1),(97,'Honduras',1),(98,'Hong Kong',1),(99,'Hungary',1),(100,'Iceland',1),(101,'India',1),(102,'Iran',1),(103,'Iraq',1),(104,'Ireland',1),(105,'Isle of Man',1),(106,'Israel',1),(107,'Italy',1),(108,'Ivory Coast',1),(109,'Jamaica',1),(110,'Japan',1),(111,'Jersey Island',1),(112,'Jordan',1),(113,'Kazakhstan',1),(114,'Kenya',1),(115,'Kiribati',1),(116,'Kuwait',1),(117,'Laos',1),(118,'Latvia',1),(119,'Lebanon',1),(120,'Lesotho',1),(121,'Liberia',1),(122,'Libya',1),(123,'Liechtenstein',1),(124,'Lithuania',1),(125,'Luxembourg',1),(126,'Macao',1),(127,'Macedonia',1),(128,'Madagascar',1),(129,'Malawi',1),(130,'Malaysia',1),(131,'Maldives',1),(132,'Mali',1),(133,'Malta',1),(134,'Martinique (French)',1),(135,'Mauritania',1),(136,'Mauritius',1),(137,'Mayotte',1),(139,'Micronesia',1),(140,'Moldavia',1),(141,'Monaco',1),(142,'Mongolia',1),(143,'Montenegro',1),(144,'Montserrat',1),(145,'Morocco',1),(146,'Mozambique',1),(147,'Myanmar',1),(148,'Namibia',1),(149,'Nauru',1),(150,'Nepal',1),(151,'Netherlands Antilles',1),(152,'Netherlands',1),(153,'New Caledonia (French)',1),(154,'New Zealand',1),(155,'Nicaragua',1),(156,'Niger',1),(157,'Niue',1),(158,'Norfolk Island',1),(159,'North Korea',1),(160,'Northern Ireland',1),(161,'Norway',1),(162,'Oman',1),(163,'Pakistan',1),(164,'Panama',1),(165,'Papua New Guinea',1),(166,'Paraguay',1),(167,'Peru',1),(168,'Philippines',1),(169,'Pitcairn Island',1),(170,'Poland',1),(171,'Polynesia (French)',1),(172,'Portugal',1),(173,'Qatar',1),(174,'Reunion Island',1),(175,'Romania',1),(176,'Russia',1),(177,'Rwanda',1),(178,'S.Georgia Sandwich Isls',1),(179,'Sao Tome, Principe',1),(180,'San Marino',1),(181,'Saudi Arabia',1),(182,'Scotland',1),(183,'Senegal',1),(184,'Serbia',1),(185,'Seychelles',1),(186,'Shetland',1),(187,'Sierra Leone',1),(188,'Singapore',1),(189,'Slovak Republic',1),(190,'Slovenia',1),(191,'Solomon Islands',1),(192,'Somalia',1),(193,'South Africa',1),(194,'South Korea',1),(195,'Spain',1),(196,'Sri Lanka',1),(197,'St. Helena',1),(198,'St. Lucia',1),(199,'St. Pierre Miquelon',1),(200,'St. Martins',1),(201,'St. Kitts Nevis Anguilla',1),(202,'St. Vincent Grenadines',1),(203,'Sudan',1),(204,'Suriname',1),(205,'Svalbard Jan Mayen',1),(206,'Swaziland',1),(207,'Sweden',1),(208,'Switzerland',1),(209,'Syria',1),(210,'Tajikistan',1),(211,'Taiwan',1),(212,'Tahiti',1),(213,'Tanzania',1),(214,'Thailand',1),(215,'Togo',1),(216,'Tokelau',1),(217,'Tonga',1),(218,'Trinidad and Tobago',1),(219,'Tunisia',1),(220,'Turkmenistan',1),(221,'Turks and Caicos Isls',1),(222,'Tuvalu',1),(223,'Uganda',1),(224,'Ukraine',1),(225,'United Arab Emirates',1),(226,'Uruguay',1),(227,'Uzbekistan',1),(228,'Vanuatu',1),(229,'Vatican City State',1),(230,'Venezuela',1),(231,'Vietnam',1),(232,'Virgin Islands (Brit,1)',1),(233,'Wales',1),(234,'Wallis Futuna Islands',1),(235,'Western Sahara',1),(236,'Western Samoa',1),(237,'Yemen',1),(238,'Yugoslavia',1),(239,'Zaire',1),(240,'Zambia',1),(241,'Zimbabwe',1);
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_destination`
--

DROP TABLE IF EXISTS `tbl_destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_destination` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_brief` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gallery` blob NOT NULL,
  `brief` blob NOT NULL,
  `content` blob NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `pradesh` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_destination`
--

LOCK TABLES `tbl_destination` WRITE;
/*!40000 ALTER TABLE `tbl_destination` DISABLE KEYS */;
INSERT INTO `tbl_destination` VALUES (51,'illam','Illam','','','','','',1,'','',6,'2024-04-24 16:30:35',1),(47,'kakarvitta','Kakarvitta','','','','','',1,'','',2,'2024-04-24 16:28:52',1),(48,'birtamod','Birtamod','','','','','',1,'','',3,'2024-04-24 16:29:21',1),(49,'itahari','Itahari','','','','','',1,'','',4,'2024-04-24 16:29:40',1),(50,'khotang','Khotang','','','','','',1,'','',5,'2024-04-24 16:30:10',1),(45,'lalitpur','Lalitpur','','','','',_binary '<p>\r\n	sas</p>\r\n',1,'','',1,'2024-02-05 13:58:07',3),(52,'dhankuta','Dhankuta','','','','','',1,'','',7,'2024-04-24 16:30:58',1),(53,'bardibas','Bardibas','','','','','',1,'','',8,'2024-04-24 16:31:41',2),(54,'simara','Simara','','','','','',1,'','',9,'2024-04-24 16:32:09',2),(55,'kathmandu','Kathmandu','','','','','',1,'','',10,'2024-04-24 16:32:44',3),(56,'bhaktapur','Bhaktapur','','','','','',1,'','',11,'2024-04-24 16:33:34',3),(57,'nagarkot','Nagarkot','','','','','',1,'','',12,'2024-04-24 16:34:00',3),(58,'hetauda','Hetauda','','','','','',1,'','',13,'2024-04-24 16:34:20',3),(59,'chitwan','Chitwan','','','','','',1,'','',14,'2024-04-24 16:34:48',3),(60,'kavrepalanchowk','Kavrepalanchowk','','','','','',1,'','',15,'2024-04-24 16:35:11',3),(61,'sindupalchowk','Sindupalchowk','','','','','',1,'','',16,'2024-04-24 16:35:46',3),(62,'pokhara','Pokhara','','','','','',1,'','',17,'2024-04-24 16:37:05',4),(63,'gorkha','Gorkha','','','','','',1,'','',18,'2024-04-24 16:37:38',4),(64,'nawalparasi','Nawalparasi','','','','','',1,'','',19,'2024-04-24 16:38:06',4),(65,'muktinath','Muktinath','','','','','',1,'','',20,'2024-04-24 16:38:31',4),(66,'dhampus','Dhampus','','','','','',1,'','',21,'2024-04-24 16:38:58',4),(67,'palpa','Palpa','','','','','',1,'','',22,'2024-04-24 16:39:47',5),(68,'rupandehi','Rupandehi','','','','','',1,'','',23,'2024-04-24 16:40:10',5),(69,'bardiya','Bardiya','','','','','',1,'','',24,'2024-04-24 16:41:05',5),(70,'nepalgunj','Nepalgunj','','','','','',1,'','',25,'2024-04-24 16:41:29',5),(71,'kohalpur','Kohalpur','','','','','',1,'','',26,'2024-04-24 16:41:58',5),(72,'surkhet','Surkhet','','','','','',1,'','',27,'2024-04-24 16:42:27',6),(73,'mahendranagar','Mahendranagar','','','','','',1,'','',28,'2024-04-24 16:43:25',7),(74,'dhangadhi','Dhangadhi','','','','','',1,'','',29,'2024-04-24 16:44:08',7),(75,'dhanusha','Dhanusha','','','','','',1,'','',30,'2024-04-26 14:42:17',2),(76,'lamjung','Lamjung','','','','','',1,'','',31,'2024-04-26 14:51:11',4),(77,'mustang','Mustang','','','','','',1,'','',32,'2024-04-26 15:10:46',4),(78,'kapilvastu','Kapilvastu','','','','','',1,'','',33,'2024-08-02 12:58:30',5);
/*!40000 ALTER TABLE `tbl_destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_events`
--

DROP TABLE IF EXISTS `tbl_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_events`
--

LOCK TABLES `tbl_events` WRITE;
/*!40000 ALTER TABLE `tbl_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_faq`
--

DROP TABLE IF EXISTS `tbl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `added_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_faq`
--

LOCK TABLES `tbl_faq` WRITE;
/*!40000 ALTER TABLE `tbl_faq` DISABLE KEYS */;
INSERT INTO `tbl_faq` VALUES (2,'What are the services available?','','<p>\r\n	Fax/Photocopying, Laundry, Meeting/Banquet Facilities, Currency Exchange, Tour Desk, Business Centre, Ironing Service, Car Hire, Ticket Service, Souvenirs/Gift Shop, Concierge Service,Airport Shuttle (surcharge), Bicycle Rental, Shuttle Service (surcharge)</p>\r\n','',1,12,'2023-08-28 11:17:00'),(3,'What are the activities guests can enjoy?','','<p>\r\n	Nagarkot is a tranquil place where guests can escape the chaos and the hectic demands of the city life. While many guests prefer to enjoy the natural beauty of the surroundings by taking long walks, watching the sunrise and sunsets and enjoying a quite drink at our cozy bar, the hotel also offer activities such as :Massage, Spa &amp; Wellness Center, Cycling (booking shall be made in advance), Hiking, Library, Indoor Swimming Pool etc.</p>\r\n','',1,3,'2023-08-29 11:44:10'),(4,'What are the amenities and facilities in the hotel?','','<p>\r\n	Area shuttle (surcharge) &ndash; Bar/lounge- Total number of rooms 68 &ndash; Number of floors 5 &ndash; Number of buildings 2- Free Wi-fi ( Lobby area only)- Restaurant(s) in hotel- 1 Swimming pool &ndash; indoor &ndash; Spa &ndash; Rooftop sun deck- Souvenir shops- Helipad- Hot tub- Library- Multiple small meeting rooms &ndash; Multiple conference/ meeting rooms &ndash; Event catering &ndash; Banquet facilities &ndash; Concierge- Town Car Service available &ndash; Security guard &ndash; Multilingual staff &ndash; 24-hour front desk &ndash; Currency exchange &ndash; Parking</p>\r\n','',1,2,'2023-08-29 11:44:28'),(6,'Internet','','<p>\r\n	Free! Wi-fi is available in public areas and is free of charge.</p>\r\n','',1,0,'2023-09-15 11:22:44'),(7,'Parking','','<p>\r\n	Free! Free private parking is possible on site (reservation is needed).</p>\r\n','',1,1,'2023-09-15 11:23:01'),(8,'How do I get to the hotel?','','<p>\r\n	Nagarkot is 32 kilometers East of Kathmandu. From the Tribhuvan International Airport, guests can easily hire a taxi. It costs around 3500 Nepali rupees ( this is an approximate figure and subject to change) one-way. If you are already in Kathmandu or elsewhere, your hotel can easily arrange a private car or taxi. If you&#39;d like assistance, it is best to email us at ambassador@ambassador.com.np or call us at 977-1-6680080/46. To read more about transportation you may also visit the Lonely Planet site.</p>\r\n','',1,4,'2023-09-15 11:23:55'),(9,'What are the things to do in Nagarkot?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span><br style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">According to TripAdvisor.com following are the 5 good reasons to visit Nagarkot:</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. For those longing for some really refreshing environment to be free from hectic busy schedules in the crowded Kathmandu.Nagarkot provides a scenic beauty and divine peace far from heat, dust, smoke and city&rsquo;s hustle bustle.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Nagarkot is the nearest point from the Kathmandu valley from where on a clear day, the view of Mount Everest can be seen.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. Nagarkot is ideal hilltop venue to acclimatize for high altitude adventures as it is located at 7200 ft above sea level.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. It is the transit point for Helambu and Lang-tang trekking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Nagarkot is also a good point for mini-trekking. There are several treks possible to and from Nagarkot such as sankhu, changu Narayan, Dhulikhel, Sundarijal, Nala, etc.</li>\r\n</ol>\r\n','',1,10,'2023-09-15 11:24:12'),(10,'We guarantee','','<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. Booking is safe. When you book with us your details are protected by a secure connection.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Best Price Guarantee. Found your room online at a lower price (exact date and same terms &amp; conditions)? We&rsquo;ll match it. Email <a href=\"mailto:pam@acehotelsnepal.com\">pam@acehotelsnepal.com</a>.</li>\r\n</ol>\r\n','',1,5,'2023-09-15 11:24:26'),(11,'What are the accepted credit cards?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Visa, Euro/Mastercard/ AMEX</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. A credit card number is required to confirm the booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Prepayment for full duration of stay will be charged at the time of booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. 100% deposit will be refunded in the event of cancellation / modification 7 days prior to arrival date.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. Any cancellation less than 7 days notification, 50% of amount paid will be refunded.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Prepayment will not be refunded for No-shows.</li>\r\n</ol>\r\n','',1,6,'2023-09-15 11:24:38'),(12,'Pets','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Pets are not allowed.</span></p>\r\n','',1,7,'2023-09-15 11:24:49'),(13,'What are the Hotel Policies?','','<p style=\"text-align: left;\">\r\n	Check-in: 2:00 pm</p>\r\n<p style=\"text-align: left;\">\r\n	Check-out: 12:00 noon</p>\r\n<ul style=\"list-style-type:circle; text-align: left;\">\r\n	<li>\r\n		Rates are subjected to 13% VAT and 10% services charge.</li>\r\n	<li>\r\n		Note that children age 11 and older are charged the adult rate.</li>\r\n	<li>\r\n		Please include them in the number entered in the No. of Adults box.</li>\r\n	<li>\r\n		All rates quoted are subject to change without prior notice.</li>\r\n	<li>\r\n		Should you wish to change an existing reservation, you are required to cancel the existing booking and proceed to create a new reservation.This may be done by visiting our website.</li>\r\n	<li>\r\n		Should you wish to cancel an existing reservation, simply click on the reservation link at our</li>\r\n</ul>\r\n','',1,8,'2023-09-15 11:25:00'),(14,'When is the best time to visit?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span></p>\r\n','',1,11,'2023-09-15 11:25:11'),(15,'What is the weather in Nagarkot like ?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Nagarkot is very windy throughout the year, so always bring a wind cheater, a cap, glove, cold cream or lip guard, sunglasses and light walking shoes. Don&#39;t forget your binocular &amp; camera to catch the view. Avoid loose flying skirts and sarees unless you want a Marilyne Monroe experience!</span></p>\r\n<div class=\"table-responsive\">\r\n	<table class=\"table table-bordered\">\r\n		<tbody style=\"box-sizing: border-box;\">\r\n			<tr style=\"box-sizing: border-box;\">\r\n				<td>\r\n					&nbsp;</td>\r\n				<td>\r\n					&nbsp;Max<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\">\r\n					&nbsp; Min</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"40%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Jan- March (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;4 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;warm woolens with head cover</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;April-June (Spring / summer)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;25 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;wind cheater, umbrella raincoat, light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;July &ndash; Sept (Monsoon / Autumn)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;28 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;light wind cheater umbrella, raincoat,Light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"30%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Oct- Dec (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;2 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;very heavy woolens</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','',1,9,'2023-09-15 11:25:23');
/*!40000 ALTER TABLE `tbl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_features`
--

DROP TABLE IF EXISTS `tbl_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `parentId` int NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_features`
--

LOCK TABLES `tbl_features` WRITE;
/*!40000 ALTER TABLE `tbl_features` DISABLE KEYS */;
INSERT INTO `tbl_features` VALUES (47,'Services',0,'','','',1,1,'2020-05-24 12:37:54'),(110,'Water Bottle Complementary',47,'iSzkU-water.png','','',1,10,'2023-06-22 12:55:49'),(109,'Wardrobe',47,'2rtbF-closet.png','','',1,9,'2023-06-22 12:55:34'),(108,'Free Wi-Fi',47,'yjCD4-wifi.png','','',1,3,'2023-06-22 12:35:27'),(107,'Bar Table/Chairs',47,'40RzO-table_bar.png','','',1,8,'2023-06-22 12:35:15'),(106,'Telephone',47,'ZDt88-telephone.png','','',1,7,'2023-06-22 12:35:03'),(105,'Room Service',47,'Aywet-room_service.png','','',1,6,'2023-06-22 12:34:55'),(104,'LED TV',47,'o9oNF-tv-monitor.png','','',1,5,'2023-06-22 12:34:46'),(103,'Minibar',47,'ISHwI-minibar.png','','',1,4,'2023-06-22 12:34:36'),(102,'Coffee/ Tea Maker',47,'wHveO-coffee-machine.png','','',1,2,'2023-06-21 12:17:40'),(120,'Sofa Couch',47,'BiK3e-couch.png','','',1,12,'2024-03-25 07:21:13'),(119,'Laundry Services',47,'ZbodX-laundary.png','','',1,11,'2024-03-25 07:20:30'),(122,'Air Conditioning',47,'FYsub-air-conditioner.png','','',1,13,'2024-03-26 16:35:50'),(124,'Slipper',47,'BnMKd-slipper.png','','',1,14,'2024-03-26 16:39:03'),(125,'Hair Dryer',47,'r3G5m-hairdryer.png','','',1,15,'2024-03-26 16:39:52'),(126,'Toiletries',47,'lkeRP-toiletries.png','','',1,16,'2024-03-26 16:40:44'),(127,'Bathtub',47,'sohj3-bathtub.png','','',1,17,'2024-03-26 16:41:50'),(128,'Bath Towel',47,'7nebU-towel.png','','',1,18,'2024-03-26 16:43:05'),(129,'Dental Kit',47,'QUChQ-007-dentist.png','','',1,19,'2024-03-26 16:43:51'),(130,'Sauna',47,'Nj1kt-sauna.png','','',1,20,'2024-03-26 16:44:17'),(131,'Coffee Table/Chairs',47,'ZHLkq-coffe-table.png','','',1,21,'2024-03-26 16:48:33'),(132,'Projector System',47,'n1jBB-projector.png','','',1,22,'2024-03-26 16:52:53'),(133,'Microphone & Speaker',47,'FERFl-audio.png','','',1,23,'2024-03-26 16:53:44'),(134,'Audio Visual Equipment',47,'zkVAl-conferenc.png','','',1,24,'2024-03-26 16:54:12'),(135,'Laptop & Computer',47,'otBIk-computer.png','','',1,25,'2024-03-26 16:54:38'),(136,'Printing Services',47,'l9zdY-printer.png','','',1,26,'2024-03-26 16:55:02'),(137,'Writing Pads',47,'M0goj-notebook.png','','',1,27,'2024-03-26 16:55:13'),(138,'Wakeup Service',47,'mY3Tj-alarm-clock-(2).png','','',1,28,'2024-03-26 20:12:28'),(139,'High Speed Internet',47,'075cb-wifi-router.png','','',1,29,'2024-03-26 20:25:50');
/*!40000 ALTER TABLE `tbl_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_galleries`
--

DROP TABLE IF EXISTS `tbl_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_galleries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int NOT NULL,
  `content` longtext NOT NULL,
  `pradesh` int NOT NULL,
  `destinationId` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_galleries`
--

LOCK TABLES `tbl_galleries` WRITE;
/*!40000 ALTER TABLE `tbl_galleries` DISABLE KEYS */;
INSERT INTO `tbl_galleries` VALUES (17,'dream-international-hotel','Dream International Hotel ','K8m3k-img_7871-hdr-edit-edit.jpg','',1,8,'2024-04-12 17:12:14',1,'<div>\r\n	Dream International Hotel, the newest gem in Butwal&rsquo;s crown, brought to you by the esteemed Dream Group. Our boutique hotel boasts luxuriously furnished rooms and stands as a beacon of hospitality in the city&rsquo;s heart. Perfect for both business and leisure travelers, we offer a prime central location with easy access to Gautam Buddha International Airport and the sacred Lumbini. Experience our state-of-the-art meeting facilities and savor the flavors of the best restaurant in town.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(15,'de-crown-inn','De Crown Inn','iXrjb-lon07704-hdr-recovered.jpg','',1,9,'2024-04-12 17:03:15',1,'<div>\r\n	Step into the splendor of Hotel De Crown Inn, Butwal&rsquo;s beacon of architectural beauty. Revel in the unparalleled comfort of our rooms, where modern design meets the warmth of local culture. Situated at the heart of Butwal&rsquo;s vibrancy, our hotel is poised to become a landmark destination. Delight in our exquisite hospitality and a mosaic of culinary masterpieces. Embark on a journey of extraordinary living with us.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(91,'dadabazar-community-homestay','Dadabazar Community Homestay','onKU5-main.jpeg','',1,66,'2024-05-01 11:15:40',1,'',1,'52'),(20,'hotel-crystal-pashupati','Hotel Crystal Pashupati','KS662-img_0194.jpg','',1,7,'2024-04-12 17:42:34',1,'<div>\r\n	Hotel Crystal Pashupati, where peace and comfort reside mere steps from the sacred Pasupatinath Temple. Our hotel envelops you in cozy rooms and modern amenities, all designed to enrich your stay and etch unforgettable memories. With our prime location near the airport, your tranquil escape starts upon arrival. Whether seeking spiritual solace or a quiet haven, Hotel Crystal Pashupati is your harmonious retreat in the bustling heart of Kathmandu.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(22,'hotel-himalaya','Hotel Himalaya','4L2hz-img_9097-hdr(1).jpg','',1,6,'2024-04-12 17:46:48',1,'<div>\r\n	Hotel Himalaya, where relaxation and inspiration come naturally. Set in 6.58 acres of beautiful gardens, our hotel is a peaceful retreat, just 8 km from Tribhuwan International Airport and 2 km from Kathmandu&rsquo;s bustling center. Ideal for both business and leisure, we offer a resort-like experience with a personal touch. Located amidst prominent NGOs and INGOs, and a short stroll from the UN head office, we&rsquo;re perfectly positioned for convenience and tranquility.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'45'),(23,'hotel-kutumba','Hotel Kutumba','ageEp-dji_0013.jpg','',1,5,'2024-04-12 17:55:21',1,'<div>\r\n	Discover Hotel Kutumba, a boutique haven nestled in Kupondole&rsquo;s tranquility, steps from Patan&rsquo;s historic heart. Each of our 22 rooms is a masterpiece, adorned with local artistry and offering a modern twist on Nepali hospitality. Indulge in culinary delights at Arghya Fine Dine or sip under the stars at Kutumba Lounge Bar. Immerse yourself in the cultural tapestry of Lalitpur, where every floor narrates a story of Nepal&rsquo;s vibrant life. Hotel Kutumba where heritage meets luxury in the city of arts.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'45'),(24,'hotel-pabera','Hotel Pabera','tGxyB-build.jpeg','',1,4,'2024-04-12 18:08:08',1,'<div>\r\n	Hotel Pabera Heritage Boutique is set to operate a standard four-star, traditional Nepali boutique theme with modern amenities and excellent service in Kathmandu. In all that we do, we will ensure that our guests leave with an unforgettable experience that will make them want to come back as well as recommend our hotel to their friends, family members and business partners through positive word of mouth.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(25,'jagatpur-lodge','Jagatpur Lodge','pV9ws-dsc09288.jpg','',1,3,'2024-04-12 18:28:22',1,'<div>\r\n	Jagatpur Lodge beckons you to awaken to the symphony of the jungle. Enveloped by the Rapti River and the Chitwan National Park, our lodge is a sanctuary of natural splendor and subtle luxury. Spanning two acres of woodland, we offer modern comforts amidst the wild, complete with Wi-Fi and HD TV. Choose your adventure&mdash;by jeep or on foot&mdash;and cap it off on our sun deck, the ideal spot for a soulful sundowner. Dine under the stars or indoors, wrapped in the warmth of our hospitality.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(29,'kailash-boutique-hotel','Kailash Boutique Hotel','o1T1J-3f3a2090-hdr.jpg','',1,2,'2024-04-12 18:38:52',1,'<div>\r\n	Discover the charm of Kathmandu at Kailash Boutique Hotel, where tradition meets modernity just a stroll away from the historic Hanuman Dhoka. Indulge in our elegant rooms, each a cozy haven with plush amenities. Start your day and explore the city&rsquo;s soul with nearby attractions like Thamel Chowk and Garden of Dreams. With complimentary shuttle service and just a short drive from Tribhuvan International Airport, we ensure your stay is as convenient as it is memorable.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(30,'manigram-bishram-batika','Manigram Bishram Batika','Q2t8i-manigram1.jpeg','',1,1,'2024-04-12 18:49:32',1,'<div>\r\n	Manigram Bishram Batika Pvt. Ltd. by the side of highway on the way from Butwal to Bhairahawa is a premium destination for family vacations, romantic getaways, corporate retreats, weddings, and other special events. Nestled in the gifted Lumbini region, we&rsquo;re proud to provide the perfect backdrop for relaxing and celebrating with friends and family.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(34,'airport-himalaya-boutique-hotel','Airport Himalaya Boutique Hotel','P07AZ-banner.jpg','',1,10,'2024-04-26 11:00:16',1,'<div>\r\n	Airport Himalaya Boutique Hotel welcomes you to a world of Nepalese elegance, a mere 0.2km from Tribhuvan International Airport. Discover the convenience of local transport at your doorstep, connecting you to the heart of Kathmandu. Our proximity to Pashupatinath Temple, Tilganga Eye Hospital, bustling markets, and culinary delights enriches your stay. Retreat to our cozy, traditionally-themed rooms, crafted for comfort and infused with the spirit of Nepal.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(35,'aagantuk-resort','Aagantuk Resort','8YOCp-dji_0315.jpg','',1,11,'2024-04-26 11:01:50',1,'<div>\r\n	Retreat to Aagantuk Resort, a serene sanctuary just 3km from Banepa, where luxury meets tranquility. Our boutique resort spans 72 ropani, offering gourmet cuisine, exclusive amenities, and a rooftop panorama. Enjoy our spa, gym, and pool, and savor the convenience of our comprehensive logistics and ticketing services. With personalized care from our dedicated staff, your stay is a promise of comfort and value. Aagantuk is not just a getaway; it&rsquo;s your tranquil home in the valley.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'60'),(36,'atithi-resort-spa','Atithi Resort & Spa','gl9gq-img_1731.jpg','',1,12,'2024-04-26 11:02:41',1,'<div>\r\n	Embrace the divine ethos of Nepalese hospitality at Atithi Resort &amp; Spa, a 4-star gem in the enchanting city of Pokhara. &lsquo;Atithi&rsquo;, meaning &lsquo;Guest&rsquo;, encapsulates our philosophy that &lsquo;Guest is God&rsquo;. Be cradled by the majestic Mount Fishtail and the serene Fewa Lake, igniting a spirit of service amidst Pokhara&rsquo;s natural splendor. Our resort is a sanctuary where the Annapurna Range stands as a backdrop to your rejuvenation. At Atithi, every moment is an offering to your well-being, surrounded by the tranquility of snow-capped peaks and lush forests.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'62'),(37,'avacado-orchid-resort','Avacado & Orchid Resort','MaV8L-dsc08883-hdr.jpg','',1,13,'2024-04-26 11:03:42',1,'<div>\r\n	Enter the tranquil world of Avocado and Orchid Resort, a haven of peace in Hetauda, Nepal. Here, nature aficionados find their paradise, where luxury intertwines with the pristine beauty of nature. Be enchanted by the lush greens, the vivid dance of orchids, and the grandeur of avocado trees. This resort is not just a stay&mdash;it&rsquo;s an immersive experience for the senses, a place where tranquility and opulence reside in harmony.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'58'),(38,'apex-business-hotel','Apex Business Hotel','mgPlU-img_9663-hdr.jpg','',1,14,'2024-04-26 11:04:37',1,'<div>\r\n	Apex Business Hotel&nbsp; is located near Tribhuvan International Airport just 100m walking distance. Our rooms services will surely give one comfort and luxury with unmatched hospitality..All our rooms are well furnished with ultra-modern amenities. We offer free Wi-Fi. Tours, sightseeing &amp; other transfers can be arranged from our hotel.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(39,'bhotekoshi-heli-resort','Bhotekoshi Heli Resort ','dl4Sv-img_2988.jpg','',1,15,'2024-04-26 11:06:13',1,'<div>\r\n	Surrender to the allure of Bhotekoshi Heli Resort, a luxurious sanctuary by the Bhotekoshi river, en route to the Kodari, China border. Our resort is an idyllic setting for family holidays, romantic escapes, corporate gatherings, and celebratory events. Tucked away in the enchanting Sindhupalchowk, we offer a retreat where professional service meets natural splendor. Just a 20-minute helicopter ride or a 4-hour drive from Kathmandu, our resort is a world apart, promising an unforgettable experience for all our esteemed guests.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'61'),(40,'lumbini-palace-resort','Lumbini Palace Resort','HqCCh-dji_0182.jpg','',1,16,'2024-04-26 11:09:04',1,'<div>\r\n	Escape to Lumbini Palace Resort in the heart of the Terai, where spiritual serenity and natural beauty converge. Amidst verdant landscapes and historical richness, find a peaceful sanctuary near Buddha&rsquo;s birthplace. Luxuriate in our elegant abode, with gardens that whisper tales of enlightenment. Here, every moment is an invitation to tranquility, a step closer to the soul of Nepal.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(41,'chitwan-mid-town-resort','Chitwan Mid-Town Resort','urolp-dsc04222-hdr.jpg','',1,17,'2024-04-26 11:09:44',1,'<div>\r\n	Experience first-class comfort and convenience at Chitwan MidTown Resort which is located in the heart of Bharatpur. CMT reflects the charm of Bharatpur city with its own modern characters. Masterfully developed by paying attention to every detail, our resort comes highly equipped with all the prestigious features &amp; safety standards that you would require during your stay.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(42,'bhairahawa-garden-resort','Bhairahawa Garden Resort','8VRXj-img_0383.jpg','',1,18,'2024-04-26 11:14:23',1,'<div>\r\n	Bhairahawa Garden Resort in Lumbini, Nepal, is a serene 4-star sanctuary offering a blend of modern amenities and cultural richness. Here, you can unwind in peaceful gardens, savor fine dining, and relax in cozy rooms with stunning city views. Our facilities cater to both leisure and exploration, ensuring a stay that captures the spirit of Nepal and the legacy of Buddha&rsquo;s birthplace.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(43,'badreni-jungle-resort','Badreni Jungle Resort','i4Y3g-img_6913-hdr.jpg','',1,19,'2024-04-26 11:15:55',1,'<div>\r\n	Immerse yourself in the serene beauty of Badreni Jungle Resort, where tradition meets luxury on the Rapti River&rsquo;s edge. Behold the lush Chitwan National Park, a backdrop to our boutique retreat. Encounter the wild, revel in the enchantment of the forest, and enjoy our heartfelt hospitality. At Badreni, create memories that resonate with the spirit of the wilderness.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(44,'basera-boutique-hotel','Basera Boutique Hotel','aYpyf-img_7301-hdr.jpg','',1,20,'2024-04-26 11:16:55',1,'<div>\r\n	Discover Basera Boutique Hotel in Babar Mahal, Kathmandu, offering deluxe, suite, and standard rooms. Enjoy our amenities like swimming pool, sauna, spa, and fitness center. Stay cool in summer, warm in winter, and explore nearby attractions with friends and family. Relax and rejuvenate while enjoying quality room service in our comfortable rooms.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(45,'ghyampe-danda-resort','Ghyampe Danda Resort','vnM5V-img_0063-hdr.jpg','',1,21,'2024-04-26 11:27:15',1,'<div>\r\n	Ascend to Hotel Ghyampe Danda, where the grandeur of the Himalayas meets the charm of Kathmandu Valley. Perched atop a hill, our hotel offers a luxurious retreat with diverse dining, panoramic views, and authentic Newari cuisine. Just a stone&rsquo;s throw from the city, we provide a serene escape with personalized service and modern amenities. Indulge in adventure or relaxation with our zipline and hiking options, all tailored to create your perfect Himalayan experience.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'56'),(46,'mourya-hotel','Mourya Hotel','YVAFd-dji_0769.jpg','',1,22,'2024-04-26 11:28:50',1,'<div>\r\n	Mourya Hotel a neo-classical sanctuary on Siddhartha Highway, offering a harmonious blend of professional service and heartfelt hospitality. Perfect for both corporate and leisure travelers, our hotel promises a stay that feels like home, complete with spacious parks and attentive care.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(47,'soaltee-crowne-plaza','Soaltee Crowne Plaza','7FvkZ-img_1630.jpg','',1,23,'2024-04-26 11:29:43',1,'<div>\r\n	The Soaltee Kathmandu, a cornerstone in the Pioneer in the Nepali Hospitality Industry since its inception in the year 1966. Strategically nestled in the vibrant heart of the capital, our iconic establishment has consistently set the standard for unparalleled service and timeless elegance. With a legacy spanning over five decades, our meticulously designed spaces, ranging from luxurious accommodations to sophisticated dining venues, showcase a seamless fusion of tradition and modernity.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(48,'siddhartha-outlets-boudha','Siddhartha Outlets Boudha','MxmIV-img_1981-hdr.jpg','',1,24,'2024-04-26 11:33:27',1,'',3,'55'),(49,'paithani-resort','Paithani Resort','b0UI0-dsc03602-hdr.jpg','',1,25,'2024-04-26 11:34:45',1,'',3,'59'),(50,'hotel-mystic-mountain','Hotel Mystic Mountain','SHpdK-dji_0096.jpg','',1,26,'2024-04-26 11:35:15',1,'<div>\r\n	Ascend to Hotel Mystic Mountain in Nagarkot, where tranquility reigns supreme amidst verdant splendor. Perched above idyllic villages and terraces, our hotel is a sanctuary above the clouds, offering a vista of the valley below. Indulge in the fusion of modern luxury and the restorative embrace of nature.Connect with the earth through nature walks, hikes, and adventures, all while being cocooned in unparalleled luxury.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'57'),(51,'tigerland-safari-resort','Tigerland Safari Resort','zvNvA-img_1378-hdr.jpg','',1,27,'2024-04-26 11:35:58',1,'<div>\r\n	Discover the enchanting Tigerland Safari Resort, a riverside retreat with 32 luxurious villa cottages set in 8 acres of untouched beauty. From the traditional Tharu village, behold the splendor of Chitwan National Park. Located in the heart of Chitwan, Bharatpur, our resort is your portal to Nepal&rsquo;s natural marvels. A mere 22 km from Bharatpur, Tigerland offers a peaceful haven for explorers and dreamers alike. Journey with us to this secluded paradise, where each visit pulsates with the wild heart of the jungle.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(52,'meraki-wellness-retreat','Meraki Wellness Retreat','k78pd-img_9339.jpg','',1,28,'2024-04-26 11:37:02',1,'<div>\r\n	Embark on a journey to Meraki Wellness Retreat, where ancient wisdom meets modern wellness amidst the serene hills of Nepal&rsquo;s capital. Our sanctuary is a mosaic of holistic medicine, offering personalized programs that harmonize mind, body, and soul. Dive deep into the art of well-being with our Yogic sciences, therapeutic treatments, and nutritional guidance. At Meraki, your health is our canvas, and we paint a path to vitality, resilience, and a life of purpose.&nbsp;</div>\r\n',3,'55'),(53,'hotel-verandah','Hotel Verandah','6O9TB-170046443.jpg','',1,29,'2024-04-26 11:38:44',1,'<div>\r\n	Embrace the soulful essence of the east at Hotel Verandah, situated just 30 minutes from Biratnagar Airport in the vibrant hub of Itahari. Connect with ease to Nepal&rsquo;s major cities while enjoying panoramic urban vistas from our contemporary rooms. Whether you&rsquo;re here for business, a family adventure, or a romantic honeymoon, our hotel&rsquo;s ambience and hospitality promise a memorable stay.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'49'),(54,'vivanta','Vivanta','Sb3Mn-img_3951.jpg','',1,30,'2024-04-26 11:39:13',1,'<p>\r\n	Step into the world of Vivanta, where sophistication and style converge to create unforgettable experiences. Our hotels are the epitome of upscale elegance, offering dynamic and spirited stays with a unique twist. Designed for the modern traveler, Vivanta promises an adventure that&rsquo;s as unexpected as it is luxurious. Discover a destination where every detail is a surprise, and every moment is a distinctive memory. Welcome to Vivanta, where the extraordinary is always in the details.</p>\r\n',3,'45'),(55,'ramada-encore','Ramada Encore','W8wXz-ramada-encore-kathmandu1505315.jpg','',1,31,'2024-04-26 14:09:40',1,'<div>\r\n	Ramada Encore by Wyndham Kathmandu Thamel. Perfectly situated just 7 km from Tribhuvan International Airport (KTM), our hotel is a gateway to the city&rsquo;s charm, including the Garden of Dreams and Kathmandu Durbar Square. Immerse yourself in the vibrant Thamel district, explore local markets like Ason Bazaar, and discover sacred sites such as Swayambhunath. After a day of adventure, return to the comfort of our non-smoking hotel, where complimentary breakfast, a relaxing spa, and exquisite dining await you.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(56,'dreamland-gold-resort','Dreamland Gold Resort','TI6dT-img_8582.jpg','',1,32,'2024-04-26 14:12:46',1,'<div>\r\n	Nestled in Nepal&rsquo;s vibrant southern belt, Dreamland Gold Resort &amp; Hotel is a jewel amidst nature, just a short flight from Kathmandu. Here in Manigram, once a royal forest, now a Shining Village, history blends with luxury. The vision of Sardar RAM MANI DIKSHIT transformed the wilderness into a thriving town, making Dreamland a symbol of progress and prosperity. With its strategic location near Butwal, Bhairahawa Airport, and the Sunauli border, it&rsquo;s an accessible retreat promising tranquility and a glimpse into a land of rapid development and rich heritage.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(57,'the-sr-hotel','The SR Hotel','x9Psu-dji_0103.jpg','',1,33,'2024-04-26 14:16:14',1,'<div>\r\n	Indulge in the unparalleled luxury of SR Hotel, where every stay is a journey into comfort and elegance. Our top-rated accommodations cater to your every need, ensuring a stay that&rsquo;s nothing short of memorable. Feel the warmth of our hospitality as you relax in our exquisitely designed rooms and suites.Experience the dedication of our staff, providing personalized service to make SR Hotel your home away from home.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(58,'surya-heritage-hotel','Surya Heritage Hotel','UxAhi-dsc02764.jpg','',1,34,'2024-04-26 14:17:16',1,'<div>\r\n	Elegance of Surya Heritage Hotel, Kathmandu&rsquo;s distinguished 3-star boutique. Experience the charm of authentic Newari architecture with the luxury of modern amenities. Our tranquil accommodations are a stone&rsquo;s throw from the iconic Hanuman Dhoka, inviting you to delve into history. Relish in our serene rooms, sophisticated banquet spaces, fine dining, and breathtaking rooftop vistas. Embrace the fusion of tradition and comfort at the heart of Nepal&rsquo;s vibrant capital.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(59,'sky-garden-resort','Sky Garden Resort','pcWKf-img_6704-hdr-edit.jpg','',1,35,'2024-04-26 14:18:54',1,'<div>\r\n	Escape to the Sky Garden Resort, a unique haven nestled amidst lush jungles and valleys, only an hour from Kathmandu. Luxuriate in our exclusive accommodations, complete with a rooftop jacuzzi and a sky bar. Surrender to the serenity of Dhulikhel with panoramic views of the Himalayas. Step beyond the everyday and immerse yourself in an extraordinary botanical retreat. Experience the pinnacle of tranquility and luxury at Dhulikhel&rsquo;s most exquisite getaway.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'60'),(60,'siraichuli-hotel','Siraichuli Hotel','B6Aok-img_9593.jpg','',1,36,'2024-04-26 14:19:50',1,'<div>\r\n	Hotel Siraichuli in Bharatpur, a four-star sanctuary with 71 upscale rooms. Revel in the breathtaking views of the Himalayas from our luxurious accommodations. Our hotel boasts a multicuisine restaurant, three banquet halls, and five board rooms for all your event needs. Immerse yourself in relaxation at our infinity pool, rooftop restaurant, or poolside bar, and rejuvenate at our state-of-the-art gym and spa. Your serene retreat awaits in the lively city of Chitwan.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(61,'siddhartha-vilasa-banbas','Siddhartha Vilasa Banbas','385oZ-dsc06945-hdr-edit-edit-edit-(1).jpg','',1,37,'2024-04-26 14:23:48',1,'<div>\r\n	Siddhartha Vilasa Banabas Resort in Chitwan is a sanctuary where sophistication meets wilderness. Our 23 villas with 34 rooms are your personal havens of tranquility, set in a sprawling 3.5 bighas of lush landscape. Indulge in the cultural tapestry of Tharu heritage, savor the flavors at our multi-cuisine restaurant, and let the serenity of nature envelop you. Here, luxury is redefined&mdash;each villa a masterpiece, each moment a memory.&nbsp;</div>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(62,'hotel-pokhara-grande','Hotel Pokhara Grande','PJcDw-img_5361.jpg','',1,38,'2024-04-26 14:25:30',1,'<div>\r\n	Pokhara Grande, a five-star sanctuary, stands as a testament to Pokhara&rsquo;s beauty, offering a harmonious blend of luxury and tranquility. Celebrated among Nepal&rsquo;s top ten hotels, our service is unmatched, and our new C block embodies the hotel&rsquo;s signature elegance. Nestled in the heart of Pokhara, we invite nature enthusiasts to indulge in an authentic experience, surrounded by breathtaking vistas. Just a leisurely stroll from the vibrant city life, yet a world apart,</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<p>\r\n	&nbsp;</p>\r\n',4,'62'),(63,'park-safari-resort','Park Safari Resort','51zEk-img_7421-hdr.jpg','',1,39,'2024-04-26 14:26:31',1,'<div>\r\n	Enchanting beauty of Park Safari Resort in Sauraha, Chitwan, where the wild heart of the jungle beats in harmony with luxurious comfort. Wake up to poolside views, indulge in a continental breakfast, and explore the majestic Rapti river and Chitwan National Park, just a stone&rsquo;s throw away. Our resort is a sanctuary of relaxation, offering a sun terrace, swimming pool, and the charm of the Tharu community.Park Safari Resort is your gateway to an unforgettable Nepalese journey.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(64,'nansc-hotel','Nansc Hotel','NlIiQ-img_4971-hdr.jpg','',1,40,'2024-04-26 14:31:58',1,'<div>\r\n	Step into the oasis of Nansc Hotel, where tradition greets you with modern luxury. Revel in our exquisite rooms that offer a panoramic view of the city, and begin your day with a diverse breakfast buffet. Located a mere whisper away from cultural landmarks and the Gautam Buddha International Airport, Nansc Hotel is your gateway to a memorable Nepalese adventure.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n',5,'68'),(65,'naikap-village-resort','Naikap Village Resort','1C7sV-dji_0684-edit.jpg','',1,41,'2024-04-26 14:32:30',1,'<div>\r\n	Naikap Village Resort, a luxurious sanctuary just 15 minutes from Kalanki Chowk in Kathmandu. Offering a seamless blend of business facilities and leisure comforts, the resort features elegant rooms, a restaurant with terrace dining, and a lush garden. Ideal for events, it boasts extensive conference and banquet spaces. Nestled in the tranquil hills of Nepal, Naikap Village Resort is your perfect escape for romance, family time, or a serene retreat.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(66,'mithila-yatri-niwas','Mithila Yatri Niwas','QAzWa-svp09387-hdr.jpg','',1,42,'2024-04-26 14:43:28',1,'<div>\r\n	Mithila Yatri Niwas, nestled in Janakpur, is a luxurious hotel just a 10-minute walk from Janaki Temple and Dashrath Lake. It stands out as the only hotel in the area with ultramodern amenities, event spaces, and ample parking, all easily accessible by road, air, and rail. Guests can enjoy a tranquil stay with the convenience of an on-site restaurant serving local, Indian, and Continental dishes. Embrace the serenity and spirituality of Nepal&rsquo;s heritage at this peaceful retreat, promising a comfortable and memorable experience.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',2,'75'),(67,'fish-tail-lodge','Fish Tail Lodge','CvdYi-img_8899.jpg','',1,43,'2024-04-26 14:43:56',1,'<div>\r\n	Fish Tail Lodge, a tranquil retreat in Pokhara, is perched between Fewa Lake and verdant hills, just 0.6 miles from transport hubs. The resort offers luxurious air-conditioned rooms with modern amenities, an inviting outdoor pool, and a relaxing spa. With a 24-hour front desk and a tour desk, guests can easily discover local attractions. The on-site restaurant and Cozy Bar provide a rich culinary journey, ensuring a stay that&rsquo;s as rejuvenating as it is memorable.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'62'),(68,'the-everest-hotel','The Everest Hotel','XJXnz-img_5617-hdr.jpg','',1,44,'2024-04-26 14:44:57',1,'<div>\r\n	The Everest Hotel in Kathmandu, a blend of modern luxury and Nepali heritage, is strategically located 3km from the airport and amidst cultural landmarks. With 160 well-appointed rooms, it offers stunning mountain views and amenities like complimentary high-speed internet. Guests can enjoy a diverse culinary experience with Nepali, pan-Asian, and international dishes. Ideal for leisure, business, or pilgrimage stays, the hotel ensures a memorable experience in the heart of Nepal&rsquo;s vibrant capital.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(69,'hotel-da-flamingo','Hotel Da Flamingo','9X9Xj-dsc07842-hdr.jpg','',1,45,'2024-04-26 14:47:23',1,'<div>\r\n	Hotel Da Flamingo, a distinguished business hotel in Yogikuti, Butwal, caters to the discerning traveler seeking style and comfort. It boasts a suite of amenities for holistic wellness and luxury, ensuring a memorable stay. Stay connected with loved ones thanks to the hotel&rsquo;s complimentary integrated wireless broadband, available throughout the premises, providing convenience and seamless connectivity for every guest.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'68'),(70,'gateway-himalaya-resort','Gateway Himalaya Resort','JQO4K-dji_0446.jpg','',1,46,'2024-04-26 14:51:42',1,'<div>\r\n	Gateway Himalaya Resort in Besisahar,is a haven for trekkers and professionals seeking comfort and hospitality. A mere 5-hour scenic drive from Kathmandu, the resort stands out with its distinctive gate and stone architecture. Catering to diverse needs, it offers a business center, conference facilities, and a banquet team for events. The resort&rsquo;s restaurant and bar promise a homely atmosphere, ensuring guests feel part of the Gateway family amidst the watchful Lamjung Peak.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'76'),(71,'helambu-mountain-resort','Helambu Mountain Resort','jwDmy-dji_0337.jpg','',1,47,'2024-04-26 14:52:51',1,'<div>\r\n	Helambu Mountain Resort, nestled in Ama Yangri&rsquo;s serene beauty, is your Himalayan haven offering adventure and cultural experiences. With over a decade of trekking expertise, the resort provides picturesque 4WD tours, local culinary delights, and a connection with Sherpa and Tamang heritage. Comfort meets nature with well-equipped rooms, diverse activities, and easy access from Kathmandu, ensuring a stay that&rsquo;s both tranquil and exhilarating.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'61'),(90,'namje-community-homestay','Namje Community Homestay','Pq4KI-main.jpeg','',1,65,'2024-05-01 11:01:01',1,'<div>\r\n	Namje Community Homestay offers a cultural journey in the Magar village of eastern Nepal, with traditional dances and local customs. Experience cozy homely accommodation with modern features with rooms furnished with fans for a refreshing breeze. Enjoy private bathrooms with Nepali-style squat toilets, hot water, and clean towels for your comfort.Explore the village&rsquo;s spiritual Thumki Hill, enjoy nature&rsquo;s beauty, and visit nearby attractions like Namaste Falls. Ideal visit times are spring and autumn for warm weather and clear views, avoiding the monsoon season.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'52'),(73,'grand-hotel-kathmandu','Grand Hotel Kathmandu','gDzNy-pixa6447.jpg','',1,48,'2024-04-26 14:54:40',1,'<div>\r\n	Grand Hotel Kathmandu, a stylish high-rise in the city&rsquo;s heart, is near landmarks like Swoyambhunath Temple and offers 91 rooms, including 7 suites, with modern amenities. Dine at &ldquo;Rendezvous&rdquo; for international fare or &ldquo;Maharaja&rdquo; for Mughlai cuisine with live shows. Unwind at the Himalayan Healers Spa, Beauty Centre, or by the pool, encapsulating luxury and cultural proximity.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(74,'grand-norling-hotel-and-resort','Grand Norling Hotel and Resort','AOdwh-pixa7280.jpg','',1,49,'2024-04-26 14:55:56',1,'<div>\r\n	Grand Norling Hotel&rsquo;s Resort, a luxurious haven in Nepal, is surrounded by UNESCO World Heritage Sites and offers stunning views of the Gauri Shankar Himal range. This cultural sanctuary provides a golf course, lush gardens, and a connection with nature&rsquo;s grandeur. Committed to comfort and joy, Grand Norling invites guests to a journey of indulgence, creating unforgettable memories and redefining hospitality.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(75,'d-moksha-mustang-thakali','D Moksha Mustang Thakali','F8Qqu-3man9111-hdr.jpg','',1,50,'2024-04-26 14:57:30',1,'<div>\r\n	D Moksha Mustang Thakali, a restaurant dedicated to authentic Nepali and multi-cuisine offerings, is housed in a 90-year-old historical building. Opened in 2080 BS, it has been retrofitted to preserve its traditional architecture and classic charm. With a 136-pax dining capacity and a 100-cover banquet hall, it&rsquo;s a testament to simple, good food and living. The Marpha Bar on the second floor adds to the allure, all founded by two entrepreneurs passionate about Nepali culture and cuisine.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(76,'hotel-da-yatra-courtyard','Hotel Da Yatra Courtyard','EadAu-img_3930.jpg','',1,51,'2024-04-26 14:58:15',1,'<div>\r\n	Hotel Dayatra Courtyard, poised in Pokhara&rsquo;s heart, is a neoclassical luxury hotel 0.69km from Fewa Lake, offering 46 rooms with mesmerizing Himalayan and lake views. It caters to business needs with conference halls for 135-150 people and delights with gourmet cuisine. The hotel provides complimentary parking, airport transfers, and a dedicated smoking area, ensuring a seamless and luxurious experience for all guests.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'62'),(77,'hotel-hukum-darbar','Hotel Hukum Darbar','WYWzR-dji_0013.jpg','',1,52,'2024-04-26 14:59:24',1,'<div>\r\n	Hukum Darbar Restaurant &amp; Hotel, a 90-year-old Rana Dynasty heritage in Kathmandu, offers a unique stay with European Neo-classic architecture. The 60cm thick walls made of bricks, mud, and wood ensure a comfortable climate year-round. Guests can enjoy Nepalese, Japanese, and continental cuisine, along with a selection of beer, wine, and sake. The terracotta-tiled roof adds to the charm of this historic property, which welcomes diners for breakfast, lunch, and dinner.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(78,'hotel-kathmandu-inn','Hotel Kathmandu Inn','AC7gx-yala6249-pano.jpg','',1,53,'2024-04-26 14:59:53',1,'<div>\r\n	Hotel Kathmandu Inn, a serene retreat in Sinamangal, is 1km from the airport and 1.2km from Pashupatinath Temple. This exclusive hotel features 44 accommodations, a restaurant, bar, and ATM, all within a tranquil setting ideal for relaxation or city exploration. With a commitment to exceptional service, the hotel ensures a memorable stay for both business and leisure travelers seeking to experience Kathmandu&rsquo;s rich culture and natural beauty.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(79,'hotel-marshyangdi','Hotel Marshyangdi','kn3VC-img_1602.jpg','',1,54,'2024-04-26 15:00:26',1,'<div>\r\n	Hotel Marshyangdi, a 3-star treasure in Thamel, Kathmandu, offers 95 rooms and over 30 years of hospitality excellence. A short distance from the airport and key attractions like Kathmandu Durbar Square, it&rsquo;s a haven of comfort with a garden restaurant. Rooted in the Manang district&rsquo;s heritage, it&rsquo;s named after the &lsquo;raging river&rsquo; and is a gateway to adventure and culture. Welcoming guests with traditional Nepalese warmth, Hotel Marshyangdi is a testament to enduring quality and service.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(80,'hotel-orion','Hotel Orion','NCs9t-img_7979-hdr.jpg','',1,55,'2024-04-26 15:01:37',1,'<div>\r\n	Hotel Orion, a 4-star luxury oasis in Nawalparasi, is a blend of modern design and local artistry, just 50km from Lord Buddha&rsquo;s birthplace. Nestled in the Terai region&rsquo;s tranquility, it&rsquo;s close to the Ramagrama Stupa UNESCO site. The property features the multi-cuisine De Aura restaurant, a fresh-water pool, and the Tathastu Banquet hall, ideal for events. Committed to conservation, it&rsquo;s a haven for both business and leisure, ensuring minimal community impact.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'64'),(81,'hotel-ichchha','Hotel Ichchha','gZivg-dsc06076-hdr.jpg','',1,56,'2024-04-26 15:02:27',1,'<div>\r\n	Hotel Ichchha, Simara&rsquo;s first 5-Star Deluxe Hotel, offers a lush sanctuary for both business and leisure, and a commitment to top-tier service. Celebrated for transforming Simara into a vibrant tourist hub, it&rsquo;s the perfect venue for destination weddings and features excursions like Jungle Safari at Parsa National Park. Poised for growth alongside the Birgunj-Pathlaiya Industrial Corridor, it&rsquo;s connected by the Nijgadh-Kathmandu Expressway, promising a swift 1-hour drive to the capital. With ethical practices and corporate responsibility at its core, Hotel Ichchha stands as a beacon of hospitality in the Terai Region.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',2,'54'),(82,'hotel-utsab-himalaya','Hotel Utsab Himalaya','tnYTP-img_7820.jpg','',1,57,'2024-04-26 15:03:35',1,'<div>\r\n	Hotel Utsab Himalaya, situated away from Pokhara&rsquo;s bustle yet close to its attractions, offers a serene stay with stunning Annapurna views. Traditional Nepali architecture and modern comforts like free Wi-Fi and 24-hour service enhance the experience. Just a 7-minute stroll from Phewa Lake, the hotel features a lush garden, diverse cuisine, and a complimentary airport shuttle. Savor the international buffet breakfast as you gaze upon the mountains from your well-appointed room.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'62'),(83,'hotel-queens-park','Hotel Queens Park','9qjSM-img_6922.jpg','',1,58,'2024-04-26 15:05:43',1,'<div>\r\n	Hotel Queens Park, a gem in Pokhara, boasts 37 deluxe and 3 suite rooms, a diverse restaurant, and a wellness center. Revel in the legendary hospitality on our BBQ terrace with panoramic views. Located at Lakeside, street no. 17, our hotel is a testament to decades of refined hospitality, blending tradition with modernity. Our professional team ensures an unparalleled experience, promising more than just satisfaction&mdash;a mystique uniquely ours.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'62'),(84,'jungle-villa-resort','Jungle Villa Resort','4OHwj-lon06284.jpg','',1,59,'2024-04-26 15:07:20',1,'<div>\r\n	Jungle Villa Resort, perched by the Rapti river and Chitwan National Park, offers a tranquil retreat with direct views of exotic wildlife. The resort&rsquo;s decks and rooms provide a front-row seat to nature&rsquo;s spectacle, including deer, rhinos, and tigers. A mere 30-minute journey from Bharatpur airport, it&rsquo;s a gateway to adventure. Embrace local culture through guided tours and immersive packages ranging from 1 to 4 days, curated to enrich your understanding of Chitwan&rsquo;s heritage and lifestyle.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'59'),(85,'lo-mustang-himalayan-resort','Lo Mustang Himalayan Resort','UQ9Jw-img_5111.jpg','',1,60,'2024-04-26 15:11:36',1,'<div>\r\n	Lo Mustang Himalayan Resort in Muktinath, Nepal, a perfect blend of comfort and serenity near the sacred Muktinath Temple. Our diverse accommodations cater to all, from solo wanderers to families, featuring modern comforts like complimentary Wi-Fi and private baths. Immerse yourself in breathtaking mountain vistas, verdant landscapes, and pristine air. Experience our commitment to excellence with attentive service ensuring an unforgettable stay. Escape the city&rsquo;s clamor and embrace the peaceful embrace of the Himalayas at our doorstep.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',4,'65'),(86,'hotel-ashwatth','Hotel Ashwatth','KzhUO-1.jpeg','',1,61,'2024-04-29 11:23:07',1,'<div>\r\n	The serene 5-star Hotel Ashwatth in Eastern Nepal&rsquo;s Mechinagar &ndash; 7, Jhapa. Our hotel combines luxury with peace, just a short drive from Bagdogra International and Bhadrapur Domestic Airports. Experience elegance and comfort from the moment you arrive, with our central Bodhi tree symbolizing tranquility and enlightenment. Ideal for both domestic and international guests, we ensure a stay that&rsquo;s as convenient as it is lavish. Discover the definitive standard of hospitality with us.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'47'),(87,'hotel-maxx','Hotel Maxx','7FQTX-main.jpeg','',1,62,'2024-04-29 16:37:39',1,'<div>\r\n	Hotel Maxx, a 4-star luxury hotel in Kohalpur City, offers a prime location for various travelers, with the Kohalpur View Tower just a minute away. It boasts top-notch amenities, including a rooftop pool with stunning city views, and diverse dining options. Renowned for exceptional service and Nepalese hospitality, it&rsquo;s conveniently close to Nepalgunj City and the airport, ensuring a blend of tradition and modernity for memorable stays.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'71'),(88,'hotel-the-galaxy-durbar','Hotel The Galaxy Durbar','ppUql-main.jpeg','',1,63,'2024-04-29 17:49:36',1,'<div>\r\n	Hotel The Galaxy Durbar, a 3-star establishment in Dhamboji, Nepalgunj, offers premier accommodation and hospitality. With a philosophy centered on dedication and elegance, the hotel provides a tranquil setting with personalized services, including spacious rooms, free Wi-Fi, and yoga facilities. Located in the city&rsquo;s heart, it&rsquo;s close to heritage sites and business districts, ensuring a memorable stay with its warm staff and exceptional service.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'70'),(89,'soaltee-westend-premier','Soaltee Westend Premier','G8dCR-main.jpeg','',1,64,'2024-04-30 11:16:23',1,'<div>\r\n	Soaltee Westend Premier in Nepalgunj stands as a beacon of sustainable luxury, being the first hotel in Nepal to earn LEED certification. This landmark hotel is renowned for attracting a global clientele and distinguished guests. Committed to eco-friendly practices, Soaltee Westend Premier offers an opulent experience that harmonizes with the environment, setting a standard for responsible hospitality at the western frontier of Nepal.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',5,'70'),(92,'shree-antu-community-homestay','Shree Antu Community Homestay','4ulGH-main.jpeg','',1,67,'2024-05-01 11:30:47',1,'<div>\r\n	Shree Antu Community Homestay in Ilam offers a tranquil escape among tea plantations with cultural immersion into Limbu, Tamang, Rai, Lepcha, and Magar communities. Wooden homes with orchid gardens provide simple comforts, local cuisine, and the warmth of Ilam tea. Activities include tea field tours, nature hikes, and horse treks with optimal visits from October to March, avoiding monsoon season for clear views and pleasant weather.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'51'),(93,'jaskelo-community-homestay','Jaskelo Community Homestay','hxZOV-main.jpeg','',1,68,'2024-05-01 11:43:31',1,'<div>\r\n	Jaskelo Community Homestay in Salakpur, Nepal, offers a serene retreat with cozy, private rooms amidst green landscapes and farms. Engage in local life with activities like animal husbandry, beekeeping, and horse riding. Explore the Mechi River, hike to Kanyam, and visit the Dharahara memorial. Best visited from September to November and March to May, Salakpur&rsquo;s cool climate is a respite from the heat, despite the recent decline in orange farming.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'51'),(94,'holesung-resort','Holesung Resort','hDepO-main.jpeg','',1,69,'2024-05-01 12:01:15',1,'<div>\r\n	Holesung Resort, a sacred gem nestled in Nepal&rsquo;s eastern highlands. This ancient site, revered by Hindus, Buddhists, and Kirats alike, is famed for its three enigmatic caves, said to represent the eyes of Lord Shiva. Here, spirituality and natural wonder converge, with the Haleswar, Basaha, and Bhairav caves offering a glimpse into divine presence. Easily accessible from Kathmandu, Halesi stands as a beacon of unity and faith, drawing pilgrims and travelers from across the globe to its serene embrace.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'50'),(95,'gorakha-hotel','Gorakha Hotel','z1yJp-main.jpeg','',1,70,'2024-05-01 12:18:45',1,'<div>\r\n	Gorakha Hotel, located in the heart of Eastern Nepal, offers a panoramic city view and modern comforts. Starting as a small department store in 1999, Gorakha has grown into a regional economic powerhouse, employing over 1400 people. The brand now boasts a luxury hotel with 42 rooms and a rooftop lounge, alongside five department store branches, a bakery, and a Miniso dealership.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'49'),(96,'siddhartha-hotel-grand-city','Siddhartha Hotel Grand City ','BpPSE-main.jpeg','',1,71,'2024-05-01 12:31:03',1,'<div>\r\n	Siddhartha Business Group of Hospitality (SBGH), a 25-year stalwart, has evolved from a quaint cafe into a multifaceted hospitality titan. Embracing the ethos of &ldquo;Atithi Devo Bhava,&rdquo; SBGH crafts enchanting spaces for dining, staying, and celebrating, all while championing taste, hygiene, and joy. As a luminary in Nepal&rsquo;s hospitality landscape, SBGH&rsquo;s 17 entities span from intimate cafes to grand hotels, driving economic growth and setting industry pinnacles. At its core, Siddhartha Hospitality is the epitome of Nepalese hospitality, offering a spectrum of services that promise both novelty and adventure for every guest.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',1,'48'),(97,'hotel-tibet-international','Hotel Tibet International','aHd4y-main.jpeg','',1,72,'2024-05-01 13:25:50',1,'<div>\r\n	Hotel Tibet International, a boutique haven in Kathmandu, where personalized service meets Tibetan elegance. Revel in cultural richness near UNESCO World Heritage sites, savor Tibetan and Chinese delicacies at Norbulingka Terrace, and find serenity at Shambala Tea Garden and Spa. With sophisticated business facilities and an exclusive Tibetan carpet collection, your stay is set to be an unforgettable blend of luxury and tradition.</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'55'),(98,'hotel-akama','Hotel Akama','e3fxE-main.jpeg','',1,73,'2024-05-01 17:37:50',1,'<div>\r\n	<div>\r\n		Akama Hotel, a 5 Star Deluxe haven, is where modern luxury and Newari-Himalayan culture blend to redefine comfort. We&rsquo;re dedicated to small gestures that leave a lasting impression, embodying the Sanima Group&rsquo;s vision of Nepal as a global destination. Experience the extraordinary at Akama Hotel&mdash;every detail is designed to make your stay magical.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',3,'55'),(99,'hotel-sarathi','Hotel Sarathi','feX4G-main.jpeg','',1,74,'2024-05-03 12:22:21',1,'<div>\r\n	Hotel Sarathi beckons as a luxurious haven, located just 30km from Kathmandu, amidst nature&rsquo;s serene oasis. Cherished by vacationers and event planners alike, it stands as a beacon of joy and unparalleled hospitality. Here, you can bask in the tranquil mountain vistas while indulging in the modern luxuries that cater to your every comfort. Hotel Sarathi is a harmonious blend of relaxation and sophistication, offering a sanctuary where happiness resides in every corner.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n',3,'60'),(100,'hotel-samana','Hotel Samana','5MQ9f-main.jpeg','',1,75,'2024-05-03 13:09:21',1,'',3,'58'),(101,'jungle-central-plaza','Jungle Central Plaza','4j5vv-img_3211-hdr.jpg','',1,76,'2024-05-07 15:46:42',1,'',5,'69'),(102,'jay-suites','Jay Suites','C8185-img_6907.jpg','',1,77,'2024-05-07 17:37:41',1,'',3,'55'),(103,'indreni-suites','Indreni Suites','e6wdp-indreni-umbrella-garden59881.jpg','',1,78,'2024-05-10 10:58:43',1,'',3,'55'),(104,'hotel-crown-imperial','Hotel Crown Imperial','0e89w-img_4085-hdr.jpg','',1,79,'2024-05-10 11:17:38',1,'',3,'55'),(105,'hyatt-palace','Hyatt Palace','aKpQV-1.jpg','',1,80,'2024-08-02 11:13:36',1,'',3,'55'),(106,'hotel-lo-mustang','Hotel Lo Mustang','DWwOS-4.jpg','',1,81,'2024-08-02 11:38:39',1,'',3,'55'),(107,'kathmandu-marriott-hotel','Kathmandu Marriott Hotel','iSeSz-10.jpg','',1,82,'2024-08-02 11:58:12',1,'',3,'55'),(108,'mountain-glory-forest-resort','Mountain Glory Forest Resort','H4EQq-13.jpg','',1,83,'2024-08-02 12:04:18',1,'',4,'62'),(109,'hotel-pawan-palace','Hotel Pawan Palace','LCpzO-1.jpg','',1,84,'2024-08-02 13:02:53',1,'',5,'78'),(110,'hotel-roadhouse','Hotel Roadhouse','LWlg8-3.jpg','',1,85,'2024-08-02 13:11:36',1,'',3,'55'),(111,'hotel-shambala','Hotel Shambala','pcS60-7.jpg','',1,86,'2024-08-02 13:24:39',1,'',3,'55'),(112,'the-culture-resort','The Culture Resort','1R3if-new-project.jpg','',1,87,'2024-08-26 15:23:52',1,'<p style=\"text-align: justify;\">\r\n	Ringed by verdant green hills on the side of Fewa lake, The Culture Resort is an amazing place infused with traditional element and blended with modern comfort. You can feel the ethnic flavor around the resort. Simply look outside your room&rsquo;s floor-to-ceiling windows, and you&rsquo;ll see what we mean. Our contemporary amenities bring the most comfortable experience at your disposal. We invite you to indulge at our garden space, savor the best of local and continental cuisines before joining us for a drink at open bar where craft-cocktail scene is at its finest. Enjoy the traditional and natural blend of comfort and luxury from our resort.</p>\r\n',4,'62');
/*!40000 ALTER TABLE `tbl_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gallery_images`
--

DROP TABLE IF EXISTS `tbl_gallery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_gallery_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `galleryid` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `homepage` int NOT NULL,
  `detail` varchar(200) NOT NULL,
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=814 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gallery_images`
--

LOCK TABLES `tbl_gallery_images` WRITE;
/*!40000 ALTER TABLE `tbl_gallery_images` DISABLE KEYS */;
INSERT INTO `tbl_gallery_images` VALUES (410,25,'Jagatpur Lodge','j6ILH-dsc09314-hdr.jpg',1,0,'',4,'2024-04-26 14:53:31'),(411,25,'Jagatpur Lodge','Xo6ym-dsc09232-hdr.jpg',1,0,'',5,'2024-04-26 14:53:31'),(424,23,'Hotel Kutumba','IA3ej-img_1010.jpg',1,0,'',5,'2024-04-26 14:58:50'),(427,22,'Hotel Himalaya','FvPbu-img_9097-hdr(1).jpg',1,0,'',1,'2024-04-26 15:03:09'),(698,93,'Homestay','svOge-1.jpeg',1,0,'',1,'2024-05-01 11:45:06'),(697,92,'View','9OvCG-5.jpeg',1,0,'',6,'2024-05-01 11:31:30'),(431,20,'Hotel Crystal Pashupati','TW2al-img_0325.jpg',1,0,'',2,'2024-04-26 15:05:12'),(428,22,'Hotel Himalaya','GrsM2-img_9025.jpg',1,0,'',2,'2024-04-26 15:03:09'),(413,24,'Hotel Pabera','M5IEr-dsc00432.jpg',1,0,'',1,'2024-04-26 14:56:27'),(414,24,'Hotel Pabera','uTEBs-img_6369.jpg',1,0,'',2,'2024-04-26 14:56:27'),(415,24,'Hotel Pabera','6lPWv-img_6294.jpg',1,0,'',3,'2024-04-26 14:56:27'),(416,24,'Hotel Pabera','X8i2r-img_9115.jpg',1,0,'',4,'2024-04-26 14:56:27'),(417,24,'Hotel Pabera','5o5se-img_6257.jpg',1,0,'',5,'2024-04-26 14:56:27'),(420,23,'Hotel Kutumba','qzZdG-3f3a1214.jpg',1,0,'',1,'2024-04-26 14:58:50'),(421,23,'Hotel Kutumba','DjMof-img_0577-hdr.jpg',1,0,'',2,'2024-04-26 14:58:50'),(422,23,'Hotel Kutumba','Jjnbs-3f3a1328.jpg',1,0,'',3,'2024-04-26 14:58:50'),(423,23,'Hotel Kutumba','HfhOG-img_0381.jpg',1,0,'',4,'2024-04-26 14:58:50'),(692,92,'View','JREzJ-1.jpeg',1,0,'',1,'2024-05-01 11:31:30'),(693,92,'Room','IX2q9-2.jpeg',1,0,'',2,'2024-05-01 11:31:30'),(694,92,'Room','WkWBE-3.jpeg',1,0,'',3,'2024-05-01 11:31:30'),(440,17,'Dream International Hotel','Itr1R-img_7871-hdr-edit-edit.jpg',1,0,'',2,'2024-04-26 15:10:53'),(441,17,'Dream International Hotel','5kUU1-img_8188.jpg',1,0,'',3,'2024-04-26 15:10:53'),(442,17,'Dream International Hotel','aoc99-img_7939.jpg',1,0,'',4,'2024-04-26 15:10:53'),(443,17,'Dream International Hotel','VCFfq-img_8151-hdr.jpg',1,0,'',5,'2024-04-26 15:10:53'),(445,15,'De Crown Inn','tB56J-lon07958-hdr.jpg',1,0,'',1,'2024-04-26 15:12:53'),(446,15,'De Crown Inn','lgKyv-lon07853-2.jpg',1,0,'',2,'2024-04-26 15:12:53'),(447,15,'De Crown Inn','Cypvs-lon07922-hdr.jpg',1,0,'',3,'2024-04-26 15:12:53'),(448,15,'De Crown Inn','mLf0G-dji_0994.jpg',1,0,'',4,'2024-04-26 15:12:53'),(449,15,'De Crown Inn','QQU4M-lon07704-hdr-recovered.jpg',1,0,'',5,'2024-04-26 15:12:53'),(409,25,'Jagatpur Lodge','YTDP2-dsc09288.jpg',1,0,'',3,'2024-04-26 14:53:31'),(404,29,'Kailash Boutique Hotel','bLHmi-3f3a2090-hdr.jpg',1,0,'',2,'2024-04-26 14:49:05'),(403,29,'Kailash Boutique Hotel','HmP0X-3f3a2121.jpg',1,0,'',1,'2024-04-26 14:49:05'),(275,30,'Room','MTNYi-manigram4.jpeg',1,0,'',1,'2024-04-12 18:55:47'),(276,30,'Thakali Set','rjp9c-manigram6.jpeg',1,0,'',2,'2024-04-12 18:55:47'),(277,30,'Meeting Hall','CnkBV-manigram5.jpeg',1,0,'',3,'2024-04-12 18:55:47'),(278,30,'Room','N3IRp-manigram3.jpeg',1,0,'',4,'2024-04-12 18:55:47'),(279,30,'Main Building','Knfcv-manigram1.jpeg',1,0,'',5,'2024-04-12 18:55:47'),(280,30,'Main Building','CN7Ug-manigram2.jpeg',1,0,'',6,'2024-04-12 18:55:47'),(696,92,'View','wfie9-6.jpeg',1,0,'',5,'2024-05-01 11:31:30'),(695,92,'Room','vcK99-4.jpeg',1,0,'',4,'2024-05-01 11:31:30'),(439,17,'Dream International Hotel','l0W3w-img_7997-2.jpg',1,0,'',1,'2024-04-26 15:10:53'),(450,15,'De Crown Inn','DRzun-lon08049.jpg',1,0,'',6,'2024-04-26 15:12:53'),(291,35,'Aagantuk Resort','v3x1w-pixa4082.jpg',1,0,'',4,'2024-04-26 12:21:38'),(290,35,'Aagantuk Resort','r4oru-pixa3922-hdr.jpg',1,0,'',3,'2024-04-26 12:21:38'),(289,35,'Aagantuk Resort','WyOc9-pixa3872-hdr.jpg',1,0,'',2,'2024-04-26 12:21:38'),(288,35,'Aagantuk Resort','gAiiz-pixa4191.jpg',1,0,'',1,'2024-04-26 12:21:38'),(430,20,'Hotel Crystal Pashupati','Ylgol-img_0212.jpg',1,0,'',1,'2024-04-26 15:05:12'),(408,25,'Jagatpur Lodge','epqsI-img_5239.jpg',1,0,'',2,'2024-04-26 14:53:31'),(407,25,'Jagatpur Lodge','CWbkq-dsc00088-hdr.jpg',1,0,'',1,'2024-04-26 14:53:31'),(292,35,'Aagantuk Resort','5s7hM-pixa4089-hdr.jpg',1,0,'',5,'2024-04-26 12:21:38'),(293,35,'Aagantuk Resort','VNleB-dji_0315.jpg',1,0,'',6,'2024-04-26 12:21:38'),(294,34,'Airport Himalaya Boutique Hotel','MJJWL-dsc08027-hdr.jpg',1,0,'',1,'2024-04-26 12:29:50'),(295,34,'Airport Himalaya Boutique Hotel','WIC63-img_5651-edit.jpg',1,0,'',2,'2024-04-26 12:29:50'),(296,34,'Airport Himalaya Boutique Hotel','5pMu4-dsc07994-hdr.jpg',1,0,'',3,'2024-04-26 12:29:50'),(297,34,'Airport Himalaya Boutique Hotel','DxtWW-3man3811-hdr-edit-edit.jpg',1,0,'',4,'2024-04-26 12:29:50'),(298,34,'Airport Himalaya Boutique Hotel','OKtH7-dsc07943-hdr.jpg',1,0,'',5,'2024-04-26 12:29:50'),(299,34,'Airport Himalaya Boutique Hotel','gIQ1s-dsc07923-hdr.jpg',1,0,'',6,'2024-04-26 12:29:50'),(300,38,'Apex Business Hotel','Pp9O2-img_8777.jpg',1,0,'',1,'2024-04-26 12:32:04'),(301,38,'Apex Business Hotel','bh0io-img_8814-hdr-2.jpg',1,0,'',2,'2024-04-26 12:32:04'),(302,38,'Apex Business Hotel','yVPb6-img_8897-hdr.jpg',1,0,'',3,'2024-04-26 12:32:04'),(303,38,'Apex Business Hotel','apXtN-img_8805-hdr.jpg',1,0,'',4,'2024-04-26 12:32:04'),(304,38,'Apex Business Hotel','0YrmU-dsc03860-edit.jpg',1,0,'',5,'2024-04-26 12:32:04'),(305,38,'Apex Business Hotel','PAew5-img_9663-hdr.jpg',1,0,'',6,'2024-04-26 12:32:04'),(306,38,'Apex Business Hotel','p0Yua-img_9989-2.jpg',1,0,'',7,'2024-04-26 12:32:04'),(307,36,'Atithi Resort & Spa','UKqft-img_1748.jpg',1,0,'',1,'2024-04-26 12:44:28'),(308,36,'Atithi Resort & Spa','HaYgs-img_4240.jpg',1,0,'',2,'2024-04-26 12:44:28'),(309,36,'Atithi Resort & Spa','7MUV6-img_3396.jpg',1,0,'',3,'2024-04-26 12:44:28'),(310,36,'Atithi Resort & Spa','FAdRP-img_3403.jpg',1,0,'',4,'2024-04-26 12:44:28'),(311,36,'Atithi Resort & Spa','2GY66-img_4171.jpg',1,0,'',5,'2024-04-26 12:44:28'),(312,36,'Atithi Resort & Spa','8BEaq-dsc03290.jpg',1,0,'',6,'2024-04-26 12:44:28'),(313,36,'Atithi Resort & Spa','1kZsD-img_1731.jpg',1,0,'',7,'2024-04-26 12:44:28'),(314,43,'Badreni Jungle Resort','rRiYD-20230903-img_7337-hdr.jpg',1,0,'',1,'2024-04-26 12:51:31'),(315,43,'Badreni Jungle Resort','SkIGW-img_6932-hdr.jpg',1,0,'',2,'2024-04-26 12:51:31'),(316,43,'Badreni Jungle Resort','z5G4y-20230903-img_7366-hdr.jpg',1,0,'',3,'2024-04-26 12:51:31'),(317,43,'Badreni Jungle Resort','I8PPK-20230903-img_7362-hdr.jpg',1,0,'',4,'2024-04-26 12:51:31'),(321,43,'Badreni Jungle Resort','ywNfv-img_6913-hdr.jpg',1,0,'',7,'2024-04-26 12:58:13'),(319,43,'Badreni Jungle Resort','KTgyt-img_6938-hdr.jpg',1,0,'',5,'2024-04-26 12:51:31'),(320,43,'Badreni Jungle Resort','Q9v8f-img_6979.jpg',1,0,'',6,'2024-04-26 12:51:31'),(322,44,'Basera Boutique Hotel','jLfIs-dsc02056.jpg',1,0,'',1,'2024-04-26 13:00:33'),(323,44,'Basera Boutique Hotel','RW8Ew-img_4772.jpg',1,0,'',2,'2024-04-26 13:00:33'),(324,44,'Basera Boutique Hotel','6s88z-img_1542_1.jpg',1,0,'',3,'2024-04-26 13:00:33'),(325,44,'Basera Boutique Hotel','LMdiN-img_1312-hdr.jpg',1,0,'',4,'2024-04-26 13:00:33'),(326,44,'Basera Boutique Hotel','HKQLx-img_1271-hdr.jpg',1,0,'',5,'2024-04-26 13:00:33'),(327,44,'Basera Boutique Hotel','Jf30O-img_7257.jpg',1,0,'',6,'2024-04-26 13:00:33'),(328,44,'Basera Boutique Hotel','V6MRN-img_7301-hdr.jpg',1,0,'',7,'2024-04-26 13:00:33'),(329,42,'Bhairahawa Garden Resort','HWZvj-img_0681.jpg',1,0,'',1,'2024-04-26 13:02:52'),(330,42,'Bhairahawa Garden Resort','ktOLT-img_0097.jpg',1,0,'',2,'2024-04-26 13:02:52'),(331,42,'Bhairahawa Garden Resort','gD3aq-img_0383.jpg',1,0,'',3,'2024-04-26 13:02:52'),(332,42,'Bhairahawa Garden Resort','WOxPP-img_1291.jpg',1,0,'',4,'2024-04-26 13:02:52'),(333,42,'Bhairahawa Garden Resort','oRsD3-img_0878.jpg',1,0,'',5,'2024-04-26 13:02:52'),(334,42,'Bhairahawa Garden Resort','Ew5oW-img_0865.jpg',1,0,'',6,'2024-04-26 13:02:52'),(335,42,'Bhairahawa Garden Resort','CH2WD-img_1336.jpg',1,0,'',7,'2024-04-26 13:02:52'),(336,39,'Bhotekhosi Heli Resort','rxn6C-img_2928.jpg',1,0,'',1,'2024-04-26 13:05:07'),(337,39,'Bhotekhosi Heli Resort','N0ahB-img_2904.jpg',1,0,'',2,'2024-04-26 13:05:07'),(338,39,'Bhotekhosi Heli Resort','ay0yS-img_3082.jpg',1,0,'',3,'2024-04-26 13:05:07'),(339,39,'Bhotekhosi Heli Resort','XQm9Y-img_2988.jpg',1,0,'',4,'2024-04-26 13:05:07'),(340,54,'Vivanta','hyw3A-img_4093.jpg',1,0,'',1,'2024-04-26 13:08:11'),(341,54,'Vivanta','aKkEV-img_2018.jpg',1,0,'',2,'2024-04-26 13:08:11'),(342,54,'Vivanta','46ALq-img_3951.jpg',1,0,'',3,'2024-04-26 13:08:11'),(343,52,'Meraki Wellness Retreat','E881Y-_g7a8917.jpg',1,0,'',1,'2024-04-26 13:11:04'),(344,52,'Meraki Wellness Retreat','7rJWy-img_3554-hdr.jpg',1,0,'',2,'2024-04-26 13:11:04'),(345,52,'Meraki Wellness Retreat','Ttyy6-img_9339.jpg',1,0,'',3,'2024-04-26 13:11:04'),(357,51,'Tigerland Safari Resort','Gp8SW-img_1378-hdr.jpg',1,0,'',6,'2024-04-26 13:17:15'),(356,51,'Tigerland Safari Resort','OllXo-img_1360-hdr.jpg',1,0,'',5,'2024-04-26 13:17:15'),(355,51,'Tigerland Safari Resort','quU4C-img_1369-hdr.jpg',1,0,'',4,'2024-04-26 13:17:15'),(354,51,'Tigerland Safari Resort','EtdPU-img_1497.jpg',1,0,'',3,'2024-04-26 13:17:15'),(353,51,'Tigerland Safari Resort','fezCf-img_1429-hdr.jpg',1,0,'',2,'2024-04-26 13:17:15'),(352,51,'Tigerland Safari Resort','neyMW-img_1388-hdr.jpg',1,0,'',1,'2024-04-26 13:17:15'),(358,50,'Hotel Mystic Mountain','nJWL7-_mg_8128.jpg',1,0,'',1,'2024-04-26 13:19:49'),(359,50,'Hotel Mystic Mountain','rKXD6-img_7542-hdr.jpg',1,0,'',2,'2024-04-26 13:19:49'),(360,50,'Hotel Mystic Mountain','mO2Mn-dji_0096.jpg',1,0,'',3,'2024-04-26 13:19:49'),(361,50,'Hotel Mystic Mountain','xG2JC-img_7510-hdr.jpg',1,0,'',4,'2024-04-26 13:19:49'),(362,50,'Hotel Mystic Mountain','31U1k-img_7257-(1).jpg',1,0,'',5,'2024-04-26 13:19:49'),(363,50,'Hotel Mystic Mountain','yT0UY-img_7143.jpg',1,0,'',6,'2024-04-26 13:19:49'),(364,50,'Hotel Mystic Mountain','jy0Ff-img_7298.jpg',1,0,'',7,'2024-04-26 13:19:49'),(365,50,'Hotel Mystic Mountain','J3tNO-_mg_8111.jpg',1,0,'',8,'2024-04-26 13:19:49'),(366,49,'Paithani Resort','fB2zf-img_3451-hdr.jpg',1,0,'',1,'2024-04-26 13:21:53'),(367,49,'Paithani Resort','SUKil-img_3324-hdr.jpg',1,0,'',2,'2024-04-26 13:21:53'),(368,49,'Paithani Resort','6N0BE-dsc03602-hdr.jpg',1,0,'',3,'2024-04-26 13:21:53'),(369,48,'Siddhartha Outlets Boudha','IWMNU-img_8935.jpg',1,0,'',1,'2024-04-26 13:25:06'),(370,48,'Siddhartha Outlets Boudha','eQzpW-img_2331-hdr.jpg',1,0,'',3,'2024-04-26 13:25:06'),(371,48,'Siddhartha Outlets Boudha','zYYNi-20210922_181022.jpg',1,0,'',2,'2024-04-26 13:25:06'),(372,48,'Siddhartha Outlets Boudha','0DEtt-img_1985-hdr.jpg',1,0,'',4,'2024-04-26 13:25:06'),(373,48,'Siddhartha Outlets Boudha','X0C9e-img_1981-hdr.jpg',1,0,'',5,'2024-04-26 13:25:06'),(374,48,'Siddhartha Outlets Boudha','WQzfn-img_8960.jpg',1,0,'',6,'2024-04-26 13:25:06'),(375,47,'Soaltee Crowne Plaza','Lr4fP-img_1630.jpg',1,0,'',1,'2024-04-26 13:27:17'),(376,47,'Soaltee Crowne Plaza','HAH69-img_1746.jpg',1,0,'',2,'2024-04-26 13:27:17'),(377,47,'Soaltee Crowne Plaza','5xd8K-img_5211.jpg',1,0,'',3,'2024-04-26 13:27:17'),(378,47,'Soaltee Crowne Plaza','jj0NP-img_5233.jpg',1,0,'',4,'2024-04-26 13:27:17'),(379,56,'Dreamland Gold Resort','0j0GB-img_8331.jpg',1,0,'',1,'2024-04-26 14:18:23'),(380,56,'Dreamland Gold Resort','8kjLa-img_8552.jpg',1,0,'',2,'2024-04-26 14:18:23'),(381,56,'Dreamland Gold Resort','i1Pxo-img_8575-hdr.jpg',1,0,'',3,'2024-04-26 14:18:23'),(382,56,'Dreamland Gold Resort','P4CAk-img_8582.jpg',1,0,'',4,'2024-04-26 14:18:23'),(383,56,'Dreamland Gold Resort','gsteX-img_8467-hdr.jpg',1,0,'',5,'2024-04-26 14:18:23'),(384,56,'Dreamland Gold Resort','Ybn0i-dji_0822.jpg',1,0,'',6,'2024-04-26 14:18:23'),(385,55,'Ramada Encore','YRGge-ramada-encore-kathmandu-1505278.jpg',1,0,'',1,'2024-04-26 14:37:29'),(386,55,'Ramada Encore','icnnD-ramada-encore-kathmandu--1505350.jpg',1,0,'',2,'2024-04-26 14:37:29'),(387,55,'Ramada Encore','or3IU-ramada-encore-kathmandu-t505337.jpg',1,0,'',3,'2024-04-26 14:37:29'),(388,55,'Ramada Encore','EukJA-ramada-encore-kathmandu1505315.jpg',1,0,'',4,'2024-04-26 14:37:29'),(389,55,'Ramada Encore','xlxrl-_dsc5229.jpg',1,0,'',5,'2024-04-26 14:37:29'),(390,55,'Ramada Encore','KTv9Z-img_9556.jpg',1,0,'',6,'2024-04-26 14:37:29'),(391,46,'Mourya Hotel','zJU1M-img_4448.jpg',1,0,'',1,'2024-04-26 14:42:37'),(392,46,'Mourya Hotel','NTzOX-img_4195.jpg',1,0,'',2,'2024-04-26 14:42:37'),(393,46,'Mourya Hotel','DW5v8-img_4264.jpg',1,0,'',3,'2024-04-26 14:42:37'),(394,46,'Mourya Hotel','Puhy3-img_4249.jpg',1,0,'',4,'2024-04-26 14:42:37'),(395,46,'Mourya Hotel','WVpDB-img_4498.jpg',1,0,'',5,'2024-04-26 14:42:37'),(396,46,'Mourya Hotel','jFQqI-dji_0769.jpg',1,0,'',6,'2024-04-26 14:42:37'),(397,45,'Ghyampe Danda Resort','FfMSA-img_9964-hdr.jpg',1,0,'',1,'2024-04-26 14:44:29'),(398,45,'Ghyampe Danda Resort','DDWpd-img_0063-hdr.jpg',1,0,'',2,'2024-04-26 14:44:29'),(399,45,'Ghyampe Danda Resort','aXfQn-img_0120-hdr.jpg',1,0,'',3,'2024-04-26 14:44:29'),(400,45,'Ghyampe Danda Resort','E1SWY-img_0099-hdr.jpg',1,0,'',4,'2024-04-26 14:44:29'),(401,45,'Ghyampe Danda Resort','vR3Cg-img_9899-hdr.jpg',1,0,'',5,'2024-04-26 14:44:29'),(402,45,'Ghyampe Danda Resort','Nc8Ow-dsc01349.jpg',1,0,'',6,'2024-04-26 14:44:29'),(405,29,'Kailash Boutique Hotel','Q0IU2-3f3a2027.jpg',1,0,'',3,'2024-04-26 14:49:05'),(406,29,'Kailash Boutique Hotel','nj0sd-3f3a2127-edit-edit.jpg',1,0,'',4,'2024-04-26 14:49:05'),(412,25,'Jagatpur Lodge','28TsH-dsc09395.jpg',1,0,'',6,'2024-04-26 14:53:31'),(418,24,'Hotel Pabera','DvrAm-img_0054-hdr.jpg',1,0,'',6,'2024-04-26 14:56:27'),(419,24,'Hotel Pabera','2X7lk-img_9860.jpg',1,0,'',7,'2024-04-26 14:56:27'),(425,23,'Hotel Kutumba','NiWXg-img_0700-hdr.jpg',1,0,'',6,'2024-04-26 14:58:50'),(426,23,'Hotel Kutumba','P73s5-dji_0013.jpg',1,0,'',7,'2024-04-26 14:58:50'),(429,22,'Hotel Himalaya','pKRHh-img_0610-hdr.jpg',1,0,'',3,'2024-04-26 15:03:09'),(432,20,'Hotel Crystal Pashupati','3GFSB-img_0194.jpg',1,0,'',3,'2024-04-26 15:05:12'),(691,91,'Room','5MTJj-6.jpeg',1,0,'',6,'2024-05-01 11:16:45'),(444,17,'Dream International Hotel','duPqs-img_8320-hdr.jpg',1,0,'',6,'2024-04-26 15:10:53'),(451,37,'Avacado & Orchid Resort','lNn2O-dsc08949.jpg',1,0,'',1,'2024-04-26 15:15:51'),(452,37,'Avacado & Orchid Resort','yfMIt-dsc08815-hdr.jpg',1,0,'',2,'2024-04-26 15:15:51'),(453,37,'Avacado & Orchid Resort','uDd3k-dsc08827-hdr.jpg',1,0,'',3,'2024-04-26 15:15:51'),(454,37,'Avacado & Orchid Resort','HUCZ5-dsc08883-hdr.jpg',1,0,'',4,'2024-04-26 15:15:51'),(455,37,'Avacado & Orchid Resort','5f6ZA-dsc08936-hdr.jpg',1,0,'',5,'2024-04-26 15:15:51'),(456,40,'Lumbini Palace Resort','1CX7c-img_4337.jpg',1,0,'',1,'2024-04-26 15:17:57'),(457,40,'Lumbini Palace Resort','o0REC-img_4230---copy.jpg',1,0,'',2,'2024-04-26 15:17:57'),(458,40,'Lumbini Palace Resort','Ix2se-img_4243-hdr.jpg',1,0,'',3,'2024-04-26 15:17:57'),(459,40,'Lumbini Palace Resort','SZJsQ-img_4303-hdr.jpg',1,0,'',4,'2024-04-26 15:17:57'),(460,40,'Lumbini Palace Resort','4CmXi-img_5586.jpg',1,0,'',5,'2024-04-26 15:17:57'),(461,40,'Lumbini Palace Resort','wgPMO-dji_0182.jpg',1,0,'',6,'2024-04-26 15:17:57'),(462,41,'CMT','aIWFO-dsc04174.jpg',1,0,'',1,'2024-04-26 15:19:54'),(463,41,'CMT','XfSg7-img_2338.jpg',1,0,'',2,'2024-04-26 15:19:54'),(464,41,'CMT','E3IWP-dsc04508-edit.jpg',1,0,'',3,'2024-04-26 15:19:54'),(465,41,'CMT','K09oj-dsc04074-hdr.jpg',1,0,'',4,'2024-04-26 15:19:54'),(466,41,'CMT','e0vy7-dsc04383.jpg',1,0,'',5,'2024-04-26 15:19:54'),(467,41,'CMT','dEGPt-dsc04222-hdr.jpg',1,0,'',6,'2024-04-26 15:19:54'),(468,53,'Hotel Verandah','D0T8H-220170113.jpg',1,0,'',1,'2024-04-26 15:41:58'),(469,53,'Hotel Verandah','eibbK-177208529.jpg',1,0,'',2,'2024-04-26 15:41:58'),(470,53,'Hotel Verandah','X7b0n-177211823.jpg',1,0,'',3,'2024-04-26 15:41:58'),(471,53,'Hotel Verandah','wrZr7-177219895.jpg',1,0,'',4,'2024-04-26 15:41:58'),(472,53,'Hotel Verandah','bLGGZ-170046443.jpg',1,0,'',5,'2024-04-26 15:41:58'),(473,57,'The SR Hotel','bseyQ-img_8334.jpg',1,0,'',1,'2024-04-26 15:54:12'),(474,57,'The SR Hotel','ZCiMi-img_8574.jpg',1,0,'',2,'2024-04-26 15:54:12'),(475,57,'The SR Hotel','6PG9Z-img_8520-hdr.jpg',1,0,'',3,'2024-04-26 15:54:12'),(476,57,'The SR Hotel','ARVgZ-dji_0103.jpg',1,0,'',4,'2024-04-26 15:54:12'),(477,57,'The SR Hotel','kBvSF-img_8441-hdr.jpg',1,0,'',5,'2024-04-26 15:54:12'),(478,57,'The SR Hotel','9WxFd-img_8615-hdr.jpg',1,0,'',6,'2024-04-26 15:54:12'),(479,58,'Surya Heritage Hotel','ISzMv-dsc02713.jpg',1,0,'',1,'2024-04-26 15:58:13'),(480,58,'Surya Heritage Hotel','2KMfs-dsc03228.jpg',1,0,'',2,'2024-04-26 15:58:13'),(481,58,'Surya Heritage Hotel','YqktX-dsc03044.jpg',1,0,'',3,'2024-04-26 15:58:13'),(482,58,'Surya Heritage Hotel','3Yi8Q-dsc02738.jpg',1,0,'',4,'2024-04-26 15:58:13'),(483,58,'Surya Heritage Hotel','xWGbl-dsc03237.jpg',1,0,'',5,'2024-04-26 15:58:13'),(484,58,'Surya Heritage Hotel','qmyag-dsc02764.jpg',1,0,'',6,'2024-04-26 15:58:13'),(485,58,'Surya Heritage Hotel','7cD2p-dsc03295.jpg',1,0,'',7,'2024-04-26 15:58:13'),(486,58,'Surya Heritage Hotel','zE1lu-dsc02797.jpg',1,0,'',8,'2024-04-26 15:58:13'),(487,58,'Surya Heritage Hotel','S8goS-dsc03242.jpg',1,0,'',9,'2024-04-26 15:58:13'),(488,59,'Sky Garden Resort','klgea-img_6595.jpg',1,0,'',1,'2024-04-26 16:00:05'),(489,59,'Sky Garden Resort','e9pYk-img_6644.jpg',1,0,'',2,'2024-04-26 16:00:05'),(490,59,'Sky Garden Resort','fpY6h-img_6738-hdr.jpg',1,0,'',3,'2024-04-26 16:00:05'),(491,59,'Sky Garden Resort','W2mda-img_6512-hdr.jpg',1,0,'',4,'2024-04-26 16:00:05'),(492,59,'Sky Garden Resort','9S9gd-img_6329-hdr.jpg',1,0,'',5,'2024-04-26 16:00:05'),(493,59,'Sky Garden Resort','HpfkG-img_6704-hdr-edit.jpg',1,0,'',6,'2024-04-26 16:00:05'),(494,60,'Siraichuli Hotel','WMWK3-dsc05094.jpg',1,0,'',1,'2024-04-26 16:02:33'),(495,60,'Siraichuli Hotel','imexO-img_6811.jpg',1,0,'',2,'2024-04-26 16:02:33'),(496,60,'Siraichuli Hotel','3U6dG-img_6724-hdr.jpg',1,0,'',3,'2024-04-26 16:02:33'),(497,60,'Siraichuli Hotel','1Y7Gf-img_3954.jpg',1,0,'',4,'2024-04-26 16:02:33'),(498,60,'Siraichuli Hotel','AfN1m-img_6688.jpg',1,0,'',5,'2024-04-26 16:02:33'),(499,60,'Siraichuli Hotel','8vMRe-dsc04917.jpg',1,0,'',6,'2024-04-26 16:02:33'),(500,60,'Siraichuli Hotel','r6UWf-img_9593.jpg',1,0,'',7,'2024-04-26 16:02:33'),(501,62,'Hotel Pokhara Grande','yUIPF-img_4108.jpg',1,0,'',1,'2024-04-26 16:06:07'),(502,62,'Hotel Pokhara Grande','KSCOh-img_9076.jpg',1,0,'',2,'2024-04-26 16:06:07'),(503,62,'Hotel Pokhara Grande','ZVFqH-img_9162.jpg',1,0,'',3,'2024-04-26 16:06:07'),(504,62,'Hotel Pokhara Grande','G9uxf-img_9136.jpg',1,0,'',4,'2024-04-26 16:06:07'),(505,62,'Hotel Pokhara Grande','D6KNC-img_5361.jpg',1,0,'',5,'2024-04-26 16:06:07'),(506,62,'Hotel Pokhara Grande','ypP2P-himalchuli2.jpg',1,0,'',6,'2024-04-26 16:06:07'),(507,62,'Hotel Pokhara Grande','aZC9X-img_4092.jpg',1,0,'',7,'2024-04-26 16:06:07'),(508,62,'Hotel Pokhara Grande','Zzm9a-img_4269.jpg',1,0,'',8,'2024-04-26 16:06:07'),(509,63,'Park Safari Resort','tlYcx-img_7411.jpg',1,0,'',1,'2024-04-26 16:11:03'),(510,63,'Park Safari Resort','OodZO-img_7572.jpg',1,0,'',2,'2024-04-26 16:11:03'),(511,63,'Park Safari Resort','CUF0s-img_7500.jpg',1,0,'',3,'2024-04-26 16:11:03'),(512,63,'Park Safari Resort','KGOBK-img_7519.jpg',1,0,'',4,'2024-04-26 16:11:03'),(513,63,'Park Safari Resort','3UUM0-img_7421-hdr.jpg',1,0,'',5,'2024-04-26 16:11:03'),(514,63,'Park Safari Resort','JZyXn-img_084654.jpg',1,0,'',6,'2024-04-26 16:11:03'),(515,64,'Nansc Hotel','sAdbO-dsc07690.jpg',1,0,'',1,'2024-04-26 16:12:41'),(516,64,'Nansc Hotel','ZXQcF-img_4971-hdr.jpg',1,0,'',2,'2024-04-26 16:12:41'),(517,64,'Nansc Hotel','jVAnj-img_5212-hdr.jpg',1,0,'',3,'2024-04-26 16:12:41'),(518,64,'Nansc Hotel','LpzYV-dsc07734-hdr.jpg',1,0,'',4,'2024-04-26 16:12:41'),(519,65,'Naikap Village Resort','XIaBd-img_1541.jpg',1,0,'',1,'2024-04-26 16:13:57'),(520,65,'Naikap Village Resort','zecDv-img_1578.jpg',1,0,'',2,'2024-04-26 16:13:57'),(521,65,'Naikap Village Resort','7Mpgt-img_1641.jpg',1,0,'',3,'2024-04-26 16:13:57'),(522,65,'Naikap Village Resort','DBe50-img_1392.jpg',1,0,'',4,'2024-04-26 16:13:57'),(523,65,'Naikap Village Resort','zDdQ8-img_1465-hdr-edit.jpg',1,0,'',5,'2024-04-26 16:13:57'),(524,65,'Naikap Village Resort','Szxtn-dji_0684-edit.jpg',1,0,'',6,'2024-04-26 16:13:57'),(525,66,'Mithila Yatri Niwas','fUkaA-svp00362-hdr-edit.jpg',1,0,'',1,'2024-04-26 16:15:34'),(526,66,'Mithila Yatri Niwas','Tnom7-svp00444-hdr-edit-(1).jpg',1,0,'',2,'2024-04-26 16:15:34'),(527,66,'Mithila Yatri Niwas','NVZuD-svp09899-hdr.jpg',1,0,'',3,'2024-04-26 16:15:34'),(528,66,'Mithila Yatri Niwas','Y4tXJ-svp09889-hdr.jpg',1,0,'',4,'2024-04-26 16:15:34'),(529,66,'Mithila Yatri Niwas','ebOyr-svp09879-hdr-edit.jpg',1,0,'',5,'2024-04-26 16:15:34'),(530,66,'Mithila Yatri Niwas','4D6zF-svp09387-hdr.jpg',1,0,'',6,'2024-04-26 16:15:34'),(531,67,'Fishtail Lodge','ouoh5-dsc00039.jpg',1,0,'',1,'2024-04-26 16:16:49'),(532,67,'Fishtail Lodge','wItYD-dsc00088-hdr.jpg',1,0,'',2,'2024-04-26 16:16:49'),(533,67,'Fishtail Lodge','lxkLs-img_8904-hdr.jpg',1,0,'',3,'2024-04-26 16:16:49'),(534,67,'Fishtail Lodge','la27o-img_8899.jpg',1,0,'',4,'2024-04-26 16:16:49'),(535,67,'Fishtail Lodge','a2FQB-img_8986.jpg',1,0,'',5,'2024-04-26 16:16:49'),(536,67,'Fishtail Lodge','dhiUu-img_8970.jpg',1,0,'',6,'2024-04-26 16:16:49'),(537,68,'The Everest Hotel','I4DIx-img_3648-hdr.jpg',1,0,'',1,'2024-04-26 16:18:31'),(538,68,'The Everest Hotel','QqmYM-img_5646-hdr.jpg',1,0,'',2,'2024-04-26 16:18:31'),(539,68,'The Everest Hotel','9glTz-img_3736-hdr.jpg',1,0,'',3,'2024-04-26 16:18:31'),(540,68,'The Everest Hotel','2oBcz-img_5617-hdr.jpg',1,0,'',4,'2024-04-26 16:18:31'),(541,68,'The Everest Hotel','TI93l-img_3572-hdr.jpg',1,0,'',5,'2024-04-26 16:18:31'),(542,69,'Hotel Da Flamingo','SSNLI-dsc08388.jpg',1,0,'',1,'2024-04-26 16:20:13'),(543,69,'Hotel Da Flamingo','Cq9ht-dsc07842-hdr.jpg',1,0,'',2,'2024-04-26 16:20:13'),(544,69,'Hotel Da Flamingo','MEKsK-dsc08146-hdr-edit.jpg',1,0,'',3,'2024-04-26 16:20:13'),(545,69,'Hotel Da Flamingo','D3rWJ-dsc08348.jpg',1,0,'',4,'2024-04-26 16:20:13'),(546,69,'Hotel Da Flamingo','LIzj0-dsc08152-hdr.jpg',1,0,'',5,'2024-04-26 16:20:13'),(547,69,'Hotel Da Flamingo','Ito7W-dsc08196-hdr.jpg',1,0,'',6,'2024-04-26 16:20:13'),(548,70,'Gateway Himalaya Resort','GyJ3O-img_0283-hdr.jpg',1,0,'',1,'2024-04-26 16:22:17'),(549,70,'Gateway Himalaya Resort','lbIQW-img_0216.jpg',1,0,'',2,'2024-04-26 16:22:17'),(550,70,'Gateway Himalaya Resort','ejSOe-img_0363.jpg',1,0,'',3,'2024-04-26 16:22:17'),(551,70,'Gateway Himalaya Resort','mUEt7-img_0424.jpg',1,0,'',4,'2024-04-26 16:22:17'),(552,70,'Gateway Himalaya Resort','GzU9C-img_0177.jpg',1,0,'',5,'2024-04-26 16:22:17'),(553,70,'Gateway Himalaya Resort','Xzcgk-dji_0446.jpg',1,0,'',6,'2024-04-26 16:22:17'),(554,71,'Helambu Mountain Resort','mZgRf-img_9637.jpg',1,0,'',1,'2024-04-26 16:24:14'),(555,71,'Helambu Mountain Resort','vT5En-img_9620.jpg',1,0,'',2,'2024-04-26 16:24:14'),(556,71,'Helambu Mountain Resort','KMFH0-img_9366-hdr.jpg',1,0,'',3,'2024-04-26 16:24:14'),(557,71,'Helambu Mountain Resort','MwbQz-img_9537.jpg',1,0,'',4,'2024-04-26 16:24:14'),(558,71,'Helambu Mountain Resort','twKpI-img_9416.jpg',1,0,'',5,'2024-04-26 16:24:14'),(559,71,'Helambu Mountain Resort','O1VTa-dji_0337.jpg',1,0,'',6,'2024-04-26 16:24:14'),(690,91,'Room','z2XIF-5.jpeg',1,0,'',5,'2024-05-01 11:16:45'),(689,91,'Room','bkLdw-4.jpeg',1,0,'',4,'2024-05-01 11:16:45'),(688,91,'Kitchen','lMqvK-3.jpeg',1,0,'',3,'2024-05-01 11:16:45'),(687,91,'Homestay','SV0mv-2.jpeg',1,0,'',2,'2024-05-01 11:16:45'),(686,91,'Room','Hp7pa-1.jpeg',1,0,'',1,'2024-05-01 11:16:45'),(566,73,'Grand Hotel Kathmandu','kxNUP-img_5670.jpg',1,0,'',1,'2024-04-26 16:27:27'),(567,73,'Grand Hotel Kathmandu','wrSfq-pixa6172-(1).jpg',1,0,'',2,'2024-04-26 16:27:27'),(568,73,'Grand Hotel Kathmandu','Tixhk-pixa6239-(1).jpg',1,0,'',3,'2024-04-26 16:27:27'),(569,73,'Grand Hotel Kathmandu','6EFFE-pixa6260-(1).jpg',1,0,'',4,'2024-04-26 16:27:27'),(570,73,'Grand Hotel Kathmandu','su2Jn-pixa6447.jpg',1,0,'',5,'2024-04-26 16:27:27'),(571,73,'Grand Hotel Kathmandu','abhdV-pixa6224-(1).jpg',1,0,'',6,'2024-04-26 16:27:27'),(572,74,'Grand Norling Hotel and Resort','Z8gVd-pixa7013.jpg',1,0,'',1,'2024-04-26 16:28:49'),(573,74,'Grand Norling Hotel and Resort','LnHI7-pixa7154.jpg',1,0,'',2,'2024-04-26 16:28:49'),(574,74,'Grand Norling Hotel and Resort','5bNUc-pixa6883.jpg',1,0,'',3,'2024-04-26 16:28:49'),(575,74,'Grand Norling Hotel and Resort','hFcKH-pixa7387.jpg',1,0,'',4,'2024-04-26 16:28:49'),(576,74,'Grand Norling Hotel and Resort','uk2h7-pixa7280.jpg',1,0,'',5,'2024-04-26 16:28:49'),(577,74,'Grand Norling Hotel and Resort','QwJqo-pixa6734.jpg',1,0,'',6,'2024-04-26 16:28:49'),(578,75,'D Moksha Mustang Thakali','kslzJ-3man9202.jpg',1,0,'',1,'2024-04-26 16:31:30'),(579,75,'D Moksha Mustang Thakali','9wZkt-3man9032.jpg',1,0,'',2,'2024-04-26 16:31:30'),(580,75,'D Moksha Mustang Thakali','gVpXW-3man8886.jpg',1,0,'',3,'2024-04-26 16:31:30'),(581,75,'D Moksha Mustang Thakali','efKfg-3man9111-hdr.jpg',1,0,'',4,'2024-04-26 16:31:30'),(582,75,'D Moksha Mustang Thakali','FpLll-3man9271.jpg',1,0,'',5,'2024-04-26 16:33:37'),(583,76,'Hotel Da Yatra','SBxfH-img_9235.jpg',1,0,'',1,'2024-04-26 16:34:39'),(584,76,'Hotel Da Yatra','QnsvW-20180829img_0019.jpg',1,0,'',2,'2024-04-26 16:34:39'),(585,76,'Hotel Da Yatra','CD4zI-img_9287.jpg',1,0,'',3,'2024-04-26 16:34:39'),(586,76,'Hotel Da Yatra','cgXwY-img_9329.jpg',1,0,'',4,'2024-04-26 16:34:39'),(587,76,'Hotel Da Yatra','1J0uE-20180829img_3661-hdr.jpg',1,0,'',5,'2024-04-26 16:34:39'),(588,76,'Hotel Da Yatra','U9FsV-img_3930.jpg',1,0,'',6,'2024-04-26 16:34:39'),(589,77,'Hotel Hukum Darbar','YTaZB-dsc01807.jpg',1,0,'',1,'2024-04-26 16:37:15'),(590,77,'Hotel Hukum Darbar','GeXNT-dsc01450-hdr.jpg',1,0,'',2,'2024-04-26 16:37:15'),(591,77,'Hotel Hukum Darbar','haGx4-dsc01590.jpg',1,0,'',3,'2024-04-26 16:37:15'),(592,77,'Hotel Hukum Darbar','96IaA-dsc01357-hdr.jpg',1,0,'',4,'2024-04-26 16:37:15'),(593,77,'Hotel Hukum Darbar','agAwU-dsc01342-hdr.jpg',1,0,'',5,'2024-04-26 16:37:15'),(594,77,'Hotel Hukum Darbar','glAQt-dji_0013.jpg',1,0,'',6,'2024-04-26 16:37:15'),(595,78,'Hotel Kathmandu Inn','1ahPn-yala6249-pano.jpg',1,0,'',1,'2024-04-26 16:38:29'),(596,78,'Hotel Kathmandu Inn','2qf0X-yala6225.jpg',1,0,'',2,'2024-04-26 16:38:29'),(597,78,'Hotel Kathmandu Inn','RK822-yala6135-hdr.jpg',1,0,'',3,'2024-04-26 16:38:29'),(598,78,'Hotel Kathmandu Inn','tY78I-yala6159-hdr.jpg',1,0,'',4,'2024-04-26 16:38:29'),(599,78,'Hotel Kathmandu Inn','D1fJQ-yala6217.jpg',1,0,'',5,'2024-04-26 16:38:29'),(600,78,'Hotel Kathmandu Inn','tp8ld-yala6269-hdr.jpg',1,0,'',6,'2024-04-26 16:38:29'),(601,79,'Hotel Marsyandi','V7yeW-azy_0803-edit.jpg',1,1,'',1,'2024-04-26 16:40:18'),(602,79,'Hotel Marsyandi','izIzO-img_4677.jpg',1,1,'',2,'2024-04-26 16:40:18'),(603,79,'Hotel Marsyandi','LdDEc-img_4559.jpg',1,1,'',3,'2024-04-26 16:40:18'),(604,79,'Hotel Marsyandi','d2LgT-img_5215-hdr.jpg',1,0,'',4,'2024-04-26 16:40:18'),(605,79,'Hotel Marsyandi','SHUpL-img_1602.jpg',1,0,'',5,'2024-04-26 16:40:18'),(606,79,'Hotel Marsyandi','l6Nt8-azy_0831-edit.jpg',1,0,'',6,'2024-04-26 16:40:18'),(607,80,'Hotel Orion','3ihxN-img_7641-hdr-2.jpg',1,0,'',1,'2024-04-26 16:41:25'),(608,80,'Hotel Orion','VFEzV-img_7947.jpg',1,0,'',2,'2024-04-26 16:41:25'),(609,80,'Hotel Orion','wBeSx-img_8080-hdr.jpg',1,0,'',3,'2024-04-26 16:41:25'),(610,80,'Hotel Orion','l6peT-img_7979-hdr.jpg',1,0,'',4,'2024-04-26 16:41:25'),(611,80,'Hotel Orion','qtZAu-img_7957-hdr.jpg',1,0,'',5,'2024-04-26 16:41:25'),(612,80,'Hotel Orion','YrImG-img_7815.jpg',1,0,'',6,'2024-04-26 16:41:25'),(613,81,'Hotel Ichchha','Ehjj8-dsc06371.jpg',1,0,'',1,'2024-04-26 16:43:32'),(614,81,'Hotel Ichchha','LCuhX-dsc06001-hdr.jpg',1,0,'',2,'2024-04-26 16:43:32'),(615,81,'Hotel Ichchha','gXlCj-dsc06176-hdr.jpg',1,0,'',3,'2024-04-26 16:43:32'),(616,81,'Hotel Ichchha','gmYKU-dsc05939.jpg',1,0,'',4,'2024-04-26 16:43:32'),(617,81,'Hotel Ichchha','Q62A4-dsc05944-hdr.jpg',1,0,'',5,'2024-04-26 16:43:32'),(618,81,'Hotel Ichchha','duWiF-dsc06299.jpg',1,0,'',6,'2024-04-26 16:43:32'),(619,81,'Hotel Ichchha','3blvG-dsc06089-hdr.jpg',1,0,'',7,'2024-04-26 16:43:32'),(620,81,'Hotel Ichchha','4z0oC-dsc05625-hdr.jpg',1,0,'',8,'2024-04-26 16:43:32'),(621,81,'Hotel Ichchha','52gQk-dsc06076-hdr.jpg',1,0,'',9,'2024-04-26 16:43:32'),(622,82,'Hotel Utsab Himalaya','D43X0-img_7910.jpg',1,0,'',1,'2024-04-26 16:45:54'),(623,82,'Hotel Utsab Himalaya','6Z6qV-img_7828.jpg',1,0,'',2,'2024-04-26 16:45:54'),(624,82,'Hotel Utsab Himalaya','Xp1TQ-img_7880.jpg',1,0,'',3,'2024-04-26 16:45:54'),(625,82,'Hotel Utsab Himalaya','xwiU9-img_7922.jpg',1,0,'',4,'2024-04-26 16:45:54'),(626,82,'Hotel Utsab Himalaya','Bixxi-img_7867-hdr.jpg',1,0,'',5,'2024-04-26 16:45:54'),(627,82,'Hotel Utsab Himalaya','FnKA7-img_7820.jpg',1,0,'',6,'2024-04-26 16:45:54'),(628,83,'Hotel Queens Park','nLuuL-img_6661.jpg',1,0,'',1,'2024-04-26 16:49:38'),(629,83,'Hotel Queens Park','l04cU-img_6781.jpg',1,0,'',2,'2024-04-26 16:49:38'),(630,83,'Hotel Queens Park','DS5ft-img_6922.jpg',1,0,'',3,'2024-04-26 16:49:38'),(631,83,'Hotel Queens Park','mwpKy-img_2796.jpg',1,0,'',4,'2024-04-26 16:49:38'),(632,83,'Hotel Queens Park','gKic7-img_6673.jpg',1,0,'',5,'2024-04-26 16:49:38'),(633,83,'Hotel Queens Park','VHwrG-img_6860.jpg',1,0,'',6,'2024-04-26 16:49:38'),(634,84,'Jungle Villa Resort','CkQxN-lon06441.jpg',1,0,'',1,'2024-04-26 16:52:55'),(635,84,'Jungle Villa Resort','Yx2JA-lon06474-hdr.jpg',1,0,'',2,'2024-04-26 16:52:55'),(636,84,'Jungle Villa Resort','TnPOU-lon06468-hdr.jpg',1,0,'',3,'2024-04-26 16:52:55'),(637,84,'Jungle Villa Resort','dtPfi-lon06894.jpg',1,0,'',4,'2024-04-26 16:52:55'),(638,84,'Jungle Villa Resort','1jGYB-lon06409-hdr.jpg',1,0,'',5,'2024-04-26 16:52:55'),(639,84,'Jungle Villa Resort','Ro0Nb-lon06284.jpg',1,0,'',6,'2024-04-26 16:52:55'),(640,85,'Lo Mustang Himalayan Resort','KPw6f-img_5256-hdr.jpg',1,0,'',1,'2024-04-26 16:59:06'),(641,85,'Lo Mustang Himalayan Resort','3tYXu-img_5061.jpg',1,0,'',2,'2024-04-26 16:59:06'),(642,85,'Lo Mustang Himalayan Resort','2NuX0-img_5111.jpg',1,0,'',3,'2024-04-26 16:59:06'),(643,85,'Lo Mustang Himalayan Resort','QFqi1-img_5220.jpg',1,0,'',4,'2024-04-26 16:59:06'),(644,85,'Lo Mustang Himalayan Resort','6JR43-img_5046.jpg',1,0,'',5,'2024-04-26 16:59:06'),(645,85,'Lo Mustang Himalayan Resort','LectV-img_5065.jpg',1,0,'',6,'2024-04-26 16:59:06'),(646,85,'Lo Mustang Himalayan Resort','GTqpQ-dji_0327.jpg',1,0,'',7,'2024-04-26 16:59:06'),(647,85,'Lo Mustang Himalayan Resort','cy3Ct-img_5118.jpg',1,0,'',8,'2024-04-26 16:59:06'),(648,61,'Siddhartha Vilasa Banbas','EMyO4-dsc06929-hdr.jpg',1,0,'',1,'2024-04-26 17:33:14'),(649,61,'Siddhartha Vilasa Banbas','XPk2J-dsc07076-hdr.jpg',1,0,'',2,'2024-04-26 17:33:14'),(650,61,'Siddhartha Vilasa Banbas','cyt3i-dsc06797-hdr.jpg',1,0,'',3,'2024-04-26 17:33:14'),(651,61,'Siddhartha Vilasa Banbas','R7PYh-dsc06945-hdr-edit-edit-edit-(1).jpg',1,0,'',4,'2024-04-26 17:33:14'),(652,61,'Siddhartha Vilasa Banbas','U2Wyp-img_4633.jpg',1,0,'',5,'2024-04-26 17:33:14'),(653,61,'Siddhartha Vilasa Banbas','ihDB3-dsc070761-hdr.jpg',1,0,'',6,'2024-04-26 17:33:14'),(684,90,'Waterfall','om069-5.jpeg',1,0,'',5,'2024-05-01 11:02:26'),(685,90,'View','osmvL-6.jpeg',1,0,'',6,'2024-05-01 11:02:26'),(683,90,'Homestay','cTAIb-4.jpeg',1,0,'',4,'2024-05-01 11:02:26'),(682,90,'Room','WSYFU-3.jpeg',1,0,'',3,'2024-05-01 11:02:26'),(681,90,'View','nKF6o-2.jpeg',1,0,'',2,'2024-05-01 11:02:26'),(680,90,'Room','oIB6l-1.jpeg',1,0,'',1,'2024-05-01 11:02:26'),(662,87,'Reception','UDV0o-1.jpeg',1,0,'',1,'2024-04-29 16:44:26'),(663,87,'Room','3Pymd-2.jpeg',1,0,'',2,'2024-04-29 16:44:26'),(664,87,'Room','dqXOW-3.jpeg',1,0,'',3,'2024-04-29 16:44:26'),(665,87,'Room','caXTD-4.jpeg',1,0,'',4,'2024-04-29 16:44:26'),(666,87,'Restaurant','iAW9U-5.jpeg',1,0,'',5,'2024-04-29 16:44:26'),(667,87,'Hall','mOB8K-6.jpeg',1,0,'',6,'2024-04-29 16:44:26'),(668,88,'Reception','OGcoa-1.jpeg',1,0,'',1,'2024-04-29 17:54:07'),(669,88,'Room','U1Khs-1.jpeg',1,0,'',2,'2024-04-30 10:54:20'),(670,88,'Room','VJXAl-2.jpeg',1,0,'',3,'2024-04-30 10:54:20'),(671,88,'Room','eEX95-3.jpeg',1,0,'',4,'2024-04-30 10:54:20'),(672,88,'Restaurant','3muCK-4.jpeg',1,0,'',5,'2024-04-30 10:54:20'),(673,88,'Hall','vXpH7-5.jpeg',1,0,'',6,'2024-04-30 10:54:20'),(674,89,'Reception','7zuHY-1.jpeg',1,0,'',1,'2024-04-30 11:32:13'),(675,89,'Room','QEnec-2.jpeg',1,0,'',2,'2024-04-30 11:32:13'),(676,89,'Room','A7qNF-3.jpeg',1,0,'',3,'2024-04-30 11:32:13'),(677,89,'Room','8aNkI-4.jpeg',1,0,'',4,'2024-04-30 11:32:13'),(678,89,'Restaurant','kknHc-5.jpeg',1,0,'',5,'2024-04-30 11:32:13'),(679,89,'Hall','2nCBE-6.jpeg',1,0,'',6,'2024-04-30 11:32:13'),(699,93,'View','q6qVJ-2.jpeg',1,0,'',2,'2024-05-01 11:45:06'),(700,93,'Room','H0qGv-3.jpeg',1,0,'',3,'2024-05-01 11:45:06'),(701,93,'Kitchen','Yrj5k-4.jpeg',1,0,'',4,'2024-05-01 11:45:06'),(702,93,'Room','B8oOC-5.jpeg',1,0,'',5,'2024-05-01 11:45:06'),(703,93,'Homestay','dAkzC-6.jpeg',1,0,'',6,'2024-05-01 11:45:06'),(704,94,'Lobby','riBhY-1.jpeg',1,0,'',1,'2024-05-01 12:02:10'),(705,94,'Room','trqvW-2.jpeg',1,0,'',2,'2024-05-01 12:02:10'),(706,94,'Room','em0up-3.jpeg',1,0,'',3,'2024-05-01 12:02:10'),(707,94,'Room','mLlJO-4.jpeg',1,0,'',4,'2024-05-01 12:02:10'),(708,94,'Restaurant','eDRRe-5.jpeg',1,0,'',5,'2024-05-01 12:02:10'),(709,94,'Hall','Nsqdd-6.jpeg',1,0,'',6,'2024-05-01 12:02:10'),(710,53,'Room','ij6nO-new-project.jpeg',1,0,'',6,'2024-05-01 12:05:40'),(711,95,'Reception','x2Q4R-1.jpeg',1,0,'',1,'2024-05-01 12:19:41'),(712,95,'Room','Zjbn1-2.jpeg',1,0,'',2,'2024-05-01 12:19:41'),(713,95,'Room','G7Zth-3.jpeg',1,0,'',3,'2024-05-01 12:19:41'),(714,95,'Room','oUQ4E-4.jpeg',1,0,'',4,'2024-05-01 12:19:41'),(715,95,'Restaurant','X8GUv-5.jpeg',1,0,'',5,'2024-05-01 12:19:41'),(716,95,'Meeting Hall','gav1b-6.jpeg',1,0,'',6,'2024-05-01 12:19:41'),(717,96,'Lobby','bWQfA-1.jpeg',1,0,'',1,'2024-05-01 12:31:44'),(718,96,'Room','JmIPN-2.jpeg',1,0,'',2,'2024-05-01 12:31:44'),(719,96,'Room','BGOVB-3.jpeg',1,0,'',3,'2024-05-01 12:31:44'),(720,96,'Room','N41gL-4.jpeg',1,0,'',4,'2024-05-01 12:31:44'),(721,96,'Restaurant','cTVil-5.jpeg',1,0,'',5,'2024-05-01 12:31:44'),(722,96,'Meeting Hall','CJIyI-6.jpeg',1,0,'',6,'2024-05-01 12:31:44'),(723,97,'Reception','1XrS4-1.jpeg',1,0,'',1,'2024-05-01 13:34:45'),(724,97,'Room','lfT9C-3.jpeg',1,0,'',2,'2024-05-01 13:34:45'),(725,97,'Room','IkzqB-4.jpeg',1,0,'',3,'2024-05-01 13:34:45'),(726,97,'Lobby','ZCk3b-2.jpeg',1,0,'',4,'2024-05-01 13:34:45'),(727,97,'Restaurant','ldLo9-5.jpeg',1,0,'',5,'2024-05-01 13:34:45'),(728,97,'Meeting Hall','huJUr-6.jpeg',1,0,'',6,'2024-05-01 13:34:45'),(729,98,'Reception','etan3-1.jpeg',1,0,'',1,'2024-05-01 17:39:19'),(730,98,'Room','y7VfO-2.jpeg',1,0,'',2,'2024-05-01 17:39:19'),(731,98,'Room','niYID-3.jpeg',1,0,'',3,'2024-05-01 17:39:19'),(732,98,'Room','94Lws-4.jpeg',1,0,'',4,'2024-05-01 17:39:19'),(733,98,'Room','QQk4G-5.jpeg',1,0,'',5,'2024-05-01 17:39:19'),(734,98,'Room','BMFyJ-6.jpeg',1,0,'',6,'2024-05-01 17:39:19'),(735,98,'Room','ZziOc-7.jpeg',1,0,'',7,'2024-05-01 17:39:19'),(736,98,'Room','Krrrh-8.jpeg',1,0,'',8,'2024-05-01 17:39:19'),(737,98,'Room','VODkG-9.jpeg',1,0,'',9,'2024-05-01 17:39:19'),(738,98,'Restaurant','686R2-10.jpeg',1,0,'',10,'2024-05-01 17:39:19'),(739,98,'Coffee Shop','ehaDX-11.jpeg',1,0,'',11,'2024-05-01 17:39:19'),(740,98,'Meeting Hall','f2Tup-12.jpeg',1,0,'',12,'2024-05-01 17:39:19'),(741,98,'Meeting Hall','Ze12B-13.jpeg',1,0,'',13,'2024-05-01 17:39:19'),(742,98,'Meeting Hall','Ct3hY-14.jpeg',1,0,'',14,'2024-05-01 17:39:19'),(743,98,'Meeting Hall','6zfMY-15.jpeg',1,0,'',15,'2024-05-01 17:39:19'),(744,99,'Reception','Z1TqL-1.jpeg',1,0,'',1,'2024-05-03 12:23:28'),(745,99,'Room','iqakd-2.jpeg',1,0,'',2,'2024-05-03 12:23:28'),(746,99,'Room','cJD6J-3.jpeg',1,0,'',3,'2024-05-03 12:23:28'),(747,99,'Room','6U61a-4.jpeg',1,0,'',4,'2024-05-03 12:23:28'),(748,99,'Restaurant','Jt8g4-5.jpeg',1,0,'',5,'2024-05-03 12:23:28'),(749,99,'Restaurant','ZOjrg-6.jpeg',1,0,'',6,'2024-05-03 12:23:28'),(750,99,'Meeting Hall','QhozH-7.jpeg',1,0,'',7,'2024-05-03 12:23:28'),(751,99,'Meeting Hall','btRN9-8.jpeg',1,0,'',8,'2024-05-03 12:23:28'),(752,99,'Swimming Pool','PT9nn-9.jpeg',1,0,'',9,'2024-05-03 12:23:28'),(753,100,'Room','zfENZ-1.jpeg',1,0,'',1,'2024-05-03 13:11:26'),(754,100,'Room','lUuCX-3.jpeg',1,0,'',2,'2024-05-03 13:11:26'),(755,100,'Meeting Hall','qmEbH-5.jpeg',1,0,'',3,'2024-05-03 13:11:26'),(756,100,'Room','9CgPF-2.jpeg',1,0,'',4,'2024-05-03 13:11:26'),(757,100,'Restaurant','60XFt-4.jpeg',1,0,'',5,'2024-05-03 13:11:26'),(758,100,'Swimming Pool','2cjxv-9.jpeg',1,0,'',6,'2024-05-03 13:11:26'),(759,100,'Meeting Hall','DyvCX-7.jpeg',1,0,'',7,'2024-05-03 13:11:26'),(760,100,'Meeting Hall','3atzh-6.jpeg',1,0,'',8,'2024-05-03 13:11:26'),(761,100,'Bar','S8fUu-8.jpeg',1,0,'',9,'2024-05-03 13:11:26'),(762,101,'Jungle Central Plaza','xMgch-img_3252.jpg',1,0,'',1,'2024-05-07 15:48:31'),(763,101,'Jungle Central Plaza','Kqi0W-img_3211-hdr.jpg',1,0,'',2,'2024-05-07 15:48:31'),(764,101,'Jungle Central Plaza','X2SU8-img_3010.jpg',1,0,'',3,'2024-05-07 15:48:31'),(765,102,'Jay Suites','FHAxL-img_6781.jpg',1,0,'',1,'2024-05-07 17:43:44'),(766,102,'Jay Suites','FYJ0e-img_6907.jpg',1,0,'',2,'2024-05-07 17:43:44'),(767,102,'Jay Suites','TBxZU-img_6749.jpg',1,0,'',3,'2024-05-07 17:43:44'),(768,102,'Jay Suites','djA4S-img_6929.jpg',1,0,'',4,'2024-05-07 17:43:44'),(769,103,'Indreni Suites','MonKU-3f3a1859.jpg',1,0,'',1,'2024-05-10 11:02:18'),(770,103,'Indreni Suites','9Ndt9-3f3a1871.jpg',1,0,'',2,'2024-05-10 11:02:18'),(771,103,'Indreni Suites','raqPY-img_0232-hdr-without-logo.jpg',1,0,'',3,'2024-05-10 11:02:18'),(772,103,'Indreni Suites','uRGmV-indreni-umbrella-garden59881.jpg',1,0,'',4,'2024-05-10 11:02:18'),(773,104,'Hotel Crown Imperial','zbHzS-img_3856-hdr.jpg',1,0,'',1,'2024-05-10 11:19:13'),(774,104,'Hotel Crown Imperial','e32jT-img_4085-hdr.jpg',1,0,'',2,'2024-05-10 11:19:13'),(775,104,'Hotel Crown Imperial','HWb16-img_3831-hdr.jpg',1,0,'',3,'2024-05-10 11:19:13'),(776,105,'Dining Area','Vsb1y-1.jpg',1,0,'',1,'2024-08-02 11:24:58'),(777,105,'Food','JwmWw-2.jpg',1,0,'',2,'2024-08-02 11:24:58'),(778,105,'Food','8G7Hs-3.jpg',1,0,'',3,'2024-08-02 11:24:58'),(779,106,'Room','nX7bs-4.jpg',1,0,'',1,'2024-08-02 11:41:34'),(780,106,'Room','hAPW9-5.jpg',1,0,'',2,'2024-08-02 11:41:34'),(781,106,'Room','tMhyR-6.jpg',1,0,'',3,'2024-08-02 11:41:34'),(782,106,'Dining Area','KX8ER-7.jpg',1,0,'',4,'2024-08-02 11:41:34'),(783,106,'Dining Area','AIGLs-8.jpg',1,0,'',5,'2024-08-02 11:41:34'),(784,106,'Room Amenities','WsCUX-9.jpg',1,0,'',6,'2024-08-02 11:41:34'),(785,107,'Dining Area','gQ6wm-10.jpg',1,0,'',1,'2024-08-02 11:58:48'),(786,107,'Dining Area','VYDJe-11.jpg',1,0,'',2,'2024-08-02 11:58:48'),(787,107,'Food','BU2qm-12.jpg',1,0,'',3,'2024-08-02 11:58:48'),(788,108,'Resort Area','Zp7uj-14.jpg',1,0,'',1,'2024-08-02 12:05:04'),(789,108,'Resort','MUUK5-13.jpg',1,0,'',2,'2024-08-02 12:05:04'),(790,108,'Resort','ILnoq-15.jpg',1,0,'',3,'2024-08-02 12:05:04'),(791,109,'Dining Area','dHPb4-2.jpg',1,0,'',1,'2024-08-02 13:06:48'),(792,109,'Building','vKsKQ-1.jpg',1,0,'',2,'2024-08-02 13:06:48'),(793,110,'Room','Aokux-3.jpg',1,0,'',1,'2024-08-02 13:19:50'),(794,110,'Room','dIHVf-4.jpg',1,0,'',2,'2024-08-02 13:19:50'),(795,110,'Room','JPTOM-6.jpg',1,0,'',3,'2024-08-02 13:19:50'),(796,111,'Building','6SyYo-7.jpg',1,0,'',1,'2024-08-02 13:32:43'),(797,111,'Room','PK2dC-8.jpg',1,0,'',2,'2024-08-02 13:32:43'),(798,111,'Spa','Gb9XV-9.jpg',1,0,'',3,'2024-08-02 13:32:43'),(806,112,'Building','y6lHC-culture2.jpg',1,0,'',4,'2024-08-26 16:14:47'),(805,112,'Entrance','zewtV-culture.jpg',1,0,'',3,'2024-08-26 16:14:47'),(804,112,'Exterior','ZBn9N-culture1.jpg',1,0,'',2,'2024-08-26 16:14:47'),(803,112,'Exterior','uGyR2-new-project.jpg',1,0,'',1,'2024-08-26 16:14:47'),(807,112,'Building','xEyQ7-culture3.jpg',1,0,'',5,'2024-08-26 16:35:16'),(808,112,'Building','MiJvC-culture4.jpg',1,0,'',6,'2024-08-26 16:37:50'),(809,112,'Meeting Hall','k5V6O-culture5.jpg',1,0,'',7,'2024-08-26 16:41:16'),(810,112,'Meeting Hall','pSZBn-culture6.jpg',1,0,'',8,'2024-08-26 16:51:14'),(811,112,'Meeting Hall','lL6pQ-culture7.jpg',1,0,'',9,'2024-08-26 16:51:14'),(812,112,'Food','XAiBA-culture8.jpg',1,0,'',10,'2024-08-26 17:02:24'),(813,112,'Food','2OBDy-culture9.jpg',1,0,'',11,'2024-08-26 17:02:24');
/*!40000 ALTER TABLE `tbl_gallery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_group_type`
--

DROP TABLE IF EXISTS `tbl_group_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_group_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint NOT NULL DEFAULT '1' COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint NOT NULL,
  `permission` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_group_type`
--

LOCK TABLES `tbl_group_type` WRITE;
/*!40000 ALTER TABLE `tbl_group_type` DISABLE KEYS */;
INSERT INTO `tbl_group_type` VALUES (1,'Administrator','1',1,'',1,'a:17:{i:0;s:2:\"74\";i:1;s:3:\"306\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:3:\"100\";i:7;s:1:\"5\";i:8;s:2:\"17\";i:9;s:3:\"302\";i:10;s:3:\"307\";i:11;s:1:\"9\";i:12;s:2:\"12\";i:13;s:2:\"16\";i:14;s:2:\"15\";i:15;s:2:\"14\";i:16;s:2:\"13\";}'),(2,'General Admin','1',1,'',1,'a:13:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:3:\"100\";i:6;s:1:\"5\";i:7;s:2:\"17\";i:8;s:3:\"302\";i:9;s:1:\"9\";i:10;s:2:\"12\";i:11;s:2:\"14\";i:12;s:2:\"13\";}');
/*!40000 ALTER TABLE `tbl_group_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logs`
--

DROP TABLE IF EXISTS `tbl_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `registered` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `user_action` int NOT NULL,
  `ip_track` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logs`
--

LOCK TABLES `tbl_logs` WRITE;
/*!40000 ALTER TABLE `tbl_logs` DISABLE KEYS */;
INSERT INTO `tbl_logs` VALUES (1,'Log has been cleared.','2024-10-09 12:46:49',1,6,'::1'),(2,'Gallery Image [Namje Community Homestay] Edit Successfully','2024-10-09 13:07:45',1,4,'::1'),(3,'Gallery Image [The Culture Resort] Edit Successfully','2024-10-09 13:07:56',1,4,'::1'),(4,'Gallery Image [Hotel Shambala] Edit Successfully','2024-10-09 13:07:59',1,4,'::1'),(5,'Gallery Image [Hotel Roadhouse] Edit Successfully','2024-10-09 13:08:03',1,4,'::1'),(6,'Gallery Image [Hotel Pawan Palace] Edit Successfully','2024-10-09 13:08:08',1,4,'::1'),(7,'Gallery Image [Mountain Glory Forest Resort] Edit Successfully','2024-10-09 13:08:13',1,4,'::1'),(8,'Gallery Image [Kathmandu Marriott Hotel] Edit Successfully','2024-10-09 13:08:20',1,4,'::1'),(9,'Login: admin   logged in.','2024-10-25 11:49:06',1,1,'::1'),(10,'Menu [Gallery] Edit Successfully','2024-10-25 11:50:29',1,4,'::1'),(11,'Login: admin   logged in.','2024-10-25 11:55:40',1,1,'::1'),(12,'Changes on Article \'Capture the Extraordinary with Photo Longtail\' has been saved successfully.','2024-10-25 15:28:47',1,4,'::1'),(13,'Slideshow [Elevate Your Facade with Photo Longtail Imagery <br/>  aslkdjfasodifj] Edit Successfully','2024-10-25 16:48:32',1,4,'::1'),(14,'Slideshow [Elevate Your Facade with Photo Longtail Imagery] Edit Successfully','2024-10-25 16:48:47',1,4,'::1');
/*!40000 ALTER TABLE `tbl_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logs_action`
--

DROP TABLE IF EXISTS `tbl_logs_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_logs_action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `bgcolor` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logs_action`
--

LOCK TABLES `tbl_logs_action` WRITE;
/*!40000 ALTER TABLE `tbl_logs_action` DISABLE KEYS */;
INSERT INTO `tbl_logs_action` VALUES (1,'Login','icon-sign-in','bg-blue'),(2,'Logout','icon-sign-out','primary-bg'),(3,'Add','icon-plus-circle','bg-green'),(4,'Edit','icon-edit','bg-blue-alt'),(5,'Copy','icon-copy','ui-state-default'),(6,'Delete','icon-clock-os-circle','bg-red');
/*!40000 ALTER TABLE `tbl_logs_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mainservices`
--

DROP TABLE IF EXISTS `tbl_mainservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mainservices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `homepage` int NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mainservices`
--

LOCK TABLES `tbl_mainservices` WRITE;
/*!40000 ALTER TABLE `tbl_mainservices` DISABLE KEYS */;
INSERT INTO `tbl_mainservices` VALUES (1,0,'spa','SPA','The Health club Kavre has spa, hot tub and a indoor swimming pool for your refreshment and relaxation.','<p>\r\n	Get yourself pampered from the professional masseurs of &quot;The Himalayan Healers&quot;: a social entrepreneurship venture, and a a Healing Arts School and collection of Spa Boutiques, with branches in both Nepal and in the United States</p>\r\n',0,'about-us',1,'','','',0,'2023-09-03 12:49:59','2023-10-30 14:38:42',2,1,_binary 'a:1:{i:0;s:14:\"NFO7K-pool.jpg\";}','',''),(3,0,'pool-jacuzzi','Pool & Jacuzzi','Pool & Jacuzzi','<p>\r\n	Restaurant is spacious and comfortable and features spectacular views and treats you with large a selection of Chinese, Indian, Nepalese and Continental cuisines. The rustic mountain tavern decor, the cozy fireplace, the beckoning dance floor and of course the delightful choice of wines, cocktails and spirits along with fusion and jazz probably makes it the coziest bar at 7,200 ft.</p>\r\n',0,'',1,'','','',0,'2023-09-03 14:08:35','2023-09-03 14:08:35',1,1,_binary 'a:1:{i:0;s:15:\"kAeP5-po-ju.jpg\";}','',''),(4,0,'children-play-area-indoor-outdoor','Children Play Area Indoor & Outdoor','Children Play Area Indoor & Outdoor','<p>\r\n	Nepal, is home to 10% of the world&#39;s birds which means 800 species of birds. Come see, if you can spot some of these birds in Nagarkot</p>\r\n',0,'',1,'','','',0,'2023-09-04 13:12:47','2023-10-16 14:42:54',0,1,_binary 'a:1:{i:0;s:18:\"AfJAB-children.jpg\";}','',''),(5,0,'yuvvyuvyui','yuvvyuvyui','buibu','<p>\r\n	vyuvyvbyiu</p>\r\n',1,'tuyyuv',1,'','','',0,'2024-01-10 13:22:30','2024-01-10 13:22:54',3,1,_binary 'a:1:{i:0;s:20:\"gIvtF-facilities.jpg\";}','','');
/*!40000 ALTER TABLE `tbl_mainservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `parentOf` int NOT NULL DEFAULT '0',
  `linktype` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (20,'About Us','about-us',0,'0',1,1,'2024-03-20 17:10:37',1,''),(21,'Rooms','rooms',21,'0',1,2,'2024-03-20 17:10:50',2,''),(23,'Events','events',23,'0',1,4,'2024-03-20 17:12:16',2,''),(24,'Gallery','gallery-list',0,'0',1,2,'2024-03-20 17:12:34',1,''),(25,'Contact','contact-us',0,'0',1,3,'2024-03-20 17:12:48',1,''),(27,'rooms','rooms',27,'0',1,2,'2024-03-20 17:40:43',2,''),(30,'Contact Us','contact-us',0,'0',1,5,'2024-03-20 17:41:32',2,''),(31,'Room','rooms',27,'0',1,1,'2024-03-27 10:40:33',2,''),(35,'Career','career',0,'0',1,4,'2024-04-12 18:40:11',1,'');
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mlink`
--

DROP TABLE IF EXISTS `tbl_mlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mlink`
--

LOCK TABLES `tbl_mlink` WRITE;
/*!40000 ALTER TABLE `tbl_mlink` DISABLE KEYS */;
INSERT INTO `tbl_mlink` VALUES ('Package','rooms',1),('Subpackage','suite-room',21),('Subpackage','deluxe-family-room',28),('Subpackage','super-deluxe-room',29),('Subpackage','event-halls',31),('Subpackage','tribhuvan-intl-airport',33),('Subpackage','patan-durbar-square',34),('Subpackage','swayambhunath-temple',35),('Subpackage','pashupatinath-temple',36),('Package','events',11),('Subpackage','kreeti-hall',37),('Package','dining',12),('Subpackage','skydeck-restaurant',38),('Article','pool-jacuzzi',3),('Article','capture-the-extraordinary-with-photo-longtail',2),('Subpackage','deluxe-room',41),('Subpackage','kavya-hall',42),('Article','children-play-area-indoor-outdoor',4),('Article','section-1',17),('Article','about-us',11),('Main service','children-play-area-indoor-outdoor',4),('Main service','spa',1),('Article','all-over-nepal',0),('Package','testing-8-2',0),('Subpackage','asdasdasddasasd',0),('Main service','yuvvyuvyui',0),('Main service','yuvvyuvyui',5),('Article','bouddhanath-stupa',15),('Article','thamel',14),('Article','grow-your-business-online',19),('Article','career-with-us',18),('Article','hotels-and-hospitality-portfolio',21),('Article','all-over-nepal',22);
/*!40000 ALTER TABLE `tbl_mlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modules`
--

DROP TABLE IF EXISTS `tbl_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon_link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` date NOT NULL,
  `properties` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modules`
--

LOCK TABLES `tbl_modules` WRITE;
/*!40000 ALTER TABLE `tbl_modules` DISABLE KEYS */;
INSERT INTO `tbl_modules` VALUES (1,74,'User Mgmt','user/list','user','icon-users',1,1,'0000-00-00',''),(2,0,'Menu Mgmt','menu/list','menu','icon-list',1,2,'0000-00-00','a:1:{s:5:\"level\";s:1:\"3\";}'),(3,0,'Articles Mgmt','articles/list','articles','icon-adn',1,2,'0000-00-00','a:2:{s:8:\"imgwidth\";s:3:\"450\";s:9:\"imgheight\";s:3:\"350\";}'),(4,0,'Slideshow Mgmt','slideshow/list','slideshow','icon-film',1,2,'0000-00-00','a:2:{s:8:\"imgwidth\";s:4:\"1263\";s:9:\"imgheight\";s:3:\"600\";}'),(5,0,'Gallery Mgmt','gallery/list','gallery','icon-picture-o',1,6,'0000-00-00','a:4:{s:8:\"imgwidth\";s:3:\"900\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),(6,0,'News Mgmt','news/list','news','icon-list-alt',0,19,'0000-00-00','a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),(7,0,'Event Mgmt','events/list','events','icon-bullhorn',0,10,'0000-00-00',''),(8,0,'Advertisement Mgmt','advertisement/list','advertisement','icon-indent',0,4,'0000-00-00','a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),(9,0,'Video Mgmt','video/list','video','icon-hdd-o',1,13,'0000-00-00',''),(10,0,'Poll Mgmt','poll/list','poll','icon-exchange',0,22,'0000-00-00',''),(11,0,'Social / OTA Mgmt','social/list','social','icon-google-plus',1,6,'0000-00-00','a:2:{s:8:\"imgwidth\";s:3:\"141\";s:9:\"imgheight\";s:2:\"13\";}'),(12,0,'Setting Mgmt','setting/list','settings','icon-gear',1,21,'0000-00-00',''),(13,12,'Preference Mgmt','preference/list','preference','icon-gear',1,1,'0000-00-00','a:18:{s:8:\"imgwidth\";s:8:\"12312312\";s:9:\"imgheight\";s:2:\"12\";s:9:\"simgwidth\";s:2:\"12\";s:10:\"simgheight\";s:2:\"12\";s:10:\"fbimgwidth\";s:2:\"12\";s:11:\"fbimgheight\";s:2:\"12\";s:9:\"timgwidth\";s:2:\"12\";s:10:\"timgheight\";s:2:\"12\";s:9:\"gimgwidth\";s:2:\"12\";s:10:\"gimgheight\";s:2:\"12\";s:9:\"cimgwidth\";s:3:\"121\";s:10:\"cimgheight\";s:2:\"12\";s:9:\"oimgwidth\";s:2:\"12\";s:10:\"oimgheight\";s:2:\"12\";s:9:\"fimgwidth\";s:2:\"21\";s:10:\"fimgheight\";s:2:\"21\";s:10:\"ofimgwidth\";s:2:\"21\";s:11:\"ofimgheight\";s:2:\"12\";}'),(14,12,'Office Info/Location','location/list','location','icon-gear',1,2,'0000-00-00',''),(15,12,'Modules Mgmt','module/list','module','icon-gear',0,3,'0000-00-00',''),(16,12,'Properties Mgmt','properties/list','properties','icon-gear',1,4,'0000-00-00',''),(17,0,'Testimonial','testimonial/list','testimonial','icon-list-alt',1,6,'0000-00-00','a:2:{s:8:\"imgwidth\";s:4:\"1001\";s:9:\"imgheight\";s:3:\"100\";}'),(18,0,'Subscribers Mgmt','subscribers/list','subscribers','icon-comments',0,14,'2015-05-17',''),(19,0,'Offers Mgmt','offers/list','offers','icon-tags',0,18,'2015-05-20','a:4:{s:9:\"bimgwidth\";s:2:\"22\";s:10:\"bimgheight\";s:2:\"22\";s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),(20,0,'Services Mgmt','services/list','services','icon-exchange',1,5,'2015-08-09','a:2:{s:8:\"imgwidth\";s:2:\"48\";s:9:\"imgheight\";s:2:\"48\";}'),(21,0,'Movies Mgmt','movies/list','movies','icon-list',0,15,'2015-10-30',''),(22,0,'Theaters','theaters/list','theaters','icon-film',0,17,'2015-11-01',''),(23,25,'Package Mgmt','package/list','package','icon-exchange',1,5,'2016-06-17','a:6:{s:8:\"imgwidth\";s:1:\"4\";s:9:\"imgheight\";s:3:\"350\";s:12:\"subbimgwidth\";s:2:\"11\";s:13:\"subbimgheight\";s:2:\"12\";s:11:\"subimgwidth\";s:2:\"13\";s:12:\"subimgheight\";s:2:\"14\";}'),(24,25,'Features Mgmt','features/list','features','icon-gear',1,1,'2016-11-16',''),(25,0,'Package Mgmt','package/list','','icon-bullhorn',1,4,'2016-11-16',''),(26,0,'Activity Mgmt','activity/list','activity','\r\nicon-hand-o-left',0,7,'0000-00-00','a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),(27,0,'Blog Mgmt','blog/list','blog','\r\n\r\n\r\n\r\nicon-list-alt',0,8,'0000-00-00','a:2:{s:8:\"imgwidth\";s:2:\"22\";s:9:\"imgheight\";s:2:\"22\";}'),(28,0,'Popup','popup/list','popup','icon-list',1,20,'2020-02-13','a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}'),(29,0,' News/Events Mgmt','combinednews/list','combinednews','icon-tags',0,14,'2020-09-05','a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),(30,0,'Product Mgmt','product/list','product','icon-list',0,1,'2021-11-25',''),(74,0,'Users','','','icon-users',1,1,'2021-10-03',''),(100,0,'Destination','destination/list','destination','icon-plane',1,4,'2024-04-14',''),(300,0,'FAQ','faq/list','faq','icon-list',0,8,'2023-08-31',''),(301,0,'Nearby ','nearby/list','nearby','icon-list',1,8,'2023-08-29','a:2:{s:8:\"imgwidth\";s:2:\"23\";s:9:\"imgheight\";s:2:\"23\";}'),(302,0,'Vacancy Mgmt','vacency/list','vacency','icon-list',1,7,'2023-08-28',''),(303,0,'Main service Mgt','mservices/list','mservice','icon-list',0,6,'2023-09-01','a:2:{s:8:\"imgwidth\";s:2:\"12\";s:9:\"imgheight\";s:2:\"12\";}'),(304,0,'OTA Mgmt','ota/list','ota','icon-google-plus',0,12,'0000-00-00','a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),(305,0,'Nearby ','nearby/list','nearby','icon-list',0,8,'2023-08-29',''),(306,74,'User Group','usergroup/list','usergroup','icon-gears',1,3,'2023-10-10',''),(307,0,'Applicant Mgmt','applicant/list','applicant','icon-adn',1,10,'2024-10-08','');
/*!40000 ALTER TABLE `tbl_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nearby`
--

DROP TABLE IF EXISTS `tbl_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `homepage` int NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL,
  `embed_link` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nearby`
--

LOCK TABLES `tbl_nearby` WRITE;
/*!40000 ALTER TABLE `tbl_nearby` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_news`
--

DROP TABLE IF EXISTS `tbl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `brief` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `source` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `viewcount` int NOT NULL DEFAULT '0',
  `meta_keywords` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_news`
--

LOCK TABLES `tbl_news` WRITE;
/*!40000 ALTER TABLE `tbl_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_offer_child`
--

DROP TABLE IF EXISTS `tbl_offer_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_offer_child` (
  `offer_id` int NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int NOT NULL,
  KEY `offer_id` (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_offer_child`
--

LOCK TABLES `tbl_offer_child` WRITE;
/*!40000 ALTER TABLE `tbl_offer_child` DISABLE KEYS */;
INSERT INTO `tbl_offer_child` VALUES (1,'12','23','','',1),(1,'11','34','','',2);
/*!40000 ALTER TABLE `tbl_offer_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_offers`
--

DROP TABLE IF EXISTS `tbl_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_offers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int NOT NULL,
  `discount` int NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_offers`
--

LOCK TABLES `tbl_offers` WRITE;
/*!40000 ALTER TABLE `tbl_offers` DISABLE KEYS */;
INSERT INTO `tbl_offers` VALUES (1,'asas','ASAs','AdgZx-facilities.jpg','aKLfu-1920x1064_bg.jpg',1,0,'',0,12,3,'','<p>\r\n	Aas</p>\r\n',1,'2024-01-10 13:29:39',1,0);
/*!40000 ALTER TABLE `tbl_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ota`
--

DROP TABLE IF EXISTS `tbl_ota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ota`
--

LOCK TABLES `tbl_ota` WRITE;
/*!40000 ALTER TABLE `tbl_ota` DISABLE KEYS */;
INSERT INTO `tbl_ota` VALUES (7,'booking','guqcq-bo.png','','#',1,1,''),(8,'agoda','8fj3b-ag.png','','#',1,2,''),(9,'expedia','hhqsu-ex.png','','#',1,3,''),(10,'tripadvisor','qw86F-ta.png','','#',1,4,''),(11,'Make My Trip','sFzjy-ma.png','','#',1,5,'');
/*!40000 ALTER TABLE `tbl_ota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_package`
--

DROP TABLE IF EXISTS `tbl_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sub_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `header_image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `banner_image` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_package`
--

LOCK TABLES `tbl_package` WRITE;
/*!40000 ALTER TABLE `tbl_package` DISABLE KEYS */;
INSERT INTO `tbl_package` VALUES (1,'rooms','Rooms','Modern & Spacious Rooms','','','a:1:{i:0;s:24:\"n1mkv-roomlistbanner.jpg\";}','','','','','',1,0,'2017-04-24 17:25:53','2024-03-26 18:28:01',1),(11,'events','events','Meetings, Incentives, Conference & Events','','','a:1:{i:0;s:16:\"i1lqv-hall-a.jpg\";}','','','','','',1,2,'2023-08-29 12:22:54','2024-03-26 20:27:11',0),(12,'dining','Dining','Eat, Drink & Relax','','','a:1:{i:0;s:25:\"4s9nx-restaurant_logo.jpg\";}','','','','','',1,1,'2023-08-29 14:33:04','2024-03-25 16:50:27',0);
/*!40000 ALTER TABLE `tbl_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_package_sub`
--

DROP TABLE IF EXISTS `tbl_package_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_package_sub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sub_title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `header_image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image2` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image4` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facility_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number_room` int NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `people_qnty` int NOT NULL,
  `onep_price` int NOT NULL,
  `twop_price` int NOT NULL,
  `threep_price` int NOT NULL,
  `oneb_price` int NOT NULL,
  `twob_price` int NOT NULL,
  `threeb_price` int NOT NULL,
  `extra_bed` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `short_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serve` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `theatre_style` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_room_style` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `shape` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `round_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `clusture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cocktail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `seats` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `below_content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `seminar` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meeting` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `events` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `conference` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `catering` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `celebration` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `organic_food` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `occupancy` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `view` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `service` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `live_music` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `bed` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `room_size` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `room_service` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `airport_pickup` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `private_balcony` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `checkinout` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `be_room_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_package_sub`
--

LOCK TABLES `tbl_package_sub` WRITE;
/*!40000 ALTER TABLE `tbl_package_sub` DISABLE KEYS */;
INSERT INTO `tbl_package_sub` VALUES (21,'suite-room','Suite Room','','Indulge in unparalleled luxury and sophistication with our spacious suite room, where every detail is designed to exceed your expectations and elevate your stay to new heights of comfort and opulence.','a:1:{i:0;s:12:\"qfBKC-sr.jpg\";}','','cdySR-sr.jpg','','',_binary 'a:1:{i:47;a:2:{i:0;a:1:{i:0;s:14:\"ROOM AMENITIES\";}i:1;a:15:{i:0;s:3:\"102\";i:1;s:3:\"103\";i:2;s:3:\"108\";i:3;s:3:\"104\";i:4;s:3:\"105\";i:5;s:3:\"106\";i:6;s:3:\"109\";i:7;s:3:\"110\";i:8;s:3:\"122\";i:9;s:3:\"124\";i:10;s:3:\"128\";i:11;s:3:\"126\";i:12;s:3:\"125\";i:13;s:3:\"127\";i:14;s:3:\"129\";}}}','<p>\r\n	Experience unparalleled luxury in our Suite Room, boasting a spacious layout with a separate living area and a cozy couch. Indulge in convenience with a mini-bar and in-room bar tables, while the lavish washroom features an in-room sauna and a luxurious tub. With carpeted floors adding a touch of comfort, your stay promises both relaxation and sophistication.</p>\r\n','',0,'',0,0,0,0,0,0,0,0,'3','Experience Luxury Redefined','','','','','','','','','','','','','',1,6,'2020-02-14 12:20:31','2024-04-09 15:16:53',1,'','','','','','','','','2','','','','',' King',' 500 sq.ft','','','','','5022736'),(28,'deluxe-family-room','Deluxe Family Room','','Create cherished memories with your loved ones in our deluxe family rooms, thoughtfully designed to provide the perfect blend of comfort, convenience, and style, ensuring an enriching stay for all ages.','a:1:{i:0;s:15:\"xZ8bg-suite.jpg\";}','','fytTu-suite.jpg','','',_binary 'a:1:{i:47;a:2:{i:0;a:1:{i:0;s:14:\"ROOM AMENITIES\";}i:1;a:15:{i:0;s:3:\"102\";i:1;s:3:\"108\";i:2;s:3:\"104\";i:3;s:3:\"105\";i:4;s:3:\"106\";i:5;s:3:\"109\";i:6;s:3:\"110\";i:7;s:3:\"122\";i:8;s:3:\"119\";i:9;s:3:\"131\";i:10;s:3:\"129\";i:11;s:3:\"128\";i:12;s:3:\"126\";i:13;s:3:\"125\";i:14;s:3:\"124\";}}}','<p>\r\n	Welcome to our Deluxe Family Room, the ideal sanctuary for families seeking comfort and relaxation during their stay. With ample space and thoughtful amenities, including cozy beds and essential facilities, this inviting retreat ensures a memorable stay for the whole family. Whether you&#39;re unwinding after a day of exploration or simply enjoying quality time together, our room provides the perfect setting for creating cherished moments.</p>\r\n','',0,'',0,0,0,0,0,0,0,0,'','Perfect Retreat for Family Bonding','','','','','','','','','','','','','',0,4,'2023-06-06 12:40:04','2024-03-26 17:32:56',1,'','','','','','','','','3','','','','','Queen & Single','250 sq.ft','','','','','5022734'),(29,'super-deluxe-room','Super Deluxe Room','','Treat your family to the ultimate getaway in our super deluxe family rooms, offering ample space, modern amenities, and a welcoming ambiance for unforgettable moments of togetherness and relaxation.','a:1:{i:0;s:13:\"hkhuF-sdr.jpg\";}','','RCt9j-sdr.jpg','','',_binary 'a:1:{i:47;a:2:{i:0;a:1:{i:0;s:14:\"ROOM AMENITIES\";}i:1;a:15:{i:0;s:3:\"102\";i:1;s:3:\"103\";i:2;s:3:\"108\";i:3;s:3:\"104\";i:4;s:3:\"105\";i:5;s:3:\"106\";i:6;s:3:\"109\";i:7;s:3:\"110\";i:8;s:3:\"122\";i:9;s:3:\"124\";i:10;s:3:\"128\";i:11;s:3:\"125\";i:12;s:3:\"126\";i:13;s:3:\"129\";i:14;s:3:\"138\";}}}','<p>\r\n	Welcome to our Super Deluxe Family Room, where comfort meets convenience for families and friends. Featuring two beds accommodating up to three guests, along with essential amenities like a minibar and coffee/tea maker, this cozy retreat ensures a relaxing stay. With parqueted floors adding a touch of elegance, it&#39;s the perfect space to create lasting memories with loved ones.</p>\r\n','',0,'',0,0,0,0,0,0,0,0,'','Spacious Comfort for the Whole Family','','','','','','','','','','','','','',1,5,'2023-06-06 13:02:18','2024-04-09 15:16:34',1,'','','','','','','','','3','','','','','Queen & Single',' 300 sq.ft','','','','','5022735'),(37,'kreeti-hall','Kreeti Hall','','','a:1:{i:0;s:21:\"x23xg-hall-a_logo.jpg\";}','','FG3mq-hall-a_logo.jpg','','',_binary 'a:1:{i:47;a:2:{i:0;a:1:{i:0;s:0:\"\";}i:1;a:8:{i:0;s:3:\"139\";i:1;s:3:\"132\";i:2;s:3:\"122\";i:3;s:3:\"133\";i:4;s:3:\"134\";i:5;s:3:\"135\";i:6;s:3:\"136\";i:7;s:3:\"137\";}}}','<p>\r\n	Kreeti Hall, derived from the Sanskrit word meaning &quot;achievement&quot; or &quot;success,&quot; stands as a testament to its name, offering a grand space for a variety of events. As the larger hall, it boasts a pre-function area and buffet space, all fully air-conditioned and equipped with state-of-the-art audio-visual technology and other essential amenities. Ideal for resident conferences, meetings, seminars, and special events, Kreeti Hall provides a sophisticated setting for both corporate gatherings and social occasions alike.</p>\r\n','',0,'',0,0,0,0,0,0,0,0,'','Kreeti Hall','','','','','','','','','200 people','2100 Sq.ft','','','',1,6,'2023-08-29 13:03:28','2024-03-26 20:27:32',11,'<table class=\"table table-borderless\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/ushape.jpg\" />U-Shape or Square</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/doubleu.jpg\" />U-with double row</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/classroom.jpg\" />Class Room Style</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/theater.jpg\" />Theatre</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/cluster.jpg\" />Cluster</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/sofa.png\" />Sofa</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				45 pax</td>\r\n			<td>\r\n				76 pax</td>\r\n			<td>\r\n				60 pax</td>\r\n			<td>\r\n				120 pax</td>\r\n			<td>\r\n				60 pax</td>\r\n			<td>\r\n				x</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n','','','','','','','','','','','','','','','','','','',''),(38,'skydeck-restaurant','SkyDeck Restaurant','','','a:1:{i:0;s:25:\"6lGAJ-restaurant_logo.jpg\";}','','Fctvs-restaurant_logo.jpg','',' HEUd1-chmenu.pdf ',_binary 'a:0:{}','<p style=\"text-align: justify;\">\r\n	Welcome to SkyDeck by Crystal, our exquisite on-site restaurant boasting two distinct decks to cater to your dining desires. The lower deck exudes a cozy ambiance, perfect for indulging in hearty breakfasts or enjoying quality time with family and friends. Meanwhile, ascend to the upper deck for a panoramic dining experience with breathtaking views of the airport and beyond. With both open rooftop seating and two private dining rooms available, we can accommodate a total of 130 guests. Our culinary offerings tantalize the taste buds with a fusion of flavors, featuring our signature Go Local menu alongside Indian delicacies, complemented by oriental, continental, and western touches. Complete your dining experience with a visit to our full-fledged bar, where you can unwind with expertly crafted cocktails and a selection of premium beverages.</p>\r\n<div class=\"mt-4 menu_btn\" style=\"text-align:right;\">\r\n	<a class=\"btn px-3 py-2\" href=\"/menu.pdf\" style=\"background :#c11010; color:#fff;\" target=\"_blank\">MENU</a></div>\r\n','',0,'',0,0,0,0,0,0,0,0,'','Kantipur Restaurant','','','','7:00 AM to 11:00 PM','','Multi-Cuisine','130 pax','','','','','','',1,7,'2023-08-29 14:35:35','2024-03-27 10:39:09',12,'','','','','','','','','','','','','','','','','','','',''),(41,'deluxe-room','Deluxe Room','','Retreat to tranquility and elegance in our deluxe double rooms, where contemporary design meets timeless comfort to provide a serene haven for couples and solo travelers alike.','a:1:{i:0;s:12:\"Uay3u-dr.jpg\";}','','5m6tL-dr.jpg','','',_binary 'a:1:{i:47;a:2:{i:0;a:1:{i:0;s:14:\"ROOM AMENITIES\";}i:1;a:15:{i:0;s:3:\"108\";i:1;s:3:\"110\";i:2;s:3:\"109\";i:3;s:3:\"107\";i:4;s:3:\"106\";i:5;s:3:\"105\";i:6;s:3:\"104\";i:7;s:3:\"103\";i:8;s:3:\"102\";i:9;s:3:\"128\";i:10;s:3:\"126\";i:11;s:3:\"125\";i:12;s:3:\"124\";i:13;s:3:\"122\";i:14;s:3:\"119\";}}}','<p>\r\n	Welcome to our Deluxe Double Room, where comfort and style converge to offer a tranquil escape for solo travelers or couples. Featuring a spacious layout and modern amenities, including a comfortable bed and essential facilities, this inviting retreat promises a restful stay. With parqueted floors adding a touch of warmth and elegance, it&#39;s the perfect space to unwind after a day of exploration or to simply relax and rejuvenate in peace.</p>\r\n','',0,'',0,0,0,0,0,0,0,0,'','Comfort and Style Combined','','','','','','','','','','','','','',1,3,'2023-09-04 12:51:09','2024-04-09 15:17:17',1,'','','','','','','','','2','','','','','Queen','210 sq.ft','','','','','5022732'),(42,'kavya-hall','Kavya Hall','','','a:1:{i:0;s:21:\"YrSJv-hall-b_logo.jpg\";}','','ytnRh-hall-b_logo.jpg','','',_binary 'a:0:{}','Kavya Hall, inspired by the Sanskrit term for \"poetry\" or \"literature,\" embodies elegance and creativity, providing a charming venue for a diverse range of events. Similar to its counterpart, Kavya Hall offers a fully air-conditioned environment, along with advanced audio-visual technology and necessary equipment. Whether hosting corporate meetings or celebrating special occasions, this hall sets the stage for memorable moments in a refined and inspiring setting.','',0,'',0,0,0,0,0,0,0,0,'','Kavya Hall','','','','','','','','','150 people','1500 sq.ft','','','',1,5,'2023-09-04 12:57:42','2024-03-26 20:27:54',11,'<table class=\"table table-borderless\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/ushape.jpg\" />U-Shape or Square</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/doubleu.jpg\" />U-with double row</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/classroom.jpg\" />Class Room Style</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/theater.jpg\" />Theatre</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/cluster.jpg\" />Cluster</th>\r\n			<th scope=\"col\">\r\n				<img src=\"template/web/images/mice/sofa.png\" />Sofa</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				30 pax</td>\r\n			<td>\r\n				x</td>\r\n			<td>\r\n				42 pax</td>\r\n			<td>\r\n				60 pax</td>\r\n			<td>\r\n				40 pax</td>\r\n			<td>\r\n				x</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `tbl_package_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permission`
--

DROP TABLE IF EXISTS `tbl_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_id` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `module_id` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permission`
--

LOCK TABLES `tbl_permission` WRITE;
/*!40000 ALTER TABLE `tbl_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_popup`
--

DROP TABLE IF EXISTS `tbl_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_popup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `type` int NOT NULL,
  `slug` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_popup`
--

LOCK TABLES `tbl_popup` WRITE;
/*!40000 ALTER TABLE `tbl_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (2,'test','test ','<p>\r\n	dfcgvhhjbk</p>\r\n','','','','',1,1,'2021-11-24 12:47:12','2021-11-24 12:50:00');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_room_price`
--

DROP TABLE IF EXISTS `tbl_room_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_room_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `season_id` int NOT NULL,
  `one_person` int NOT NULL,
  `two_person` int NOT NULL,
  `three_person` int NOT NULL,
  `registered` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_room_price`
--

LOCK TABLES `tbl_room_price` WRITE;
/*!40000 ALTER TABLE `tbl_room_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_room_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_services`
--

DROP TABLE IF EXISTS `tbl_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint NOT NULL,
  `meta_keywords` int NOT NULL,
  `meta_description` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_services`
--

LOCK TABLES `tbl_services` WRITE;
/*!40000 ALTER TABLE `tbl_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slideshow`
--

DROP TABLE IF EXISTS `tbl_slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slideshow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `m_status` tinyint(1) NOT NULL DEFAULT '1',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `mode` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slideshow`
--

LOCK TABLES `tbl_slideshow` WRITE;
/*!40000 ALTER TABLE `tbl_slideshow` DISABLE KEYS */;
INSERT INTO `tbl_slideshow` VALUES (86,'Photo Longtail – Framing Hospitality’s Grandeur','f65fw-2.jpeg','',0,'',0,0,'2024-04-12 18:25:10',1,1,'','','','','','','',0),(84,'First Impressions Captured – Photo Longtail','QNgJu-main.jpeg','',0,'',0,0,'2024-04-12 17:34:10',2,1,'','','','','','','',0),(85,'Elevate Your Facade with Photo Longtail Imagery','BtvJz-3.jpeg','',0,'',0,0,'2024-04-12 18:20:30',0,1,'','','','','','','',0),(87,'First Impression Captured - Photo Longtail','LojR8-2.jpg','',0,'',1,0,'2024-08-02 13:37:48',3,1,'','','','','','','',0),(88,'Photo Longtail – Framing Hospitality’s Grandeur','yWQDB-3.jpg','',0,'',1,0,'2024-08-02 13:43:28',4,1,'','','','','','','',0),(89,'Elevate Your Facade with Photo Longtail Imagery','zoNzA-new-project.jpg','',0,'',1,0,'2024-08-02 14:37:33',5,1,'','','','','','','',0);
/*!40000 ALTER TABLE `tbl_slideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

DROP TABLE IF EXISTS `tbl_slideshows_withouttlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sortorder` int NOT NULL,
  `registered` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slideshows_withouttlist`
--

LOCK TABLES `tbl_slideshows_withouttlist` WRITE;
/*!40000 ALTER TABLE `tbl_slideshows_withouttlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_slideshows_withouttlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_social_networking`
--

DROP TABLE IF EXISTS `tbl_social_networking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_social_networking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_social_networking`
--

LOCK TABLES `tbl_social_networking` WRITE;
/*!40000 ALTER TABLE `tbl_social_networking` DISABLE KEYS */;
INSERT INTO `tbl_social_networking` VALUES (1,'https://www.youtube.com/@Longtailemedia','','fa-youtube-in',1,'fa-youtube-in',1,5,''),(2,'Instagram','','fa-instagram',1,'https://www.instagram.com/photo.longtail/',1,4,''),(4,'Facebook','','fa-facebook-f',1,'https://www.facebook.com/photo.longtail',1,1,''),(5,'booking','RllAl-booking.webp','',2,'#',1,3,'2024-03-22 13:04:29'),(6,'agoda','LCfbQ-agoda.png','',2,'#',1,2,'2024-03-25 11:51:24'),(7,'Ctrip','snQmM-ctrip.png','',2,'#',1,6,'2024-03-25 11:51:42'),(8,'Expedia','SgQ2y-expedia.png','',2,'#',1,7,'2024-03-25 11:51:56'),(9,'Make My trip','fd4ax-makemytrip.png','',2,'#',1,8,'2024-03-25 11:52:10');
/*!40000 ALTER TABLE `tbl_social_networking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subpackage_images`
--

DROP TABLE IF EXISTS `tbl_subpackage_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subpackage_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `subpackageid` int NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subpackage_images`
--

LOCK TABLES `tbl_subpackage_images` WRITE;
/*!40000 ALTER TABLE `tbl_subpackage_images` DISABLE KEYS */;
INSERT INTO `tbl_subpackage_images` VALUES (73,'Hall',31,'',1,19,'2023-06-21 13:59:14','lumn1-1.jpg'),(74,'Hall',31,'',1,21,'2023-06-21 13:59:14','TXYew-2.jpg'),(75,'Hall',31,'',1,22,'2023-06-21 13:59:14','3WSgO-3.jpg'),(76,'Hall',31,'',1,23,'2023-06-21 13:59:14','V7UWD-4.jpg'),(77,'Hall',31,'',1,24,'2023-06-21 13:59:14','IZ0in-5.jpg'),(78,'Hall',31,'',1,25,'2023-06-21 13:59:14','s8rXz-6.jpg'),(90,'b',37,'',1,17,'2023-08-29 13:16:58','zMxWo-img1.jpg'),(91,'bb',37,'',1,18,'2023-08-29 13:16:58','JRVAG-img1.jpg'),(92,'b',37,'',1,20,'2023-08-29 13:16:58','EdYnA-img1.jpg'),(108,'a',42,'',1,5,'2023-09-04 12:58:24','Jpoxc-img3.jpg'),(109,'a',42,'',1,10,'2023-09-04 12:58:24','Xlari-img3.jpg'),(123,'a',38,'',1,2,'2024-03-21 16:00:43','w51zI-restaurant_logo.jpg'),(124,'b',38,'',1,3,'2024-03-21 16:00:43','kti4Y-restaurant_logo.jpg'),(127,'room1',28,'',1,1,'2024-03-25 12:23:10','uaYsn-img_0265.jpg'),(128,'ROOM2',28,'',1,2,'2024-03-25 12:23:10','lHO6v-img_0249.jpg'),(129,'ROOM3',28,'',1,3,'2024-03-25 12:23:10','Mr39t-img_0290.jpg'),(130,'ROOM4',28,'',1,4,'2024-03-25 12:23:10','9uRZu-img_0236.jpg'),(131,'super1',29,'',1,1,'2024-03-25 12:27:24','xt1SY-img_0236.jpg'),(132,'super2',29,'',1,2,'2024-03-25 12:27:24','gca8Z-img_0265.jpg'),(133,'super3',29,'',1,3,'2024-03-25 12:27:24','Zw2bY-img_0249.jpg'),(134,'Deluxe Room',41,'',1,1,'2024-03-25 12:30:16','qylWa-img_0203.jpg'),(135,'Deluxe Room',41,'',1,2,'2024-03-25 12:30:16','HxU26-img_0191.jpg'),(136,'Deluxe Room',41,'',1,3,'2024-03-25 12:30:16','tNWzy-img_0194.jpg'),(137,'Suite Room',21,'',1,1,'2024-04-01 11:49:05','AvdZj-suite1.jpg'),(138,'Suite Room',21,'',1,2,'2024-04-01 11:49:05','5qbQY-suite2.jpg'),(139,'Suite Room',21,'',1,3,'2024-04-02 16:30:52','fFfMg-suite5.jpg'),(140,'Suite Room',21,'',1,4,'2024-04-02 16:30:52','fXveZ-suite1.jpg'),(141,'Suite Room',21,'',1,5,'2024-04-02 16:30:52','amZWt-suite7.jpg'),(142,'Suite Room',21,'',1,6,'2024-04-02 16:30:52','9E31Q-suite4.jpg'),(143,'Suite Room',21,'',1,7,'2024-04-02 16:30:52','AWiIa-suite3.jpg'),(144,'Suite Room',21,'',1,8,'2024-04-02 16:30:52','TEt7o-suite6.jpg'),(145,'Suite Room',21,'',1,9,'2024-04-02 16:30:52','7Ul77-suite8.jpg'),(146,'Super Deluxe Room',29,'',1,4,'2024-04-02 16:40:52','C18Ri-sd4.jpg'),(147,'Super Deluxe Room',29,'',1,5,'2024-04-02 16:40:52','dzTJP-sd3.jpg'),(148,'Super Deluxe Room',29,'',1,6,'2024-04-02 16:40:52','hcqmJ-sd2.jpg'),(149,'Super Deluxe Room',29,'',1,7,'2024-04-02 16:40:52','MCSzo-sd1.jpg'),(150,'Deluxe Room',41,'',1,4,'2024-04-03 18:43:53','FubuI-dr5.jpg'),(151,'Deluxe Room',41,'',1,5,'2024-04-03 18:43:53','fLkAP-dr2.jpg'),(152,'Deluxe Room',41,'',1,6,'2024-04-03 18:43:53','1zvpo-dr4.jpg'),(153,'Deluxe Room',41,'',1,7,'2024-04-03 18:43:53','wuodq-dr1.jpg'),(154,'Deluxe Room',41,'',1,8,'2024-04-03 18:43:53','AQIUa-dr3.jpg');
/*!40000 ALTER TABLE `tbl_subpackage_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subscribers`
--

DROP TABLE IF EXISTS `tbl_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subscribers`
--

LOCK TABLES `tbl_subscribers` WRITE;
/*!40000 ALTER TABLE `tbl_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_testimonial`
--

DROP TABLE IF EXISTS `tbl_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_testimonial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentOf` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linksrc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `sortorder` int NOT NULL,
  `status` int DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `via_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_testimonial`
--

LOCK TABLES `tbl_testimonial` WRITE;
/*!40000 ALTER TABLE `tbl_testimonial` DISABLE KEYS */;
INSERT INTO `tbl_testimonial` VALUES (4,0,'lorem','','#','<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est.</p>\r\n<p>\r\n	&nbsp;</p>\r\n',0,1,0,'','',0);
/*!40000 ALTER TABLE `tbl_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `middle_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `optional_email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hall_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hr_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(65) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `accesskey` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_id` int NOT NULL,
  `access_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook_uid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook_accesstoken` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'admin','','','','swarna@longtail.info','swarna@longtail.info','statshakya@gmail.com','statshakya@gmail.com','admin','32b9da145699ea9058dd7d6669e6bcc5','n4OOLLwvu3Te1QBGs2vElGW4e','',2,'IKLxivj8RW','','','2021-04-29 05:40:38',1,1,'2014-03-26',_binary 'a:21:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"25\";i:4;s:2:\"24\";i:5;s:2:\"23\";i:6;s:1:\"4\";i:7;s:3:\"302\";i:8;s:3:\"303\";i:9;s:1:\"5\";i:10;s:2:\"27\";i:11;s:3:\"300\";i:12;s:3:\"301\";i:13;s:2:\"11\";i:14;s:3:\"304\";i:15;s:2:\"17\";i:16;s:2:\"20\";i:17;s:2:\"28\";i:18;s:2:\"12\";i:19;s:2:\"13\";i:20;s:2:\"14\";}'),(2,'Super admin','','','','support@longtail.info','support@longtail.info','support@longtail.info','support@longtail.info','superadmin','32b9da145699ea9058dd7d6669e6bcc5','5BnuwlwbgTcJNtbymC8Kmq23e','',1,'','','','2024-10-08 10:27:26',1,0,'0000-00-00',_binary 'a:26:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:3:\"306\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:2:\"25\";i:6;s:2:\"24\";i:7;s:2:\"23\";i:8;s:1:\"4\";i:9;s:3:\"302\";i:10;s:3:\"303\";i:11;s:1:\"5\";i:12;s:2:\"27\";i:13;s:3:\"300\";i:14;s:3:\"301\";i:15;s:3:\"305\";i:16;s:2:\"11\";i:17;s:2:\"17\";i:18;s:3:\"304\";i:19;s:2:\"20\";i:20;s:2:\"19\";i:21;s:2:\"28\";i:22;s:2:\"12\";i:23;s:2:\"13\";i:24;s:2:\"14\";i:25;s:2:\"16\";}'),(3,'asdasd','asdasd','asdasd','','stat@gmail.com','stat@gmail.com','stat@gmail.com','stat@gmail.com','asdas','80c9ef0fb86369cd25f90af27ef53a9e','XZtQjE8Rse66xhHG6sSVqzyDZ','',3,'','','','0000-00-00 00:00:00',1,2,'2024-01-10','');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vacency`
--

DROP TABLE IF EXISTS `tbl_vacency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_vacency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(50) NOT NULL,
  `type` int NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vacency`
--

LOCK TABLES `tbl_vacency` WRITE;
/*!40000 ALTER TABLE `tbl_vacency` DISABLE KEYS */;
INSERT INTO `tbl_vacency` VALUES (9,'Asst. Laundry Manager','Manager','Kathmandu, Nepal','asst-laundry-manager','1','<p>\r\n	Bachelor</p>\r\n','0000-00-00','2023-08-31','0000-00-00',1,1,'',0,'','','2023-08-28 15:12:02'),(10,'Painter / Plumber','Painter / Plumber','Kathmandu, Nepal','painter-plumber','1','<p>\r\n	<span style=\"color: rgb(71, 61, 53); font-family: Roboto, sans-serif; font-size: 20px; background-color: rgb(247, 246, 246);\">Painter / Plumber</span></p>\r\n','0000-00-00','2023-09-22','0000-00-00',3,1,'',0,'','','2023-08-29 11:42:43'),(12,'Sales Executive','Sales Executive','patan','sales-executive','1','<p>\r\n	asdasd</p>\r\n','0000-00-00','2023-09-15','0000-00-00',2,1,'',0,'','','2023-09-03 15:03:21');
/*!40000 ALTER TABLE `tbl_vacency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `url_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thumb_image` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `host` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_video`
--

LOCK TABLES `tbl_video` WRITE;
/*!40000 ALTER TABLE `tbl_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 19:10:33
