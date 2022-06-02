-- Практическое задание по теме “Транзакции, переменные, представления”

/*
1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. 
Используйте транзакции.
*/

-- создаем тестовую базу данных SAMPLE
DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;

DROP TABLE IF EXISTS sample.users;
CREATE TABLE sample.users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

-- начинаем транзакцию
START TRANSACTION; 
SELECT id, name, birthday_at, created_at, updated_at FROM users WHERE id=1;
INSERT INTO sample.users SELECT id, name, birthday_at, created_at, updated_at FROM shop.users WHERE id=1;
DELETE FROM shop.users WHERE id=1;
COMMIT; 

-- проверяем
SELECT id, name, birthday_at, created_at, updated_at FROM sample.users;
SELECT id, name, birthday_at, created_at, updated_at FROM shop.users;

/*
2. Создайте представление, которое выводит название name товарной позиции из таблицы products
 и соответствующее название каталога name из таблицы catalogs.
*/

CREATE OR REPLACE VIEW pr_name(product_name, catalog_name) AS SELECT pr.name, ct.name FROM products pr JOIN catalogs ct ON pr.catalog_id = ct.id;

/*
3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
если дата присутствует в исходном таблице и 0, если она отсутствует.
*/



/*
4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
*/


-- Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)

/*
1. Создайте двух пользователей которые имеют доступ к базе данных shop. 
Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
второму пользователю shop — любые операции в пределах базы данных shop.
 */

CREATE USER shop_read IDENTIFIED WITH sha256_password BY 'first';
GRANT SELECT ON shop.* TO shop_read;

CREATE USER shop IDENTIFIED WITH sha256_password BY 'second';
GRANT ALL ON shop.* TO shop;


/*
 2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. 
 Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
 Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.
 */

-- создаем таблицу accounts
CREATE TABLE shop.accounts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  password_hash varchar(100)
)

-- создаем представление
CREATE OR REPLACE VIEW username AS SELECT ac.id, ac.name FROM accounts ac;

-- создаем пользователя и выдаем ему права на чтение записей из представления username
CREATE USER user_read@localhost IDENTIFIED WITH sha256_password BY 'user_read';
GRANT SELECT ON shop.username TO user_read@localhost; 


-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

/*
 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
 С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
 с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
 */


DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello()
RETURNS VARCHAR(255) DETERMINISTIC 
BEGIN
	DECLARE time_now int DEFAULT date_format(now(), "%H");
	IF (time_now >= 6 AND time_now < 12) THEN
		RETURN  "Доброе утро";
	ELSEIF (time_now >= 12 AND time_now < 18) THEN
		RETURN  "Добрый день";
	ELSEIF (time_now >= 18 AND time_now < 24) THEN
		RETURN  "Добрый вечер";
	ELSE
		RETURN "Доброй ночи";
	END IF;
END//

DELIMITER ;
SELECT hello();


/*
 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
 Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
 Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
 При попытке присвоить полям NULL-значение необходимо отменить операцию.
 */

DROP TRIGGER IF EXISTS not_null;
DELIMITER //
CREATE TRIGGER not_null BEFORE INSERT ON products
FOR EACH ROW 
BEGIN
	DECLARE name_ VARCHAR(255);
	SELECT name INTO name_ FROM products ORDER BY name LIMIT 1;
	SET NEW.name = COALESCE(NEW.name, name_);
END//

SELECT name, description FROM products;
INSERT INTO products (id, description, price, catalog_id) VALUES ()


/*
 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
 Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
 Вызов функции FIBONACCI(10) должен возвращать число 55.
 */

