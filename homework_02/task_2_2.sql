/*
Создайте базу данных example, разместите в ней таблицу users, 
состоящую из двух столбцов, числового id и строкового name
 */
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
DROP TABLE IF EXISTS example.users;
CREATE TABLE example.users (
	id INT PRIMARY KEY,
	name VARCHAR(255)
	);