/* 
1. Подсчитайте средний возраст пользователей в таблице users.
*/

SELECT FlOOR(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) AS average_age FROM users;