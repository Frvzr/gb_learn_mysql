/*
2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения
*/

SELECT
	count(*) AS total,
	DAYNAME(DATE_ADD(birthday_at, INTERVAL (EXTRACT(YEAR FROM NOW()) - EXTRACT(YEAR FROM birthday_at)) YEAR)) AS day_name
FROM 
	users
GROUP BY 
	day_name
ORDER BY
	total DESC;