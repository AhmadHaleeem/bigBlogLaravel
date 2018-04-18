# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: udemyProject2
# Generation Time: 2018-03-08 15:28:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Wordpress','2018-03-03 16:42:04','2018-03-03 16:42:04'),
	(2,'Laravel','2018-03-03 16:42:10','2018-03-03 16:42:10'),
	(3,'Ruby on Rails','2018-03-03 16:42:21','2018-03-03 16:42:21'),
	(4,'Tutorials','2018-03-03 16:42:41','2018-03-03 17:54:51'),
	(5,'Career','2018-03-03 16:44:54','2018-03-03 16:44:54'),
	(6,'Vuejs','2018-03-03 17:07:59','2018-03-03 17:07:59');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(29,'2014_10_12_000000_create_users_table',1),
	(30,'2014_10_12_100000_create_password_resets_table',1),
	(31,'2018_03_02_111416_create_posts_table',1),
	(32,'2018_03_02_111555_create_categories_table',1),
	(33,'2018_03_02_152428_create_tags_table',1),
	(34,'2018_03_02_152754_create_post_tag_table',1),
	(35,'2018_03_03_114508_create_profiles_table',1),
	(36,'2018_03_03_154432_create_settings_table',1),
	(37,'2018_03_05_124314_insert_user_id_column',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table post_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_tag`;

CREATE TABLE `post_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`)
VALUES
	(1,1,1,NULL,NULL),
	(3,2,2,NULL,NULL),
	(4,3,1,NULL,NULL),
	(6,4,3,NULL,NULL),
	(7,5,3,NULL,NULL),
	(8,6,3,NULL,NULL),
	(9,7,1,NULL,NULL),
	(10,2,1,NULL,NULL),
	(11,8,1,NULL,NULL);

/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`)
VALUES
	(1,'THE IMPORTANT & STANDARD POST FORMAT','<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span><br></p>','the-important-standard-post-format',4,'uploads/posts/1520095696post1.jpg',NULL,'2018-03-03 16:48:16','2018-03-03 17:55:25',1),
	(2,'Installing new plugins into worepress','<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span><br></p>','installing-new-plugins-into-worepress',2,'uploads/posts/1520095767wordpress.jpg',NULL,'2018-03-03 16:49:27','2018-03-03 18:04:26',2),
	(3,'Laravel and vuejs in action','Taylor Otwell created Laravel as an attempt to provide a more advanced alternative to the CodeIgniter framework, which did not provide certain features such as built-in support for user authentication and authorization. Laravel\'s first beta release was made available on June 9, 2011, followed by the Laravel 1 release later in the same month. Laravel 1 included built-in support for authentication, localisation, models, views, sessions, routing and other mechanisms, but lacked support for controllers that prevented it from being a true MVC framework.[1]\r\n\r\nLaravel 2 was released in September 2011, bringing various improvements from the author and community. Major new features included the support for controllers, which made Laravel 2 a fully MVC-compliant framework, built-in support for the inversion of control (IoC) principle, and a templating system called Blade. As a downside, support for third-party packages was removed in Laravel 2.[1]\r\n\r\nLaravel 3 was released in February 2012 with a set of new features including the command-line interface (CLI) named Artisan, built-in support for more database management systems, database migrations as a form of version control for database layouts, support for handling events, and a packaging system called Bundles. An increase of Laravel\'s userbase and popularity lined up with the release of Laravel 3.[1]\r\n\r\nLaravel 4, codenamed Illuminate, was released in May 2013. It was made as a complete rewrite of the Laravel framework, migrating its layout into a set of separate packages distributed through Composer, which serves as an application-level package manager. Such a layout improved the extensibility of Laravel 4, which was paired with its official regular release schedule spanning six months between minor point releases. Other new features in the Laravel 4 release include database seeding for the initial population of databases, support for message queues, built-in support for sending different types of email, and support for delayed deletion of database records called soft deletion.','laraveland-vuejs-in-action',2,'uploads/posts/1520096136go.png',NULL,'2018-03-03 16:55:36','2018-03-03 16:58:47',1),
	(4,'Every thing about Vuejs','<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif;\">Vue uses an <a href=\"https://en.wikipedia.org/wiki/HTML\" title=\"HTML\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">HTML</a>-based template syntax that allows you to declaratively bind the rendered <a href=\"https://en.wikipedia.org/wiki/Document_Object_Model\" title=\"Document Object Model\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">DOM</a> to the underlying Vue instance’s data. All Vue templates are valid HTML that can be parsed by spec-compliant browsers and HTML <a href=\"https://en.wikipedia.org/wiki/Parsing\" title=\"Parsing\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">parsers</a>. Under the hood, Vue compiles the templates into virtual DOM render functions. Combined with the reactivity system, Vue is able to intelligently figure out the minimal number of components to re-render and apply the minimal amount of DOM manipulation when the app state changes.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif;\">In Vue, you can use the template syntax or choose to directly write render functions using <a href=\"https://en.wikipedia.org/wiki/React_(JavaScript_library)#JSX\" title=\"React (JavaScript library)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">JSX</a>. In order to do so just replace the template option with a render function.<sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Vue.js#cite_note-7\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup> Render functions open up possibilities for powerful component-based patterns — for example, the new transition system is now completely component-based, using render functions internally.</p>','every-thing-about-vuejs',4,'uploads/posts/1520096864maxresdefault.jpg',NULL,'2018-03-03 17:07:44','2018-03-03 17:54:34',2),
	(5,'All thing about Angular js','<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif;\">AngularJS uses the term \"scope\" in a manner akin to the fundamentals of computer science.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Scope_(computer_science)\" title=\"Scope (computer science)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Scope</a>&nbsp;in computer science describes when in the program a particular&nbsp;<a href=\"https://en.wikipedia.org/wiki/Name_binding\" title=\"Name binding\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">binding</a>&nbsp;is valid. The&nbsp;<a href=\"https://en.wikipedia.org/wiki/ECMA-262\" class=\"mw-redirect\" title=\"ECMA-262\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ECMA-262</a>&nbsp;specification defines scope as: a lexical environment in which a Function object is executed in client-side web scripts;<sup id=\"cite_ref-es5-x10.2_7-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/AngularJS#cite_note-es5-x10.2-7\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup>&nbsp;akin to how scope is defined in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lambda_calculus\" title=\"Lambda calculus\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">lambda calculus</a>.<sup id=\"cite_ref-BarendregtBarendsen_8-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/AngularJS#cite_note-BarendregtBarendsen-8\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif;\">As a part of the \"MVC\" architecture, the scope forms the \"Model\", and all variables defined in the scope can be accessed by the \"View\" as well as the \"Controller\". The scope behaves as a glue and binds the \"View\" and the \"Controller\".</p>','all-thing-about-angular-js',4,'uploads/posts/1520096965banner-angularjs.jpg',NULL,'2018-03-03 17:09:25','2018-03-03 17:09:25',2),
	(6,'Javascript to make whatever you want','<p><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium;\">The standard for JavaScript is </span><a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Language_Resources\" style=\"color: rgb(63, 135, 166); margin: 0px; padding: 0px; border: 0px; font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);\">ECMAScript</a><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium;\">. As of 2012, all </span><a href=\"http://kangax.github.io/compat-table/es5/\" class=\"external external-icon\" rel=\"noopener\" style=\"color: rgb(63, 135, 166); margin: 0px; padding: 0px; border: 0px; white-space: pre-line; font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);\">modern browsers</a><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium;\"> fully support ECMAScript 5.1. Older browsers support at least ECMAScript 3. On June 17, 2015, </span><a href=\"http://www.ecma-international.org/\" class=\"external external-icon\" rel=\"noopener\" style=\"color: rgb(63, 135, 166); margin: 0px; padding: 0px; border: 0px; white-space: pre-line; font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);\">ECMA International</a><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium;\"> published the sixth major version of ECMAScript, which is officially called ECMAScript 2015, and is more commonly referred to as ECMAScript 6 or ES6. Since then ECMAScript standards are on yearly release cycles. This documentation refers to the latest draft version, which is currently </span><a href=\"http://tc39.github.io/ecma262/\" class=\"external external-icon\" rel=\"noopener\" style=\"color: rgb(63, 135, 166); margin: 0px; padding: 0px; border: 0px; white-space: pre-line; font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);\">ECMAScript 2017</a><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", arial, x-locale-body, sans-serif; font-size: medium;\">.</span><br></p>','javascript-to-make-whatever-you-want',5,'uploads/posts/1520117911js.png',NULL,'2018-03-03 17:54:25','2018-03-03 22:58:31',2),
	(7,'Every thing about Python','<p><a href=\"https://www.python.org/success-stories/industrial-light-magic-runs-python/\" style=\"color: rgb(55, 118, 171); -webkit-tap-highlight-color: rgb(30, 41, 51); font-family: Georgia, serif; font-size: 18px; font-style: italic;\">ILM runs a batch processing environment capable of modeling, rendering and compositing tens of thousands of motion picture frames per day. Thousands of machines running Linux, IRIX, Compaq Tru64, OS X, Solaris, and Windows join together to provide a production pipeline used by ~800 users daily. Speed of development is key, and Python was a faster way to code (and re-code) the programs that control this production pipeline.</a><br></p>','every-thing-about-python',2,'uploads/posts/1520099808python.gif',NULL,'2018-03-03 17:56:48','2018-03-03 17:56:48',1),
	(8,'Crud Title','<p>Every thing about laravel</p>','crud-title',2,'uploads/posts/1520324853laravel-5.5.png',NULL,'2018-03-06 08:27:33','2018-03-06 08:27:33',3);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;

