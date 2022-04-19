/*
 * �������� ���� ������ example, ���������� � ��� ������� users, 
 * ��������� �� ���� ��������, ��������� id � ���������� name.
 */

CREATE DATABASE example;
DROP TABLE IF EXISTS example.users;
CREATE TABLE example.users (
	id int,
	name char(200))