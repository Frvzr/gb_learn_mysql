/*
 * Создайте базу данных example, разместите в ней таблицу users, 
 * состоящую из двух столбцов, числового id и строкового name.
 */

CREATE DATABASE example;
DROP TABLE IF EXISTS example.users;
CREATE TABLE example.users (
	id int,
	name char(200))