INSERT INTO `profiles` (`id`, `user_id`, `avatar`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`)
VALUES
	(1,1,'uploads/avatars/1520254799a2.jpeg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','facebook.com','youtube.com','2018-03-03 16:02:04','2018-03-05 12:59:59'),
	(2,2,'uploads/avatars/1.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','https://www.facebook.com/','https://www.youtube.com/','2018-03-03 16:02:04','2018-03-03 16:02:04'),
	(3,3,'uploads/avatars/1520324797a2.jpeg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','https://www.facebook.com/','https://www.youtube.com/','2018-03-03 16:02:04','2018-03-06 08:26:37');

/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`)
VALUES
	(1,'Laravel\'s Blog','+30 685558320','coldman9910@gmail.com','Netherlands, Utrecht, Europe','2018-03-03 16:02:04','2018-03-03 16:09:26');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`)
VALUES
	(1,'Laravel','2018-03-03 16:46:58','2018-03-03 16:46:58'),
	(2,'Wordpress','2018-03-03 16:49:41','2018-03-03 16:49:41'),
	(3,'Vuejs','2018-03-03 17:07:53','2018-03-03 17:07:53');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Ahmad Haleem','coldman9910@gmail.com',1,'$2y$10$R/hOOnkIk1O2bohrxveC9OGuHPe6swhhWqMKZCuzyFfw0q3Y15Uyu','5gVx2gaavwC7SQjuYpx6fRwwFYPxUyPMYr4nW2TktYpDdslc8KqJpDJSz4cm','2018-03-03 16:02:04','2018-03-05 12:59:59'),
	(2,'Shahin Attallah','shahin@gmail.com',0,'$2y$10$pVdKKn3FLIN/1rLRqXXBUef8Rafwu51aNibe8hSXO1LQ7UpCe6AS2','OFeENTxn6m7aDiR20As1vYQzImvH93XN6Wss0cuyOySZH8Vk2uKFhQLWo1om','2018-03-05 12:51:12','2018-03-05 12:51:12'),
	(3,'Ahmad','coldman2999@gmail.com',0,'$2y$10$ewYPQ36HgObQS2B7gS4JiOvkVq025sYzjJ4rjcREkOxiozVBK91Xa',NULL,'2018-03-06 08:24:47','2018-03-06 08:26:37');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
