/*
3. Определить кто больше поставил лайков (всего): мужчины или женщины.
*/

SELECT 
	profiles.gender,
	count(likes.`id`) AS 'total_likes'
FROM 
	likes 
JOIN profiles ON profiles.user_id = likes.user_id
GROUP BY
	gender;