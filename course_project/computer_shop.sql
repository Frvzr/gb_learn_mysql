DROP DATABASE IF EXISTS computer_shop;
CREATE DATABASE computer_shop;
USE computer_shop;


DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  `id` SERIAL PRIMARY KEY,
  `name` VARCHAR(255) UNIQUE
) COMMENT = 'Каталог';

INSERT INTO 
	catalogs
VALUES 
	(NULL, 'Компьютеры, ноутбуки и ПО'),
	(NULL, 'Комплектующие для ПК'),
	(NULL, 'Переферия и устройства');
	
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	`id` SERIAL PRIMARY KEY,
	`catalog_id` BIGINT(20) unsigned NOT NULL,
	`name` VARCHAR(255) UNIQUE,
	
	 FOREIGN KEY (`catalog_id`) REFERENCES `catalogs`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
	) COMMENT = 'Разделы каталога';
	
INSERT INTO 
	categories
VALUES 
	(NULL, 1, 'Персональные компьютеры'),
	(NULL, 1, 'Ноутбуки'),
	(NULL, 1, 'Моноблоки'),
	(NULL, 1, 'Микрокомпьютеры'),
	(NULL, 1, 'Серверные платформы'),
	(NULL, 1, 'Программное обеспечение'),
	(NULL, 2, 'Процессоры'),
	(NULL, 2, 'Материнские платы'),
	(NULL, 2, 'Видеокарты'),
	(NULL, 2, 'Оперативная память'),
	(NULL, 2, 'Корпуса'),
	(NULL, 2, 'Блоки питания'),
	(NULL, 2, 'Охлаждение компьютера'),
	(NULL, 2, 'SSD накопители'),
	(NULL, 2, 'Жесткие диски'),
	(NULL, 2, 'Устройства расширения'),
	(NULL, 2, 'Моддинг и обслуживание'),
	(NULL, 2, 'Комплектующие для сервера'),
	(NULL, 3, 'Мониторы'),
	(NULL, 3, 'Клавиатуры'),
	(NULL, 3, 'Мыши'),
	(NULL, 3, 'Комплекты клавиатуры + мышь'),
	(NULL, 3, 'Коврики для мыши');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	`id` SERIAL PRIMARY KEY,
	`categories_id` BIGINT(20) unsigned NOT NULL,
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
	(NULL, 1, 'ПК DEXP Aquilon O263', 'Intel Celeron G4900, 2x3.1 ГГц, 4 ГБ DDR4, SSD 120 ГБ, без ОС', 13999, 1),
	(NULL, 1, 'Мини ПК Acer Revo RN96 [DQ.BFSER.006 ]', 'Intel Core i3-1115G4, 2x3 ГГц, 4 ГБ DDR4, SSD 256 ГБ, без ОС', 29999, 3),
	(NULL, 1, 'ПК DEXP Aquilon O268', 'Intel Pentium Gold G6405, 2x4.1 ГГц, 8 ГБ DDR4, SSD 240 ГБ, Windows 11 Home Single Language', 25999, 4),
	(NULL, 1, 'Мини ПК MSI Cubi 5 10M-246XRU [9S6-B18311-246]', 'Intel Pentium Gold 6405U, 2x2.4 ГГц, 4 ГБ DDR4, SSD 128 ГБ, без ОС', 22999, 1),
	(NULL, 2, '15.6" Ноутбук ASUS ROG Strix SCAR 15 G533ZX-LN087W черный', 'Quad HD 2K (2560x1440), IPS, Intel Core i9-12900H, ядра: 6 + 8 х 2.5 ГГц, RAM 32 ГБ, SSD 1000 ГБ, GeForce RTX 3080 Ti для ноутбуков 16 ГБ, Windows 11 Home Single Language', 443999, 1)
	(NULL, 2, '11.6" Ноутбук ASUS Laptop L210MA-GJ164T белый', 'HD (1366x768), TN+film, Intel Celeron N4020, ядра: 2 х 1.1 ГГц, RAM 4 ГБ, eMMC 128 ГБ, Intel UHD Graphics 600 , Windows 10 Home Single Language', 20999, 0)
	(NULL, 2, '11.6" Ноутбук ASUS Laptop E210MA-GJ003T белый', 'HD (1366x768), TN+film, Intel Celeron N4020, ядра: 2 х 1.1 ГГц, RAM 4 ГБ, eMMC 64 ГБ, Intel UHD Graphics 600 , Windows 10 Home Single Language', 19999, 1);

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
  );

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint(20) PRIMARY KEY,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS country;
CREATE TABLE country(
	`id` SERIAL PRIMARY KEY,
	`name` VARCHAR(64),
	`alias` VARCHAR(64)
);

DROP TABLE IF EXISTS main_characteristics;
CREATE TABLE main_characteristics (
	`product_id` SERIAL PRIMARY KEY,
	`country_id` BIGINT(20),
	
	FOREIGN KEY (`product_id`) REFERENCES `products`(`id`),
	FOREIGN KEY (`country_id`) REFERENCES `country`(`id`)
);
 

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
	`photo_id` BIGINT UNSIGNED,
    `created_at` DATETIME DEFAULT NOW(),
    `hometown` VARCHAR(100),
    
    FOREIGN KEY (`user_id`) REFERENCES users(`id`) ON UPDATE CASCADE ON DELETE CASCADE
    FOREIGN KEY (`photo_id`) REFERENCES media(`id`)  
);

