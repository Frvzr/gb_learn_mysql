/*
 (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
 Поля from, to и label содержат английские названия городов, поле name — русское. 
 Выведите список рейсов flights с русскими названиями городов.
 */

SELECT 
	cities_from.name AS 'from',
	cities_to.name AS 'to'
FROM 
	cities AS cities_from
JOIN 
	cities AS cities_to
JOIN 
	flights
ON 
	cities_from.label = flights.`from` AND cities_to.label = flights.`to`;