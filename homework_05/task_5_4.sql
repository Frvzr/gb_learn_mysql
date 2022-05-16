/* 
 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
 Месяцы заданы в виде списка английских названий (may, august)
 */

SELECT 
	name, 
	date_format(birthday_at, '%d-%M-%Y') AS birthday_at 
FROM 
	users 
WHERE 
	birthday_at 
LIKE '%-05-%' OR birthday_at LIKE '%-10-%';
