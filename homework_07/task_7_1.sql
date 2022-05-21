/* 
1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
*/

SELECT 
	name
FROM 
	users
JOIN 
	orders
ON 
	users.id = orders.user_id;