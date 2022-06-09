DROP DATABASE IF EXISTS computer_shop;
CREATE DATABASE computer_shop;
USE computer_shop;

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
  );

 INSERT INTO 
 	media_types 
 VALUES 
 	(1, 'photo', '2017-12-23 13:14:40', '2017-12-23 13:14:40'),
 	(2, 'video', '2017-12-23 13:14:40', '2017-12-23 13:14:40');
 
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
 	`id` bigint unsigned NOT NULL PRIMARY KEY,
 	`media_type_id` bigint unsigned NOT NULL,
 	`body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 	`filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 	`size` int(11) DEFAULT NULL,
 	`created_at` datetime DEFAULT current_timestamp(),
 	`updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 	KEY `media_type_id` (`media_type_id`),
	FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO 
	media
VALUES 
	(1, 1, 'Компьютеры, ноутбуки и ПО', 'comp.jpg', 1111, '2015-12-23 15:31:43', now()),
	(2, 1, 'Комплектующие для ПК', 'parts.jpg', 232345, '2015-12-23 15:31:43', now()),
	(3, 1, 'Переферия и устройства', 'perefer.jpg', 43556, '2015-12-23 16:31:43', now()),
	(4, 1, 'Персональные компьютеры', 'pk.jpg', 258799, '2013-12-23 16:31:43', now()),
	(5, 1, 'Ноутбуки', 'laptops.jpg', 89977, '2015-12-23 16:31:43', now()),
	(6, 1, 'Моноблоки', 'mono.jpg', 45687, '2018-12-23 16:31:43', now()),
	(7, 1, 'Микрокомпьютеры', 'micropk.jpg', 45687, '2018-12-23 16:31:43', now()),
	(8, 1, 'Серверные платформы', 'serv.jpg', 45387, '2018-12-23 16:31:43', now()),
	(9, 1, 'Программное обеспечение', 'po.jpg', 41687, '2018-12-23 16:31:43', now()),
	(10, 1, 'Процессоры', 'proc.jpg', 45447, '2018-12-23 16:31:43', now()),
	(11, 1, 'Материнские платы', 'mp.jpg', 45687, '2018-12-23 16:31:43', now()),
	(12, 1, 'Видеокарты', 'vcards.jpg', 45457, '2018-12-23 16:31:43', now()),
	(13, 1, 'Оперативная память', 'memory.jpg', 145687, '2018-12-23 16:31:43', now()),
	(14, 1, 'Корпуса', 'housing.jpg', 245687, '2018-12-23 16:31:43', now()),
	(15, 1, 'Блоки питания', 'power.jpg', 115687, '2018-12-23 16:31:43', now()),
	(16, 1, 'Охлаждение компьютера', 'cooling.jpg', 45687, '2018-12-23 16:31:43', now()),
	(17, 1, 'SSD накопители', 'ssd.jpg', 45687, '2018-12-23 16:31:43', now()),
	(18, 1, 'Жесткие диски', 'hdd.jpg', 45687, '2018-12-23 16:31:43', now()),
	(19, 1, 'Устройства расширения', 'devic.jpg', 45687, '2018-12-23 16:31:43', now()),
	(20, 1, 'Моддинг и обслуживание', 'modd.jpg', 45687, '2018-12-23 16:31:43', now()),
	(21, 1, 'Комплектующие для сервера', 'parts_serv.jpg', 456187, '2018-12-23 16:31:43', now()),
	(22, 1, 'Мониторы', 'monitor.jpg', 45687, '2018-12-23 16:31:43', now()),
	(23, 1, 'Клавиатуры', 'key.jpg', 45687, '2018-12-23 16:31:43', now()),
	(24, 1, 'Мыши', 'mouse.jpg', 45687, '2018-12-23 16:31:43', now()),
	(25, 1, 'Комплекты клавиатуры + мышь', 'key_mouse.jpg', 45687, '2018-12-23 16:31:43', now()),
	(26, 1, 'Коврики для мыши', 'mouse_pads.jpg', 45687, '2018-12-23 16:31:43', now());


DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
 	`id` SERIAL PRIMARY KEY,
 	`name` VARCHAR(255) UNIQUE,
 	`media_id` bigint unsigned NOT NULL,
  
	FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Каталог';

INSERT INTO 
	catalogs
VALUES 
	(1, 'Компьютеры, ноутбуки и ПО', 1),
	(2, 'Комплектующие для ПК', 2),
	(3, 'Переферия и устройства', 3);
	
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	`id` SERIAL PRIMARY KEY,
	`catalog_id` bigint unsigned NOT NULL,
	`name` VARCHAR(255) UNIQUE,
	`media_id` bigint unsigned NOT NULL,
  
	
	FOREIGN KEY (`catalog_id`) REFERENCES `catalogs`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
	) COMMENT = 'Разделы каталога';
	
INSERT INTO 
	categories
VALUES 
	(1, 1, 'Персональные компьютеры', 4),
	(2, 1, 'Ноутбуки', 5),
	(3, 1, 'Моноблоки', 6),
	(4, 1, 'Микрокомпьютеры', 7),
	(5, 1, 'Серверные платформы', 8),
	(6, 1, 'Программное обеспечение', 9),
	(7, 2, 'Процессоры', 10),
	(8, 2, 'Материнские платы', 11),
	(9, 2, 'Видеокарты', 12),
	(10, 2, 'Оперативная память', 13),
	(11, 2, 'Корпуса', 14),
	(12, 2, 'Блоки питания', 15),
	(13, 2, 'Охлаждение компьютера', 16),
	(14, 2, 'SSD накопители', 17),
	(15, 2, 'Жесткие диски', 18),
	(16, 2, 'Устройства расширения', 19),
	(17, 2, 'Моддинг и обслуживание', 20),
	(18, 2, 'Комплектующие для сервера', 21),
	(19, 3, 'Мониторы', 22),
	(20, 3, 'Клавиатуры', 23),
	(21, 3, 'Мыши', 24),
	(22, 3, 'Комплекты клавиатуры + мышь', 25),
	(23, 3, 'Коврики для мыши', 26);


DROP TABLE IF EXISTS products;
CREATE TABLE products (
	`id` SERIAL PRIMARY KEY,
	`categories_id` bigint unsigned NOT NULL,
  	`name` VARCHAR(255) COMMENT 'Название',
  	`description` TEXT COMMENT 'Описание',
  	`price` DECIMAL (11,2) COMMENT 'Цена',
  	`quantity` BIGINT(20) COMMENT 'Количество',
  	`created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  	`updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	FOREIGN KEY (`categories_id`) REFERENCES `categories`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Товар';

INSERT INTO 
	products 
VALUES 
	(1, 1, 'ПК DEXP Aquilon O263', 'Intel Celeron G4900, 2x3.1 ГГц, 4 ГБ DDR4, SSD 120 ГБ, без ОС', 13999, 1, now(), now()),
	(2, 1, 'Мини ПК Acer Revo RN96 [DQ.BFSER.006 ]', 'Intel Core i3-1115G4, 2x3 ГГц, 4 ГБ DDR4, SSD 256 ГБ, без ОС', 29999, 3, now(), now()),
	(3, 1, 'ПК DEXP Aquilon O268', 'Intel Pentium Gold G6405, 2x4.1 ГГц, 8 ГБ DDR4, SSD 240 ГБ, Windows 11 Home Single Language', 25999, 4, '2022-03-01 23:40:27', '2022-03-01 23:40:27'),
	(4, 1, 'Мини ПК MSI Cubi 5 10M-246XRU [9S6-B18311-246]', 'Intel Pentium Gold 6405U, 2x2.4 ГГц, 4 ГБ DDR4, SSD 128 ГБ, без ОС', 22999, 1, '2022-04-01 21:40:27', '2022-04-01 21:40:27'),
	(5, 2, '15.6" Ноутбук ASUS ROG Strix SCAR 15 G533ZX-LN087W черный', 'Quad HD 2K (2560x1440), IPS, Intel Core i9-12900H, ядра: 6 + 8 х 2.5 ГГц, RAM 32 ГБ, SSD 1000 ГБ, GeForce RTX 3080 Ti для ноутбуков 16 ГБ, Windows 11 Home Single Language', 443999, 1, now(), now()),
	(6, 2, '11.6" Ноутбук ASUS Laptop L210MA-GJ164T белый', 'HD (1366x768), TN+film, Intel Celeron N4020, ядра: 2 х 1.1 ГГц, RAM 4 ГБ, eMMC 128 ГБ, Intel UHD Graphics 600 , Windows 10 Home Single Language', 20999, 1, now(), now()),
	(7, 2, '11.6" Ноутбук ASUS Laptop E210MA-GJ003T белый', 'HD (1366x768), TN+film, Intel Celeron N4020, ядра: 2 х 1.1 ГГц, RAM 4 ГБ, eMMC 64 ГБ, Intel UHD Graphics 600 , Windows 10 Home Single Language', 19999, 1, '2021-04-01 21:41:28', now()),
	(8, 3, '23.8" Моноблок HP 24-df0108ur [2Z0D5EA]', 'Intel Celeron J4025, 2x2 ГГц, IPS, Full HD (1920x1080), 4 ГБ DDR4, SSD 128 ГБ, Windows 10 Home', 34999, 3, now(), now()),
	(9, 3, '23.8" Моноблок Lenovo IdeaCentre AIO 3 24ADA6 [F0FX001VRK]', 'AMD Athlon Silver 3050U, 2x2.3 ГГц, IPS, Full HD (1920x1080), 8 ГБ DDR4, SSD 128 ГБ, без ОС', 36499, 5, '2022-05-03 17:28:41', now()),
	(10, 3, '34" Моноблок HP ENVY 34-c0003ur [58K39EA]', 'Intel Core i7-11700, 8x2.5 ГГц, IPS, WUHD 5K (5120x2160), 32 ГБ DDR4, SSD 1000 ГБ, GeForce RTX 3080, Windows 11 Home', 382999, 2, '2022-06-03 15:28:41', now()),
	(11, 4, 'Микрокомпьютер Orange Pi One 1gb', 'AllWinner H3, 4 x 1200 МГц, RAM: 1024 МБ, LAN 100 Мбит/с', 3999, 5, '2020-07-03 13:17:41', '2020-07-03 13:17:41'),
	(12, 4, 'Микрокомпьютер ASUS Tinker Board', 'Rockchip RK3399, 6 x 2000 МГц, RAM: 2048 МБ, Bluetooth 5.0, WI-FI 5 (802.11ac), LAN 1 Гбит/с', 11999, 2, '2021-08-21 13:17:41', '2021-08-21 13:17:41'),
	(13, 5, 'Серверная платформа Supermicro SuperServer 5019C-MR', 'LGA 1151-v2, CPU 1 x Intel, ОЗУ 4, DDR4, Rack, 400 Вт*ч, LAN 1 Гбит/с x2 ', 109999, 1, '2021-08-23 13:17:41', '2021-08-23 13:17:41'),
	(14, 6, 'Операционная система Microsoft Windows 11 Home', '64 бита, DSP OEI, наклейка с ключом активации, DVD', 9599, 19, '2022-05-23 13:14:40', '2022-05-23 13:14:40'),
	(15, 6, 'ПО Microsoft 365 персональный', 'русский, BOX (карта с кодом), срок действия лицензии: 12 ме', 7299, 3, '2022-05-23 13:14:40', '2022-05-23 13:14:40'),
	(16, 6, 'Антивирус Kaspersky Internet Security для Android', 'установка/продление лицензии, смартфон/планшет, количество устройств - 1, 60 мес, карта с кодом', 499, 7, '2021-12-23 13:14:40', '2021-12-23 13:14:40'),
	(17, 7, 'Процессор Intel Core i5-11400F OEM', 'LGA 1200, 6 x 2.6 ГГц, L2 - 3 МБ, L3 - 12 МБ, 2хDDR4-3200 МГц, TDP 65 Вт', 15399, 4, '2021-12-23 13:14:40', '2021-12-23 13:14:40'), 
	(18, 7, 'Процессор Intel Core i5-10400F BOX', 'LGA 1200, 6 x 2.9 ГГц, L2 - 1.5 МБ, L3 - 12 МБ, 2хDDR4-2666 МГц, TDP 65 Вт, кулер', 14999, 5, '2021-12-23 13:14:40', '2021-12-23 13:14:40');

DROP TABLE IF EXISTS country;
CREATE TABLE country(
	`id` SERIAL PRIMARY KEY,
	`name` VARCHAR(64),
	`alias` VARCHAR(64)
);

INSERT INTO 
	country 
VALUES 
	(1, 'Россия', 'RU'),
	(2, 'Китай', 'CN'),
	(3, 'США', 'US'),
	(4, 'Южная Корея', 'KR'),
	(5, 'Тайвань', ' TW');

DROP TABLE IF EXISTS brands;
CREATE TABLE brands(
	`id` SERIAL PRIMARY KEY,
	`name` VARCHAR(64),
	`country_id` bigint unsigned NOT NULL,
	FOREIGN KEY (`country_id`) REFERENCES `country`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO 
	brands
VALUES 
	(1, 'AMD', 3),
	(2, 'Nvidea', 3),
	(3, 'Samsung', 4),
	(4, 'Asus', 5),
	(5, 'Acer', 5),
	(6, 'DEXP', 1),
	(7, 'MSI', 5),
	(8, 'Lenovo', 2),
	(9, 'Microsoft', 3),
	(10, 'Intel', 3),
	(11, 'Allwinner', 2),
	(12, 'HP', 3),
	(13, 'Supermicro', 3),
	(14, 'Kaspersky', 1);

DROP TABLE IF EXISTS main_characteristics;
CREATE TABLE main_characteristics (
	`product_id` SERIAL PRIMARY KEY,
	`brand_id` bigint unsigned NOT NULL,
	`country_id` bigint unsigned NOT NULL,
	

	FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (`country_id`) REFERENCES `country`(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (`brand_id`) REFERENCES `brands`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);
 
INSERT INTO 
	main_characteristics 
VALUES 
	(1, 6, 1),
	(2, 5, 5),
	(3, 6, 1),
	(4, 7, 5),
	(5, 4, 5),
	(6, 4, 5),
	(7, 4, 5),
	(8, 12, 3),
	(9, 8, 2),
	(10, 12, 3),
	(11, 11, 2),
	(12, 4, 5),
	(13, 13, 3),
	(14, 9, 3),
	(15, 9, 3),
	(16, 14, 1),
	(17, 10, 3),
	(18, 10, 3);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	`id` SERIAL PRIMARY KEY,
	`firstname` VARCHAR(100),
    `lastname` VARCHAR(100) COMMENT 'Фамилия',
    `email` VARCHAR(100) UNIQUE,
    `password_hash` varchar(100),
    `phone` BIGINT,
    `is_deleted` bit default 0,
    INDEX users_firstname_lastname_idx(`firstname`, `lastname`)
) COMMENT = 'Пользователи';

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	`user_id` SERIAL PRIMARY KEY,
    `gender` CHAR(1),
    `birthday` DATE,
	`photo_id` bigint unsigned NOT NULL,
    `created_at` DATETIME DEFAULT NOW(),
    `hometown` VARCHAR(100),
    
    FOREIGN KEY (`user_id`) REFERENCES users(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (`photo_id`) REFERENCES media(`id`)  
);

