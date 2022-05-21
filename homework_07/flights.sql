DROP DATABASE IF EXISTS flights;
CREATE DATABASE flights;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	`from` VARCHAR(255),
	`to` VARCHAR(255)
	) COMMENT = 'Перелёты';
	
INSERT INTO flights
	(`from`, `to`)
VALUES
	('moscow', 'omsk'),
	('novgorod','kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');
	
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	-- id SERIAL PRIMARY KEY,
	`label` VARCHAR(255) PRIMARY KEY,
	`name` VARCHAR(255)
	) COMMENT = 'города';
	
INSERT INTO cities
	(`label`, `name`)
VALUES
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod','Новгород'),
	('kazan', 'Казань'),
	('omsk', 'Омск');
