/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.1.37-MariaDB : Database - agrox
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`agrox` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `agrox`;

/*Table structure for table `attachments` */

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `foreign_id` bigint(20) unsigned NOT NULL,
  `type` enum('Image','PDF','MS-Word','MS-PowerPoint','Video') COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `attachments` */

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `rowId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` bigint(20) unsigned NOT NULL,
  `seller_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rowId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `carts` */

insert  into `carts`(`rowId`,`id`,`seller_id`,`user_id`,`image`,`name`,`details`,`qty`,`price`,`slug`,`created_at`,`updated_at`) values 
(4,28,1,11,'product_images/DziNUILD9fA3S8uymnQGMELQ0uvs9Fl4VOErSdQ8.jpeg','New Product -45 Updated','Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit ame',1,7778,'new-product-45-updated-mgluwbxaw6','2020-01-23 07:12:28','2020-01-23 07:12:28'),
(5,27,1,11,'product_images/kx2sNMmGK8kGTyz1RZyNODVvF85cIAxRHaCSNba4.jpeg','Farmer Product - 1','Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.',2,888,'farmer-product-1-dk8jbwsnhw','2020-01-23 07:14:41','2020-01-23 07:18:42'),
(6,21,1,11,'product_images/a4zsQkHtKsgmjFlyU8e7ItBSLUqe03z4b0B2vHHg.jpeg','Product - 3','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.',1,400,'product-3-hqroztprj4','2020-01-23 07:18:29','2020-01-23 07:18:29'),
(7,26,1,11,'product_images/F6gRNA1Fk1MYm2Betu5wGzGbPciUkvGJ4w0zjelX.jpeg','Product - 8','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.',1,900,'product-8-410gcquvrk','2020-01-25 05:02:14','2020-01-25 05:02:14'),
(8,25,1,11,'product_images/1sFDkcjs9NgGrSgialJ14QXSu2vgd45ATMLyRloG.jpeg','Product - 7','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.',1,700,'product-7-sntdx40e4t','2020-01-25 05:02:27','2020-01-25 05:02:27'),
(9,19,1,45,'product_images/kdrGXnxW2X8GGCb6DYJoUMofWXM1bTi420alY2ob.jpeg','Product - 1','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.',2,500,'product-1-kbaz9ck0vo','2020-01-28 04:14:37','2020-01-28 04:14:37'),
(10,28,1,45,'product_images/DziNUILD9fA3S8uymnQGMELQ0uvs9Fl4VOErSdQ8.jpeg','New Product -45 Updated','Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit ame',2,7778,'new-product-45-updated-mgluwbxaw6','2020-01-28 04:14:37','2020-01-28 04:14:37'),
(11,23,1,11,'product_images/7YBTFwMDkQbXF9BuqDYwtvsWqwZzUCa1JDVme6XH.jpeg','Product - 5','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.',1,800,'product-5-tlqtlmyvs5','2020-01-28 04:25:05','2020-01-28 04:25:05');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`parent_id`,`name`,`slug`,`deleted_at`,`created_at`,`updated_at`) values 
(2,NULL,'ab','molestiae-sunt-voluptatem-possimus-at-blanditiis-quod-deserunt-unde','2020-01-06 17:31:31','2020-01-02 20:27:11','2020-01-06 17:31:31'),
(3,NULL,'pariatur','earum-omnis-facilis-quaerat-ut-voluptatem-et-aliquid',NULL,'2020-01-02 20:27:11','2020-01-02 20:27:11'),
(4,NULL,'soluta','blanditiis-exercitationem-sit-necessitatibus-totam-qui',NULL,'2020-01-02 20:27:12','2020-01-02 20:27:12'),
(6,NULL,'voluptatem','et-assumenda-sunt-molestiae-hic',NULL,'2020-01-02 20:27:12','2020-01-02 20:27:12'),
(8,NULL,'debitis','est-perferendis-ipsa-sit',NULL,'2020-01-02 20:27:12','2020-01-02 20:27:12'),
(9,NULL,'vero','quaerat-unde-et-et-fugiat-iure',NULL,'2020-01-02 20:27:12','2020-01-02 20:27:12'),
(10,NULL,'non','quis-omnis-quae-similique-nihil-esse-qui',NULL,'2020-01-02 20:27:12','2020-01-02 20:27:12'),
(11,NULL,'Grain Crop','grain-crop-9xepajprjw',NULL,'2020-01-04 10:33:20','2020-01-04 10:33:20'),
(12,11,'Sub Crop Updated Again','sub-crop-updated-again-jkgdjbntzv',NULL,'2020-01-04 11:00:11','2020-01-04 17:17:38'),
(13,NULL,'New Category','new-category-yfpgpdrgs8',NULL,'2020-01-06 16:36:37','2020-01-06 16:36:37'),
(14,3,'new CAtery','new-catery-y44kngna1h',NULL,'2020-01-15 08:27:21','2020-01-15 08:27:47');

/*Table structure for table `category_post` */

DROP TABLE IF EXISTS `category_post`;

CREATE TABLE `category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_post_category_id_foreign` (`category_id`),
  KEY `category_post_post_id_foreign` (`post_id`),
  CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `category_post` */

insert  into `category_post`(`id`,`category_id`,`post_id`,`created_at`,`updated_at`) values 
(1,3,11,NULL,NULL),
(2,3,12,NULL,NULL),
(3,4,12,NULL,NULL),
(4,6,12,NULL,NULL),
(5,3,13,NULL,NULL),
(6,3,14,NULL,NULL),
(7,3,15,NULL,NULL),
(8,4,15,NULL,NULL),
(9,3,16,NULL,NULL),
(10,4,16,NULL,NULL),
(11,3,17,NULL,NULL),
(12,3,18,NULL,NULL),
(13,3,19,NULL,NULL),
(14,4,20,NULL,NULL);

/*Table structure for table `category_product` */

DROP TABLE IF EXISTS `category_product`;

CREATE TABLE `category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  KEY `category_product_category_id_foreign` (`category_id`),
  CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `category_product` */

insert  into `category_product`(`id`,`product_id`,`category_id`,`created_at`,`updated_at`) values 
(1,19,3,NULL,NULL),
(2,20,3,NULL,NULL),
(3,21,13,NULL,NULL),
(4,22,6,NULL,NULL),
(5,23,6,NULL,NULL),
(6,24,6,NULL,NULL),
(7,24,8,NULL,NULL),
(8,25,4,NULL,NULL),
(9,25,6,NULL,NULL),
(10,25,8,NULL,NULL),
(11,26,4,NULL,NULL),
(12,26,6,NULL,NULL),
(13,26,11,NULL,NULL),
(14,27,3,NULL,NULL),
(15,28,3,NULL,NULL),
(16,28,4,NULL,NULL),
(17,28,6,NULL,NULL),
(18,29,3,NULL,NULL),
(19,29,4,NULL,NULL);

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_province_id_foreign` (`province_id`),
  CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cities` */

