/*
 1) Создайте таблицу logs типа Archive. 
 Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается 
 время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
 */

DROP TABLE IF EXISTS logs;
CREATE TABLE logs(
	`table_name` varchar (50) NOT NULL,
	`id` int UNSIGNED NOT NULL,
	`name` varchar(50),
	`created_at` datetime DEFAULT now()
) engine=ARCHIVE; 

-- trigger for users
DROP TRIGGER IF EXISTS users_log;
DELIMITER //
CREATE TRIGGER users_log BEFORE INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO 
		logs
	VALUES 
		('users', NEW.id, NEW.name, NOW());
END//
DELIMITER ;

-- trigger for catalogs
DROP TRIGGER IF EXISTS catalogs_log;
DELIMITER //
CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO
		logs (created_at, table_name, str_id, name_value)
	VALUES
		('catalogs', NEW.id, NEW.name, NOW());
END //
DELIMITER ;

-- trigger for products
DROP TRIGGER IF EXISTS products_log;
delimiter //
CREATE TRIGGER products_log AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO
		logs (created_at, table_name, str_id, name_value)
	VALUES
		('products', NEW.id, NEW.name, NOW());
END //
delimiter ;
	
SELECT `id`, `name`, `birthday_at`, `created_at`, `updated_at` FROM users;
SELECT `table_name`, `id`, `name`, `created_at` FROM logs;

INSERT INTO 
	users (id, name, birthday_at)
VALUES 
	(1, 'Ivan', '1988-02-01');

SELECT `id`, `name`, `birthday_at`, `created_at`, `updated_at` FROM users;
SELECT `table_name`, `id`, `name`, `created_at` FROM logs;

/*
2) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
*/

DROP TABLE IF EXISTS million;
CREATE TABLE million(
	`id` SERIAL PRIMARY KEY,
	`q-ty` int NOT NULL,
	`created_at` datetime DEFAULT now()
);

-- v1 - долго исполняется - 22 минуты 20 секунд
DROP PROCEDURE IF EXISTS insert_million_v1;
DELIMITER //
CREATE PROCEDURE insert_million()
BEGIN 
	DECLARE i int DEFAULT 1;
	WHILE i < 1000001 DO
		INSERT INTO million VALUES (NULL, i, now());
		SET i = i + 1;
	END WHILE;
END//

DELIMITER ;
CALL insert_million();

SELECT `id`, `q-ty`, `created_at` FROM million;


-- v2 - этот вариант работает быстрее, создал данные за 3 минуты 1 секунду (если увеличить количество вставки, то время сократится)

DROP TABLE IF EXISTS million_v2;
CREATE TABLE million_v2(
	`id` SERIAL PRIMARY KEY,
	`q-ty` int NOT NULL,
	`created_at` datetime DEFAULT now()
);

DROP PROCEDURE IF EXISTS insert_million_v2;
DELIMITER //
CREATE PROCEDURE insert_million_v2()
BEGIN 
	DECLARE i int DEFAULT 0;
	WHILE i < 1000000 DO
		INSERT INTO 
			million_v2 
		VALUES 
			(NULL, i + 1, now()),
			(NULL, i + 2, now()),
			(NULL, i + 3, now()),
			(NULL, i + 4, now()),
			(NULL, i + 5, now()),
			(NULL, i + 6, now()),
			(NULL, i + 7, now()),
			(NULL, i + 8, now()),
			(NULL, i + 9, now()),
			(NULL, i + 10, now());
		SET i = i + 10;
	END WHILE;
END//

DELIMITER ;
CALL insert_million_v2();

SELECT `id`, `q-ty`, `created_at` FROM million_v2;