/*
3. Определить кто больше поставил лайков (всего): мужчины или женщины.
*/

SELECT
	CASE
		WHEN sum((SELECT count(id) FROM likes WHERE user_id = profiles.user_id AND gender = 'm')) > sum((SELECT count(id) FROM likes WHERE user_id = profiles.user_id AND gender = 'f')) THEN 'Men'
		WHEN sum((SELECT count(id) FROM likes WHERE user_id = profiles.user_id AND gender = 'm')) = sum((SELECT count(id) FROM likes WHERE user_id = profiles.user_id AND gender = 'f')) THEN 'The same number'
	ELSE 'Women'
	END AS 'more_likes'
FROM 
	profiles
WHERE 
	user_id IN (SELECT user_id FROM likes WHERE user_id = profiles.user_id);	

-- скрипт для подсчета кол-ва лайков
SELECT 
	sum((SELECT count(id) FROM likes WHERE user_id = profiles.user_id AND gender = 'm')) AS 'men_total_likes',
	sum((SELECT count(id) FROM likes WHERE user_id = profiles.user_id AND gender = 'f')) AS 'women_total_likes'
FROM 
	profiles
WHERE 
	user_id IN (SELECT user_id FROM likes WHERE user_id = profiles.user_id);