insert  into `cities`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values 
(1,1,'Karachi','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(2,3,'Lahore','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(3,3,'Faisalābād','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(4,1,'Serai','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(5,3,'Rāwalpindi','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(6,3,'Multān','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(7,3,'Gujrānwāla','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(8,1,'Hyderābād City','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(9,4,'Peshāwar','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(10,4,'Abbottābād','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(11,3,'Islamabad','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(12,2,'Quetta','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(13,2,'Bannu','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(14,3,'Bahāwalpur','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(15,3,'Sargodha','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(16,3,'Siālkot City','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(17,1,'Sukkur','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(18,1,'Lārkāna','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(19,3,'Sheikhupura','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(20,1,'Mīrpur Khās','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(21,3,'Rahīmyār Khān','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(22,3,'Kohāt','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(23,2,'Jhang Sadr','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(24,3,'Gujrāt','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(25,1,'Bardār','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(26,3,'Kasūr','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(27,3,'Dera Ghāzi Khān','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(28,2,'Masīwāla','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(29,1,'Nawābshāh','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(30,2,'Okāra','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(31,5,'Gilgit','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(32,3,'Chiniot','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(33,3,'Sādiqābād','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(34,2,'Turbat','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(35,3,'Dera Ismāīl Khān','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(36,2,'Chaman','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(37,2,'Zhob','2020-01-09 05:25:07','2020-01-09 05:25:07'),
(38,2,'Mehra','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(39,2,'Parachinār','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(40,2,'Gwādar','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(41,2,'Kundiān','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(42,1,'Shahdād Kot','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(43,3,'Harīpur','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(44,1,'Matiāri','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(45,3,'Dera Allāhyār','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(46,2,'Lodhrān','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(47,2,'Batgrām','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(48,1,'Thatta','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(49,2,'Bāgh','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(50,1,'Badīn','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(51,4,'Mānsehra','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(52,2,'Ziārat','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(53,3,'Muzaffargarh','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(54,1,'Tando Allāhyār','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(55,1,'Dera Murād Jamāli','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(56,4,'Karak','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(57,4,'Mardan','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(58,4,'Uthal','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(59,4,'Nankāna Sāhib','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(60,4,'Bārkhān','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(61,4,'Hāfizābād','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(62,4,'Kotli','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(63,2,'Loralai','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(64,2,'Dera Bugti','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(65,2,'Jhang City','2020-01-09 05:25:08','2020-01-09 05:25:08'),
(66,3,'Sāhīwāl','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(67,1,'Sānghar','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(68,4,'Pākpattan','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(69,3,'Chakwāl','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(70,4,'Khushāb','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(71,1,'Ghotki','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(72,2,'Kohlu','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(73,2,'Khuzdār','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(74,2,'Awārān','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(75,1,'Nowshera','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(76,4,'Chārsadda','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(77,4,'Qila Abdullāh','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(78,3,'Bahāwalnagar','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(79,1,'Dādu','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(80,1,'Alīābad','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(81,2,'Lakki Marwat','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(82,2,'Tānk','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(83,2,'Chilās','2020-01-09 05:25:09','2020-01-09 05:25:09'),
(84,6,'Pishin','2020-01-09 05:25:09','2020-01-09 05:25:09');

/*Table structure for table `consultancies` */

DROP TABLE IF EXISTS `consultancies`;

CREATE TABLE `consultancies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consultant` bigint(20) unsigned NOT NULL,
  `consumer` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Accepted','Rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consultancies_consultant_foreign` (`consultant`),
  KEY `consultancies_consumer_foreign` (`consumer`),
  KEY `consultancies_category_id_foreign` (`category_id`),
  CONSTRAINT `consultancies_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `consultancies_consultant_foreign` FOREIGN KEY (`consultant`) REFERENCES `users` (`id`),
  CONSTRAINT `consultancies_consumer_foreign` FOREIGN KEY (`consumer`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `consultancies` */

insert  into `consultancies`(`id`,`consultant`,`consumer`,`category_id`,`title`,`description`,`status`,`deleted_at`,`created_at`,`updated_at`) values 
(13,5,11,3,'Creating a test m[post','qwertyui','Pending','2020-01-14 05:58:13','2020-01-14 04:35:53','2020-01-14 05:58:13'),
(15,5,11,3,'Creating a test m[post 78','ghnj','Accepted',NULL,'2020-01-14 06:42:09','2020-01-14 06:42:46'),
(17,8,10,3,'Creating a test m[post78768','fghj','Accepted',NULL,'2020-01-15 08:32:35','2020-01-15 08:33:29'),
(18,8,10,3,'mansoor','vbnjm,','Pending',NULL,'2020-01-16 04:13:12','2020-01-16 04:13:12'),
(19,8,10,3,'mansoor','kbhj','Pending',NULL,'2020-01-16 04:13:24','2020-01-16 04:13:24'),
(20,9,10,4,'Test RAting for Consultant','Cras ultricies ligula sed magna dictum porta. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Cras ultricies ligula sed magna dictum porta. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus.','Accepted',NULL,'2020-01-25 07:22:24','2020-01-25 07:23:23'),
(21,9,10,3,'Anything different','Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Nulla porttitor accumsan tincidunt. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh.','Accepted',NULL,'2020-01-25 07:28:14','2020-01-25 07:28:34');

/*Table structure for table `consultant_reviews` */

DROP TABLE IF EXISTS `consultant_reviews`;

CREATE TABLE `consultant_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consultancy_id` bigint(20) DEFAULT NULL,
  `consultant` bigint(20) unsigned NOT NULL,
  `consumer` bigint(20) unsigned NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consultant_reviews_consultant_foreign` (`consultant`),
  KEY `consultant_reviews_consumer_foreign` (`consumer`),
  CONSTRAINT `consultant_reviews_consultant_foreign` FOREIGN KEY (`consultant`) REFERENCES `users` (`id`),
  CONSTRAINT `consultant_reviews_consumer_foreign` FOREIGN KEY (`consumer`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `consultant_reviews` */

insert  into `consultant_reviews`(`id`,`consultancy_id`,`consultant`,`consumer`,`rating`,`review`,`created_at`,`updated_at`) values 
(11,13,5,11,4,NULL,NULL,NULL),
(12,17,8,10,2,NULL,NULL,'2020-01-25 07:21:12'),
(13,20,9,10,3,NULL,'2020-01-25 07:27:22','2020-01-25 07:27:22'),
(14,21,9,10,4,NULL,'2020-01-25 07:29:06','2020-01-25 07:29:06');

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`code`,`name`,`created_at`,`updated_at`) values 
(1,'AF','Afghanistan','2020-01-09 10:03:26','2020-01-09 10:03:26'),
(2,'AL','Albania','2020-01-09 10:03:26','2020-01-09 10:03:26'),
(3,'DZ','Algeria','2020-01-09 10:03:26','2020-01-09 10:03:26'),
(4,'DS','American Samoa','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(5,'AD','Andorra','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(6,'AO','Angola','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(7,'AI','Anguilla','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(8,'AQ','Antarctica','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(9,'AG','Antigua and Barbuda','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(10,'AR','Argentina','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(11,'AM','Armenia','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(12,'AW','Aruba','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(13,'AU','Australia','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(14,'AT','Austria','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(15,'AZ','Azerbaijan','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(16,'BS','Bahamas','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(17,'BH','Bahrain','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(18,'BD','Bangladesh','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(19,'BB','Barbados','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(20,'BY','Belarus','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(21,'BE','Belgium','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(22,'BZ','Belize','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(23,'BJ','Benin','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(24,'BM','Bermuda','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(25,'BT','Bhutan','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(26,'BO','Bolivia','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(27,'BA','Bosnia and Herzegovina','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(28,'BW','Botswana','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(29,'BV','Bouvet Island','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(30,'BR','Brazil','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(31,'IO','British Indian Ocean Territory','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(32,'BN','Brunei Darussalam','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(33,'BG','Bulgaria','2020-01-09 10:03:27','2020-01-09 10:03:27'),
(34,'BF','Burkina Faso','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(35,'BI','Burundi','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(36,'KH','Cambodia','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(37,'CM','Cameroon','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(38,'CA','Canada','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(39,'CV','Cape Verde','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(40,'KY','Cayman Islands','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(41,'CF','Central African Republic','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(42,'TD','Chad','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(43,'CL','Chile','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(44,'CN','China','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(45,'CX','Christmas Island','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(46,'CC','Cocos (Keeling) Islands','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(47,'CO','Colombia','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(48,'KM','Comoros','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(49,'CD','Democratic Republic of the Congo','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(50,'CG','Republic of Congo','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(51,'CK','Cook Islands','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(52,'CR','Costa Rica','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(53,'HR','Croatia (Hrvatska)','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(54,'CU','Cuba','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(55,'CY','Cyprus','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(56,'CZ','Czech Republic','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(57,'DK','Denmark','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(58,'DJ','Djibouti','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(59,'DM','Dominica','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(60,'DO','Dominican Republic','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(61,'TP','East Timor','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(62,'EC','Ecuador','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(63,'EG','Egypt','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(64,'SV','El Salvador','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(65,'GQ','Equatorial Guinea','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(66,'ER','Eritrea','2020-01-09 10:03:28','2020-01-09 10:03:28'),
(67,'EE','Estonia','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(68,'ET','Ethiopia','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(69,'FK','Falkland Islands (Malvinas)','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(70,'FO','Faroe Islands','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(71,'FJ','Fiji','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(72,'FI','Finland','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(73,'FR','France','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(74,'FX','France, Metropolitan','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(75,'GF','French Guiana','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(76,'PF','French Polynesia','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(77,'TF','French Southern Territories','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(78,'GA','Gabon','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(79,'GM','Gambia','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(80,'GE','Georgia','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(81,'DE','Germany','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(82,'GH','Ghana','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(83,'GI','Gibraltar','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(84,'GK','Guernsey','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(85,'GR','Greece','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(86,'GL','Greenland','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(87,'GD','Grenada','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(88,'GP','Guadeloupe','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(89,'GU','Guam','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(90,'GT','Guatemala','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(91,'GN','Guinea','2020-01-09 10:03:29','2020-01-09 10:03:29'),
(92,'GW','Guinea-Bissau','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(93,'GY','Guyana','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(94,'HT','Haiti','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(95,'HM','Heard and Mc Donald Islands','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(96,'HN','Honduras','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(97,'HK','Hong Kong','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(98,'HU','Hungary','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(99,'IS','Iceland','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(100,'IN','India','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(101,'IM','Isle of Man','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(102,'ID','Indonesia','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(103,'IR','Iran (Islamic Republic of)','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(104,'IQ','Iraq','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(105,'IE','Ireland','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(106,'IL','Israel','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(107,'IT','Italy','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(108,'CI','Ivory Coast','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(109,'JE','Jersey','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(110,'JM','Jamaica','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(111,'JP','Japan','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(112,'JO','Jordan','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(113,'KZ','Kazakhstan','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(114,'KE','Kenya','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(115,'KI','Kiribati','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(116,'KP','Korea, Democratic People\'s Republic of','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(117,'KR','Korea, Republic of','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(118,'XK','Kosovo','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(119,'KW','Kuwait','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(120,'KG','Kyrgyzstan','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(121,'LA','Lao People\'s Democratic Republic','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(122,'LV','Latvia','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(123,'LB','Lebanon','2020-01-09 10:03:30','2020-01-09 10:03:30'),
(124,'LS','Lesotho','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(125,'LR','Liberia','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(126,'LY','Libyan Arab Jamahiriya','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(127,'LI','Liechtenstein','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(128,'LT','Lithuania','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(129,'LU','Luxembourg','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(130,'MO','Macau','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(131,'MK','North Macedonia','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(132,'MG','Madagascar','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(133,'MW','Malawi','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(134,'MY','Malaysia','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(135,'MV','Maldives','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(136,'ML','Mali','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(137,'MT','Malta','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(138,'MH','Marshall Islands','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(139,'MQ','Martinique','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(140,'MR','Mauritania','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(141,'MU','Mauritius','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(142,'TY','Mayotte','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(143,'MX','Mexico','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(144,'FM','Micronesia, Federated States of','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(145,'MD','Moldova, Republic of','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(146,'MC','Monaco','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(147,'MN','Mongolia','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(148,'ME','Montenegro','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(149,'MS','Montserrat','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(150,'MA','Morocco','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(151,'MZ','Mozambique','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(152,'MM','Myanmar','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(153,'NA','Namibia','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(154,'NR','Nauru','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(155,'NP','Nepal','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(156,'NL','Netherlands','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(157,'AN','Netherlands Antilles','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(158,'NC','New Caledonia','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(159,'NZ','New Zealand','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(160,'NI','Nicaragua','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(161,'NE','Niger','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(162,'NG','Nigeria','2020-01-09 10:03:31','2020-01-09 10:03:31'),
(163,'NU','Niue','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(164,'NF','Norfolk Island','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(165,'MP','Northern Mariana Islands','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(166,'NO','Norway','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(167,'OM','Oman','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(168,'PK','Pakistan','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(169,'PW','Palau','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(170,'PS','Palestine','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(171,'PA','Panama','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(172,'PG','Papua New Guinea','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(173,'PY','Paraguay','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(174,'PE','Peru','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(175,'PH','Philippines','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(176,'PN','Pitcairn','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(177,'PL','Poland','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(178,'PT','Portugal','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(179,'PR','Puerto Rico','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(180,'QA','Qatar','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(181,'RE','Reunion','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(182,'RO','Romania','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(183,'RU','Russian Federation','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(184,'RW','Rwanda','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(185,'KN','Saint Kitts and Nevis','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(186,'LC','Saint Lucia','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(187,'VC','Saint Vincent and the Grenadines','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(188,'WS','Samoa','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(189,'SM','San Marino','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(190,'ST','Sao Tome and Principe','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(191,'SA','Saudi Arabia','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(192,'SN','Senegal','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(193,'RS','Serbia','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(194,'SC','Seychelles','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(195,'SL','Sierra Leone','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(196,'SG','Singapore','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(197,'SK','Slovakia','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(198,'SI','Slovenia','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(199,'SB','Solomon Islands','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(200,'SO','Somalia','2020-01-09 10:03:32','2020-01-09 10:03:32'),
(201,'ZA','South Africa','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(202,'GS','South Georgia South Sandwich Islands','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(203,'SS','South Sudan','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(204,'ES','Spain','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(205,'LK','Sri Lanka','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(206,'SH','St. Helena','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(207,'PM','St. Pierre and Miquelon','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(208,'SD','Sudan','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(209,'SR','Suriname','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(210,'SJ','Svalbard and Jan Mayen Islands','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(211,'SZ','Swaziland','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(212,'SE','Sweden','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(213,'CH','Switzerland','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(214,'SY','Syrian Arab Republic','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(215,'TW','Taiwan','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(216,'TJ','Tajikistan','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(217,'TZ','Tanzania, United Republic of','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(218,'TH','Thailand','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(219,'TG','Togo','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(220,'TK','Tokelau','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(221,'TO','Tonga','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(222,'TT','Trinidad and Tobago','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(223,'TN','Tunisia','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(224,'TR','Turkey','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(225,'TM','Turkmenistan','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(226,'TC','Turks and Caicos Islands','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(227,'TV','Tuvalu','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(228,'UG','Uganda','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(229,'UA','Ukraine','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(230,'AE','United Arab Emirates','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(231,'GB','United Kingdom','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(232,'US','United States','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(233,'UM','United States minor outlying islands','2020-01-09 10:03:33','2020-01-09 10:03:33'),
(234,'UY','Uruguay','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(235,'UZ','Uzbekistan','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(236,'VU','Vanuatu','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(237,'VA','Vatican City State','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(238,'VE','Venezuela','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(239,'VN','Vietnam','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(240,'VG','Virgin Islands (British)','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(241,'VI','Virgin Islands (U.S.)','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(242,'WF','Wallis and Futuna Islands','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(243,'EH','Western Sahara','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(244,'YE','Yemen','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(245,'ZM','Zambia','2020-01-09 10:03:34','2020-01-09 10:03:34'),
(246,'ZW','Zimbabwe','2020-01-09 10:03:34','2020-01-09 10:03:34');

/*Table structure for table `discussions` */

DROP TABLE IF EXISTS `discussions`;

CREATE TABLE `discussions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `discussion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussions_user_id_foreign` (`user_id`),
  KEY `discussions_post_id_foreign` (`post_id`),
  CONSTRAINT `discussions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `discussions` */

insert  into `discussions`(`id`,`user_id`,`post_id`,`discussion`,`deleted_at`,`created_at`,`updated_at`) values 
(1,11,11,'Nice Post',NULL,'2020-01-11 04:39:42','2020-01-11 04:39:42'),
(2,11,11,'hello testing comment',NULL,'2020-01-11 04:46:52','2020-01-11 04:46:52'),
(3,11,11,'hh',NULL,'2020-01-11 04:47:45','2020-01-11 04:47:45'),
(4,11,11,'gg',NULL,'2020-01-11 04:48:04','2020-01-11 04:48:04'),
(5,11,11,'kkkk',NULL,'2020-01-11 04:49:41','2020-01-11 04:49:41'),
(6,11,11,'nn',NULL,'2020-01-11 05:16:32','2020-01-11 05:16:32'),
(7,11,11,'New Comment',NULL,'2020-01-11 05:20:16','2020-01-11 05:20:16'),
(8,11,11,'New comment 2',NULL,'2020-01-11 05:20:56','2020-01-11 05:20:56'),
(9,11,11,'New comment 3',NULL,'2020-01-11 05:22:59','2020-01-11 05:22:59'),
(10,6,11,'Ne comment during test',NULL,'2020-01-15 08:22:37','2020-01-15 08:22:37'),
(11,6,17,'This question is common you should be looking for another post that is answered.',NULL,'2020-01-16 07:00:59','2020-01-16 07:00:59'),
(12,5,16,'<p>New Comment Test whereDate</p>',NULL,'2020-01-12 07:51:44','2020-01-16 07:51:44'),
(14,11,17,'<p>hello</p>',NULL,'2020-01-23 07:51:01','2020-01-23 07:51:01'),
(15,11,17,'<p>ghjk</p><p><b>;;;;;;</b></p><h3><b>dfghjkl</b></h3><ol><li><b><br></b></li><li><b>l\'/</b></li><li><b><br></b></li><li><b>l]l]</b></li><li><b><br></b></li><li><b>[;[l</b></li><li><b><br></b></li></ol>',NULL,'2020-01-23 07:53:51','2020-01-23 07:53:51'),
(16,11,14,'Hello there',NULL,'2020-01-28 04:25:35','2020-01-28 04:25:35'),
(17,11,20,'<p>Anser One</p>',NULL,'2020-01-28 04:49:24','2020-01-28 04:49:24');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `likes` */

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_user_id_foreign` (`user_id`),
  KEY `likes_post_id_foreign` (`post_id`),
  CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `likes` */

insert  into `likes`(`id`,`user_id`,`post_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,2,13,NULL,'2020-01-20 05:45:32','2020-01-20 05:45:32'),
(2,4,13,NULL,'2020-01-20 05:46:02','2020-01-20 06:54:33'),
(4,5,13,NULL,'2020-01-20 05:57:40','2020-01-20 05:57:45'),
(5,5,15,NULL,'2020-01-20 07:39:11','2020-01-20 07:39:11'),
(6,11,14,NULL,'2020-01-28 04:25:42','2020-01-28 04:26:08'),
(7,11,11,NULL,'2020-01-28 04:31:11','2020-01-28 04:34:21');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_18_161547_create_social_providers_table',1),
(5,'2019_12_31_043853_create_products_table',1),
(6,'2019_12_31_043913_create_categories_table',1),
(7,'2019_12_31_051116_create_posts_table',1),
(8,'2019_12_31_051703_create_orders_table',1),
(9,'2019_12_31_052249_create_order_product_table',1),
(10,'2019_12_31_065312_create_category_product_table',1),
(11,'2019_12_31_145953_create_roles_table',1),
(12,'2019_12_31_150126_create_permissions_table',1),
(13,'2019_12_31_150256_create_permission_role_table',1),
(14,'2019_12_31_150330_add_role_id_to_users_table',1),
(15,'2019_12_31_173437_create_proficiencies_table',1),
(16,'2019_12_31_173726_add_proficiency_id_to_users_table',1),
(17,'2019_12_31_184123_create_discussions_table',1),
(18,'2019_12_31_184349_create_likes_table',1),
(19,'2019_12_31_184544_create_ratings_table',1),
(20,'2019_12_31_195042_create_consultancies_table',1),
(21,'2019_12_31_200301_create_private_messages_table',1),
(22,'2019_12_31_203703_create_category_post_table',1),
(23,'2020_01_01_110203_create_product_reviews_table',1),
(24,'2020_01_01_110335_create_consultant_reviews_table',1),
(25,'2018_08_08_100000_create_telescope_entries_table',2),
(26,'2020_01_06_050047_create_attachments_table',3),
(27,'2020_01_09_044521_create_countries_table',3),
(28,'2020_01_09_044552_create_provinces_table',3),
(29,'2020_01_09_044620_create_cities_table',3),
(30,'2020_01_09_053403_add_city_id_to_users_table',4),
(34,'2020_01_23_050452_create_carts_table',5);

/*Table structure for table `order_product` */

DROP TABLE IF EXISTS `order_product`;

CREATE TABLE `order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) NOT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_product_order_id_foreign` (`order_id`),
  KEY `order_product_product_id_foreign` (`product_id`),
  CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_product` */

insert  into `order_product`(`id`,`seller_id`,`order_id`,`product_id`,`quantity`,`created_at`,`updated_at`) values 
(1,0,1,21,2,'2020-01-09 04:23:02','2020-01-09 04:23:02'),
(2,0,1,19,3,'2020-01-09 04:23:02','2020-01-09 04:23:02'),
(3,10,2,27,6,'2020-01-15 04:28:55','2020-01-15 04:28:55'),
(4,0,3,24,4,'2020-01-15 08:20:35','2020-01-15 08:20:35'),
(5,0,3,25,1,'2020-01-15 08:20:35','2020-01-15 08:20:35'),
(6,0,4,28,1,'2020-01-18 05:38:34','2020-01-18 05:38:34'),
(7,0,5,28,2,'2020-01-23 06:43:42','2020-01-23 06:43:42'),
(8,0,6,25,1,'2020-01-23 06:59:08','2020-01-23 06:59:08'),
(9,0,7,28,1,'2020-01-23 07:02:13','2020-01-23 07:02:13'),
(10,1,9,28,1,'2020-01-23 07:04:55','2020-01-23 07:04:55');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_postalcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `shipping_charges` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` enum('Complete','Pending','Cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`user_id`,`billing_email`,`billing_name`,`billing_address`,`shipping_address`,`billing_city`,`billing_province`,`billing_postalcode`,`billing_phone`,`billing_subtotal`,`shipping_charges`,`billing_total`,`quantity`,`status`,`deleted_at`,`created_at`,`updated_at`) values 
(1,NULL,'mansoor@gmail.com','Mansoor Khhan','Soceity','society','Jamshoro','Sindh','5678','456789',2300,200,2500,NULL,'Pending','2020-01-15 08:30:15','2020-01-09 04:23:02','2020-01-15 08:30:15'),
(2,6,'price.bill@example.com','Prof. Jovany Deckow II','906 Friesen Key\r\nPort Stewartfort, OR 73154','906 Friesen Key\r\nPort Stewartfort, OR 73154','9','1','888','(772) 326-0035 x237',5328,200,5528,NULL,'Complete',NULL,'2020-01-15 04:28:54','2020-01-15 05:43:49'),
(3,6,'price.bill@example.com','Prof. Jovany Deckow II','906 Friesen Key\r\nPort Stewartfort, OR 73154','906 Friesen Key\r\nPort Stewartfort, OR 73154','8','1','5678','(772) 326-0035 x237',3100,200,3300,NULL,'Complete',NULL,'2020-01-15 08:20:35','2020-01-15 08:30:04'),
(4,6,'price.bill@example.com','Prof. Jovany Deckow II','906 Friesen KeyPort Stewartfort, OR 73154','906 Friesen KeyPort Stewartfort, OR 73154','1','1','5678','(772) 326-0035 x237',7778,200,7978,NULL,'Pending',NULL,'2020-01-18 05:38:33','2020-01-18 05:38:33'),
(5,11,'mansoor@gmail.com','Mansoor Khan','hjkl','kl;','1','1','45678','567890-5790',15556,200,15756,NULL,'Pending',NULL,'2020-01-23 06:43:42','2020-01-23 06:43:42'),
(6,11,'mansoor@gmail.com','Mansoor Khan','dfg','hjk','8','1','6789','567890-5790',700,200,900,NULL,'Pending',NULL,'2020-01-23 06:59:08','2020-01-23 06:59:08'),
(7,11,'mansoor@gmail.com','Mansoor Khan','jnjk','kk','9','1','67890','567890-5790',7778,200,7978,NULL,'Pending',NULL,'2020-01-23 07:02:13','2020-01-23 07:02:13'),
(9,11,'mansoor@gmail.com','Mansoor Khan','ukl','jkl','15','1','4567','67890',7778,200,7978,NULL,'Pending',NULL,'2020-01-23 07:04:54','2020-01-23 07:04:54');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`controller`,`method`,`created_at`,`updated_at`) values 
(1,'Show All Posts','PostController','index','2020-01-02 20:27:16','2020-01-02 20:27:16'),
(2,'Edit Posts','PostController','edit','2020-01-02 20:27:16','2020-01-02 20:27:16'),
(3,'Delete Post','PostController','destroy','2020-01-02 20:27:17','2020-01-02 20:27:17'),
(4,'Show Single Post','PostController','show','2020-01-02 20:27:17','2020-01-02 20:27:17');

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` enum('post','discussion') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` enum('success_story','farmer_experience') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `posts` */

insert  into `posts`(`id`,`user_id`,`title`,`excerpt`,`body`,`featured_image`,`attachments`,`slug`,`post_type`,`tag`,`deleted_at`,`created_at`,`updated_at`) values 
(11,1,'Post - 1','Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.','<p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.<br></p><h3>Heading - 1</h3><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><h2>Headoiign 2</h2><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.<br></p>','product_images/AS4pTu3eIJsOX6Paj1yN222FNoJwsmM4vhpRbmQt.jpeg','post_attachments/gb6sXgkRFiMmt8cujy7iALnukNwAr37hrsWQU9nD.jpeg,post_attachments/TVEDvtq9MfIkhBslz6FW0AZGCylKyMNcgvlk3n8M.ppt,post_attachments/1Z7eLqialJrKkv58vsQHoGEhUyTbM7YWVb805zoA.pptx,post_attachments/Wkz0FES9TeC5i5T5nY03PyNOTs3I6qs9SCeP8ZUp.xlsx','post-1-tmhecyck5t','post',NULL,NULL,'2020-01-10 04:46:43','2020-01-10 04:46:43'),
(12,1,'Post - 2','Donec rutrum congue leo eget malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.','<p>Donec rutrum congue leo eget malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla porttitor accumsan tincidunt. Sed porttitor lectus nibh. Nulla porttitor accumsan tincidunt. <b>Curabi</b>tur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus suscipit tortor eget felis porttitor volutpat.<br></p>','product_images/cgJPJMNuxSRd2jRWa3RHVJPZ9XPdpkQZYjwL6MG6.jpeg','','post-2-v4uk5olvj7','post','success_story',NULL,'2020-01-10 05:01:51','2020-01-10 05:30:42'),
(13,1,'Post - 3','Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.','<p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.<br></p><h3>Heading - 1</h3><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><h2>Headoiign 2</h2><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.</p><p>Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta.<br></p>','product_images/t1FdUG6A5ZKoEfO29Le3YKppd5MzIFVZ7EEBsLxW.jpeg','','post-3-5zq04ovhxp','discussion','farmer_experience',NULL,'2020-01-10 05:21:59','2020-01-10 05:25:01'),
(14,1,'Consultant Post -1','Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.','<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.&nbsp;</p><p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.&nbsp;<br></p>','product_images/eMG4fvK3XzLQ5m59PopDW3qhmnZym7tVR85O6D8y.jpeg','','consultant-post-1-y6zrjllt2t','post',NULL,NULL,'2020-01-15 08:11:06','2020-01-15 08:11:06'),
(15,9,'Creating a test m[post as Consulatnt','Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec sollicitudin molestie malesuada. Curabitur aliquet quam id dui posuere blandit. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non ni','<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec sollicitudin molestie malesuada. Curabitur aliquet quam id dui posuere blandit. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non ni<br></p>','product_images/IQWqTMUBmOJm4zw9mp0jnaAsbjFtvPaghK66Offi.jpeg','','creating-a-test-mpost-as-consulatnt-f6e5ea3ln3','post',NULL,NULL,'2020-01-15 08:14:26','2020-01-15 08:14:26'),
(16,6,'Question - 1','Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Pellentesque in ipsum id orci porta dapibus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.','<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Pellentesque in ipsum id orci porta dapibus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.</p><p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Pellentesque in ipsum id orci porta dapibus. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.<br></p>','product_images/93SnHiVXT3FYzbN5lcsDM2ODxDMlwiKQocvCMV15.jpeg','','question-1-b08a5ga0uo','discussion',NULL,NULL,'2020-01-16 04:43:19','2020-01-16 04:43:19'),
(17,6,'Question - 2 Updated Againm','Cras ultricies ligula sed magna dictum porta. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.','<p>Cras ultricies ligula sed magna dictum porta. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. </p><p>Cras ultricies ligula sed magna dictum porta. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. <br></p>',NULL,'','question-2-updated-againm-y4n0wxshdr','discussion',NULL,NULL,'2020-01-16 05:42:14','2020-01-16 05:49:00'),
(18,5,'Creating a test m[post for forum','Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.','<p>Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p><p>Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p><p>Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.<br></p>',NULL,'','creating-a-test-mpost-for-forum-njuoeumg3z','discussion',NULL,NULL,'2020-01-16 07:56:50','2020-01-16 07:56:50'),
(19,5,'Forum - 4Creating a test m[post 7890-','Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.','<p>Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p><p>Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p><p>Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.<br></p>',NULL,'','forum-4creating-a-test-mpost-7890-oogpjl07mk','discussion',NULL,NULL,'2020-01-16 07:57:29','2020-01-16 07:57:29'),
(20,11,'New Question in forum','Nulla quis lorem ut libero malesuada feugiat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.','<p>Nulla quis lorem ut libero malesuada feugiat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.<br></p>',NULL,'','new-question-in-forum-sovhb3rxbl','discussion',NULL,NULL,'2020-01-28 04:47:12','2020-01-28 04:47:12');

/*Table structure for table `private_messages` */

DROP TABLE IF EXISTS `private_messages`;

CREATE TABLE `private_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consultancy_id` bigint(20) unsigned NOT NULL,
  `to` bigint(20) unsigned NOT NULL,
  `from` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `private_messages_consultancy_id_foreign` (`consultancy_id`),
  KEY `private_messages_consultant_foreign` (`to`),
  KEY `private_messages_consumer_foreign` (`from`),
  CONSTRAINT `private_messages_consultancy_id_foreign` FOREIGN KEY (`consultancy_id`) REFERENCES `consultancies` (`id`),
  CONSTRAINT `private_messages_consultant_foreign` FOREIGN KEY (`to`) REFERENCES `users` (`id`),
  CONSTRAINT `private_messages_consumer_foreign` FOREIGN KEY (`from`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `private_messages` */

insert  into `private_messages`(`id`,`consultancy_id`,`to`,`from`,`message`,`created_at`,`updated_at`) values 
(2,15,5,5,'jj','2020-01-14 06:42:53','2020-01-14 06:42:53'),
(3,15,5,5,'bnm,','2020-01-14 06:43:00','2020-01-14 06:43:00'),
(4,15,5,5,'mnb','2020-01-14 06:43:06','2020-01-14 06:43:06'),
(5,15,5,5,'fghjk','2020-01-14 06:43:12','2020-01-14 06:43:12'),
(6,17,8,8,'fghjk','2020-01-15 08:33:36','2020-01-15 08:33:36'),
(7,20,10,9,'Hello Buddy','2020-01-25 07:26:01','2020-01-25 07:26:01'),
(8,20,9,10,'I think you have read the description and know the solution','2020-01-25 07:27:15','2020-01-25 07:27:15'),
(9,21,10,9,'Explain your question please.','2020-01-25 07:28:53','2020-01-25 07:28:53');

/*Table structure for table `product_reviews` */

DROP TABLE IF EXISTS `product_reviews`;

CREATE TABLE `product_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_reviews_product_id_foreign` (`product_id`),
  KEY `product_reviews_user_id_foreign` (`user_id`),
  CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_reviews` */

insert  into `product_reviews`(`id`,`product_id`,`user_id`,`rating`,`review`,`created_at`,`updated_at`) values 
(1,19,11,3,'i recommend you to buy this product, you are not gonna disappointed. thanks for this amazing product. Thank you','2020-01-11 07:38:21','2020-01-11 07:38:21'),
(2,26,11,2,'dont buy','2020-01-11 08:01:09','2020-01-11 08:05:37');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`user_id`,`name`,`slug`,`price`,`details`,`description`,`featured_image`,`images`,`featured`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values 
(19,1,'Product - 1','product-1-kbaz9ck0vo',500,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/kdrGXnxW2X8GGCb6DYJoUMofWXM1bTi420alY2ob.jpeg','product_images/4fngj5BuTrrhzCeT7BiFAAnN4mDUn1GqGIaZndij.jpeg,product_images/CjMiUAokN4nw0TDviGe5Gpv33SwKl6xYOmtW2gNF.jpeg',1,100,NULL,'2020-01-07 14:01:07','2020-01-07 14:01:07'),
(20,1,'Product - 2','product-2-g3ify71vvt',600,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/yDaOuEaUxMwDziR1yneVXIIVUQeRlP178lQlLHx1.jpeg','product_images/B4mHRe37vBUbfXTrHgmRF1aOVSmZHVyiXNiiqrGo.jpeg,product_images/044CrWSP3GwfFnUduIQNYJDnTwuVc22VjEX5Haw3.jpeg',1,50,NULL,'2020-01-07 14:02:33','2020-01-07 14:02:33'),
(21,1,'Product - 3','product-3-hqroztprj4',400,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/a4zsQkHtKsgmjFlyU8e7ItBSLUqe03z4b0B2vHHg.jpeg','product_images/HiH12JFq5JwXEWgJ0K1kXWaSV39eJbLObeH72Q5j.jpeg,product_images/1Bzk0Jalg0NI42wrHrqq74kA3WV5GAAgyp7ZJbPw.jpeg,product_images/OUq5nUPhAGxGQwo4Yo7XRDX31jlozidBM8iIrI5x.jpeg',1,60,NULL,'2020-01-07 14:03:46','2020-01-07 14:03:46'),
(22,1,'Product - 4','product-4-pwlpq6f0qi',700,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/xklRYbQyd4EwELUoIwJ8Dpx7HOtjZBTDaNyoQmid.jpeg','product_images/0R5Whoy2XrtTkdZvrCLJmwmMpKqAr4Z8T6NPI3B4.jpeg,product_images/3FF0IHSxB2pXKmVfipu69EE3ataX0US6gq6bJGJS.jpeg',1,80,NULL,'2020-01-07 14:04:32','2020-01-07 14:04:32'),
(23,1,'Product - 5','product-5-tlqtlmyvs5',800,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/7YBTFwMDkQbXF9BuqDYwtvsWqwZzUCa1JDVme6XH.jpeg','product_images/8o6NXUnh24H6mDs7apZHWeMcsIsOpYTZTjGV7Dt0.jpeg,product_images/LcbmPFYQ2XI3DsLJaQu1fWhjmeNEhnAZyNNHIITT.jpeg',1,40,NULL,'2020-01-07 14:05:45','2020-01-07 14:05:45'),
(24,1,'Product - 6','product-6-pfeczevlco',600,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/YcOF3Wo898gNgAyGZvdA9WUnsbZVCCWzjXFv3jyy.jpeg','product_images/NX6leaG9pqQWi0bViHBOBgZpyjwDD2ncM3puzXE3.jpeg,product_images/ksxMrBx0AcFpbheykAaLmBjYvmE7T9dMUIxIahmF.jpeg',1,80,NULL,'2020-01-07 14:06:34','2020-01-07 14:06:34'),
(25,1,'Product - 7','product-7-sntdx40e4t',700,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/1sFDkcjs9NgGrSgialJ14QXSu2vgd45ATMLyRloG.jpeg','product_images/FIWT3IwcDnAEKcDOHHb9R4BaFSdki95XRx2rt7te.jpeg,product_images/1P4zrIbsEHds3gdCzQRllNUx2j4eOwDAH2R7UBo7.jpeg,product_images/EpHvj0jZN4Fr1fMFpd5qFtoZpfpyFHlVfhFlsLaP.jpeg,product_images/N1y1vZ949YLv6EZPAaqcRczwaiEDVxzm8XNFX93N.jpeg',1,69,NULL,'2020-01-07 14:07:29','2020-01-23 06:59:08'),
(26,1,'Product - 8','product-8-410gcquvrk',900,'Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','Nulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.\r\nNulla quis lorem ut libero malesuada feugiat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat.','product_images/F6gRNA1Fk1MYm2Betu5wGzGbPciUkvGJ4w0zjelX.jpeg','product_images/pOhVW6x8gGsDJfBfMBl3GsrrNEGcAUiDsCtvZmqn.jpeg,product_images/QuOwt6bPwtsV02MRhoNVst4H4mRLVUeXbx4z7Moy.jpeg,product_images/RfE1dBcaifUZbhbFLnA4f26dyh95gbFLmE7o8vk3.jpeg',1,90,NULL,'2020-01-07 14:08:36','2020-01-10 05:14:42'),
(27,1,'Farmer Product - 1','farmer-product-1-dk8jbwsnhw',888,'Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.','<ul><li>Cras ultricies ligula sed magna dictum porta. Vivamus magna justo,</li><li>Cras ultricies ligula sed magna dictum porta. </li><li>Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</li><li>Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed,</li><li>Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</li></ul><p>Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.<br></p>','product_images/kx2sNMmGK8kGTyz1RZyNODVvF85cIAxRHaCSNba4.jpeg','',0,100,NULL,'2020-01-15 04:26:28','2020-01-18 07:27:29'),
(28,1,'New Product -45 Updated','new-product-45-updated-mgluwbxaw6',7778,'Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit ame','<ul><li>fghjkl;\'</li><li>hjkl;</li></ul><p>ghjklDonec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit ame</p><p>Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit ame<br></p>','product_images/DziNUILD9fA3S8uymnQGMELQ0uvs9Fl4VOErSdQ8.jpeg','product_images/SD41LxKGSJJBdMfhjxMigI0jm5AEXyAp8YY2fKZk.jpeg,product_images/pN47liJWLjNuASwQ9lkPt8sUlL1kBSGO3hgigki7.jpeg,product_images/XDV6ySm7jb9MBgGQFND1rQTVVoA4Q7Sk9wB6c3h7.jpeg',1,74,NULL,'2020-01-15 08:28:57','2020-01-23 07:04:55'),
(29,1,'Test product','test-product-zreuq8sa9u',12345,'nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.','<p>nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><p>nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><p>nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p><p>nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.<br></p>','product_images/6xi4fhS8YWUFCU5I45j37FI4pZEaHf6hdZuFrJZM.jpeg','product_images/Xr69Z2Y0dqUZoAgBosR6EHsCmfELKygyDAodXImd.jpeg',1,99,NULL,'2020-01-28 04:45:36','2020-01-28 04:45:36');

/*Table structure for table `proficiencies` */

DROP TABLE IF EXISTS `proficiencies`;

CREATE TABLE `proficiencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `proficiency` enum('Expert','Advanced','Intermediate','Novice','Not Applicable') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `proficiencies` */

insert  into `proficiencies`(`id`,`proficiency`,`description`,`created_at`,`updated_at`) values 
(1,'Expert','You are known as an expert in this area. You can provide guidance, troubleshoot and answer questions related to this area of expertise and the field where the skill is used.','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(2,'Advanced','You can perform the actions associated with this skill without assistance. You are certainly recognized within your immediate organization as \"a person to ask\" when difficult questions arise regarding this skill.','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(3,'Intermediate','You are able to successfully complete tasks in this competency as requested. Help from an expert may be required from time to time, but you can usually perform the skill independently.','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(4,'Novice','You have the level of experience gained in a classroom and/or experimental scenarios or as a trainee on-the-job. You are expected to need help when performing this skill.','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(5,'Not Applicable','You have a common knowledge or an understanding of basic techniques and concepts.','2020-01-02 20:27:12','2020-01-02 20:27:12');

/*Table structure for table `provinces` */

DROP TABLE IF EXISTS `provinces`;

CREATE TABLE `provinces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `provinces_country_id_foreign` (`country_id`),
  CONSTRAINT `provinces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `provinces` */

insert  into `provinces`(`id`,`country_id`,`name`,`created_at`,`updated_at`) values 
(1,168,'Sindh','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(2,168,'Balochistan','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(3,168,'Punjab','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(4,168,'Khayber Pakhtunkhwa','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(5,168,'Gilgit–Baltistan','2020-01-09 05:25:06','2020-01-09 05:25:06'),
(6,168,'Azad Kashmir','2020-01-09 05:25:06','2020-01-09 05:25:06');

/*Table structure for table `ratings` */

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_user_id_foreign` (`user_id`),
  KEY `ratings_post_id_foreign` (`post_id`),
  CONSTRAINT `ratings_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ratings` */

insert  into `ratings`(`id`,`user_id`,`post_id`,`rating`,`created_at`,`updated_at`) values 
(1,11,11,5,'2020-01-11 04:15:18','2020-01-28 04:34:01'),
(2,6,14,2,'2020-01-15 08:21:40','2020-01-15 08:21:43'),
(3,5,12,0,'2020-01-20 06:38:55','2020-01-20 06:54:33'),
(4,5,15,0,'2020-01-20 07:39:11','2020-01-20 07:39:11'),
(5,11,14,5,'2020-01-28 04:25:42','2020-01-28 04:29:58');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`description`,`created_at`,`updated_at`) values 
(1,'Admin','Admin role description','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(2,'Farmer','Farmer role description','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(3,'Consultant','Consultant role description','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(4,'Academic','Academic role description','2020-01-02 20:27:12','2020-01-02 20:27:12'),
(5,'Other','Other role description','2020-01-02 20:27:12','2020-01-02 20:27:12');

/*Table structure for table `social_providers` */

DROP TABLE IF EXISTS `social_providers`;

CREATE TABLE `social_providers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `social_providers` */

insert  into `social_providers`(`id`,`user_id`,`provider_id`,`provider`,`created_at`,`updated_at`) values 
(1,12,'1256979234485628','facebook','2020-01-15 08:24:29','2020-01-15 08:24:29');

/*Table structure for table `telescope_entries` */

DROP TABLE IF EXISTS `telescope_entries`;

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  KEY `telescope_entries_batch_id_index` (`batch_id`),
  KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  KEY `telescope_entries_family_hash_index` (`family_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=39007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `telescope_entries` */

/*Table structure for table `telescope_entries_tags` */

DROP TABLE IF EXISTS `telescope_entries_tags`;

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  KEY `telescope_entries_tags_tag_index` (`tag`),
  CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `telescope_entries_tags` */

/*Table structure for table `telescope_monitoring` */

DROP TABLE IF EXISTS `telescope_monitoring`;

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `telescope_monitoring` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `proficiency_id` bigint(20) unsigned DEFAULT NULL,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  KEY `users_proficiency_id_foreign` (`proficiency_id`),
  KEY `users_city_id_foreign` (`city_id`),
  CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `users_proficiency_id_foreign` FOREIGN KEY (`proficiency_id`) REFERENCES `proficiencies` (`id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`proficiency_id`,`city_id`,`avatar`,`name`,`email`,`phone`,`bio`,`address`,`email_verified_at`,`password`,`remember_token`,`deleted_at`,`created_at`,`updated_at`) values 
(1,1,1,NULL,NULL,'Ford Farrell','eluettgen@example.com','514.783.1556 x4210',NULL,'71976 Moshe Avenue Apt. 856\nSouth Boyd, DC 90158','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ldbtPWzcG3',NULL,'2020-01-02 20:27:13','2020-01-02 20:27:13'),
(2,1,3,NULL,NULL,'Prof. Mervin Harber','tessie14@example.net','943-292-3494 x93853',NULL,'2079 Rolfson Extension Apt. 931\nLisettefort, KS 03866-4563','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yVYkB1kFod',NULL,'2020-01-02 20:27:13','2020-01-02 20:27:13'),
(3,4,1,5,NULL,'Darron Bosco IV','eolson@example.net','1-514-551-8190 x57502',NULL,'9190 Velda Underpass Suite 648New Marjolaine, CO 42759','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','l8c4iV8M5c',NULL,'2020-01-02 20:27:13','2020-01-28 04:41:52'),
(4,1,4,NULL,NULL,'Dayton Gleichner','aglae.dickinson@example.com','1-786-536-6047 x8384',NULL,'17252 Beulah Passage Suite 255\nDeionton, GA 05741','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8eT10JBKhn',NULL,'2020-01-02 20:27:13','2020-01-02 20:27:13'),
(5,1,1,16,'profiles/08cZy2ov6elH4UYlttOJbeznb0mquLbNq8vFJHXV.jpeg','Ford Farrell 2','mafalda@example.com','1234567890','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.','71976 Moshe Avenue Apt. 856South Boyd, DC 90158','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9yt34sES52YXcFGIS4sCqwPsNPyr3jzqcKw2TEBSHW2nCdipjMJ1L4pSgK3t',NULL,'2020-01-02 20:27:13','2020-01-14 08:11:23'),
(6,5,5,1,'profiles/pcTQq4D1p1srkT9wrdu8YNnpj9aTbnShfn5iouH5.jpeg','Prof. Jovany Deckow II','price.bill@example.com','(772) 326-0035 x237','Curabitur aliquet quam id dui posuere blandit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.','906 Friesen KeyPort Stewartfort, OR 73154','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mGQUBVVDbAQUtv18beT4eAvMKzusITf8V3JyeRm9i0WaQoikfebkHc8U9Bs5',NULL,'2020-01-02 20:27:13','2020-01-15 08:23:33'),
(7,1,5,NULL,NULL,'Candace Thompson','lorine.rowe@example.com','+1-818-723-6039',NULL,'7117 Dennis Course Suite 397\nEast Anika, OH 77877','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2an0zmknSV',NULL,'2020-01-02 20:27:13','2020-01-02 20:27:13'),
(8,3,1,NULL,NULL,'Shawn Will DVM','labadie.jaquan@example.com','584.224.7786',NULL,'91895 Prohaska Club\nNew Elsaview, NE 90085','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dVzQjsjm3D',NULL,'2020-01-02 20:27:13','2020-01-02 20:27:13'),
(9,3,5,NULL,NULL,'Orland Rowe','lawrence.abbott@example.com','+15057614067',NULL,'1030 Trinity Curve\nLesleyfurt, WI 79077','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HNr9OEP2Ldo3gkGerwep1Fays5FqrbqDudAnHhtYrYVjhVcciWndRKrB2INj',NULL,'2020-01-02 20:27:13','2020-01-02 20:27:13'),
(10,2,2,NULL,NULL,'Dr. Kathryne Yundt','braulio.schroeder@example.net','1-216-915-6544',NULL,'539 Jace Crossroad\nNorth Antonina, NH 07786-6756','2020-01-02 20:27:13','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8lylA1WHxFxkXMPwV79qcooeTJEL2xXPzlva7qgi0S6BoWGL4kPCQNWCWPi1',NULL,'2020-01-02 20:27:13','2020-01-02 20:27:13'),
(11,1,NULL,NULL,NULL,'Mansoor Khan','mansoor@gmail.com',NULL,NULL,NULL,NULL,'$2y$10$Th8PMqToggoDuvTcPtx6DeaaCazEIYm/04yBKVKu2kjZ0pxclTqYe',NULL,NULL,'2020-01-09 06:41:37','2020-01-09 06:41:37'),
(12,2,1,8,'https://graph.facebook.com/v3.3/1256979234485628/picture?type=normal','Mansoor Khan Aadeez','aadeeaslam7@gmail.com','6767890','rtyuiklkm','dfghj',NULL,NULL,NULL,NULL,'2020-01-15 08:24:29','2020-01-15 08:25:20'),
(13,NULL,NULL,NULL,NULL,'Test User 1','TestUser1@test.com',NULL,NULL,NULL,NULL,'$2y$04$cPQ7WHQ6DtpuFhoIBoDtv.CIWqITH67WwWY6UZTeTTff6dcYKSLFi',NULL,NULL,'2020-01-27 05:51:56','2020-01-27 05:51:56'),
(14,NULL,NULL,NULL,NULL,'John Doe','john@example.com',NULL,NULL,NULL,NULL,'$2y$04$JEI7KM2j8aQsn3drmDyJx.e7PMNtNP1xg/wPtW5bCOEiZlAhCDVqu',NULL,NULL,'2020-01-27 07:21:06','2020-01-27 07:21:06'),
(15,2,4,NULL,NULL,'Kip Prosacco','awolf@example.com','+19078127917',NULL,'459 Bins Ferry\nNew Jackelineport, IA 00662','2020-01-27 07:52:59','$2y$04$enW3lpfKzUZ0DoKHCJw9HecpZNsoc8pxJiEq2zsBvirkPeVHPRbqW','c2bQE9spPR',NULL,'2020-01-27 07:52:59','2020-01-27 07:52:59'),
(16,1,2,NULL,NULL,'Prof. Mohammad Schultz','agustin16@example.org','416-331-3152',NULL,'9411 Garth Stravenue Suite 824\nWest Cristobal, FL 82587','2020-01-27 07:53:15','$2y$04$2RJtTQnQ1TDbVw4dR.d5WuU7Ggrt7qq2BJNpO6VKUkXL09q5PTrFm','KJG0WZPVXF',NULL,'2020-01-27 07:53:15','2020-01-27 07:53:15'),
(17,4,5,NULL,NULL,'Lucy Wehner','fisher.jarrett@example.com','(217) 585-4777 x66586',NULL,'183 Pat Circle\nWest Luraside, MN 41819-0280','2020-01-27 07:59:32','$2y$04$bef6HDMPJTAEfJxI33TL1.T5X.nEU1vOt3RnhK3wGW8mzrHlz6WAG','WWgWGzQlOq',NULL,'2020-01-27 07:59:32','2020-01-27 07:59:32'),
(18,3,3,NULL,NULL,'Wilma Littel','rempel.alva@example.org','971-647-2232 x33358',NULL,'10785 Maurice Station Suite 090\nLake Estevanfurt, AL 95779-6429','2020-01-27 07:59:33','$2y$04$018WR4QZ0egsha0mVtx8QeqU51gIl85fYCunwY9ntPCS3Hp5FkdXS','llnPJNxAkt',NULL,'2020-01-27 07:59:33','2020-01-27 07:59:33'),
(19,3,3,NULL,NULL,'Lynn Moore DVM','langosh.adrain@example.org','+1-907-424-9108',NULL,'82847 Auer Square Apt. 927\nEast Micah, LA 96604-6370','2020-01-27 08:02:50','$2y$04$zUXK0ncvCZ9MH0cFOFYvwOWKhP.DHPxeff/tvAOs8e0rzBde8G.zi','uV6iMRefP0',NULL,'2020-01-27 08:02:50','2020-01-27 08:02:50'),
(20,5,3,NULL,NULL,'Ms. Reba Greenfelder Sr.','camila62@example.net','(725) 809-3943 x107',NULL,'3797 Trycia Extension Suite 987\nSouth Broderick, TX 56260','2020-01-27 08:02:51','$2y$04$VJCzHHFyuaRqOZfyHh9UF.GWtmpIzjVVGH3gNHjQHTWWlZcbozyTq','6N0KZz0g3p',NULL,'2020-01-27 08:02:51','2020-01-27 08:02:51'),
(21,3,2,NULL,NULL,'Queen Nitzsche PhD','ryleigh84@example.net','595.688.2405',NULL,'113 Arjun Parkway\nJovanyton, VA 80025','2020-01-27 08:04:05','$2y$04$y/PHd7bUjPTGBih02FCTDuw1cxz/Cy3C6ELpXjy5YV1wgd.j3kOuW','jls2W4TDh7',NULL,'2020-01-27 08:04:05','2020-01-27 08:04:05'),
(22,4,5,NULL,NULL,'Mr. Edwardo Howell Sr.','travis.hettinger@example.com','250.900.4790',NULL,'11000 Furman Road Apt. 537\nWest Scottie, SD 36745-7051','2020-01-27 08:04:05','$2y$04$OeCjDqfEC6XDkWNocOmWiuvTscIDauNxxt58A.cLe3lkHel7tQl16','GpllLeLTwg',NULL,'2020-01-27 08:04:05','2020-01-27 08:04:05'),
(23,1,2,NULL,NULL,'Mrs. Germaine Streich','ambrose48@example.net','598.834.7977 x77829',NULL,'478 Aufderhar Falls Suite 816\nAracelyland, ME 21859-9292','2020-01-27 08:05:34','$2y$04$nM1lZPyZv6F4Pjn5mDJ.gOYc0bopSrM41K.ImsqU7D/9wck4aLQam','xQryEMWOlx',NULL,'2020-01-27 08:05:34','2020-01-27 08:05:34'),
(24,5,2,NULL,NULL,'Giovanny Oberbrunner','emery.rowe@example.net','523-225-5269 x24097',NULL,'96658 Jodie Knolls\nPort Noemyport, OR 00200','2020-01-27 08:05:34','$2y$04$H2vtuP/NeX0PNQarWK.9Cus3nISeYJk2ZO1a6cZnsVpp.TLGQDbaC','5Gv71nQIp2',NULL,'2020-01-27 08:05:34','2020-01-27 08:05:34'),
(25,2,3,NULL,NULL,'Carroll Schneider','elfrieda.keeling@example.net','+1 (483) 469-5859',NULL,'439 Kulas Fork\nHartmannside, AK 33596-7678','2020-01-27 08:05:59','$2y$04$GViVr9.aZcLiyZSxU5TAmeVeofivZxp7dK.44dTkSgbU.ehSQYq0e','GdWnYHCiEu',NULL,'2020-01-27 08:05:59','2020-01-27 08:05:59'),
(26,3,2,NULL,NULL,'Jacky Harris Jr.','leann.huel@example.net','501.852.8627 x81713',NULL,'53567 Jeanne Brooks Apt. 128\nLake Romafurt, IN 14205-5163','2020-01-27 08:06:00','$2y$04$j3DboanrOHxLHztqYGNAGOrWQI5vJgXJ2Jw4VniWcOmTVWa1dUqVq','2xydyzWaUd',NULL,'2020-01-27 08:06:00','2020-01-27 08:06:00'),
(27,3,1,NULL,NULL,'Dr. Myles Rosenbaum I','moen.crawford@example.net','1-830-212-0877',NULL,'4036 Ryan Forks\nEast Frederickville, OH 62180','2020-01-27 08:08:39','$2y$04$eYUThQdjjHn9mMdmPYNowej7neAY8lExiF1MXlMCTT0aoCfMCXWJS','EvufalhlSX',NULL,'2020-01-27 08:08:39','2020-01-27 08:08:39'),
(28,5,1,NULL,NULL,'Mr. Leland Kovacek II','becker.barry@example.org','1-680-597-0624',NULL,'25473 Conn Mill\nSouth Reillyshire, AL 58649-8105','2020-01-27 08:08:39','$2y$04$X0/EwopPbkToHrGxDur6JuUUl0n48j7NlxWRL9zHuoBK5vtLrhemO','9rFmO4nqGw',NULL,'2020-01-27 08:08:39','2020-01-27 08:08:39'),
(29,3,1,NULL,NULL,'Mr. Perry Armstrong IV','wbrekke@example.net','605-576-0455 x9707',NULL,'415 O\'Kon Highway\nWest Garrisonfort, IL 62568','2020-01-27 08:17:28','$2y$04$9jHApM5rfNbjmxB8q7lCx.TAuQ6MkqJKxVoiCMyJ0kM64ZYTSCU/a','oQ5XdDGZCP',NULL,'2020-01-27 08:17:28','2020-01-27 08:17:28'),
(30,2,4,NULL,NULL,'Geoffrey Koelpin','amaya.kovacek@example.org','+15387149646',NULL,'327 Milan Spring\nBoganchester, AZ 03159-2176','2020-01-27 08:17:29','$2y$04$eZv2co0SNUcTe2v/YqeZz.pPGTzQx5T9rfyH839yctd3Ehv2u.rE2','6PZUFOypP5',NULL,'2020-01-27 08:17:29','2020-01-27 08:17:29'),
(31,3,4,NULL,NULL,'Brycen Friesen','kaycee.veum@example.com','626.762.1039',NULL,'32895 Harvey Fall Suite 945\nWest Rodgerside, LA 98976','2020-01-27 08:18:35','$2y$04$maDGPX7ZM9mYr6ssC4Y83egHJAye7KEqPU.kHtOunA6xLX0zd91U.','ZncTMc6L50',NULL,'2020-01-27 08:18:35','2020-01-27 08:18:35'),
(32,5,4,NULL,NULL,'Gayle Schumm','lucie80@example.com','1-942-294-8177',NULL,'412 Raegan Causeway\nNorth Angelitaton, NM 42701-2501','2020-01-27 08:18:36','$2y$04$KKKxwNhHYCZCfqHi3exTnOcP3ycASVapiVpzVTYikmh8cRLjLT.3.','3FFhPGOvaj',NULL,'2020-01-27 08:18:36','2020-01-27 08:18:36'),
(33,5,5,NULL,NULL,'Laurence Rogahn','effertz.alexzander@example.com','593.763.6518 x431',NULL,'447 Moriah Crossing Suite 991\nNorth Donatoview, TX 75314-4314','2020-01-27 08:24:54','$2y$04$7/kDIdO5wUvvqu46OkAm1ONS8A86jTRc7m8eKQkGbp7ERw8mbei1G','fu8ENdY1dE',NULL,'2020-01-27 08:24:54','2020-01-27 08:24:54'),
(34,5,1,NULL,NULL,'Joanne Okuneva','sunny.roberts@example.org','578-308-8512',NULL,'3861 Aidan Camp Apt. 502\nSouth Karson, MS 23246','2020-01-27 08:24:54','$2y$04$ydnX8OR.P17Lwqp4uRvW.O3OJAgiz1qQBoMYx7PRj4SGTKM8tHhFq','Jt3jOXEzMh',NULL,'2020-01-27 08:24:54','2020-01-27 08:24:54'),
(35,3,1,NULL,NULL,'Kylee Stanton','dock.damore@example.com','447-666-0090',NULL,'46109 Austin Square Apt. 797\nSouth Verona, NC 62221-8933','2020-01-27 08:24:54','$2y$04$1t1FQjommTDw2T1ofA5qNO0xiEt2jY7Y7z0TzXz8RoPZrbL2dzOGO','fzvPAqzouh',NULL,'2020-01-27 08:24:54','2020-01-27 08:24:54'),
(36,3,1,NULL,NULL,'Hilda Shanahan IV','johns.joshuah@example.com','341.767.9697 x46977',NULL,'442 Wintheiser Road Suite 336\nEast Dallas, ND 78701-5218','2020-01-27 08:25:06','$2y$04$v6gpNElpOWqDaVdUrywmiOCK.rgrNl95gGo4get/uD7ZW.kSuhKhq','tqN6AnAfPh',NULL,'2020-01-27 08:25:06','2020-01-27 08:25:06'),
(37,5,4,NULL,NULL,'Prof. Norberto Kunze Jr.','aditya.kuhic@example.org','(431) 328-1033 x501',NULL,'41995 Marks Stream Apt. 245\nLake Miles, RI 61418-4682','2020-01-27 08:25:06','$2y$04$.EOxauOcdFmHTQg2.6FdXOrAa8OmTv74ZdZGQhcuGjbWsDskGRLDO','u43DKDAodN',NULL,'2020-01-27 08:25:06','2020-01-27 08:25:06'),
(38,2,5,NULL,NULL,'Blaze Wyman','rudolph.wehner@example.net','230.736.5860',NULL,'635 Hansen Overpass\nDestiniborough, WA 57306','2020-01-27 08:25:06','$2y$04$f3e4IbrF10Xhd3YvBb8kYu8dfNn1MA756PaiXXU5XdrP5kS/LrkbG','nr8lo876Cf',NULL,'2020-01-27 08:25:06','2020-01-27 08:25:06'),
(39,3,5,NULL,NULL,'Mrs. Marilou Lebsack','ncummings@example.net','1-823-658-7178 x663',NULL,'3974 Winston Lock\nEast Kip, AK 37072-7485','2020-01-27 08:27:31','$2y$04$YBfcf1ybLbx0c.sO4UhkJeMYZKFiqiHGtfBNXu4iMxkYn470bT9HS','CgkPchHcFn',NULL,'2020-01-27 08:27:31','2020-01-27 08:27:31'),
(40,4,5,NULL,NULL,'Gaetano Rosenbaum','howe.john@example.com','(618) 945-7769 x96410',NULL,'871 Cordell Unions Suite 268\nBuddychester, LA 07416','2020-01-27 08:27:31','$2y$04$KIlajZmIQzfxfrPUg6P37eihVYFIpEIIhMoKXYWdeAA9mnWbyqDpO','1di0opYWHZ',NULL,'2020-01-27 08:27:31','2020-01-27 08:27:31'),
(41,5,4,NULL,NULL,'Evans Wunsch','konopelski.polly@example.org','+1 (783) 565-5262',NULL,'3349 Gottlieb Ranch Apt. 892\nDestinyhaven, WI 21431','2020-01-27 08:27:31','$2y$04$LfQ8h9plhxwnJgxFAo7Mc.o4oh1PpLObU1y5r9kBINAnafQSIRcdW','PJ0mStF9Gs',NULL,'2020-01-27 08:27:31','2020-01-27 08:27:31'),
(42,3,3,NULL,NULL,'Britney Zemlak','darron.little@example.org','429-549-6341 x116',NULL,'3000 Joannie Place\nWest Adan, KS 77411-2168','2020-01-27 08:27:47','$2y$04$PclzU7W8bbmkW.QbnJSHBOKg/mqYro3XNvIP2neZTvRjvWHJr8r8W','wTe2cFoDZN',NULL,'2020-01-27 08:27:47','2020-01-27 08:27:47'),
(43,1,4,NULL,NULL,'Mrs. Letitia Cummerata','lexus80@example.org','(404) 570-5238',NULL,'6146 Burley Village Apt. 377\nLake Fionaton, WI 88800','2020-01-27 08:27:47','$2y$04$iPCqxnq8ZIeMLDLWc5ADHeyrwhQ2mnpg3nRfUxDuWZISikmwYnIg2','tAUATF4Z1s',NULL,'2020-01-27 08:27:47','2020-01-27 08:27:47'),
(44,3,1,NULL,NULL,'Dr. Harley Deckow PhD','nia69@example.com','1-475-841-4963 x62595',NULL,'9987 Schneider Mews Apt. 525\nReichelchester, RI 71856-2390','2020-01-27 08:27:47','$2y$04$hQHmf.bli14N3YGn1AgnWuv3sREJk8q9Eksxb/zWz7MJDhYOqPLZW','z2t3Gum3y2',NULL,'2020-01-27 08:27:47','2020-01-27 08:27:47'),
(45,NULL,NULL,NULL,NULL,'testme','testme@test.com',NULL,NULL,NULL,NULL,'$2y$10$keokcJ6WyiTy7J082MH83utZHLAAK5RU/1RnHG7se1Cyw99yGtXIO',NULL,NULL,'2020-01-28 04:14:36','2020-01-28 04:14:36'),
(46,2,5,NULL,NULL,'Nelda Hermiston MD','koby.reinger@example.com','653.918.7088',NULL,'384 Candice Views\nO\'Connellhaven, IN 17727-7948','2020-01-28 04:49:54','$2y$04$DSR8.u9tch3deTc2vP829uy.VsBZJagRDd.m9FCjlQN5erPAOUbdC','GgyrKE04Sk',NULL,'2020-01-28 04:49:54','2020-01-28 04:49:54'),
(47,1,2,NULL,NULL,'Mr. Wilmer Cummerata I','nikko95@example.com','+1 (618) 750-4757',NULL,'313 Stephan Cliff Apt. 264\nKeelinghaven, NC 89802','2020-01-28 04:49:54','$2y$04$vRqYZ3/lFLBRDaLd5pxtSuRipzc6fTBhaKHvHXyMjTfD5ao19bmAu','h3Lri11wCZ',NULL,'2020-01-28 04:49:54','2020-01-28 04:49:54'),
(48,3,2,NULL,NULL,'Juliet Swift II','collier.madelyn@example.com','936-559-8851',NULL,'601 Connelly Mountains\nPort Jacqueshaven, ND 14233-0579','2020-01-28 04:49:54','$2y$04$Hlf8SdYzU7TJhbUNy558UO/D9LNrcXyUZXSebhAnGv5PqODR8HhnO','EEVSfpDDJe',NULL,'2020-01-28 04:49:54','2020-01-28 04:49:54'),
(49,1,4,NULL,NULL,'Miss Elyse Macejkovic','amaya.brakus@example.org','991-233-7176',NULL,'25873 Jakubowski Cliff\nLake Kaylahton, KS 23367','2020-01-28 06:51:59','$2y$04$TBcmLywJgvrxFPDKFU613.2jtz6XN9IRga/fCZGIJqhtl6Dc9zW5i','OE8MfSCt6T',NULL,'2020-01-28 06:51:59','2020-01-28 06:51:59'),
(50,2,4,NULL,NULL,'Kameron Beatty','wisoky.jacinto@example.org','726-813-6192',NULL,'858 Rosie Junctions Apt. 138\nLittelville, MS 26013','2020-01-28 06:51:59','$2y$04$S1l0aAyI.IOe6TkPsABnQ.fPBUEEgg0Lx/bKiOd4nn.V2LIqN7EaS','swjR2HZo2j',NULL,'2020-01-28 06:51:59','2020-01-28 06:51:59'),
(51,3,3,NULL,NULL,'Ardith Hegmann','eratke@example.org','(636) 708-8448',NULL,'3015 Kiana Estate Suite 991\nQuitzonberg, NY 20574-9676','2020-01-28 06:51:59','$2y$04$Eah88U8PvamtKpJIWT5rNenLqk14DbW/ZpN00tUmm5YcviLBRJ/w.','mnEx1InpMO',NULL,'2020-01-28 06:51:59','2020-01-28 06:51:59'),
(58,1,5,8,'profiles/yAkZ9cKqS3c2mfSbyl8Z2S2s3uZ7zLY4jbtmXxUn.jpeg','User Administrator','admin@agrox.com','1234567890','Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.','Society Phase - 1, Jamshoro, Sindh',NULL,'$2y$10$IZnGUlN0.ob37wOVN93u4eUBY8tLubgXKsk7tiEuI4zP0Ok2jVkCC',NULL,NULL,'2020-01-28 02:23:23','2020-01-28 08:07:39'),
(59,2,3,1,'profiles/08cZy2ov6elH4UYlttOJbeznb0mquLbNq8vFJHXV.jpeg','User Farmer','farmer@agrox.com','1234567890','Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta.','Society Phase - 1, Jamshoro, Sindh',NULL,'$2y$10$5nH5n0b0T/w75QvG38tKm.EO.WpSy02h8w6SX6OHZHCWdktua0jla',NULL,NULL,'2020-01-28 02:25:24','2020-01-28 02:44:22'),
(60,3,1,8,'profiles/yQF7zRKS9IiGPJ71PUlqSRdxFmeHSkVPxNwL4L5x.jpeg','User Consultant','consultant@agrox.com','1234567890','Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta.','Society Phase - 1, Jamshoro, Sindh',NULL,'$2y$10$bWfzNLOLaPggxjcAmV0KduHKDYaNf4mu86Or.K7319sRilwxNlpvW',NULL,NULL,'2020-01-28 02:26:43','2020-01-28 08:06:38'),
(61,4,3,1,'profiles/vor8uYk2M63e2LxElssumvzE2VFgtuh4kziOW17r.jpeg','User Academic','academic@agrox.com','1234567890','Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta.','Society Phase - 1, Jamshoro, Sindh',NULL,'$2y$10$Am2frpyY6Z2MhtjL4vukjujiNT5efRj7Y55VZI.n/cf/boI0vYRZa',NULL,NULL,'2020-01-28 02:28:02','2020-01-28 08:06:13'),
(62,5,5,1,'profiles/08cZy2ov6elH4UYlttOJbeznb0mquLbNq8vFJHXV.jpeg','User Other','other@agrox.com','1234567890','Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta.','Society Phase - 1, Jamshoro, Sindh',NULL,'$2y$10$fMVyTlEVmbpcO2cBq3yYN.58JIDt5KzV869oD.GAXlg9Xc3ISExRa',NULL,NULL,'2020-01-28 02:29:14','2020-01-28 02:29:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
