/* 
3. Создайте дамп базы данных example из предыдущего задания, 
разверните содержимое дампа в новую базу данных sample. 
*/

-- Делаем копию базы
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump.exe -u root -p example > sample.sql
Enter password: ****** 

CREATE DATABASE example_2;

-- Разворачиваем дамп через mysql-console
USE example_2
SOURCE sample.sql

-- Разворачиваем дамп в новую базу 
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p example_2 < sample.sql
Enter password: ******

