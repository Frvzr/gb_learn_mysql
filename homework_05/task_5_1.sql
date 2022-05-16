/* 
1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем.
*/

USE shop;

INSERT INTO users (id, name, birthday_at, created_at, updated_at) VALUES (7, 'Ivan', '2005-10-10', now(), now());