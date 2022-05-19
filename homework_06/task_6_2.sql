/*
2. Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.
*/

-- общий скрипт, лайки у файлов, владельцы которых пользователи младше 11 лет
SELECT 
	COUNT('id') AS 'total_likes'
FROM 
	likes
WHERE 
	media_id IN (SELECT id FROM media WHERE user_id IN (SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11));
	
-- пользователи младше 11 лет
-- SELECT user_id, birthday FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11;

-- файлы у пользователей, которые младше 11 лет
-- SELECT id, user_id FROM media WHERE user_id IN (SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11);