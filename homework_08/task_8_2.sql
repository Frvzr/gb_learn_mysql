/*
2. Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.
*/

SELECT 
	count(likes.`id`) AS 'total_likes'
FROM 
	likes
JOIN 
	media
JOIN 
	profiles 
ON
	likes.media_id = media.id AND media.user_id = profiles.user_id
WHERE TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()) < 11;