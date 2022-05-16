/*
5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
Отсортируйте записи в порядке, заданном в списке IN.
*/

SELECT id, name 
FROM 
	catalogs 
WHERE 
	id IN (5, 1, 2) 
ORDER BY 
	IF(id=5, 1, 0) DESC,
	IF(id=1, 1, 0) DESC,
	id ASC;