/*
 2. Таблица users была неудачно спроектирована. 
 Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения
 */
USE shop;

SELECT 
name, 
str_to_date(created_at, '%d.%m.%Y %h:%i') AS created_at, 
str_to_date(updated_at, '%d.%m.%Y %h:%i') AS updated_at
FROM users;