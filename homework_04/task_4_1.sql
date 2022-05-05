#
# TABLE STRUCTURE FOR: comments
#

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `to_media_type_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  KEY `to_media_type_id` (`to_media_type_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`to_media_type_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('1', '22', '79', '8', 'Dignissimos labore enim et rem. Adipisci laudantium aperiam minus deleniti quia rem quaerat. In blanditiis quia numquam sed architecto repellat porro.', '1998-03-01 23:40:27');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('2', '77', '8', '66', 'Rem minus excepturi fugiat et. Sed voluptates sapiente repellat ut soluta dolores recusandae. Nam id voluptatem provident. Qui facilis id nobis voluptates.', '1981-02-23 07:34:34');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('3', '48', '32', '62', 'Ut est sint odit et illum quod pariatur pariatur. Voluptatibus molestias rem laudantium accusamus. Cupiditate numquam qui ut provident minus sapiente.', '2018-06-09 00:51:50');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('4', '79', '80', '4', 'Consequatur iste earum cumque ut dolorem iusto soluta aut. Exercitationem non saepe qui repellendus. Quos veritatis natus eius possimus. Eos sapiente voluptates in aut sequi ut.', '2010-06-20 12:33:06');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('5', '20', '82', '76', 'In amet quia explicabo autem sit ut ipsum molestiae. Enim eos vero id vitae occaecati ipsa asperiores. Aut labore quidem aut quam.', '1984-03-18 00:59:04');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('6', '57', '59', '31', 'Nihil expedita explicabo architecto commodi necessitatibus maiores facilis. Vel natus quae fugit aut voluptas doloribus. Porro reiciendis perspiciatis qui voluptatibus enim eveniet magnam. Ipsa rerum non id aut.', '1994-02-28 03:36:27');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('7', '87', '7', '25', 'Non mollitia consectetur neque corrupti iure eius. Nisi aspernatur suscipit vel esse neque aspernatur quisquam. Voluptates rerum vel iusto.', '1980-06-29 06:02:38');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('8', '52', '100', '82', 'Ut omnis sapiente soluta blanditiis sunt. Vel atque porro dicta eum fugit dolorem cupiditate eum. Beatae voluptate nemo sunt libero nobis reprehenderit.', '1984-01-25 13:10:21');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('9', '24', '39', '79', 'Architecto minus at voluptatem autem fuga illum quod ab. Maxime quo nesciunt et. Est totam et rem iure odit et. A culpa voluptas molestiae et ut corrupti perferendis. Et qui dignissimos deserunt.', '2019-11-08 08:07:27');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('10', '12', '12', '69', 'Doloremque magnam saepe ipsum iure. Impedit praesentium rerum mollitia non vitae enim molestias. Aliquam molestiae esse voluptatem omnis ipsum quis sunt nostrum. Fuga earum quis quaerat cumque.', '1984-02-03 14:06:04');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('11', '62', '33', '48', 'Culpa ut dolores reiciendis error dolore voluptatem in quo. Ea quibusdam dolorum eos quo dolorem. Aliquid officiis veniam voluptatem at dolor expedita omnis. Unde dolor nisi laudantium quo illum corrupti.', '1994-06-06 02:07:31');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('12', '70', '10', '55', 'Nisi sequi adipisci perferendis et voluptatibus sint aliquam. Porro minima libero ea modi sunt neque. Voluptatem et quod exercitationem numquam dolor consectetur sunt voluptatem. Ut adipisci sit nihil voluptates sequi debitis.', '2009-12-27 08:39:33');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('13', '35', '57', '86', 'Vel error similique dolor minima. Quod enim doloribus minus facere at minima omnis. Quaerat repellat ut reprehenderit libero enim est in voluptatem. Et veniam est non reprehenderit enim.', '2002-03-20 17:30:30');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('14', '97', '35', '65', 'Fugiat accusamus nemo esse quia. Animi libero ad enim accusamus voluptates. Consequatur sit deserunt nisi aut sed. Mollitia quia ab laborum deleniti neque itaque autem omnis.', '1980-08-18 11:46:23');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('15', '1', '54', '47', 'Voluptate ut doloremque labore repellendus nihil minus. Nulla qui labore cumque molestiae officiis quis. Ut laboriosam iste impedit est dolores.', '1985-10-17 10:26:43');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('16', '77', '11', '6', 'Optio laboriosam ea est. Dolorem ut eum et molestiae. Beatae reiciendis sequi reiciendis consectetur sunt magni qui. Enim earum earum quia.', '1980-03-29 07:38:23');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('17', '8', '97', '12', 'Illo sint quidem eveniet aut quibusdam delectus mollitia. Et rerum quia neque officiis deserunt sed culpa. Dolor est dolorem neque et beatae et quo. Dolor nihil vitae sunt maxime et.', '1971-02-10 01:34:34');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('18', '33', '49', '12', 'Sit nisi voluptatem reiciendis nemo. Dolorem velit quia temporibus molestiae. Consequatur officia minima sed autem alias. Ut saepe reprehenderit cupiditate non minus neque.', '2001-01-03 09:18:15');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('19', '14', '73', '50', 'Rerum dolores saepe veritatis veniam laudantium. Voluptas quasi perspiciatis quis et nisi et. Non incidunt amet est et impedit ex soluta.', '2006-12-31 13:11:51');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('20', '92', '84', '62', 'Cupiditate inventore possimus et cum. Maxime nisi impedit quasi autem sed mollitia fuga consequatur. Autem sit ipsam distinctio minima sit saepe. Culpa aut ratione ut similique sint saepe assumenda.', '2014-12-16 03:33:15');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('21', '60', '46', '95', 'Mollitia earum veritatis asperiores rerum praesentium ipsam ad. Eius eius tenetur et ab consectetur. Quasi necessitatibus consequatur ea et aut quisquam ipsam.', '1980-12-13 15:23:58');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('22', '7', '15', '4', 'Labore delectus nulla harum omnis fuga maxime. Consequatur vel sequi quia sit at. Aut libero sunt explicabo id quia eum.', '1983-04-02 21:09:48');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('23', '61', '50', '61', 'Eos blanditiis cum omnis voluptate ipsum et neque. Iste esse qui ipsa voluptate.', '2003-03-17 07:12:39');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('24', '47', '47', '95', 'Quo odit illum enim ea aut nam. Molestias voluptas debitis eveniet sequi quisquam voluptatem nihil.', '1990-04-19 22:28:49');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('25', '12', '47', '49', 'Quod iure quo vel optio. Et facilis dicta enim eos rerum et. Magnam quia deleniti ratione.', '1992-05-31 03:56:55');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('26', '58', '23', '59', 'Suscipit harum eum sed voluptatem ducimus provident. Accusantium necessitatibus non dolore. Non voluptate nam quis rerum.', '1979-03-17 16:50:04');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('27', '63', '31', '56', 'Nam et autem non aut alias veniam neque. Molestiae odio sapiente magni voluptatum. Rerum adipisci unde eos placeat aut.', '2015-08-23 06:45:07');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('28', '75', '63', '4', 'Sed asperiores placeat eum eaque explicabo. Unde et est est dolores dolor. Numquam dicta voluptates suscipit eligendi eos. Quos et ex libero nisi aliquid officiis.', '2009-06-07 18:27:10');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('29', '86', '76', '76', 'Voluptatem saepe ea sit odit. Ullam ducimus blanditiis consectetur eos. Voluptatum consectetur quaerat et aliquid sit velit fugit. Eaque sit quia doloremque animi. Accusamus dolorem alias accusantium hic corporis id.', '1973-02-04 15:06:57');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('30', '36', '67', '60', 'Consequatur rem et veniam voluptas doloribus totam sapiente. Nihil fuga voluptas consequatur autem qui consequatur. Est quia iure sint perferendis et voluptatem ipsa.', '1995-10-21 09:41:46');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('31', '98', '27', '5', 'Ratione in quo voluptatem natus facere quibusdam facere. Delectus voluptatem et culpa error occaecati delectus molestiae. Velit qui fugit qui cum.', '1986-09-22 20:07:31');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('32', '92', '33', '20', 'Consequatur similique quibusdam ipsum voluptas earum. Et aut placeat sit distinctio ratione id aspernatur. Debitis exercitationem sunt modi ad sequi sint sit. Assumenda dicta aut ea sint eligendi omnis.', '2007-02-07 01:14:05');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('33', '96', '94', '69', 'Dolorum commodi sint iusto neque ut doloribus. Saepe quasi assumenda vel ipsum laudantium vel. Ut ea eligendi ea est omnis quisquam.', '2016-07-07 15:21:16');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('34', '56', '40', '15', 'Quia quo maxime iste quos consequatur fugit inventore. Repellendus perspiciatis suscipit doloremque deleniti excepturi minus minima aut. Maiores tenetur dolor nihil.', '1997-08-09 03:28:18');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('35', '50', '51', '62', 'Similique dicta tempora eaque accusamus. Ut excepturi fuga corporis pariatur aut accusamus dolorem. Sequi sit minus et officia fugiat. Officiis nihil in est atque magni omnis. Tempora rem tempore quasi voluptas aut vero.', '1987-12-08 15:42:57');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('36', '99', '9', '85', 'Rerum eveniet sint facilis cupiditate eius. Fuga laudantium sed autem veniam possimus earum minus. Ducimus corporis expedita beatae soluta nisi.', '2019-08-04 02:52:30');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('37', '57', '72', '15', 'Enim molestiae qui dolorum laboriosam nisi dolor doloribus. Labore aut ducimus rerum veniam ut sed ducimus. Velit harum tenetur atque animi.', '1997-09-28 07:57:54');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('38', '13', '46', '77', 'Amet sed fuga autem aut. Est cum magnam id deleniti iusto. Excepturi suscipit commodi voluptate molestiae sit vitae minus.', '2012-11-12 04:07:56');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('39', '16', '32', '52', 'Aut atque dicta maxime ullam deserunt. Cumque laudantium voluptatem adipisci velit occaecati omnis autem. Adipisci nobis tempora voluptatem explicabo qui blanditiis ipsam. Est maxime in sed aut excepturi. Dicta nulla quae sit sit.', '1971-06-25 02:19:26');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('40', '92', '68', '19', 'Ut commodi earum ex aperiam est. Iure at excepturi dolor ab sunt dolor ratione. Omnis officiis impedit ut recusandae minima eum sint dicta.', '2000-09-26 06:27:24');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('41', '51', '65', '45', 'Repellat sit neque vero enim. Dignissimos est asperiores minima explicabo nisi enim sapiente voluptates. Assumenda dignissimos doloremque porro omnis provident sapiente.', '2015-03-15 12:58:06');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('42', '56', '57', '77', 'Quis perferendis odio dolorem dignissimos. Ipsum rerum veniam ut eum vel qui quibusdam. Ipsum provident expedita aut consequatur.', '1973-02-01 13:53:44');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('43', '75', '52', '70', 'Nostrum ipsam earum incidunt doloremque dignissimos. Totam non officiis assumenda. Vel illo non qui rem velit quia hic. Aut tempore suscipit vel sapiente.', '1992-11-10 21:12:10');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('44', '43', '7', '10', 'Consectetur atque illum modi harum eos. Blanditiis similique rerum reiciendis esse rerum qui. Aut quasi quos consequatur non. Similique quo animi dignissimos quasi pariatur tenetur. Quos esse modi quam ut.', '1980-04-17 02:10:59');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('45', '58', '57', '61', 'Vel consequatur eius animi nemo. A quaerat et aliquam quia. Sunt id id eius corrupti.', '1997-09-11 06:33:48');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('46', '19', '55', '69', 'Ea omnis omnis deserunt molestiae et sed. Nesciunt autem error reprehenderit suscipit.', '1971-09-12 12:24:09');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('47', '4', '11', '40', 'Voluptate est pariatur vero illum. Officia culpa alias aut vel exercitationem. Aperiam dignissimos vero fugit enim.', '1979-05-27 08:29:51');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('48', '18', '23', '86', 'Et quaerat tempora quis quo consequatur est aliquam. Dolorem deserunt autem cumque nihil sed aut animi. Cumque exercitationem suscipit ipsa eum natus maiores.', '1972-01-21 14:16:26');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('49', '94', '39', '18', 'Praesentium dolores qui suscipit deleniti sed consequatur autem libero. Sed cumque velit saepe dolores assumenda. Unde consequuntur et nostrum qui non vero ut voluptatum. Et totam dignissimos eveniet omnis quia.', '1989-08-27 18:56:46');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('50', '46', '30', '85', 'Rerum dicta exercitationem nostrum quasi. Quaerat sint blanditiis velit quisquam. Reiciendis eius non in est sed aliquam officia. Quos omnis eum at qui beatae voluptate.', '1990-10-26 09:50:20');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('51', '64', '81', '50', 'Quisquam ut cupiditate eaque est. Consequatur eius id ex deserunt. Nihil aut rerum voluptas hic nihil. Illum dolor sunt assumenda vel ea quas suscipit.', '2006-07-10 13:37:12');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('52', '8', '36', '6', 'Fugiat repudiandae corporis dolorem neque voluptatum. Voluptas unde sequi ut et consequatur dicta in eaque. Dolorum necessitatibus unde id at occaecati.', '1984-12-29 23:51:18');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('53', '85', '10', '57', 'Quisquam in atque omnis dolorem nisi. Ipsam neque sapiente tenetur earum eos deserunt. Rerum earum deserunt quia quia. Ut earum cum laboriosam. Ipsa occaecati impedit omnis est et consequatur.', '2000-07-02 20:24:56');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('54', '55', '53', '63', 'Ut aliquid quod quibusdam illum incidunt. Debitis tenetur dignissimos consequuntur non quidem saepe. Ad culpa numquam corrupti ea fugiat est. Explicabo facere nihil possimus qui ex eligendi cumque est. Beatae non omnis sequi.', '1988-01-29 08:14:26');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('55', '64', '11', '19', 'Quos quos nemo omnis voluptatem rerum doloribus. Ea sed ullam veritatis. In quo officiis est.', '1988-10-13 06:42:00');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('56', '24', '30', '74', 'Quia et beatae dolores quis voluptates laudantium maxime vero. Voluptatibus quidem labore blanditiis et laudantium reiciendis eligendi. Aut perferendis illum non. Doloribus quia quo qui est et et.', '1981-10-16 15:28:10');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('57', '93', '33', '85', 'Rerum aspernatur voluptatem et consectetur id possimus ratione sunt. Laudantium deserunt quo distinctio occaecati accusantium molestias mollitia enim. Et nihil aliquid et et facilis ea ullam consequuntur.', '1973-01-10 00:03:11');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('58', '32', '50', '7', 'Reiciendis nihil porro et est. Qui dicta reprehenderit ab et autem sit cum.', '1986-02-10 14:00:58');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('59', '18', '44', '46', 'Maxime dolor et voluptatem eaque. Ea dicta sed dolores ut voluptatem. Dignissimos voluptatum voluptate neque quae voluptate ad modi.', '1980-12-07 22:08:36');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('60', '35', '89', '76', 'Consequatur laborum cumque aut totam fuga. Quis qui debitis consequatur id facilis corrupti. Vitae repellendus consequuntur deserunt ut. Illo saepe architecto qui.', '1994-08-05 07:07:23');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('61', '20', '53', '56', 'Praesentium cumque velit praesentium illum cupiditate nisi et deleniti. Sit est et et ducimus sint. Officia quia nobis sint rerum minus quo maxime. Autem consequatur est laboriosam quaerat magni.', '1988-09-15 09:31:24');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('62', '69', '60', '92', 'Incidunt modi id est voluptatem ex. Cum dolore eligendi quis dolor fugiat earum quia. Doloribus eos deleniti eveniet cum. Quia dolores quia rerum officia necessitatibus.', '2018-10-07 20:19:17');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('63', '74', '44', '2', 'Quaerat consequuntur quibusdam possimus voluptatem numquam qui incidunt. Possimus est fugiat doloribus ratione sunt nisi. Ut porro ut quo molestiae repellendus. Sed nostrum natus totam mollitia accusantium.', '2013-03-29 20:04:39');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('64', '30', '98', '55', 'Eos odio vel cupiditate rerum quis eveniet nihil rem. Accusamus et sed molestiae illum laudantium sed quasi. Dolorum veritatis debitis accusantium et fuga qui quasi est. Alias ullam quaerat possimus ea ut.', '2011-06-05 01:40:18');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('65', '93', '62', '65', 'Deserunt est blanditiis quae non iusto in sit. Deserunt voluptas asperiores sit sit. Sed pariatur est non magni placeat natus.', '2012-06-14 02:00:41');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('66', '12', '86', '94', 'Magnam et ea adipisci illum. Reprehenderit autem ut quibusdam nemo dolore officiis error. Nam reprehenderit natus non.', '2020-10-01 08:31:10');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('67', '85', '78', '26', 'Libero et dolorem architecto voluptas. Ullam repudiandae totam illo. Quae ut et ipsum ut. Animi quam dolores voluptatem perferendis.', '2005-09-06 18:58:31');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('68', '69', '10', '76', 'Id quidem dolore non ipsam sed. Sunt harum accusantium tempora voluptas delectus suscipit reiciendis nemo. Voluptatem voluptate qui ut reprehenderit.', '2018-01-25 06:16:01');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('69', '76', '27', '19', 'Iste dolor pariatur fugiat exercitationem recusandae dolores dolorem amet. Consequatur ut natus assumenda. Qui accusamus ut soluta ad eligendi. Laborum provident temporibus inventore voluptas ut vero ut.', '2003-02-05 13:48:16');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('70', '21', '62', '8', 'Aut fugiat vero veritatis a voluptas quis quo. Laudantium tempora eum facilis unde facilis praesentium et. Esse delectus iste animi nostrum quis commodi. Sapiente iste a quidem hic.', '2005-08-25 15:52:46');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('71', '97', '81', '60', 'Ea ipsum et accusamus dolor occaecati soluta itaque ut. Perspiciatis omnis deleniti ut fugiat minima et aut. Cumque eligendi illo doloremque doloremque dolorem.', '2012-11-28 15:45:52');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('72', '52', '49', '19', 'Consequatur dolorum enim dolorem ut eius. Nulla dolores recusandae maiores repellat ducimus error. Voluptatem in porro et voluptatibus praesentium sed. Inventore possimus reiciendis quo fuga et autem.', '2011-03-26 13:04:47');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('73', '44', '22', '63', 'Aut repellat eaque et ut sit quia. Sed quae minus aut. Quia aut alias quas ad ex aut explicabo.', '2011-01-10 11:51:29');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('74', '45', '52', '61', 'Sit dolores odit id non. Ex sit ut et rem optio accusantium autem optio. Sint itaque ad dolorum occaecati et voluptatum quae illo.', '1990-05-09 16:42:14');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('75', '99', '45', '22', 'Tempora optio quos vel aliquam. Ipsam numquam ratione praesentium. Consequuntur aut soluta nobis ut eum quam.', '1998-12-11 20:59:30');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('76', '63', '56', '8', 'Error quas quia ut velit. Quisquam voluptas reiciendis nisi. Eius libero tenetur sunt rerum nam molestias.', '1981-06-18 22:54:23');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('77', '57', '40', '86', 'Ut sed veritatis voluptatum delectus deserunt sed eos odio. Laudantium dolorem modi mollitia quam consectetur. Omnis ullam excepturi ut impedit rerum qui.', '1970-08-05 15:36:19');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('78', '82', '8', '95', 'Veniam fugiat error et culpa incidunt. Voluptates omnis consectetur et suscipit quis quia. Et nemo fuga debitis earum rerum aliquam.', '1999-02-16 10:37:32');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('79', '58', '83', '22', 'Rem qui voluptatem illum quidem id. Sunt expedita nobis ut architecto nam quas voluptatem. Quo corporis ut optio quidem voluptates. Est magnam culpa provident vel magni sed voluptas fuga. Et est autem labore aut neque quasi.', '2012-04-26 14:36:31');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('80', '76', '4', '84', 'Aut quod quod labore doloribus sed ut iure. Adipisci necessitatibus incidunt animi et. Autem ut tenetur temporibus sed odit. Cupiditate in odio optio qui.', '1975-02-21 14:50:38');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('81', '83', '100', '64', 'Consequatur praesentium nihil et est. Nobis asperiores est totam quibusdam at iusto. Veritatis asperiores corrupti adipisci commodi illo. Minima omnis porro nihil minima non et quidem. Consectetur voluptatibus nobis fuga non deserunt.', '2018-05-08 05:10:45');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('82', '42', '51', '13', 'Vel id iure enim sapiente. Voluptatibus vero quasi quae corporis repudiandae.', '2015-05-20 18:24:17');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('83', '61', '95', '35', 'Eos est quasi qui quo porro aut praesentium. Hic et possimus facilis quia deleniti. Voluptate consequuntur alias voluptate suscipit culpa voluptatum.', '1987-09-29 02:17:40');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('84', '23', '39', '87', 'Quibusdam quod voluptatem non hic. Natus fuga inventore optio numquam ut et sed. Ut cumque dolores pariatur voluptas laborum id.', '1981-05-12 01:48:22');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('85', '84', '38', '31', 'Perspiciatis perferendis sit rerum quibusdam. Culpa sit dignissimos modi non quia. Aliquid non quo qui.', '1982-09-03 17:06:16');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('86', '6', '100', '86', 'Assumenda debitis iure quam sed dolor consequatur. Libero tempora tempora recusandae harum ea ducimus aut. Ullam ea totam velit nobis omnis qui error. Et culpa est aut in soluta.', '2014-10-13 23:34:00');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('87', '13', '57', '25', 'Laboriosam eum quia repudiandae delectus omnis. Qui fuga veritatis illum est. Voluptatibus nihil cumque voluptatem voluptatem. Ipsa tempore corporis consectetur est.', '1995-07-09 22:45:04');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('88', '98', '39', '32', 'Quae explicabo minima enim qui voluptas sed unde. Culpa ad a et. Corporis perferendis corporis magni. Velit et enim soluta repudiandae. Voluptatibus molestias non aut ipsum nemo amet.', '1973-12-15 05:25:03');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('89', '93', '96', '15', 'Sit dolorem ipsa cum quas sunt tempore accusamus eaque. Ut veritatis perferendis rerum ipsum. Repudiandae voluptates aliquam dolor beatae.', '1978-08-10 13:36:46');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('90', '15', '72', '18', 'Error quam eaque explicabo est ducimus rerum tempore inventore. Fuga et velit perferendis veniam modi sed. Corrupti in voluptas quia facilis architecto. Non ullam distinctio fugiat totam tempore.', '1978-04-19 00:00:59');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('91', '98', '54', '17', 'Ratione sit sed culpa enim repellat atque. Itaque quia expedita delectus quidem dolor nostrum. Facere nemo aut temporibus.', '2013-07-05 22:42:31');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('92', '62', '96', '68', 'Facilis voluptate numquam non corrupti. Voluptas occaecati ut inventore voluptatem et sunt sed. Perspiciatis consequuntur ut quas vel voluptatibus quasi.', '1997-08-31 06:58:00');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('93', '74', '56', '62', 'Qui natus deserunt voluptatem ea non sed. Voluptate magni nostrum earum assumenda et est reiciendis eius. Omnis tempore voluptatem placeat explicabo.', '1979-10-24 03:23:26');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('94', '9', '79', '1', 'Corporis ea occaecati recusandae consectetur quia. Voluptatum magni provident inventore deserunt. Veniam voluptatibus unde in ut molestiae neque vitae praesentium. Laborum sit sint labore voluptatibus. Omnis inventore voluptatem quae.', '2000-09-29 22:24:04');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('95', '95', '63', '38', 'Iste nam ullam fugit repellendus rem id. Fugiat distinctio quia ea rem animi occaecati aliquam.', '2004-03-28 15:55:26');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('96', '25', '68', '38', 'Corporis provident omnis explicabo omnis molestiae animi quasi aliquam. Quam porro quibusdam et aut omnis autem voluptatibus. Qui unde voluptatem qui reiciendis nihil.', '1981-10-24 05:49:30');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('97', '10', '80', '94', 'Ut non dicta cumque mollitia rerum voluptates velit perspiciatis. Eos voluptatem veniam doloribus. Ipsa et illo natus et at autem.', '1989-09-15 19:48:35');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('98', '35', '77', '32', 'Et et quisquam necessitatibus libero placeat quam est. Doloremque excepturi voluptatibus cumque pariatur. Et quo ullam neque ad necessitatibus et.', '1993-08-01 04:03:44');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('99', '67', '70', '28', 'Quod soluta inventore animi eum consectetur ab optio cumque. Numquam et numquam provident totam voluptatem incidunt eum dignissimos. Ut distinctio est quos qui. Temporibus sunt similique quod enim ut mollitia quia.', '1992-01-19 05:52:15');
INSERT INTO `comments` (`id`, `from_user_id`, `to_user_id`, `to_media_type_id`, `body`, `created_at`) VALUES ('100', '81', '84', '99', 'Tempora voluptas id debitis tempore facere nesciunt illum vero. Alias est ea corrupti. Animi quisquam sunt tenetur consectetur fugit qui ratione.', '1975-02-15 16:22:08');


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `communities_name_idx` (`name`),
  KEY `admin_user_id` (`admin_user_id`),
  CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('1', 'et', '82');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('2', 'praesentium', '33');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('3', 'eaque', '3');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('4', 'veritatis', '35');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('5', 'quo', '5');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('6', 'reiciendis', '51');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('7', 'consequatur', '29');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('8', 'molestias', '39');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('9', 'dolorem', '42');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('10', 'itaque', '8');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('11', 'velit', '86');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('12', 'porro', '37');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('13', 'qui', '65');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('14', 'qui', '53');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('15', 'quo', '71');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('16', 'sed', '79');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('17', 'voluptate', '75');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('18', 'tenetur', '55');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('19', 'harum', '58');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('20', 'excepturi', '17');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('21', 'accusantium', '53');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('22', 'ipsum', '71');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('23', 'ipsam', '31');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('24', 'aut', '94');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('25', 'nulla', '62');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('26', 'quo', '7');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('27', 'quos', '25');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('28', 'enim', '81');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('29', 'eaque', '14');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('30', 'dolor', '5');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('31', 'voluptatum', '57');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('32', 'quia', '95');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('33', 'non', '38');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('34', 'nostrum', '59');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('35', 'doloremque', '29');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('36', 'sapiente', '43');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('37', 'sint', '10');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('38', 'ad', '58');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('39', 'fugiat', '81');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('40', 'rerum', '51');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('41', 'tenetur', '65');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('42', 'libero', '67');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('43', 'aspernatur', '87');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('44', 'esse', '30');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('45', 'minus', '19');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('46', 'fugiat', '57');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('47', 'et', '8');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('48', 'quo', '94');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('49', 'nihil', '11');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('50', 'est', '66');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('51', 'non', '10');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('52', 'sint', '64');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('53', 'sed', '37');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('54', 'et', '41');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('55', 'explicabo', '58');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('56', 'id', '98');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('57', 'deserunt', '47');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('58', 'eligendi', '83');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('59', 'iusto', '79');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('60', 'praesentium', '61');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('61', 'accusamus', '87');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('62', 'commodi', '35');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('63', 'corporis', '55');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('64', 'optio', '25');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('65', 'aut', '94');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('66', 'ipsum', '84');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('67', 'voluptas', '67');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('68', 'assumenda', '3');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('69', 'eos', '41');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('70', 'eum', '47');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('71', 'enim', '53');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('72', 'impedit', '6');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('73', 'omnis', '13');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('74', 'doloremque', '39');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('75', 'debitis', '36');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('76', 'harum', '32');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('77', 'omnis', '96');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('78', 'ut', '43');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('79', 'quis', '25');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('80', 'rerum', '7');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('81', 'quo', '8');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('82', 'voluptatum', '35');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('83', 'et', '71');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('84', 'atque', '45');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('85', 'tempore', '75');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('86', 'nam', '28');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('87', 'qui', '42');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('88', 'et', '22');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('89', 'dolor', '10');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('90', 'accusamus', '20');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('91', 'est', '82');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('92', 'cupiditate', '97');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('93', 'quas', '55');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('94', 'corrupti', '37');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('95', 'quod', '21');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('96', 'asperiores', '49');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('97', 'et', '21');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('98', 'eaque', '88');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('99', 'eligendi', '51');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('100', 'mollitia', '62');


#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined','unfriended') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1', '8', 'declined', '2018-02-24 12:22:55', '1983-07-13 04:02:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('4', '82', 'approved', '2009-02-13 23:57:56', '1993-01-08 02:36:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('6', '98', 'unfriended', '1993-03-01 23:30:49', '2010-08-17 09:05:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('9', '30', 'declined', '1980-04-24 08:24:23', '1998-07-03 13:28:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('9', '88', 'declined', '2007-06-14 08:18:06', '1989-01-06 09:37:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('12', '25', 'approved', '1996-06-09 23:38:20', '1978-04-26 01:27:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('12', '56', 'approved', '1995-05-12 20:24:41', '2011-03-14 01:21:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('12', '86', 'unfriended', '1990-05-15 05:02:32', '1980-10-28 05:02:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('14', '44', 'declined', '1982-04-18 09:23:59', '2004-05-25 20:58:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('14', '57', 'requested', '2015-11-25 10:57:19', '2001-08-02 22:30:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('14', '81', 'requested', '1973-10-26 04:59:22', '1993-12-01 05:50:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('15', '49', 'declined', '1973-05-08 14:46:29', '2021-09-06 16:12:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('16', '49', 'requested', '2008-06-16 06:21:14', '1989-10-04 13:01:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('17', '87', 'unfriended', '2014-05-11 19:22:05', '2015-06-24 04:01:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('18', '90', 'unfriended', '1999-05-23 23:18:33', '1973-10-28 06:31:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('22', '84', 'declined', '1987-06-16 07:04:40', '1995-11-10 12:46:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('22', '94', 'requested', '1993-07-01 23:43:35', '1979-03-05 20:18:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('23', '74', 'requested', '1982-10-07 11:34:21', '1991-08-25 22:22:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('23', '77', 'declined', '2000-02-06 21:18:09', '2007-07-22 08:42:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('24', '99', 'approved', '2015-07-07 09:17:20', '2007-11-24 06:05:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('25', '13', 'approved', '1982-09-29 09:59:15', '1987-08-18 06:23:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('25', '45', 'requested', '2012-05-22 14:27:25', '1979-04-10 03:54:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('28', '35', 'unfriended', '1999-02-14 17:29:48', '1970-08-08 13:16:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('29', '88', 'requested', '2019-01-16 12:06:38', '2017-08-22 16:05:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('32', '5', 'declined', '2012-11-03 20:37:09', '1996-12-09 18:08:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('33', '32', 'declined', '2000-07-27 08:45:09', '1999-01-17 05:04:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('33', '50', 'approved', '1996-10-11 11:04:26', '1989-04-01 13:03:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('33', '65', 'approved', '1999-01-09 15:11:51', '1980-03-30 02:42:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('35', '30', 'unfriended', '1999-12-23 15:15:14', '1996-09-08 09:04:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('35', '56', 'declined', '1994-05-15 12:10:39', '2004-05-05 16:03:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('35', '89', 'declined', '1990-02-17 05:12:59', '1991-04-13 20:40:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('36', '84', 'approved', '1998-03-10 00:50:14', '1999-10-28 21:23:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('39', '97', 'declined', '2005-10-15 20:16:46', '1972-03-10 06:07:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('39', '98', 'approved', '2016-12-06 21:56:20', '2004-01-21 00:03:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('40', '67', 'requested', '1998-05-07 14:39:38', '1973-11-10 05:50:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('40', '78', 'declined', '1982-09-11 19:52:31', '2011-07-03 16:45:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('41', '37', 'unfriended', '1998-12-05 19:27:17', '2012-03-27 11:51:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('42', '27', 'declined', '1986-06-28 09:51:42', '1984-11-30 23:43:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('43', '9', 'unfriended', '1987-05-12 00:15:02', '1989-03-28 20:56:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('45', '37', 'declined', '2022-05-01 00:38:38', '2020-05-24 06:28:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('45', '68', 'requested', '2007-03-14 19:38:16', '2010-08-05 17:07:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('48', '6', 'declined', '2006-10-06 21:55:49', '1986-03-15 03:53:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('48', '36', 'approved', '1993-12-09 13:45:51', '2014-02-23 12:34:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('50', '25', 'requested', '2021-01-24 03:03:15', '1970-10-20 06:52:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('50', '45', 'requested', '2006-12-17 09:09:58', '2019-02-26 21:34:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('51', '95', 'requested', '2002-10-25 14:56:04', '1981-03-29 11:36:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('51', '97', 'requested', '2007-09-05 17:45:08', '1977-03-06 23:16:56');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('53', '81', 'requested', '1973-07-23 03:24:37', '1976-04-13 17:29:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('54', '27', 'requested', '2021-12-11 23:18:09', '2001-03-27 03:38:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('55', '56', 'requested', '1998-04-17 06:39:26', '1982-06-01 01:09:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('55', '66', 'requested', '1989-03-31 14:42:21', '1998-05-16 20:28:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('57', '18', 'declined', '1984-08-30 05:11:41', '2015-10-24 23:56:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('57', '40', 'requested', '1983-08-09 16:04:38', '1984-01-12 00:49:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('57', '60', 'declined', '2016-05-12 11:22:01', '2018-10-06 12:02:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('58', '35', 'approved', '1976-08-18 12:56:28', '1998-03-18 01:41:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('58', '38', 'requested', '2012-08-08 06:25:43', '1978-07-03 18:51:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('58', '46', 'approved', '2021-04-19 10:06:19', '2010-02-07 19:15:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('60', '11', 'requested', '2002-01-26 22:24:00', '1979-10-13 02:38:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('60', '100', 'approved', '1973-02-28 12:37:14', '2004-03-16 02:47:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('61', '8', 'declined', '2021-08-23 17:34:46', '2017-02-18 05:17:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('62', '13', 'unfriended', '2014-06-30 21:10:19', '1992-07-27 07:43:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('62', '46', 'approved', '2018-05-30 02:51:04', '2007-12-13 09:23:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('63', '54', 'approved', '2015-10-10 19:05:47', '2010-02-25 01:53:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('64', '12', 'requested', '1993-07-20 13:26:02', '2012-10-18 18:54:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('67', '4', 'unfriended', '1997-03-03 06:25:12', '2000-10-24 07:41:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('67', '43', 'unfriended', '1975-04-24 18:31:53', '2015-11-11 17:26:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('68', '73', 'requested', '1998-06-14 08:57:44', '2015-02-07 13:15:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('69', '67', 'requested', '1999-03-18 22:05:49', '2000-09-30 05:27:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('71', '59', 'unfriended', '1997-01-19 23:24:22', '1975-04-14 00:32:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('74', '13', 'approved', '1992-12-29 12:07:47', '2009-10-12 00:55:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('74', '14', 'requested', '2015-10-26 16:15:39', '1987-09-14 08:14:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('74', '60', 'approved', '2012-09-07 23:11:33', '1972-03-26 04:13:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('76', '28', 'declined', '2007-06-14 17:21:28', '1973-11-21 16:22:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('78', '20', 'unfriended', '1987-11-07 22:01:43', '1973-10-26 16:33:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('78', '72', 'approved', '1985-04-05 06:35:13', '2013-06-29 12:16:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('78', '84', 'approved', '1991-07-10 16:14:43', '2021-12-21 08:25:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('79', '26', 'declined', '1976-01-19 06:03:52', '1982-06-05 01:50:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('79', '48', 'unfriended', '1979-08-08 01:08:09', '2022-01-21 07:36:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('79', '88', 'requested', '1983-04-10 13:56:06', '2008-03-18 05:27:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('80', '82', 'approved', '1982-09-15 16:52:16', '2021-05-24 18:42:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('81', '95', 'declined', '2012-10-05 18:48:41', '2011-12-26 21:53:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('82', '75', 'declined', '2017-08-13 04:31:47', '1990-11-06 00:26:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('84', '31', 'declined', '1993-05-05 23:56:05', '2000-09-11 01:54:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('85', '12', 'declined', '1976-10-09 12:05:12', '1995-02-12 15:29:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('86', '25', 'declined', '1974-12-07 09:00:59', '2015-12-15 19:47:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('89', '16', 'approved', '1972-12-09 14:22:14', '2007-03-04 12:06:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('89', '66', 'unfriended', '2014-03-06 06:28:23', '1983-11-29 15:02:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('89', '71', 'requested', '1987-01-01 12:20:46', '1990-04-22 09:50:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('89', '85', 'approved', '1991-12-31 20:46:07', '1993-07-02 18:04:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('90', '57', 'declined', '1970-07-20 08:39:38', '1986-12-24 21:03:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('91', '4', 'requested', '1994-06-18 07:03:38', '2000-05-07 07:12:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('91', '47', 'requested', '2015-09-22 08:07:15', '2021-06-19 00:55:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('91', '99', 'requested', '2020-11-02 05:37:33', '1981-09-28 08:10:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('93', '46', 'approved', '1982-10-02 18:47:07', '1994-06-08 04:40:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('95', '33', 'declined', '2017-06-22 09:26:35', '2016-07-29 09:34:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('96', '5', 'unfriended', '1980-06-16 06:00:01', '1991-04-09 13:40:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('97', '8', 'requested', '1972-02-28 02:03:03', '2001-10-19 11:36:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('97', '24', 'declined', '2013-05-01 02:38:49', '1993-03-04 19:40:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('98', '1', 'unfriended', '1989-04-03 02:48:45', '1986-09-05 17:31:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('100', '54', 'approved', '1993-10-31 20:52:47', '1987-03-03 21:23:33');


#
# TABLE STRUCTURE FOR: friends
#

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `friend_id` bigint(20) unsigned NOT NULL,
  `main_user_id` bigint(20) unsigned NOT NULL,
  `added_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `friend_id` (`friend_id`),
  KEY `main_user_id` (`main_user_id`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`main_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('1', '64', '47', '2009-08-15 14:37:18');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('2', '93', '20', '2007-05-11 07:25:51');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('3', '39', '39', '2019-11-18 04:41:32');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('4', '17', '19', '1999-10-13 19:54:05');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('5', '45', '67', '2005-03-22 09:17:12');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('6', '13', '88', '2011-04-04 02:20:18');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('7', '43', '48', '2013-06-21 11:33:51');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('8', '89', '68', '2010-06-03 22:19:44');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('9', '2', '82', '1990-10-31 20:43:31');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('10', '35', '1', '1979-05-29 15:52:49');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('11', '26', '65', '1986-05-05 13:11:09');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('12', '9', '27', '1995-08-24 07:54:29');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('13', '44', '100', '1984-10-29 01:42:57');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('14', '61', '63', '1998-03-13 16:16:13');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('15', '48', '88', '2001-03-14 21:03:42');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('16', '92', '11', '2010-11-07 12:39:16');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('17', '35', '84', '1999-10-15 22:21:41');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('18', '31', '73', '2007-10-17 08:10:08');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('19', '23', '47', '1997-01-19 16:51:41');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('20', '91', '67', '1993-01-24 11:21:38');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('21', '14', '3', '2021-05-17 02:45:13');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('22', '55', '56', '1995-01-15 14:15:02');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('23', '51', '44', '2000-06-11 06:45:37');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('24', '24', '52', '1997-05-22 19:36:13');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('25', '25', '59', '2016-01-03 23:42:45');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('26', '52', '51', '1987-05-26 04:23:01');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('27', '23', '61', '2010-05-20 15:33:36');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('28', '77', '66', '1981-07-17 11:42:19');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('29', '60', '37', '1979-03-09 23:41:28');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('30', '29', '8', '2016-11-25 12:50:57');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('31', '24', '21', '2020-12-11 18:13:15');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('32', '19', '59', '1982-12-11 04:07:30');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('33', '5', '49', '2017-01-23 17:49:06');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('34', '31', '27', '1995-06-07 08:34:05');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('35', '96', '21', '2004-09-05 18:29:14');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('36', '94', '9', '1984-11-03 18:18:30');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('37', '24', '48', '2019-10-19 23:11:18');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('38', '65', '75', '1985-10-03 20:34:56');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('39', '91', '89', '1998-11-28 23:44:41');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('40', '26', '16', '1997-09-30 21:46:00');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('41', '47', '78', '2012-02-13 23:01:44');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('42', '66', '70', '1987-12-21 01:21:49');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('43', '38', '43', '1993-05-25 18:40:57');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('44', '36', '98', '1992-09-07 16:53:44');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('45', '80', '64', '2019-02-27 12:54:30');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('46', '5', '4', '2000-05-03 22:47:13');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('47', '84', '23', '1985-09-09 03:27:50');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('48', '62', '88', '1991-07-04 23:00:51');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('49', '72', '92', '1987-09-05 00:57:14');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('50', '14', '68', '2018-08-28 10:53:49');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('51', '13', '7', '1999-07-10 02:29:24');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('52', '76', '37', '2000-06-28 17:17:08');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('53', '55', '41', '2016-10-26 06:18:42');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('54', '11', '46', '2021-03-16 10:07:33');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('55', '29', '37', '1982-04-15 18:27:02');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('56', '61', '76', '1977-11-14 03:15:59');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('57', '14', '27', '2014-08-04 04:14:57');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('58', '45', '52', '1989-03-26 14:38:26');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('59', '69', '80', '2020-11-17 13:49:18');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('60', '49', '48', '2018-02-14 03:00:16');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('61', '43', '54', '2009-01-09 04:38:48');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('62', '52', '27', '1974-10-16 17:44:47');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('63', '77', '13', '2010-03-21 00:43:25');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('64', '14', '49', '2022-03-05 15:15:37');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('65', '4', '28', '1992-10-18 23:37:38');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('66', '16', '17', '1986-05-06 23:23:09');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('67', '35', '91', '2014-02-14 11:51:48');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('68', '53', '90', '1994-11-16 02:04:31');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('69', '32', '63', '1971-03-05 20:36:00');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('70', '35', '60', '1970-10-17 16:25:35');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('71', '99', '96', '1994-11-06 03:03:36');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('72', '35', '13', '1979-04-10 16:58:46');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('73', '23', '79', '2000-10-31 15:05:33');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('74', '65', '92', '2006-10-03 02:04:14');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('75', '59', '13', '2015-10-19 11:49:01');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('76', '40', '2', '2001-04-14 09:30:18');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('77', '67', '91', '1987-07-25 18:08:53');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('78', '28', '44', '1978-03-21 15:31:14');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('79', '3', '42', '2009-06-18 11:56:46');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('80', '92', '7', '1978-06-17 23:28:24');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('81', '70', '7', '2004-12-16 07:34:25');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('82', '23', '5', '2009-01-28 03:21:26');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('83', '98', '75', '1988-06-16 21:37:45');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('84', '94', '29', '1992-02-22 05:08:51');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('85', '38', '29', '2016-01-04 05:34:57');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('86', '88', '37', '1978-08-13 05:35:20');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('87', '25', '23', '2018-01-30 05:08:56');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('88', '50', '47', '1981-10-17 17:34:14');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('89', '2', '14', '2000-01-28 21:03:18');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('90', '39', '60', '1986-12-13 01:22:33');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('91', '27', '78', '1973-02-20 14:40:56');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('92', '62', '94', '1993-05-09 06:00:24');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('93', '68', '90', '2003-09-08 15:43:36');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('94', '37', '70', '1979-03-26 22:43:51');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('95', '31', '28', '2017-06-24 01:37:35');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('96', '77', '1', '1993-03-28 06:35:19');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('97', '34', '99', '2011-11-18 17:29:35');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('98', '6', '32', '2010-08-10 14:35:34');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('99', '74', '99', '1993-12-09 09:08:34');
INSERT INTO `friends` (`id`, `friend_id`, `main_user_id`, `added_at`) VALUES ('100', '60', '12', '1975-02-23 17:04:43');


#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '97', '25', '2013-07-18 09:43:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '72', '75', '1972-02-17 12:32:58');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '88', '44', '1981-08-13 12:06:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '71', '57', '1975-10-27 13:07:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '73', '19', '2014-10-22 06:51:29');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '19', '87', '1994-09-17 07:49:10');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '12', '76', '1985-11-14 19:34:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '88', '98', '2009-04-14 14:38:22');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '15', '92', '2012-07-10 17:51:04');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '63', '18', '1991-11-04 05:04:51');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '82', '83', '2000-09-04 04:26:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '4', '86', '2002-08-19 09:00:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '53', '36', '1987-10-02 16:50:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '76', '79', '1984-06-25 01:34:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '63', '23', '2002-09-28 12:04:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '52', '60', '2014-09-16 12:37:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '47', '23', '2017-10-25 01:54:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '35', '34', '1978-06-09 03:53:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '67', '5', '1996-06-13 10:31:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '90', '39', '1971-10-07 19:53:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('21', '23', '8', '2001-05-17 18:24:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('22', '26', '35', '1972-04-25 04:10:29');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('23', '83', '13', '1978-06-03 10:47:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('24', '33', '97', '1988-01-15 21:55:22');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('25', '4', '95', '1979-06-15 16:28:41');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('26', '15', '86', '1987-03-26 19:37:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('27', '78', '18', '1994-06-09 01:22:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('28', '71', '31', '2020-11-13 10:22:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('29', '54', '47', '1994-05-12 05:12:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('30', '9', '16', '1990-08-22 04:54:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('31', '69', '61', '2018-03-04 20:20:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('32', '76', '15', '1987-08-28 15:27:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('33', '84', '10', '2010-01-05 15:59:18');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('34', '49', '50', '1998-03-23 15:49:11');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('35', '15', '38', '1993-01-27 00:21:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('36', '89', '38', '1983-03-26 09:22:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('37', '46', '15', '2020-04-05 03:07:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('38', '72', '28', '1989-04-05 01:29:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('39', '27', '4', '2006-05-26 04:39:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('40', '25', '31', '1988-08-18 17:08:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('41', '99', '39', '1974-08-09 18:09:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('42', '16', '76', '1988-06-26 02:39:42');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('43', '57', '87', '1999-02-20 10:28:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('44', '7', '10', '1990-07-23 13:57:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('45', '33', '15', '2000-06-26 10:44:51');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('46', '25', '2', '2003-07-01 13:30:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('47', '76', '1', '1997-02-20 13:30:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('48', '17', '59', '2004-10-29 00:03:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('49', '11', '65', '2007-07-17 11:37:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('50', '9', '25', '1981-08-05 13:12:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('51', '3', '98', '1978-11-30 13:17:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('52', '63', '48', '2018-07-29 10:24:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('53', '12', '34', '1990-02-26 08:49:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('54', '76', '38', '2002-07-07 02:05:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('55', '38', '100', '1984-03-15 19:36:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('56', '68', '36', '1998-08-28 18:15:58');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('57', '39', '84', '1998-03-23 15:37:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('58', '12', '95', '2005-11-17 09:30:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('59', '70', '18', '1987-07-12 15:46:48');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('60', '4', '3', '1977-11-12 14:09:49');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('61', '33', '29', '1995-07-13 12:57:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('62', '4', '8', '1999-06-19 10:02:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('63', '30', '21', '1977-03-04 03:33:48');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('64', '67', '40', '2006-01-12 12:01:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('65', '85', '75', '2017-04-19 19:52:56');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('66', '65', '87', '2013-12-10 18:27:24');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('67', '72', '28', '1971-06-10 20:03:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('68', '35', '84', '2007-03-03 23:32:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('69', '61', '10', '2016-01-30 14:46:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('70', '21', '98', '1992-11-24 12:47:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('71', '10', '89', '2016-11-20 16:29:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('72', '34', '49', '2011-10-03 15:21:06');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('73', '73', '45', '1979-02-22 17:11:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('74', '43', '43', '1998-02-23 14:23:16');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('75', '62', '47', '1973-02-07 06:17:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('76', '45', '94', '1983-06-16 19:48:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('77', '76', '49', '2020-02-29 00:32:31');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('78', '1', '5', '2016-12-08 10:14:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('79', '69', '67', '1998-12-14 10:20:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('80', '45', '54', '2007-08-16 00:28:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('81', '42', '10', '2013-06-25 23:02:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('82', '41', '14', '1978-02-24 07:51:22');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('83', '37', '75', '2004-03-29 00:29:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('84', '97', '98', '2014-08-24 15:04:41');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('85', '84', '18', '1985-08-25 09:21:42');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('86', '96', '94', '2005-07-26 06:05:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('87', '7', '29', '2019-05-28 14:29:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('88', '42', '79', '1994-06-22 11:34:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('89', '73', '85', '1988-08-07 04:19:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('90', '21', '35', '2012-05-22 05:47:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('91', '32', '66', '1977-10-28 14:03:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('92', '28', '7', '1993-11-21 12:29:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('93', '14', '29', '1977-02-21 16:35:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('94', '12', '83', '2014-04-02 05:38:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('95', '96', '57', '2003-03-07 10:36:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('96', '36', '37', '1989-03-15 08:38:36');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('97', '67', '76', '1978-07-02 23:34:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('98', '51', '3', '2015-08-01 13:48:33');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('99', '50', '47', '2018-03-25 01:19:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('100', '1', '34', '1995-08-06 15:27:11');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '45', 'Cumque culpa beatae debitis totam. Qui est debitis aut magnam mollitia ex. Aut perspiciatis rerum nihil. Eaque labore molestias minima enim excepturi suscipit.', 'enim', 995091965, NULL, '1981-01-16 16:46:22', '1972-06-03 04:33:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '78', 'Illo ut quidem totam aliquid est ut nostrum quia. A neque et impedit laborum. Doloribus et est ut ut saepe nihil. Architecto est neque hic tempora consequatur.', 'quibusdam', 0, NULL, '1978-04-17 10:17:20', '1991-08-04 13:10:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '77', 'Voluptas officiis officiis quis atque ipsam. Nisi maxime possimus autem incidunt qui omnis et. Quia recusandae asperiores et corrupti minima tenetur. Laborum molestiae laborum omnis.', 'numquam', 158217, NULL, '1978-01-18 09:56:48', '1976-07-25 00:43:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '29', 'Quos dicta ut expedita asperiores. Saepe et ut ab sapiente quisquam. Et assumenda consequatur laudantium quia rerum amet.', 'dignissimos', 78462, NULL, '1973-08-27 10:47:09', '2016-02-16 00:37:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '1', '8', 'Ipsam facere minus dolorem nesciunt commodi voluptas rerum corporis. Nam molestiae sed facilis. Sit consequatur eos doloremque et labore eum.', 'deleniti', 703710758, NULL, '2012-08-13 01:11:22', '1986-08-02 19:28:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '2', '46', 'Ratione ullam ratione aspernatur quasi fugiat eos et voluptatem. Deserunt ea et quis esse enim.', 'incidunt', 5, NULL, '1997-12-28 12:25:11', '2005-04-02 15:12:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '3', '21', 'Deleniti quam perspiciatis cumque omnis aut ducimus. Consequatur amet autem velit et qui qui. Velit dicta ut ad minima quis qui asperiores. Sit illo est amet.', 'quae', 501597343, NULL, '2021-03-13 02:47:51', '1982-03-05 08:17:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '4', '25', 'Asperiores suscipit tempora repellat similique. Eum ut praesentium quia iste. Iusto distinctio vitae odio perspiciatis dolorem ad fugit.', 'officia', 3, NULL, '2013-08-12 20:25:39', '2021-11-21 14:56:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '1', '33', 'Omnis dolorem sequi voluptas. Eum id similique perspiciatis tempora. Eveniet laboriosam voluptas veritatis molestiae quidem. Molestias quia ullam voluptatibus.', 'ea', 53920, NULL, '1980-01-01 03:04:28', '1995-02-01 18:35:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '2', '39', 'Ratione impedit alias maiores non. Repudiandae cumque recusandae corrupti delectus vero. Veritatis et veniam sunt recusandae in libero culpa. Dolor non assumenda similique.', 'necessitatibus', 795549077, NULL, '1989-04-10 18:19:53', '1976-10-20 04:46:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '3', '99', 'Qui impedit eos delectus magni officia sed. Sed ipsum omnis rerum harum esse ipsa accusantium.', 'doloremque', 7184, NULL, '2016-03-19 00:14:03', '2009-03-21 11:19:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '4', '53', 'Amet quisquam voluptatem quos quidem rerum ut voluptatem. Voluptatum exercitationem autem aliquam dicta asperiores ipsum dolores at. Et est excepturi suscipit repudiandae deleniti non. Quis possimus eum et. Optio nostrum veritatis eius doloremque ab ullam delectus ipsam.', 'ad', 2, NULL, '2015-05-18 12:38:18', '2016-05-31 05:04:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '1', '86', 'Eum pariatur cupiditate modi facere nisi consequatur. Consequatur quo maiores sed quae repudiandae vero totam repellendus. Error quibusdam temporibus molestias quae et.', 'dicta', 0, NULL, '2008-06-04 03:22:52', '1985-12-05 13:56:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '2', '88', 'Numquam magnam id ipsa adipisci. Cumque cupiditate aut explicabo et libero ut saepe iusto. Magni maxime placeat ducimus.', 'sed', 0, NULL, '1990-06-16 21:32:33', '2007-09-14 11:42:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '3', '69', 'Beatae porro quasi officia iure. Fuga sequi explicabo voluptatem praesentium. Asperiores neque adipisci ut expedita. Iure est quibusdam odio molestias perspiciatis ducimus.', 'quis', 963043986, NULL, '2008-12-12 08:26:44', '1979-03-04 22:55:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '4', '8', 'Esse eos earum assumenda ullam fuga. Enim et sint temporibus amet quasi. Laudantium molestiae nihil natus nihil.', 'doloribus', 0, NULL, '1990-11-02 22:29:56', '1998-06-12 09:47:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '1', '72', 'Reprehenderit qui architecto ut qui debitis corrupti nam. Neque velit voluptas quia quia. Minima consequatur quos eligendi temporibus soluta sapiente. Doloremque blanditiis commodi reprehenderit. Accusamus nisi dignissimos rerum.', 'molestias', 19482129, NULL, '1980-06-11 17:38:42', '1999-09-01 23:41:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '2', '42', 'Eum magnam officia suscipit. Asperiores officia odit ut vel nisi. Nemo sed consequuntur accusamus porro labore quas quod.', 'quia', 4, NULL, '2012-02-22 09:38:00', '1987-10-28 11:15:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '3', '86', 'Et officia accusamus unde quod. Itaque vero voluptatem blanditiis recusandae ipsa quia veniam sit. Impedit voluptatem eveniet ut. Iste quibusdam fuga repellendus id voluptate.', 'consectetur', 743398, NULL, '2008-12-28 04:20:21', '2011-01-10 13:47:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '4', '75', 'Esse est aspernatur vel cupiditate eum est. Minima ut et ea. Voluptates magnam quis natus. Quis iste asperiores iure dolores.', 'velit', 64, NULL, '1996-08-19 21:33:57', '1989-07-31 13:14:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '1', '40', 'Nihil dolore fugiat cum recusandae aut magnam corrupti. Excepturi quia error maiores eum qui iure fuga quia. Repellendus eos dolore quia. Laudantium expedita perferendis voluptatibus in cupiditate.', 'aut', 26055, NULL, '2013-10-21 00:41:58', '2004-10-19 04:43:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '46', 'Repellendus ut accusantium id rerum ab. Sed beatae dolores voluptates omnis exercitationem aut. Ut et culpa corrupti laboriosam eligendi eum. Occaecati impedit iure qui molestiae omnis quaerat architecto dicta.', 'nesciunt', 47429, NULL, '1975-05-26 23:10:29', '1988-11-08 00:18:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '2', 'Maiores odit vel dolorem excepturi. Et fugiat nihil in harum qui asperiores nesciunt. Non ab quaerat qui nulla vel sequi. Omnis nam necessitatibus aut quia et et enim.', 'nulla', 3, NULL, '1983-08-27 14:01:14', '1986-07-26 00:20:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '4', '18', 'Atque facere tenetur expedita dolor quod aliquam qui. Sed harum repudiandae doloremque accusantium. Occaecati quasi libero voluptate quod repudiandae ut illo.', 'aliquam', 5, NULL, '2014-10-30 14:58:55', '2014-06-13 02:05:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '1', '34', 'Nihil veritatis id eius qui est totam. Possimus ad voluptas et quae provident. Magni saepe porro commodi alias. Tempore debitis ipsa vel.', 'aliquid', 823105101, NULL, '2016-01-15 20:31:50', '1985-12-16 19:54:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '2', '24', 'Nisi est velit maiores ut enim ipsam. Sunt fugit atque voluptas cupiditate aut debitis possimus. Dolores eos possimus natus ratione ut.', 'reiciendis', 848482782, NULL, '2003-06-03 18:46:30', '2021-05-12 20:02:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '3', '66', 'Nihil iure blanditiis delectus doloribus eum velit reiciendis. Architecto sint iste illum illo. Officiis expedita qui assumenda nam.', 'neque', 0, NULL, '1972-08-08 11:47:26', '1993-10-04 16:52:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '4', '54', 'Veritatis velit ea quo ex eum perspiciatis qui. Quis autem nobis fugit eos. Rerum sit ut rerum explicabo est voluptatem. Nesciunt nostrum qui soluta et et.', 'inventore', 789, NULL, '1981-02-07 04:07:56', '1994-04-04 14:47:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '1', '45', 'Perspiciatis facere incidunt explicabo dolores rerum deleniti. Voluptas culpa aut distinctio. Voluptatem quis quisquam debitis. Debitis sit quaerat voluptatem ipsa consectetur.', 'quisquam', 369728, NULL, '1978-01-21 12:11:45', '2020-09-29 16:59:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '2', '77', 'Molestiae ducimus sequi veritatis numquam. Ratione molestiae quibusdam quia omnis est non.', 'sequi', 866248128, NULL, '2005-07-17 17:55:26', '1986-12-18 10:35:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '3', '80', 'Omnis autem molestias veniam laboriosam. Ipsa in reprehenderit perspiciatis sed molestiae est nesciunt. Atque sed architecto repudiandae doloremque quod fuga impedit.', 'voluptate', 679800, NULL, '2000-11-22 08:45:10', '1981-09-22 03:09:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '4', '89', 'Similique dolores dolorum temporibus nobis deserunt. Quos labore nobis dolor sit provident qui necessitatibus. Quia eos aut doloremque. Eveniet hic soluta ea adipisci fuga.', 'eaque', 53, NULL, '1972-03-19 10:33:05', '2013-03-30 09:25:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '1', '54', 'Asperiores inventore cupiditate voluptatum incidunt dolorum. Et quae et odit accusamus. Cum delectus blanditiis molestias reprehenderit ab cumque.', 'suscipit', 2, NULL, '1998-06-04 14:18:55', '2008-09-10 22:08:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '2', '56', 'Incidunt sapiente libero fugiat. Occaecati veritatis similique reiciendis est. Ipsa sunt et fugit inventore dolorum. Maxime sit distinctio ullam accusantium distinctio sit.', 'odit', 0, NULL, '1979-12-18 04:48:10', '1976-06-19 12:35:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '3', '17', 'Minus in veritatis sequi. Alias autem necessitatibus sit magnam. Corporis ut illo in dolores optio velit labore placeat.', 'sit', 826, NULL, '1970-04-25 01:38:07', '1997-05-20 07:27:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '4', '61', 'Repellendus amet asperiores distinctio quia. A et veniam recusandae debitis. Sequi similique animi itaque dolores consequatur dignissimos.', 'porro', 80031, NULL, '1976-03-28 00:29:29', '1996-10-19 09:07:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '1', '2', 'Dolor id nobis culpa quis quibusdam dolor. Non nihil dicta aspernatur velit deleniti quasi facere consequatur. Cumque voluptatem neque et quia eos. Amet culpa non minus et sapiente voluptatem.', 'aut', 686834527, NULL, '2013-03-18 16:37:35', '2001-05-02 05:36:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '2', '38', 'Reiciendis facilis dolor ratione nostrum omnis et dolorum. Maxime ad velit non. Voluptatum vero est deserunt maiores suscipit. Natus nobis eum rem provident dolorem quidem sit.', 'asperiores', 0, NULL, '1973-07-13 05:23:40', '1996-10-26 14:10:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '3', '85', 'Rerum error quasi quis repellat quia. Nihil ab soluta modi qui quidem et. Neque et sapiente reiciendis error debitis libero.', 'exercitationem', 0, NULL, '1978-04-18 01:52:09', '1974-08-20 06:57:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '4', '34', 'Fugit qui unde excepturi. Ipsa ab qui voluptates quia est exercitationem consectetur. Quia autem quis fuga ea quas nam.', 'et', 4, NULL, '1977-10-10 14:22:36', '2020-07-09 06:04:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '76', 'Fuga fugit illo excepturi voluptas dolorem. Labore sed est reiciendis sed enim temporibus voluptas. Expedita quod eaque a harum iste eaque deserunt.', 'officia', 87, NULL, '2015-02-22 01:18:44', '2020-04-23 00:55:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '2', '84', 'Voluptatum recusandae quia omnis culpa. Et tempore consequatur aut dolores laboriosam ipsum quo aut. Est suscipit ullam nam nisi laboriosam earum.', 'laborum', 4666451, NULL, '1973-06-08 13:59:02', '2005-08-11 11:39:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '3', '87', 'Quaerat quibusdam earum repellat est quasi quia enim. Doloremque perspiciatis eveniet quis. Molestiae qui illo iusto neque qui debitis.', 'eaque', 0, NULL, '2016-09-12 06:41:54', '1975-03-23 07:15:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '4', '62', 'Corrupti eveniet laudantium sequi. Est et autem aut est voluptate molestias ducimus. Nulla voluptatibus modi laudantium quis quia. Ipsum quia cumque aut pariatur ullam et rerum ut.', 'accusamus', 28368378, NULL, '2015-08-19 16:30:42', '1976-06-19 16:37:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '1', '71', 'Dolorum molestiae dolore accusantium molestias atque ut. Aut qui aut quisquam inventore autem. Labore in officiis doloribus odio eum facilis cumque.', 'et', 4114, NULL, '1979-07-29 10:59:29', '1975-06-12 21:52:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '2', '56', 'Et voluptate in facilis. Alias consequatur ratione dolor eos explicabo laudantium quia cumque. Temporibus ducimus minima eos reiciendis. Atque aut nihil ipsum in qui quos adipisci ut.', 'possimus', 199, NULL, '1996-01-04 01:35:21', '1998-08-04 12:58:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '70', 'Veniam eius mollitia dolorem et. Repudiandae aut quas totam accusamus quam. Asperiores aut odio voluptatibus vel nihil veniam laborum iure.', 'alias', 9880973, NULL, '1973-12-04 22:00:04', '2007-07-03 20:11:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '4', '43', 'Aut quae eum officiis modi. Alias quis tenetur error quibusdam at omnis officia omnis. Earum adipisci libero qui.', 'reiciendis', 905, NULL, '1986-04-07 20:11:26', '2015-08-25 16:13:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '1', '97', 'Non commodi ut odio inventore est. Ipsa temporibus praesentium autem et recusandae numquam commodi. Quibusdam molestias voluptatibus omnis repellat aperiam ex est.', 'similique', 3332269, NULL, '2020-02-25 03:26:19', '2005-08-09 02:53:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '2', '56', 'Voluptatem tempora et in consectetur molestiae voluptatum. Sunt aut mollitia repellendus sint. Suscipit omnis et iste qui molestias sed tenetur. In quis et sed placeat cum ullam sed quis.', 'fuga', 6, NULL, '1983-10-23 09:14:38', '1987-11-05 13:59:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '3', '18', 'Excepturi nesciunt sit in qui autem pariatur. Non est et doloremque ratione a qui ut. Quidem qui consequuntur nobis fuga perspiciatis.', 'maiores', 998, NULL, '1987-04-28 08:43:21', '2000-09-07 12:45:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '4', '37', 'Et fuga saepe deserunt ad accusamus quas voluptatem totam. Perspiciatis error magnam non architecto possimus nisi. Quis atque et fugiat. Suscipit dolorum ut est qui eos est.', 'magni', 390976, NULL, '1997-03-26 13:00:32', '1971-01-28 08:22:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '1', '1', 'Sit delectus dignissimos aliquam expedita. A voluptates delectus suscipit voluptas non reiciendis. Deserunt dolor consequatur aliquam illum rerum atque dolor.', 'ipsa', 0, NULL, '2015-10-02 17:09:18', '1971-12-16 05:21:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '19', 'Totam distinctio harum amet impedit. Et dicta hic quo magnam quasi.', 'possimus', 7531, NULL, '2011-08-28 13:58:01', '1982-10-21 00:06:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '3', '54', 'Cum veniam voluptas esse quis et et et. Sequi autem placeat quibusdam esse. Recusandae aut sed et iusto.', 'et', 7841, NULL, '2015-08-27 15:01:33', '2013-04-07 00:29:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '4', '35', 'Quisquam ratione eaque amet aut occaecati maxime ullam. Porro ut deserunt reprehenderit et qui. Dicta autem voluptatem consequuntur in. Doloribus ut et voluptatum voluptatem.', 'ea', 730, NULL, '2003-05-20 20:32:03', '2013-02-07 14:01:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '1', '43', 'Delectus et est labore quisquam maxime id cumque officiis. A facere exercitationem sed odio aut qui. Impedit error nostrum et modi cum quibusdam optio. Incidunt facere nemo voluptatem.', 'sunt', 84, NULL, '1990-07-11 02:34:07', '2021-10-22 18:12:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '2', '19', 'Voluptatum dolor beatae ipsa aut aliquid rerum. Libero dolor incidunt vitae esse deserunt doloribus minus.', 'aut', 325621127, NULL, '1971-01-06 01:35:21', '2018-05-22 18:16:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '3', '88', 'Cupiditate asperiores corrupti necessitatibus corporis. Fugiat est voluptate minima dolores. Ut et porro minus quam aut.', 'aut', 0, NULL, '2008-06-26 05:38:23', '1970-09-06 20:46:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '4', '87', 'Itaque aut ad reprehenderit perspiciatis consequatur voluptas iure quia. Sint harum eius amet ex. Magnam soluta aut et officia adipisci et.', 'accusamus', 823854160, NULL, '2006-10-09 04:30:46', '2001-01-02 04:23:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '95', 'Nobis a nostrum velit. Reprehenderit itaque voluptatem ducimus distinctio molestiae itaque. Quibusdam et illum placeat ea saepe. Vero mollitia dolores dolor laudantium a.', 'omnis', 7208054, NULL, '1975-04-24 22:37:28', '1971-11-26 16:52:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '67', 'Quas ut qui necessitatibus voluptas enim ab. Excepturi aliquid in sint aut. Cum minima ipsum veritatis rerum.', 'sunt', 51, NULL, '2006-07-27 01:50:00', '2003-05-21 00:00:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '3', '76', 'Dolor et placeat cumque corporis. Quod dolores et animi quam quisquam qui optio. Nostrum beatae consectetur totam labore illo ex.', 'recusandae', 3822, NULL, '1990-11-30 16:26:06', '1996-08-30 13:52:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '4', '48', 'Omnis aut vitae pariatur ducimus quidem consectetur rerum vitae. Saepe ab vel veritatis nostrum minima odio rerum nihil. Fuga autem at commodi tenetur et voluptatem sint. Reiciendis rem nulla voluptate tempore.', 'dolorem', 12511, NULL, '1994-04-05 14:38:19', '2019-10-26 13:14:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '1', '23', 'Eius consequatur enim ipsa. Qui fuga deleniti quo suscipit. Sunt ipsa iusto qui quasi ut molestias. Voluptas delectus maiores numquam qui unde est autem.', 'enim', 341698523, NULL, '1977-11-09 17:00:39', '2018-04-02 21:55:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '2', '93', 'Atque voluptatum velit adipisci rerum ipsa deserunt. Excepturi est distinctio officia nesciunt vero itaque. Saepe aliquam esse quaerat iusto id.', 'possimus', 81766681, NULL, '2007-11-01 11:52:13', '2019-08-27 01:57:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '3', '9', 'Doloremque quaerat sed soluta est aliquid rem. Et accusamus sed blanditiis ratione eos aspernatur. Vel unde tempora ea animi nam.', 'aut', 98628276, NULL, '2003-11-07 03:48:16', '1997-06-04 01:11:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '4', '24', 'Et quibusdam velit non omnis voluptate. Quis veniam qui sed provident voluptate dolorem. Voluptas et repellat veritatis aperiam quod at.', 'voluptates', 0, NULL, '1997-07-08 18:36:31', '2022-01-20 21:05:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '1', '30', 'Veniam expedita rerum sapiente delectus. Voluptates ducimus necessitatibus accusantium optio. Vel et illum dolorem voluptatem.', 'impedit', 23827, NULL, '2001-06-30 14:58:55', '1986-11-23 04:15:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '2', '94', 'Illo rem architecto accusamus qui tempora minus sed non. Non magni quos ipsa eius velit sint. Officiis perferendis nemo libero et voluptatem.', 'mollitia', 0, NULL, '1999-05-16 01:31:14', '1974-10-12 21:16:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '3', '58', 'Error dicta dolore quo soluta odit nulla. Dolorem nesciunt asperiores alias quam veniam.', 'blanditiis', 6, NULL, '1990-11-18 02:30:16', '2016-07-18 11:06:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '4', '6', 'Exercitationem perferendis eos minus aliquid tempora sit. Perspiciatis qui sint blanditiis excepturi ipsam magni. Totam expedita facilis illo occaecati accusamus mollitia assumenda quia.', 'animi', 83237754, NULL, '1991-09-14 20:37:40', '2008-06-08 02:19:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '1', '77', 'Laudantium consectetur rerum et et labore. Iusto vero quibusdam deserunt possimus qui architecto. Non minima aspernatur itaque in.', 'nobis', 8554523, NULL, '2018-02-27 03:20:23', '1998-09-23 15:00:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '2', '45', 'Occaecati dolores nam asperiores. Et eum ducimus dolore repudiandae rem. Aliquid et rerum omnis aut facilis mollitia.', 'corrupti', 6527, NULL, '1980-10-23 10:06:24', '2010-06-19 13:16:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '3', '68', 'Non perspiciatis aut natus magni. Soluta earum quo ab quo. Sunt voluptatum delectus voluptate. Eum voluptatem esse minus nulla velit repellendus quasi. Sit facilis et neque reprehenderit explicabo rerum necessitatibus ut.', 'iure', 180381, NULL, '1987-12-12 06:16:02', '1973-05-28 16:46:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '4', '48', 'Id eum quia deleniti. Quia culpa dicta delectus impedit sed architecto ut architecto. Dolor voluptate quo qui labore autem.', 'quia', 5847797, NULL, '2013-09-16 01:13:55', '1985-06-11 12:36:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '100', 'Atque nihil quaerat sit molestiae deleniti. Consectetur rerum explicabo cupiditate ut eum omnis. Impedit odit deserunt repellendus pariatur amet. Voluptate voluptatem deserunt quasi dolores distinctio maxime provident atque.', 'doloremque', 33, NULL, '2018-10-02 14:33:58', '2008-01-27 22:15:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '2', '37', 'Ipsa numquam similique hic illum voluptatum cumque sed. Omnis pariatur eius facere officiis. Et eligendi in fugit quo nesciunt.', 'aperiam', 6493428, NULL, '1976-10-21 08:37:07', '1994-12-06 19:20:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '3', '91', 'Temporibus ex ut quaerat. Quidem nobis fugiat esse voluptatem eum et illo. Accusamus minus dolores ullam tempora.', 'consectetur', 5, NULL, '1991-05-21 19:17:15', '1993-10-18 09:46:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '4', '96', 'Et unde quae voluptate. Quidem voluptas cupiditate non. Recusandae sequi beatae corrupti provident. Mollitia eaque facilis pariatur. Autem et iste eos laboriosam ab veritatis.', 'quia', 3856738, NULL, '1977-01-22 07:28:30', '2000-06-07 10:17:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '92', 'Earum aut quo totam omnis ullam totam. Qui nulla voluptatem possimus delectus blanditiis. Saepe aliquam vitae unde praesentium consequatur in perspiciatis pariatur.', 'error', 1287290, NULL, '1988-06-07 22:39:00', '2018-01-27 06:46:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '8', 'Vero eos quo mollitia aut culpa sit provident rem. Qui fugiat quasi corrupti dolores est voluptatem. Voluptates qui quis in adipisci molestias. Necessitatibus vero commodi sequi laudantium soluta repudiandae qui.', 'cum', 864085, NULL, '2001-04-27 05:50:59', '2019-08-05 03:04:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '3', '32', 'Necessitatibus quae veniam a sunt. Ut nostrum maiores est distinctio. Adipisci nobis reiciendis reiciendis doloribus est.', 'nobis', 1980560, NULL, '1971-12-04 03:43:22', '1991-10-10 07:17:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '93', 'Quia iste deserunt itaque maxime neque qui ut. Tempora esse possimus exercitationem ut et cupiditate. Iure illo illum itaque enim officiis quibusdam. Dolor est et quibusdam et velit nihil.', 'aut', 34012305, NULL, '1993-03-09 16:26:28', '2014-07-18 07:59:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '1', '27', 'Non eos aut ut id autem doloremque sit. Non mollitia sed id aut. Rerum laborum incidunt sit qui eum iure eos facilis. Consectetur sunt et incidunt quam quisquam. Cumque magnam adipisci et optio consequatur.', 'et', 40242, NULL, '1988-05-04 05:44:26', '1990-01-03 09:55:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '2', '86', 'Veritatis dolores odio debitis dolor. Reiciendis est exercitationem aliquam animi repellendus amet quo nesciunt. Iure reiciendis debitis in tempore.', 'animi', 2116, NULL, '2009-06-27 02:00:31', '1980-03-31 13:00:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '3', '27', 'Recusandae sint voluptate aut dicta et qui. Dolorem et dicta eaque odit aperiam esse architecto. Sed recusandae alias non sint necessitatibus aspernatur. Dicta expedita voluptatem iusto et non aut.', 'beatae', 701, NULL, '1973-02-22 18:18:13', '1995-02-22 21:44:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '4', '70', 'Enim saepe maxime sed numquam. Reprehenderit consectetur nisi ea dolorem fuga ipsum. Quisquam laborum omnis earum natus doloribus. Eligendi ut earum fuga vero. Sunt ipsa corrupti similique dolorem accusamus vitae eos.', 'repellat', 53, NULL, '1987-07-21 17:22:38', '1970-11-07 19:39:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '1', '4', 'Voluptas aspernatur beatae molestiae non aut ea. Non porro suscipit molestias occaecati sunt. Commodi labore sit omnis a totam consequatur facere.', 'ut', 4192, NULL, '1993-08-08 17:02:40', '1999-07-05 05:38:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '2', '14', 'Et quibusdam vero vero sequi tempore et voluptatem. Occaecati ratione voluptas minima sint ipsa quia cum vitae. Repellendus et consequatur accusamus commodi dolores. Enim unde nihil necessitatibus ut aut.', 'optio', 39526, NULL, '2019-09-11 08:49:57', '2019-11-04 12:24:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '3', '56', 'Sint aut ut sint recusandae quisquam. Consequatur officiis voluptatum praesentium distinctio odit ut qui mollitia. Suscipit cupiditate ullam et est.', 'doloremque', 677, NULL, '1988-06-26 02:34:05', '2006-09-13 07:07:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '4', '99', 'Qui autem corporis aliquam voluptatem ipsa cupiditate ratione. Ut a aut blanditiis facere. At provident in ipsum quaerat voluptas quia ut veniam.', 'laborum', 7, NULL, '1976-09-01 08:20:37', '2021-09-16 13:38:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '1', '81', 'Tempore sed eius enim. Sunt est et et corrupti. Corporis perferendis a maxime velit. Sunt velit et beatae incidunt eius dolores.', 'possimus', 65, NULL, '2006-06-10 06:24:54', '2003-08-26 22:18:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '2', '32', 'Consequuntur iste dolore sunt facere consectetur. Doloribus maiores ut eveniet corrupti doloribus. Odit rerum ad et enim. Voluptatem voluptas quos est delectus temporibus laboriosam. Ullam dolore aspernatur maiores natus ut eveniet possimus voluptas.', 'temporibus', 951938, NULL, '2009-10-02 18:23:44', '1972-04-04 03:13:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '3', '46', 'Dolorem voluptatem cum asperiores et in. Quas laudantium earum eos aliquid exercitationem facere quod. Aliquam quos quos quasi incidunt rerum sequi eos. Voluptas voluptatem natus fugiat aut.', 'et', 38023042, NULL, '2008-06-30 15:00:56', '1997-12-08 08:15:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '4', '4', 'Vel vero omnis doloribus sed. Sint quasi provident deleniti aperiam sed provident. Vel ratione vel tempore aspernatur rerum et. Vero iusto ut labore labore magni qui. Minus dolores esse deserunt.', 'temporibus', 453413290, NULL, '1974-10-06 22:10:19', '1988-12-31 03:07:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '1', '24', 'Quod magni et eum est non sit. Et placeat earum et rerum quidem. Aut quasi laudantium impedit incidunt.', 'voluptatem', 25, NULL, '2013-09-12 23:31:56', '2012-03-18 07:34:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '2', '55', 'Provident vel enim vero quibusdam sint possimus. Beatae nisi aut omnis nisi aut. Delectus fugit culpa facilis reiciendis aut in. Iure est soluta facilis accusamus vitae.', 'cupiditate', 955, NULL, '2004-01-14 11:49:15', '2008-01-14 09:40:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '3', '28', 'Voluptas aliquam nisi et vel officia quibusdam. Facere blanditiis itaque sunt facilis mollitia quae eos et. Et est quia reprehenderit. Minima repudiandae odit iste.', 'sed', 8286230, NULL, '1990-04-12 15:34:28', '1993-06-12 20:37:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '4', '53', 'Iure illo consequatur sapiente aut minus odio. Error asperiores repellat et velit eligendi inventore. Doloribus et cum quia sed non ducimus. Perspiciatis consequatur eius ea et officiis mollitia.', 'consequatur', 8, NULL, '1980-08-18 03:53:56', '1980-02-17 19:40:38');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'laborum', '1973-07-07 08:18:46', '1999-01-19 03:46:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'maiores', '1998-04-21 14:10:09', '2019-02-26 04:29:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'perspiciatis', '1974-05-21 00:00:32', '1987-02-08 16:18:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'molestias', '2000-08-24 14:20:12', '1971-05-13 15:27:38');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '31', '12', 'Consequuntur sapiente eius voluptatem et dolorem beatae. Quod ea quis doloribus deleniti. Doloremque quo excepturi architecto non perspiciatis. Rerum rerum deleniti est quae aperiam dolor.', '1997-08-19 03:05:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '87', '45', 'Cupiditate aspernatur doloremque labore facere doloremque magnam. Nihil architecto vel qui reiciendis maxime rem excepturi fugit. Excepturi distinctio velit quia velit consequuntur molestiae quaerat. Quae modi corporis omnis quod.', '2007-01-16 22:25:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '11', '71', 'Rerum a et et fugiat facilis qui voluptatem dolorum. Quod consequatur et sunt ipsa. Tempora quidem qui cupiditate voluptas a omnis. Perferendis aliquid cum inventore molestiae tempore magni veniam.', '2020-10-18 10:17:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '36', '54', 'Consequatur ipsam dolorum repellat ratione est maxime. Quidem vel unde assumenda. Similique enim omnis unde porro nobis quos. Assumenda porro non ducimus voluptatem aut.', '2014-10-16 06:13:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '22', '9', 'Et animi vel est doloribus sint vero. Porro consequatur et itaque eius. Eos tempora dolorem id velit rerum repudiandae. Voluptatum deserunt et id dicta.', '1971-12-03 23:29:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '17', '80', 'Aut nisi ut consequuntur et. Voluptatem illum non illo voluptates cumque quisquam rerum. Enim ducimus aliquid sed et rem est.', '1970-07-31 07:18:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '62', '64', 'Qui laudantium ab voluptatem voluptatem eos veniam. Deleniti iusto omnis omnis nemo esse iste dignissimos. Quo et sed et ut.', '2021-03-03 08:33:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '79', '72', 'Culpa dolor voluptatem et eos dicta. Mollitia animi accusamus doloremque dolor. Aut perferendis nihil architecto error qui nam.', '2000-05-07 17:02:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '79', '65', 'Voluptas quas autem rem sint qui ut debitis dolor. Architecto assumenda est et adipisci. Optio repellendus nisi omnis quibusdam. Voluptatem excepturi voluptatum ea porro quia.', '2021-07-19 12:26:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '95', '94', 'Corporis placeat aut est exercitationem nemo possimus. Totam alias exercitationem nobis. Nesciunt voluptate harum nesciunt nobis numquam. Suscipit est excepturi assumenda minus ut eaque.', '2010-10-05 22:42:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '25', '47', 'Non deleniti dicta sunt cum eos labore et. Est dolor dicta sit sed corporis. Atque enim id et sed nostrum. Sed est et quia ab consequuntur voluptates aut.', '1987-10-16 21:45:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '19', '84', 'Vitae nesciunt incidunt ducimus dolorem qui vero iure. Molestias ratione temporibus repudiandae dolor distinctio est. Temporibus ut libero id magni alias dolores. Rerum reprehenderit eligendi explicabo et recusandae dolor.', '1970-08-25 03:01:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '54', '92', 'Modi esse eos accusamus dolorem quos incidunt. Dolor voluptatem et exercitationem nostrum. Libero vel beatae cumque cupiditate. Consectetur animi enim et sunt rem optio sapiente et.', '1991-04-08 08:26:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '41', '18', 'Voluptas quia modi voluptates et officia quis commodi aut. Rerum voluptatem quaerat quas temporibus qui. Omnis maiores ex voluptatem velit.', '1995-03-14 11:21:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '38', '25', 'Aliquid ut illo natus illo facilis quo adipisci. Mollitia explicabo est eos perspiciatis molestias minima nulla. Inventore placeat tenetur sed sit. Et tenetur dolores corporis eum. Nesciunt totam eaque reiciendis debitis similique.', '1999-10-25 01:54:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '97', '69', 'Repudiandae aspernatur voluptas qui sapiente eum et. Aut facilis architecto non recusandae voluptates ut. Ad modi cupiditate rerum est quam.', '2020-04-22 14:39:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '37', '84', 'Qui ut non aut dolorum nulla. Eos consequatur nulla qui iste sit. Dicta nihil est sequi voluptatem placeat omnis facere.', '2021-03-04 04:18:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '14', '47', 'Exercitationem amet expedita et incidunt nihil laudantium id incidunt. In vitae est alias officiis et. Et maxime vitae voluptatem facilis quas nostrum inventore. Qui enim maxime eum occaecati sint consequuntur.', '1976-03-18 21:21:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '54', '49', 'Dolorum iure voluptas enim et laboriosam est. Incidunt aut repudiandae minus eos provident.', '1972-11-06 05:15:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '1', '75', 'Sunt exercitationem at quis cumque quasi non magnam. Et aut ipsum necessitatibus pariatur iste vero tempore dolores. Possimus qui sint quae numquam. Voluptas facere eos modi.', '1984-10-20 15:08:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '58', '17', 'Autem consectetur iste non occaecati. Nihil iusto expedita nesciunt adipisci. Quis a omnis rerum assumenda laboriosam mollitia voluptas.', '1985-08-15 01:39:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '54', '19', 'Ut iusto voluptas impedit qui at vel illo. Maiores ut ut dolore vitae.', '1971-12-01 00:34:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '81', '33', 'Esse incidunt est qui. Ullam dolores tempore ipsam rerum quasi. Eos eum modi fugit culpa aut dolorem aliquid. Explicabo neque pariatur iusto minus veritatis dolorem perferendis mollitia.', '1997-02-16 22:17:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '91', '59', 'Nam sequi sit sed illo ut qui. Mollitia distinctio blanditiis mollitia sed culpa autem similique. Nostrum adipisci aut suscipit sunt consequatur. Exercitationem eos et ex id voluptas.', '1992-05-16 13:20:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '98', '85', 'Esse sit dolorem expedita officiis nisi. Culpa veniam quisquam modi molestias quod. Iusto ea eos sapiente et autem. Deleniti et at quam.', '2016-04-25 00:12:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '53', '22', 'Molestiae debitis reprehenderit voluptate dolores id quia. Fugiat consectetur ea voluptas tempora in illum cupiditate. Possimus repudiandae placeat dolores aut minima distinctio autem. Sapiente sit molestias perspiciatis sint.', '1986-02-24 10:04:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '32', '71', 'Ab eos asperiores rem ad et. Voluptas repudiandae fugit aut non atque voluptas. Voluptates velit aperiam sunt.', '2006-03-20 20:18:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '5', '85', 'Alias consequuntur quas voluptatum aut vitae amet. Et eveniet sint ea et architecto. Molestias molestiae et asperiores dolor.', '1983-03-24 01:38:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '62', '45', 'Culpa quo magnam autem dolor. Maxime qui modi sit nobis veritatis in. Tempora eos est enim aut rerum.', '2001-09-16 19:46:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '2', '100', 'Unde natus asperiores est et. Sed repellendus repellendus hic quasi. Tenetur neque impedit iusto facere. Modi voluptatem eius sit dolores aliquid. Omnis velit et nihil molestiae.', '1973-06-08 11:36:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '70', '99', 'Officiis velit quaerat in a aliquam in ut. Reprehenderit voluptas id qui ipsum inventore cumque eveniet eos. Et qui harum dolorem hic et corporis omnis. Quis ad est minus sit odio qui.', '2007-02-16 14:46:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '68', '6', 'Est illo exercitationem rerum corporis ut cum et esse. Ipsum dolore repellat labore voluptatum numquam vitae ea. Aut dolores molestiae doloremque amet et deleniti dolorum unde. Eius soluta repellendus cum ea sapiente aut. Debitis dolores nisi eos sit itaque suscipit.', '1970-12-07 06:31:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '82', '82', 'Qui inventore illo itaque quo expedita. Aut quasi illo dolor dolorem non. Maxime assumenda eaque quod quibusdam ut eos voluptatem dolor.', '1981-06-20 03:34:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '53', '35', 'Eum optio voluptate asperiores sit est ab nihil. Assumenda quasi molestias excepturi quia nihil iure odit. Quia numquam blanditiis debitis molestiae consequatur harum.', '1996-04-12 06:45:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '30', '54', 'Et est omnis ducimus. Sit necessitatibus natus necessitatibus dicta. Sint fugiat velit error expedita ipsa expedita facilis. Id nulla quas tenetur repellendus earum et facilis at.', '1970-12-21 05:54:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '10', '88', 'Ab quidem atque iste ab voluptatem rerum. Nam reiciendis voluptatem voluptas assumenda. Natus magni rerum est at eligendi. Tempora dolore ex ut.', '1975-12-31 01:00:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '70', '64', 'Esse quo ab illo consectetur possimus recusandae cumque. Tenetur aut incidunt labore esse porro. Sit ipsam consequatur veniam a magnam accusantium voluptatem.', '1998-07-07 17:29:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '6', '51', 'Aut facere impedit aut sit nihil nihil vel veritatis. Placeat et voluptas id qui veniam repellendus repudiandae. Quisquam et ducimus labore dicta.', '2019-09-04 11:25:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '97', '97', 'Inventore deserunt fugit sit eum odio temporibus. Distinctio dignissimos maxime molestias quos illum nam sit. Assumenda voluptatem quis minus molestiae. Atque reprehenderit iure dignissimos ipsam.', '2010-01-13 20:53:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '10', '94', 'Ex autem quia pariatur eum magnam sunt sit. Maiores at mollitia ullam voluptas esse accusantium alias adipisci. Quia dolorum quibusdam velit doloribus. Consequuntur aut quia rem.', '1985-10-29 23:57:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '81', '62', 'Laudantium debitis officia iure ut quasi consectetur. Consequuntur recusandae dolores laboriosam molestiae. Recusandae consequatur accusamus dolores et qui esse ut inventore. Repellendus enim amet dignissimos ipsam eveniet qui suscipit.', '1989-01-30 03:21:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '15', '12', 'Qui consequatur libero perspiciatis rem odit ullam. Libero qui praesentium qui illo alias. Quos numquam sunt accusamus placeat dolor. Laborum consequuntur sapiente pariatur quia nobis eos.', '2022-01-12 06:42:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '33', '20', 'Commodi delectus incidunt pariatur quia magnam ratione. Dolores officiis in necessitatibus itaque. Consequuntur commodi voluptatem magni quas. Et ipsam officiis dolor quos qui provident adipisci aut.', '2013-03-06 22:13:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '96', '95', 'Delectus est dignissimos eum facere odio. Doloremque perferendis sit aliquam praesentium et. Mollitia aut saepe quia qui.', '2005-07-02 17:46:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '65', '98', 'Voluptatem laborum voluptas quia sint est ea. Est provident dicta eos veniam molestias blanditiis aliquid. Laudantium ipsam possimus fuga ratione.', '2012-04-18 19:17:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '95', '35', 'Asperiores laudantium cum aut nam ad inventore natus. Veritatis est eum dolores in dicta velit. Consectetur omnis voluptate assumenda nisi pariatur neque.', '2010-10-06 05:45:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '96', '63', 'Necessitatibus ratione pariatur et dolor atque temporibus. Sit quia eligendi pariatur sint. Quo quam illum error atque rerum qui. Qui eius aut ut.', '1986-02-06 23:01:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '41', '78', 'Laudantium qui dolorem sed dolore ducimus. Odit at dignissimos laboriosam nemo. Inventore sit enim molestiae omnis. Perspiciatis facilis quae praesentium aut quasi et dolorum est.', '1998-09-07 03:14:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '44', '94', 'Culpa voluptatem est animi minima. Ducimus numquam est et est. Nesciunt voluptas eum temporibus odio.', '1997-11-27 14:34:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '12', '73', 'Et blanditiis ut a maiores qui autem alias est. Aut a cum qui occaecati animi at. Modi voluptate dolor nisi. Qui quia iste rem doloremque consequatur neque atque. Qui exercitationem quas quam excepturi aut incidunt expedita autem.', '2006-09-18 09:57:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '47', '22', 'Nisi sed cum autem voluptates. Iste eaque laborum expedita eum qui. Laboriosam consequatur mollitia velit et praesentium autem. Et placeat repellat autem vel sunt.', '1985-08-20 02:02:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '60', '17', 'Odit exercitationem rerum voluptatem suscipit voluptates. Expedita optio aut nesciunt quaerat quia nam et. Expedita incidunt inventore fuga dolor. Neque nihil doloremque officia rerum.', '1979-05-29 16:08:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '86', '66', 'Fugiat maiores eum est. Perspiciatis alias quas voluptatem est illo id non. Ut enim neque quo odio alias blanditiis est. Rerum harum fugiat sunt.', '2005-09-15 20:30:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '67', '82', 'Ex dolores voluptatem consequatur corporis asperiores. Quia consequatur alias voluptas. Consequatur dignissimos et numquam velit dignissimos.', '1983-12-18 13:35:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '62', '77', 'Quisquam rem neque laborum asperiores expedita consequuntur. Nulla a qui qui cumque aut asperiores. Dolore odio architecto non aut voluptates eveniet quo nulla. Quos necessitatibus odio doloribus.', '2019-03-26 14:22:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '75', '43', 'Et voluptatibus cupiditate culpa dolor. Praesentium ipsa enim doloribus doloribus rerum.', '1988-07-27 19:05:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '39', '90', 'Consectetur placeat eius dolorem sunt. Error cupiditate rerum qui ad. Ut et temporibus debitis quia tempore qui laudantium facere. Quae temporibus earum ullam omnis maxime corporis ea. Ducimus voluptates soluta in necessitatibus adipisci.', '2002-04-22 20:59:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '54', '71', 'Iste mollitia autem ut nisi. Aut ex facere possimus qui sapiente. Voluptatem suscipit vel dolorum impedit et occaecati culpa.', '1977-11-06 12:56:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '9', '50', 'Occaecati non debitis sed expedita minus. Id magnam illum quos suscipit id iste quis. Ut deserunt vero deleniti quae dolor. Molestiae laborum debitis quae et ea est eveniet. Corrupti eum optio quia et.', '1991-10-24 08:38:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '66', '74', 'Sed explicabo dolores molestias et suscipit itaque enim. A repellendus est eos adipisci magni ratione fugit. Perferendis velit rerum vel rerum magni repellat laudantium. Placeat autem reprehenderit ea quas.', '1981-10-28 05:13:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '47', '60', 'Et id repudiandae natus eligendi delectus. Ipsam nihil officia consequuntur enim architecto. Aut et quos et. Perferendis quis et voluptates nihil.', '1973-01-12 17:16:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '8', '43', 'Quia a rerum qui dolores ipsam cupiditate deserunt. Fugiat est fuga cumque modi consequuntur et numquam laborum. Perferendis nihil eveniet autem fugiat. Quae vero a veniam rerum blanditiis consequatur.', '1994-10-21 03:24:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '22', '48', 'Ipsum qui repudiandae doloremque quas. Doloremque deleniti eos qui perspiciatis. Debitis omnis quia impedit architecto eligendi in quia porro. Est in natus et libero voluptatem est ex reiciendis.', '2003-05-05 15:42:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '20', '65', 'Magnam fugiat dolorem necessitatibus qui repellendus animi. Necessitatibus voluptas voluptas corrupti ullam maiores et eveniet. Aliquam corporis ut est delectus quod.', '2014-04-23 06:13:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '41', '32', 'Autem dolor nemo minus ut sit nesciunt. Consequatur sunt tempora quia exercitationem eum modi porro. Accusantium occaecati labore consequatur excepturi debitis. Consequatur voluptatem voluptas in voluptatem voluptatem.', '1997-03-25 13:04:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '38', '87', 'Voluptate minus qui ut soluta nesciunt. Omnis magnam veniam laudantium nisi dignissimos qui.', '2002-08-13 08:00:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '54', '98', 'Hic eos velit magni est praesentium. Aliquid voluptatem quo ut voluptas. Quia ex dolor ex animi est eius.', '1981-08-03 11:03:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '4', '39', 'Adipisci atque officiis tempora totam omnis ut vel. Quia eos beatae quia sint eos repellat amet est. Praesentium nam fugit corporis deleniti. Ex asperiores est dicta alias a sit.', '2000-09-21 06:42:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '64', '70', 'Totam deleniti quaerat magni voluptas praesentium sed sit molestias. Unde facere repellat molestiae et aut. Numquam quo minus illum dolores voluptatem rerum ratione rerum. Dicta rerum fugiat accusantium ut facere qui voluptates.', '1993-12-01 02:39:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '20', '26', 'Consequatur dolor in est doloribus. Ipsa dolorem accusantium quisquam qui autem vel recusandae. Voluptatem et qui eveniet. Dolorum quaerat quisquam repudiandae.', '1983-04-19 16:23:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '46', '94', 'Omnis et illum ducimus accusantium eos molestias sunt. Quaerat unde totam minima maxime molestiae. Dolore sint quod molestiae architecto voluptas aspernatur.', '1998-04-06 06:00:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '68', '85', 'Quia sint temporibus harum provident id incidunt. Autem minus tempora id tempore ab. Hic mollitia et quia tempore laborum exercitationem non. Non est ea quia labore non molestiae.', '1978-10-02 08:24:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '84', '22', 'Voluptatibus quas cupiditate dicta dicta autem amet a id. Deleniti nemo id vitae dolorem. Rerum natus et illo quia qui. Dolores nobis temporibus maiores placeat recusandae voluptas non quia.', '2005-09-03 15:55:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '56', '93', 'Quod voluptatum officia deserunt ea rerum. Tempore quam voluptate magnam esse fuga labore. Et et est magni quasi sit velit. Recusandae amet omnis molestias consequatur.', '1970-10-24 01:05:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '71', '21', 'Eveniet laborum officiis est qui. Et ipsam quia culpa fugit voluptatem. Accusantium qui explicabo et et ut nihil.', '1979-03-25 22:10:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '66', '18', 'Explicabo voluptatem similique ut quia quaerat accusamus omnis dolorum. Voluptatem voluptatem explicabo odit quibusdam. Quaerat consequatur beatae doloribus debitis aperiam reprehenderit.', '2011-09-29 18:56:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '81', '73', 'Ut amet cupiditate quis non amet. Neque omnis modi tempore unde itaque esse.', '1982-06-05 12:13:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '61', '3', 'Aspernatur tempore nihil odit voluptatem qui qui dolorem cum. Expedita provident eius sed aut quia iure corrupti. Molestiae ut porro id fugiat.', '2012-06-06 15:41:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '21', '81', 'Rerum nisi optio non. Minus quam iure est autem exercitationem quia ut nesciunt. Laudantium quia rerum perferendis magni inventore vel.', '2015-07-07 06:48:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '68', '61', 'Autem maxime soluta inventore quam et rerum error. Qui quis iste ab veniam. Qui molestiae nobis omnis atque rerum.', '2007-07-17 00:38:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '13', '6', 'Quas voluptatum autem natus consequatur a ut. Consequatur laudantium earum expedita repudiandae adipisci sapiente et animi.', '1999-12-04 03:49:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '48', '66', 'Optio et quasi placeat blanditiis. Provident voluptas et incidunt. Iusto et neque necessitatibus ut est. Odit officiis aliquam esse consequatur dolorem.', '2017-07-25 13:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '3', '51', 'Voluptas consequuntur sunt rerum dolores nostrum quis. Qui inventore ea accusantium. Qui rem ex voluptates fugiat earum rem nostrum.', '2013-03-27 09:21:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '4', '67', 'Cum quis tempore doloribus. Inventore animi rem repellat vel. Autem voluptatum voluptates ut nihil.', '2016-05-29 10:54:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '21', '24', 'Perferendis voluptate nulla deleniti sunt non. Corrupti et et officiis quisquam dolores quas. Nostrum asperiores accusamus sit non. Sunt esse ex et facilis est voluptatem.', '1979-11-14 04:16:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '92', '67', 'Quod excepturi eos amet eligendi et atque laborum. Et reiciendis in ipsa non. Ut dolore quia porro qui ea.', '2020-01-01 04:16:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '18', '59', 'Ullam est est eos ipsum vero omnis. Optio quo quis iure rerum quod. Error ut placeat beatae autem. Voluptas suscipit doloribus sit rerum rerum.', '1999-10-10 03:17:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '51', '1', 'Reiciendis soluta aut at iste a. Mollitia id quia voluptatum et a et assumenda saepe. Ut omnis odit eum sint provident at.', '2017-06-25 04:21:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '81', '6', 'Porro rerum quae in recusandae fugit. Veniam corporis alias labore quidem qui dolorum. Ullam qui quasi vel consequatur deleniti magnam. Eos culpa labore quam reprehenderit.', '2016-04-04 00:26:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '93', '51', 'Veritatis tempore beatae rerum id. Repellendus qui maiores alias magnam nisi nulla modi cumque. Et non corporis enim molestias voluptatibus rerum consequuntur.', '2018-09-12 02:58:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '27', '58', 'Ipsum labore et enim ut. Molestiae perspiciatis eos nobis voluptas alias expedita. Repellendus nihil nemo veniam id dolores eos. Soluta velit voluptas earum officia possimus non est. Quaerat aut provident ad laboriosam et.', '1970-05-21 19:48:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '69', '7', 'Nisi dolorem laboriosam et rerum magni eaque excepturi. Ipsum quam rerum dolorem ut aliquid at cumque. Similique et voluptatem dolores consequatur. Itaque voluptatem laborum atque deserunt enim veritatis magnam.', '2018-11-11 18:06:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '31', '29', 'Aut sint ducimus iusto sapiente vel vitae non. Non qui sit id autem quaerat dolorem dolorum. Nam explicabo laboriosam mollitia dignissimos molestiae excepturi.', '1988-10-25 05:01:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '10', '51', 'Placeat eius velit velit adipisci. Voluptate sed eos voluptates laborum qui. Doloribus eum ad nobis quibusdam beatae.', '2003-07-06 07:08:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '10', '77', 'Dolorem neque repellendus neque inventore ut dolorem. Minus voluptatum magni ipsam ratione.', '1976-12-15 09:38:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '12', '22', 'Explicabo praesentium nobis et architecto expedita a dolores. Consequatur illo nihil totam ad et. Aspernatur consequatur amet saepe sint dolore sed nesciunt. Voluptas aut sed ut ab fuga.', '1995-12-16 01:51:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '82', '59', 'Aliquam officia quia quidem nihil recusandae ipsam. Autem et placeat non qui explicabo maxime quia. Nobis sit repudiandae perferendis quo similique tenetur quia incidunt. Maxime tempora error iusto.', '1992-08-28 20:01:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '87', '85', 'Non et est quo doloremque ipsam ratione sed. Sit magni iste accusamus quis rerum. Est harum id dolor facere aut ab dolore. Corrupti tempora nihil neque.', '2012-02-11 15:58:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '10', '91', 'Voluptas qui aut quibusdam fugiat in et eveniet. Quo aut est iusto in neque sequi eos. Nesciunt cum ex qui sunt laudantium ea.', '1978-02-26 20:38:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '51', '30', 'Est porro aut cupiditate adipisci. Nobis et voluptatem molestiae quia eum dicta. Velit quo repellendus at ipsa illum aut.', '1987-05-12 22:27:59');


#
# TABLE STRUCTURE FOR: music_playlist
#

DROP TABLE IF EXISTS `music_playlist`;

CREATE TABLE `music_playlist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `music_playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('1', 'facere', '9');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('2', 'perferendis', '41');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('3', 'maiores', '5');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('4', 'esse', '34');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('5', 'ea', '23');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('6', 'non', '100');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('7', 'eligendi', '55');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('8', 'provident', '33');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('9', 'possimus', '54');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('10', 'assumenda', '16');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('11', 'quos', '32');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('12', 'dolor', '96');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('13', 'assumenda', '92');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('14', 'corrupti', '65');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('15', 'modi', '35');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('16', 'dicta', '3');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('17', 'velit', '96');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('18', 'iusto', '81');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('19', 'tempora', '92');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('20', 'eum', '68');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('21', 'dolor', '99');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('22', 'voluptas', '93');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('23', 'perferendis', '96');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('24', 'tempore', '94');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('25', 'tempora', '18');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('26', 'earum', '45');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('27', 'molestiae', '73');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('28', 'harum', '29');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('29', 'iste', '32');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('30', 'suscipit', '41');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('31', 'aut', '37');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('32', 'et', '40');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('33', 'similique', '82');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('34', 'consectetur', '42');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('35', 'aspernatur', '74');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('36', 'necessitatibus', '4');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('37', 'eaque', '41');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('38', 'eligendi', '29');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('39', 'et', '36');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('40', 'provident', '95');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('41', 'hic', '44');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('42', 'facilis', '68');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('43', 'eos', '90');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('44', 'pariatur', '35');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('45', 'qui', '32');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('46', 'aut', '25');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('47', 'temporibus', '38');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('48', 'architecto', '27');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('49', 'minima', '6');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('50', 'nemo', '29');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('51', 'et', '95');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('52', 'voluptas', '5');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('53', 'voluptate', '21');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('54', 'reprehenderit', '90');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('55', 'commodi', '98');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('56', 'magni', '39');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('57', 'natus', '35');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('58', 'quibusdam', '71');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('59', 'fugit', '68');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('60', 'vel', '66');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('61', 'culpa', '11');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('62', 'vitae', '4');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('63', 'laborum', '5');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('64', 'sint', '92');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('65', 'minus', '45');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('66', 'unde', '78');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('67', 'fuga', '95');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('68', 'quos', '86');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('69', 'aliquam', '7');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('70', 'nam', '31');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('71', 'sunt', '81');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('72', 'ipsam', '50');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('73', 'fugiat', '98');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('74', 'ut', '71');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('75', 'qui', '84');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('76', 'in', '29');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('77', 'et', '95');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('78', 'debitis', '21');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('79', 'vero', '56');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('80', 'assumenda', '100');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('81', 'minima', '50');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('82', 'aut', '50');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('83', 'aut', '4');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('84', 'quae', '70');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('85', 'veniam', '40');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('86', 'qui', '2');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('87', 'sunt', '9');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('88', 'voluptas', '74');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('89', 'nihil', '72');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('90', 'sapiente', '76');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('91', 'facere', '39');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('92', 'neque', '83');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('93', 'et', '79');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('94', 'autem', '44');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('95', 'ullam', '75');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('96', 'iste', '24');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('97', 'unde', '22');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('98', 'sapiente', '70');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('99', 'culpa', '10');
INSERT INTO `music_playlist` (`id`, `name`, `user_id`) VALUES ('100', 'quibusdam', '28');


#
# TABLE STRUCTURE FOR: musics
#

DROP TABLE IF EXISTS `musics`;

CREATE TABLE `musics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `playlist_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_id` (`media_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `musics_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musics_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `music_playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('1', '26', '91');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('2', '52', '16');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('3', '2', '62');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('4', '90', '63');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('5', '13', '10');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('6', '26', '77');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('7', '26', '57');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('8', '88', '91');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('9', '31', '2');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('10', '28', '45');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('11', '81', '26');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('12', '39', '88');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('13', '55', '79');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('14', '50', '37');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('15', '21', '56');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('16', '48', '46');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('17', '46', '100');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('18', '62', '47');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('19', '61', '51');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('20', '10', '74');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('21', '61', '35');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('22', '51', '87');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('23', '92', '38');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('24', '77', '23');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('25', '39', '4');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('26', '67', '20');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('27', '30', '6');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('28', '7', '85');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('29', '85', '57');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('30', '21', '5');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('31', '12', '69');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('32', '51', '58');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('33', '68', '12');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('34', '5', '29');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('35', '63', '14');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('36', '2', '23');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('37', '49', '52');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('38', '9', '40');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('39', '90', '86');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('40', '62', '28');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('41', '90', '29');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('42', '48', '19');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('43', '34', '55');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('44', '3', '18');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('45', '11', '24');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('46', '23', '23');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('47', '93', '73');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('48', '80', '61');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('49', '84', '85');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('50', '89', '46');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('51', '98', '91');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('52', '69', '46');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('53', '43', '77');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('54', '86', '32');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('55', '63', '47');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('56', '60', '52');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('57', '75', '7');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('58', '71', '9');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('59', '61', '74');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('60', '26', '72');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('61', '98', '48');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('62', '94', '90');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('63', '20', '74');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('64', '51', '4');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('65', '59', '39');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('66', '50', '56');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('67', '30', '18');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('68', '2', '72');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('69', '95', '87');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('70', '3', '57');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('71', '34', '63');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('72', '9', '9');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('73', '69', '80');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('74', '17', '30');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('75', '53', '42');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('76', '2', '51');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('77', '90', '96');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('78', '41', '10');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('79', '70', '91');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('80', '13', '28');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('81', '29', '62');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('82', '84', '59');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('83', '79', '85');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('84', '30', '74');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('85', '72', '33');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('86', '30', '5');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('87', '95', '39');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('88', '14', '64');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('89', '18', '30');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('90', '94', '71');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('91', '72', '95');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('92', '21', '61');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('93', '90', '61');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('94', '70', '60');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('95', '51', '82');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('96', '87', '80');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('97', '44', '70');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('98', '38', '23');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('99', '55', '68');
INSERT INTO `musics` (`id`, `playlist_id`, `media_id`) VALUES ('100', '96', '26');


#
# TABLE STRUCTURE FOR: news
#

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` bigint(20) unsigned NOT NULL,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`from_id`) REFERENCES `friends` (`friend_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('1', '5', '1', '1994-10-06 17:11:01');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('2', '65', '4', '2021-02-03 15:52:47');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('3', '23', '4', '1979-02-14 09:50:14');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('4', '91', '3', '2010-07-14 02:19:16');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('5', '3', '2', '1989-05-10 01:45:10');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('6', '61', '3', '2007-09-25 08:34:22');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('7', '24', '2', '2013-07-23 22:03:23');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('8', '64', '4', '1973-12-01 08:22:18');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('9', '24', '4', '1994-10-06 23:26:47');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('10', '76', '1', '2019-02-18 18:27:24');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('11', '31', '2', '1995-01-24 11:41:42');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('12', '77', '4', '2010-11-21 13:48:13');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('13', '92', '1', '2005-02-21 09:42:20');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('14', '59', '1', '1975-10-22 22:02:43');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('15', '37', '2', '1982-12-28 20:36:46');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('16', '45', '2', '1973-12-21 01:03:56');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('17', '45', '2', '1989-10-09 22:21:34');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('18', '35', '3', '2010-02-19 20:31:12');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('19', '4', '2', '1987-01-28 23:47:23');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('20', '32', '1', '1996-07-24 13:36:57');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('21', '52', '1', '1993-01-10 03:12:20');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('22', '67', '4', '2000-01-24 10:29:40');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('23', '31', '2', '1971-09-07 10:13:36');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('24', '68', '3', '1976-07-14 21:22:06');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('25', '35', '3', '1973-06-03 07:29:44');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('26', '53', '4', '2013-02-06 16:55:00');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('27', '77', '2', '1980-08-21 17:29:39');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('28', '48', '4', '1992-03-15 10:07:38');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('29', '55', '1', '1971-04-08 18:22:32');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('30', '77', '1', '1996-05-01 22:40:27');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('31', '44', '2', '1979-05-04 10:27:53');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('32', '50', '1', '1993-02-25 01:38:03');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('33', '60', '4', '1992-11-01 21:39:58');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('34', '74', '3', '2002-11-06 23:43:37');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('35', '26', '1', '1978-07-31 02:47:06');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('36', '67', '4', '1980-03-04 05:22:56');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('37', '24', '3', '1992-02-23 15:50:05');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('38', '68', '3', '2011-07-13 06:27:06');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('39', '2', '3', '1995-05-22 15:47:51');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('40', '23', '2', '2017-12-01 08:22:51');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('41', '14', '4', '1984-09-09 03:23:46');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('42', '23', '4', '2002-09-23 05:11:04');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('43', '29', '3', '1990-10-25 16:44:37');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('44', '67', '4', '2007-12-11 02:21:13');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('45', '94', '3', '2019-12-19 23:43:54');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('46', '4', '2', '1997-02-20 12:11:26');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('47', '99', '3', '1996-09-29 16:31:54');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('48', '48', '3', '1970-06-23 10:37:27');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('49', '52', '2', '1977-04-15 10:48:50');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('50', '32', '4', '1979-02-07 15:31:38');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('51', '48', '1', '2020-09-25 10:10:41');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('52', '70', '4', '1997-07-20 02:38:27');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('53', '59', '3', '2004-05-12 01:58:28');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('54', '35', '3', '1978-05-30 07:29:53');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('55', '14', '3', '1988-03-05 10:28:43');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('56', '13', '2', '2012-08-06 19:46:18');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('57', '37', '2', '1970-02-06 13:34:12');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('58', '24', '4', '2021-08-17 23:50:47');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('59', '3', '1', '1993-05-23 20:28:50');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('60', '62', '4', '1972-07-11 10:21:30');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('61', '52', '4', '2013-01-10 14:48:39');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('62', '38', '3', '1989-09-29 12:15:42');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('63', '34', '1', '2009-05-15 10:05:22');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('64', '26', '4', '1996-11-02 23:05:48');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('65', '35', '3', '1996-03-17 16:15:07');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('66', '80', '4', '1987-06-17 00:16:38');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('67', '66', '3', '2012-04-04 16:52:05');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('68', '69', '2', '1984-02-07 16:40:45');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('69', '24', '1', '2008-01-21 19:58:19');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('70', '9', '2', '1978-12-01 23:55:20');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('71', '74', '1', '1997-07-13 09:59:01');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('72', '50', '2', '1995-07-31 04:59:44');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('73', '37', '4', '2019-10-11 14:22:31');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('74', '3', '2', '2003-05-03 20:48:44');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('75', '77', '3', '1976-10-06 14:44:02');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('76', '37', '2', '1985-06-16 07:49:20');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('77', '39', '4', '1982-10-07 11:32:44');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('78', '5', '4', '1991-02-20 01:56:54');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('79', '94', '2', '1984-02-20 07:44:12');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('80', '77', '2', '1982-02-20 07:49:10');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('81', '94', '3', '1977-11-02 01:43:33');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('82', '31', '3', '2014-06-03 14:08:46');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('83', '31', '1', '2005-02-24 07:22:11');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('84', '14', '3', '2014-01-30 02:37:51');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('85', '31', '1', '2010-11-04 02:51:11');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('86', '92', '1', '2016-06-23 11:06:38');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('87', '35', '3', '1978-12-23 22:38:48');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('88', '35', '4', '1998-10-10 05:46:37');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('89', '31', '2', '1980-11-25 12:09:29');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('90', '27', '1', '1974-04-12 12:01:12');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('91', '23', '3', '1970-05-17 06:27:56');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('92', '52', '3', '1971-12-09 15:07:30');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('93', '60', '3', '1991-05-25 22:58:39');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('94', '45', '3', '2004-03-14 12:14:07');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('95', '2', '2', '1975-01-21 18:48:36');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('96', '96', '4', '2005-04-07 22:54:38');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('97', '6', '2', '1990-09-10 04:32:51');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('98', '61', '2', '1979-03-26 01:14:12');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('99', '37', '4', '2012-02-20 00:31:49');
INSERT INTO `news` (`id`, `from_id`, `media_type_id`, `created_at`) VALUES ('100', '2', '4', '2003-07-12 17:30:44');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'sapiente', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'et', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'magni', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'non', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'facilis', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'repudiandae', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'ad', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'nostrum', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'qui', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'mollitia', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'consequatur', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'excepturi', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'sunt', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'quae', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'harum', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'veritatis', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'omnis', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'fugit', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'qui', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'qui', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'eaque', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'quaerat', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'sint', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'ex', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'et', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'tempore', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'quam', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'inventore', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'facere', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'veniam', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'vitae', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'commodi', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'soluta', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'optio', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'molestiae', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'quibusdam', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'quibusdam', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'quam', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'a', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'molestias', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'non', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'nobis', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'et', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'repudiandae', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'voluptas', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'voluptas', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'perferendis', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'consequatur', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'officia', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'aliquid', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'odit', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'non', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'rem', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'et', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'vitae', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'quia', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'eos', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'animi', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'iusto', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'iste', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'similique', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'ea', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'odit', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'iste', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'deserunt', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'ullam', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'maxime', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'et', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'officiis', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'necessitatibus', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'tenetur', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'ratione', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'autem', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'adipisci', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'quod', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'qui', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'est', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'doloremque', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'dolorem', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'et', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'sunt', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'vitae', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'corrupti', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'voluptatem', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'iusto', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'repellat', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'dolorem', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'vero', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'quod', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'similique', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'occaecati', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'nisi', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'error', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'est', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'autem', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'voluptatem', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'aperiam', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'dolores', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'quo', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'vel', '100');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '58', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '90', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '53', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '74', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '14', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '28', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '10', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '9', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '14', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '80', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '64', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '26', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '64', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '19', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '52', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '60', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '82', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '44', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '1', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '43', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '67', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '33', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '87', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '93', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '36', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '79', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '84', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '6', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '63', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '79', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '47', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '23', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '87', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '61', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '84', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '3', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '73', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '27', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '75', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '60', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '92', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '9', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '42', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '22', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '38', '100');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '17', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '38', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '12', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '6', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '13', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '76', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '39', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '49', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '7', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '85', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '34', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '3', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '50', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '56', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '48', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '72', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '78', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '4', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '34', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '62', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '99', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '61', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '85', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '3', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '34', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '57', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '62', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '9', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '4', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '83', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '59', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '16', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '63', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '26', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '28', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '43', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '24', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '64', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '13', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '99', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '52', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '13', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '16', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '25', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '87', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '71', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '62', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '82', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '4', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '21', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '95', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '59', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '67', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '26', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '88', '25');


#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `post_media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_media_id` (`post_media_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('1', '35', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('2', '50', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('3', '41', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('4', '57', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('5', '86', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('6', '85', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('7', '77', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('8', '18', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('9', '28', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('10', '31', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('11', '54', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('12', '43', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('13', '53', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('14', '25', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('15', '92', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('16', '28', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('17', '18', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('18', '22', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('19', '30', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('20', '22', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('21', '54', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('22', '82', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('23', '98', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('24', '98', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('25', '73', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('26', '55', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('27', '6', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('28', '23', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('29', '86', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('30', '62', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('31', '86', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('32', '4', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('33', '66', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('34', '63', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('35', '3', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('36', '9', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('37', '90', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('38', '87', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('39', '90', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('40', '11', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('41', '13', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('42', '89', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('43', '63', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('44', '77', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('45', '59', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('46', '26', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('47', '27', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('48', '48', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('49', '54', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('50', '87', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('51', '94', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('52', '13', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('53', '87', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('54', '69', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('55', '83', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('56', '39', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('57', '45', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('58', '13', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('59', '39', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('60', '56', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('61', '28', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('62', '41', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('63', '10', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('64', '46', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('65', '98', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('66', '20', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('67', '29', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('68', '74', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('69', '31', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('70', '92', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('71', '22', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('72', '8', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('73', '58', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('74', '74', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('75', '10', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('76', '93', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('77', '11', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('78', '91', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('79', '22', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('80', '84', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('81', '69', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('82', '11', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('83', '35', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('84', '12', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('85', '27', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('86', '79', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('87', '33', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('88', '16', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('89', '7', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('90', '86', '1');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('91', '19', '4');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('92', '54', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('93', '13', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('94', '49', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('95', '81', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('96', '55', '2');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('97', '35', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('98', '47', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('99', '50', '3');
INSERT INTO `posts` (`id`, `post_id`, `post_media_id`) VALUES ('100', '35', '4');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'm', '2004-07-16', '1', '2010-03-03 01:10:01', 'molestiae');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'f', '2022-02-16', '2', '2012-01-04 05:03:22', 'earum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'm', '2012-05-18', '3', '1970-05-31 17:40:40', 'expedita');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '2008-09-29', '4', '1979-02-09 19:14:21', 'nostrum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '1980-09-06', '5', '2004-09-04 08:32:08', 'unde');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '1978-04-09', '6', '1986-08-21 11:58:19', 'est');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'f', '2003-07-05', '7', '1975-07-27 00:17:43', 'iure');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'f', '1985-04-12', '8', '2011-10-25 12:48:24', 'culpa');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '2019-03-03', '9', '2003-08-17 23:03:35', 'animi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'm', '1986-05-13', '10', '1973-05-06 10:06:04', 'libero');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'f', '2002-01-22', '11', '2003-02-20 09:58:00', 'quia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '1994-07-08', '12', '2001-07-20 17:39:13', 'quaerat');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'm', '2017-01-28', '13', '1988-04-10 05:22:14', 'facilis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'f', '1991-07-03', '14', '1980-10-06 17:04:40', 'quidem');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'm', '2017-11-18', '15', '1976-01-12 20:51:24', 'commodi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'm', '1978-12-20', '16', '2008-05-06 20:53:23', 'eveniet');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '1979-10-16', '17', '1999-06-20 15:43:57', 'qui');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '1982-05-20', '18', '1982-04-18 21:15:00', 'repellat');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'm', '1987-10-25', '19', '1997-04-02 21:04:11', 'et');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'm', '1994-05-15', '20', '1998-08-04 23:32:04', 'repudiandae');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'f', '2001-10-01', '21', '1991-03-20 20:31:44', 'rerum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '1972-03-07', '22', '1980-11-18 07:05:30', 'aut');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'm', '1984-04-01', '23', '1980-03-19 06:05:15', 'est');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'm', '2007-09-10', '24', '1974-08-27 07:06:55', 'delectus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'f', '2014-03-08', '25', '1971-10-22 04:22:32', 'quis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '1998-01-27', '26', '2020-04-05 08:53:58', 'quia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'f', '2011-09-06', '27', '1973-03-19 10:35:55', 'quidem');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'm', '1977-10-03', '28', '2020-03-01 09:23:22', 'sit');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'm', '2009-03-02', '29', '2014-08-15 09:36:13', 'reiciendis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'f', '2010-01-20', '30', '1989-03-02 11:11:16', 'omnis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'f', '2013-01-17', '31', '1999-11-16 17:02:55', 'molestiae');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'm', '1973-11-19', '32', '2019-11-08 10:47:41', 'assumenda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'm', '1983-04-13', '33', '1997-03-21 05:09:30', 'ipsam');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'm', '2003-08-20', '34', '1980-09-07 17:13:18', 'necessitatibus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'm', '2011-01-18', '35', '1971-08-23 06:23:48', 'in');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'f', '1993-11-25', '36', '1986-05-17 15:50:06', 'cupiditate');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'f', '1975-07-15', '37', '1979-10-03 09:34:37', 'aut');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '1993-06-16', '38', '2000-12-22 00:06:13', 'et');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'm', '2019-08-30', '39', '2010-06-04 16:02:35', 'quod');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '2008-02-08', '40', '2000-07-28 17:24:11', 'vero');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'm', '2005-11-02', '41', '1986-04-08 12:11:44', 'blanditiis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'f', '1979-06-20', '42', '2013-04-11 20:12:58', 'et');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'f', '1984-12-05', '43', '1997-10-21 19:57:19', 'perferendis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'f', '2013-06-18', '44', '2007-02-22 09:16:18', 'rerum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '2011-03-08', '45', '2017-11-27 13:57:23', 'et');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'f', '1976-11-05', '46', '1987-04-05 13:41:29', 'perferendis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'f', '1998-05-31', '47', '2003-01-16 07:46:57', 'quae');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'm', '2001-01-06', '48', '1996-05-29 04:42:40', 'dignissimos');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'm', '1999-11-05', '49', '2007-05-02 18:47:16', 'cupiditate');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '2020-11-18', '50', '2005-09-28 08:14:57', 'rerum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '1986-02-16', '51', '1985-06-03 16:07:57', 'veritatis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'f', '2004-05-27', '52', '2005-05-09 10:08:45', 'mollitia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'm', '1980-04-03', '53', '1977-09-18 06:42:49', 'labore');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'f', '2006-05-06', '54', '2003-06-14 09:01:33', 'voluptatum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'f', '1998-10-02', '55', '2021-12-25 02:39:18', 'voluptatibus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'f', '2013-10-20', '56', '2006-07-13 09:16:28', 'ea');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'f', '2021-05-14', '57', '1990-10-07 07:57:17', 'quia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'f', '2009-01-15', '58', '2006-08-23 07:23:13', 'praesentium');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'f', '1980-11-11', '59', '2001-03-17 00:47:07', 'praesentium');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'f', '2006-02-17', '60', '2012-06-16 17:33:01', 'eos');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '2000-01-21', '61', '2020-05-14 08:04:13', 'atque');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'f', '2008-11-14', '62', '1987-02-28 10:17:06', 'culpa');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'm', '2017-05-28', '63', '1979-07-29 15:48:58', 'officia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'f', '1985-03-15', '64', '2019-05-21 19:59:57', 'velit');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '1997-12-15', '65', '1988-12-24 10:20:21', 'voluptatem');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '1973-08-06', '66', '1984-04-28 14:05:04', 'vero');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'm', '1996-09-20', '67', '1971-08-14 22:17:26', 'quasi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '1985-02-13', '68', '2008-08-23 19:42:28', 'hic');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'f', '1973-04-12', '69', '1997-10-27 16:29:06', 'sequi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'm', '1998-01-10', '70', '1997-03-02 18:58:05', 'ducimus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'm', '1976-02-23', '71', '2009-12-26 14:07:19', 'dolorem');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '1988-01-23', '72', '2021-07-02 17:49:05', 'molestias');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'm', '2004-01-25', '73', '1985-08-16 07:48:52', 'quasi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'f', '1990-08-18', '74', '1976-06-27 06:50:23', 'omnis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'm', '2014-02-18', '75', '2003-07-26 17:48:31', 'iure');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '1983-02-24', '76', '1990-08-21 21:40:43', 'nisi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'm', '2015-10-07', '77', '2013-08-15 15:19:09', 'ipsum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'f', '2017-03-01', '78', '1978-05-24 23:36:54', 'animi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '1983-07-24', '79', '1985-06-28 11:49:01', 'sit');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'f', '1980-05-14', '80', '1970-06-02 20:00:14', 'repellat');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'f', '1984-04-24', '81', '2010-07-23 11:36:11', 'itaque');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'm', '2019-05-07', '82', '1972-09-03 22:54:23', 'dolores');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'm', '2008-08-30', '83', '1996-04-08 09:11:58', 'assumenda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'f', '2006-11-27', '84', '1978-07-20 11:27:03', 'quidem');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'm', '1972-03-02', '85', '1998-04-04 05:33:55', 'ratione');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'm', '2020-08-29', '86', '2000-08-07 03:45:37', 'at');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '1972-09-06', '87', '2002-04-26 07:55:49', 'debitis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '2008-08-10', '88', '1987-08-02 21:18:40', 'inventore');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'm', '2015-04-07', '89', '1977-12-29 18:16:05', 'distinctio');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '1987-07-24', '90', '2000-03-26 16:40:40', 'repellendus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'm', '1975-03-20', '91', '1985-09-12 00:08:45', 'nulla');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '1984-06-22', '92', '1986-08-23 06:12:13', 'recusandae');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'f', '2011-02-23', '93', '2001-06-30 19:48:19', 'dolore');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '1972-06-30', '94', '2017-02-18 02:18:54', 'natus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'm', '1993-04-23', '95', '2008-02-06 21:17:18', 'sint');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '1979-11-26', '96', '1983-08-15 02:44:51', 'placeat');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'm', '2012-05-14', '97', '2010-05-14 12:25:43', 'quis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'm', '2003-01-26', '98', '1979-12-21 15:41:00', 'voluptatem');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'f', '1996-01-09', '99', '2006-08-15 03:57:31', 'temporibus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '2003-12-10', '100', '1970-03-02 06:45:13', 'et');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Retha', 'Walker', 'laurine.dietrich@example.org', '64221459de81054726aed68661c8ce5e511567d9', '9026258154', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Hector', 'Krajcik', 'nils.schmeler@example.net', '7f6b27cb730d495b34c9a5568b3829b05d00131e', '9416305401', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Oswald', 'Botsford', 'dayton.cole@example.net', 'd08b79947cbd52884a8ddac36e91f120ed4d30c0', '9117046182', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Tressie', 'Shanahan', 'bailey.rudolph@example.org', 'f4637232089004f79f15c7957700899e50aa48cf', '9039363924', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Mikayla', 'Jaskolski', 'mcdermott.laron@example.net', '5a6f72e4e7daa5cf887b3c0022a5f4bca7925162', '9808512881', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Verna', 'Toy', 'domenic00@example.net', 'cb66c056e4690ba08837732b030a4656be54f99b', '9490526763', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Rigoberto', 'Wolf', 'demarcus.champlin@example.net', 'e26b50ea23dcc954950cf1792e5285adfb26d15a', '9470746520', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Sidney', 'Kulas', 'hector.tromp@example.com', 'e2006d09c0ea1c8cb68df4650e88af306d92097d', '9597800795', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Halie', 'Aufderhar', 'breitenberg.erwin@example.com', 'dba13526b9b7531a17fdb17b7639fdfa0cc3a856', '9637365800', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Emiliano', 'Bode', 'lbarton@example.com', '065609a39b9c938a2d77f2a896454cc4a34e675a', '9359465651', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Finn', 'Hansen', 'yundt.alysa@example.net', '53b0115e86c12b2808ea77c7b7a7a590f0a3961d', '9443906856', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Carmel', 'Erdman', 'dubuque.octavia@example.com', 'b34530e2779b67e750ba9f72da438dbbe5fc30e7', '9068656279', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Alexzander', 'Ryan', 'hgleason@example.com', 'af0364687c760781ef5d8ca15bffecc62625a088', '9475102879', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Nathan', 'Bins', 'hodkiewicz.lincoln@example.org', 'fb36a423efdf090f342e9673032a78622adfdd2f', '9957518369', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Alvera', 'Hermiston', 'bauch.stevie@example.org', '2e40e2bdc3bd256cdd68c723420c53d6abb61f29', '9715560793', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Jerrod', 'Block', 'fritsch.sabryna@example.com', 'ecd80b00ca6b1e17d533125ea0fbd7343593f81f', '9674611522', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Eldridge', 'Rosenbaum', 'kdach@example.org', '2cebc3ee163429bb5c6ef8021f270d41531aab07', '9292698299', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Cindy', 'Hettinger', 'khalid60@example.com', 'd67f81a88add0330118fd74e994d3896af970005', '9469834036', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Aletha', 'Wilderman', 'fletcher61@example.com', '86646111f90c58bb0dac40aac092517927570eac', '9396112519', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Laurel', 'Blick', 'cyrus.kreiger@example.com', '14bba0b135b6e9d507ddd0d4454eb7bf1eb1dbb4', '9986948921', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Jarrett', 'Mayer', 'emile99@example.net', '1243c95bd41117354b6435b10dd04fb56fd54629', '9961051586', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Eliane', 'Dicki', 'nikita76@example.org', '80c1a3c024268286f55296db17aaf585b8dc9557', '9415154301', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Jackie', 'Ebert', 'hmclaughlin@example.org', 'e4472f7d51664d9cbf8a3e4db3505a467de0957a', '9500232736', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Ryley', 'Koelpin', 'prath@example.net', 'b184bba46976e8843bc582d24e62430899b6eea6', '9791885992', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Keegan', 'Koelpin', 'laney.schamberger@example.org', 'fcd901b772235443536c07fa338c0de303f7d7e7', '9609232093', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Jodie', 'Lehner', 'everardo.kessler@example.com', '6cc63993ac175f59f86b992fc1a20311b9a96885', '9447668295', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Laron', 'Hartmann', 'qtorphy@example.net', 'a1eb46f46afefa3cf53eb5c65a4bef910b563759', '9806546443', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Jed', 'Wolf', 'sabina.stehr@example.com', 'cbc54aa9a80e952b8e674922c26c26680d44eefe', '9493781093', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Imelda', 'Fisher', 'nya91@example.org', '73e48b0932e4c25887575cdf147273a20bfa4e08', '9519207607', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Eladio', 'Dietrich', 'zlarson@example.org', '06aa343117913a09c29838a97e37b66ef342753d', '9724032446', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Hudson', 'Hand', 'delbert.sporer@example.com', '14dcb3c833685adb10e9ca3bc18eaa01841d927c', '9470327659', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Elsie', 'Strosin', 'kiara.mitchell@example.net', 'da79e94621c7fee8a2137048ece2e0338e310f6a', '9832473947', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Shyann', 'Oberbrunner', 'estella.wiegand@example.com', '2567c317abd9d15b6739257cdd8c5dbf192145b3', '9071867367', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Cecile', 'Heidenreich', 'nwelch@example.org', 'c80f9e7a0e0a5267ee1bafbd8f9c7effd6fb9fcc', '9623236172', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Mortimer', 'Braun', 'leta.beier@example.org', '786a176dff69c22b6bebdc294ec314d8dc3f8b3c', '9135820637', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Rebeca', 'Reinger', 'annamarie95@example.com', 'a158b0a30f4db702141927858b0dd0f27c793d75', '9962465144', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Candida', 'Monahan', 'camden35@example.net', '16e0e6bfffef237a09520471da73d44fafa46864', '9470715622', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Lillie', 'Goldner', 'zklein@example.org', 'fef18d599aac94c40077e1d5c5cfd2ba5cf3a18f', '9267555029', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Arnulfo', 'Boyle', 'charlotte59@example.net', '260cc6a3540437126c1885ea6f675061f7c39bdd', '9222458182', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Raquel', 'Hodkiewicz', 'dorthy78@example.net', 'd3f12e57455dd59e157c2b876c2d492ebfd0f795', '9464462323', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Velma', 'Welch', 'mbarton@example.org', '96dd68015dd52ff214b0228701edcff432ef71d0', '9294417065', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Michelle', 'Cole', 'sprice@example.org', '2f813c79af1235f8840abc0acd5e9249168fc39e', '9972952343', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Enrico', 'Ebert', 'okey.nitzsche@example.net', '4ed5145b531f2fe35475e96a8f79c48739727475', '9976253345', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Domenic', 'Feil', 'veronica.johnston@example.org', 'd63ff8fb81c2d56aaf7feb23a135b273864ea38f', '9301735656', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Zoila', 'Schaden', 'rbednar@example.org', 'c7884c809082caa4241e414a5335e241aa852c07', '9267435994', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Sunny', 'Nitzsche', 'letha18@example.net', 'fa6c2e8f9a87d40d8e535fa728ee97f95cebfddc', '9194439557', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Laurie', 'Collier', 'geovanni82@example.com', 'd14504441440676bca0f5e16d363d0eac4a7884d', '9804059906', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Jackeline', 'Runolfsson', 'godfrey.gaylord@example.com', '6b15ef8c0aedafc76bc18bada427ce1f60909b72', '9003417548', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Rafaela', 'Hayes', 'sanford.shad@example.com', '8109ed8589f7bf1da00327019f4d376d242e069a', '9865504767', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Ed', 'Hane', 'destinee.stiedemann@example.com', 'aa7da0b1cf35e5aa006f9ebb1d4591cda33148d7', '9521454929', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Emma', 'O\'Conner', 'clemens34@example.org', '51ecc26f99ce3b1eb349e97e18d4aefc5ec3ab13', '9032540918', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Natalie', 'Adams', 'ttoy@example.org', '766991f797052feb66316cb3bb286fe6b3bc7c3e', '9276259926', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Antonetta', 'Harber', 'iratke@example.com', '04e84f44784948ed76df937f2f4b5c76ae9d0a11', '9619941442', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Kenton', 'Dach', 'alysa.ortiz@example.com', '45bad3dad449baceef8a77d25dd2955a34c89857', '9656076095', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Alfred', 'Haag', 'ruthie28@example.com', 'c10a3bf155bbb0d5dc0d325745f5a94f18ca77e3', '9829628923', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Elva', 'Emard', 'zroob@example.com', '8aa337bc4ab16a3189fffe00dd2e924aaab26e46', '9381037126', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Alverta', 'Romaguera', 'jones.aileen@example.org', '27d65dd050b61b8827b588c9b0055441ad861066', '9660863608', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Claudie', 'Stroman', 'aaliyah51@example.net', '04384a42f63e0b5ce851701bc849fa24583b8d80', '9863825220', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Daisha', 'Homenick', 'nwill@example.net', 'bdf9d18a7a22139fa9423571935d62b86af70d7e', '9805990348', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Bert', 'Ryan', 'xschulist@example.net', '6f1c0e241f8a1b785556f1b842503ecbf2521520', '9090837120', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Blaze', 'Moore', 'leffler.urban@example.com', '566da7d6eac470cc71e527124b80c71f1e78b394', '9607688185', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Adah', 'Schoen', 'laurence23@example.net', 'cfbc7f909d4dd2c17eba23c39a084ebc5b4e0417', '9784211294', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Alvina', 'Kessler', 'dandre75@example.net', 'f514e3def7a4331cd2985bbf8010565869d770ec', '9195595581', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Stephon', 'Kohler', 'ylockman@example.com', '66e1a3aa000780f7d58a1a442c39c256c15115d2', '9352858283', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Haylee', 'Kessler', 'szulauf@example.net', '99d891107d52823948cfff2be25cf50f80a4a1a3', '9873951911', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'April', 'Pouros', 'uriel71@example.org', 'b1f0a23aa68d59bd40deaa43380132934ac1508b', '9455982560', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Braxton', 'McDermott', 'pmante@example.org', '99785b4e4cd75e57046b469129afa0669b415882', '9367751019', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Jaiden', 'Terry', 'simonis.aiden@example.org', 'ff487c40b2a99831ccc059341dd84ebd78e0a9c1', '9886769664', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Luz', 'Bergnaum', 'wsauer@example.org', '49de8d579d42743bbdb2e5bf7d9eb75c6b69be7e', '9963479732', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Jada', 'Heidenreich', 'bobby.kris@example.org', 'b94d981b55925432157f9b4fded5025fc47c5b8f', '9529840053', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Loy', 'Schuster', 'marlene.schuster@example.com', '198c8c946db2ef0d441645be6acb5380a84a0e97', '9322463988', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Tod', 'O\'Reilly', 'kassulke.guido@example.org', 'ae9a63141240e40664894706706bbc8b73307193', '9849442029', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Gaetano', 'Dach', 'tad.fahey@example.org', 'a70d5970b881b01eec458bc57db452de81b124e4', '9659447478', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Madison', 'Swift', 'thaddeus.purdy@example.com', '33245faa64dc0aa840d56fae53584947382defc3', '9407827531', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Dora', 'Zulauf', 'gutkowski.eleonore@example.org', 'b4ab76ab210c6f8c2dad20fef15217f4ef4d5360', '9384643716', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Leonardo', 'McKenzie', 'huel.ona@example.com', 'ba67966da05a08ad83fa6fa51a1c70c0156d0406', '9522772887', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Eve', 'Bahringer', 'qhoeger@example.net', 'b62879a6c9e44c594dabf7e3ed845d63679d5d0c', '9230058643', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Estefania', 'Leffler', 'hschiller@example.net', '984d3e7df1d95bc90373dc27ee1dfc8902410c58', '9393498848', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Adelia', 'Heathcote', 'jaquan.schmitt@example.net', '4b0f4549fab1b877145fb6f436d51bc6efa46621', '9678105530', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Trycia', 'Bogan', 'jimmy.koch@example.net', '69cb03750c0181eea5d89fc3c638f7e6b9ec1c60', '9526454564', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Cassandre', 'Emmerich', 'ld\'amore@example.org', '0d4c3a69065744ff627d5e69e2f483c1c91a953a', '9797730734', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Santiago', 'Braun', 'edwin28@example.com', '4fed9b663babbfcf7b980d19a388d577d9a70c9c', '9129499274', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Therese', 'Hane', 'terry.kylie@example.net', '44e6d455a1cd28b1ee5e728b9e86fa7ac60fac89', '9960845061', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Nikki', 'Emmerich', 'delfina43@example.net', 'd61771214fcad936b13382f885ce4c90d07bb817', '9080843288', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Garrison', 'Fritsch', 'nmurray@example.net', '30af7f1ca3efd9d95c023591e67ad05d91f25c0a', '9312377953', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Bernard', 'Bruen', 'lon35@example.com', '5b3bf554c6df37802d81104f54fa0b8c46832427', '9299665071', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Rigoberto', 'Anderson', 'ylind@example.com', '63aab170cc73095661a59ed3966b6af6fc034787', '9935222376', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Ricardo', 'Hand', 'kovacek.dayna@example.org', '78c14a2e39df6ddb983d0710db7814c5bf8d3869', '9218902018', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Monroe', 'Franecki', 'clay08@example.net', '3f57a409f24183a3b5c9388037e9c3233cf450dc', '9484126291', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Jess', 'Little', 'herman.eva@example.net', '927f3837ae0908cb0ffa9ac0849ca6a238f1ade9', '9890249361', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Ethan', 'Wisoky', 'asporer@example.org', 'a4df14a862c5d55d0c28b31a49d7023f32368dbb', '9449941506', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Arielle', 'Predovic', 'hannah.nienow@example.org', 'd0728c2aa0e2db639a61b14abf3efec84c58f47c', '9425071225', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Alanna', 'Lind', 'aubree25@example.com', 'e10fabffa8ea34463cf798eacad188a872aae5de', '9888025187', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Aylin', 'Beatty', 'isadore.bahringer@example.net', 'b194000f5c2fb04f8becae3fb19ee096afd03172', '9276879083', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Shanie', 'Sipes', 'pierre30@example.net', 'c178a93b5309c3848214f7357c6c2e1e05d83841', '9497981782', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Victor', 'Quigley', 'ludwig.kemmer@example.com', '1ca6f737ec99b94a4da5565cc575f50437911dcd', '9221950914', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Pansy', 'Ondricka', 'hsteuber@example.net', '083f155e65c143d16b38ca34b261b25837d2fddb', '9534013442', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Tess', 'Feeney', 'mara.thiel@example.net', '2637e576b998f96165517dddb6a86d7fce8cfdf6', '9051652354', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Terrill', 'Hammes', 'houston.monahan@example.com', 'c6c1ef95355ec060a246c5fdb6068e5732e12e42', '9651819053', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Myles', 'Satterfield', 'wendell88@example.com', '5fb43d1c32246a369beeef47e61833e2a9ad8240', '9840558180', '0');


#
# TABLE STRUCTURE FOR: users_communities
#

DROP TABLE IF EXISTS `users_communities`;

CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '61');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '96');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '98');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '88');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '95');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '68');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '82');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '88');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '52');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '50');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '51');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '67');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '90');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '58');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('22', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '67');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '71');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '80');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('27', '91');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '73');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '89');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '77');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('41', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('43', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('43', '64');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '67');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '97');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '40');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '51');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '93');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('58', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('58', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '72');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('62', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '52');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '49');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '89');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('71', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('72', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '40');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '95');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '81');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '91');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '58');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '100');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '52');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '81');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '99');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '93');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '81');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('95', '50');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '59');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '36');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '90');


