/* 
 1. Пусть задан некоторый пользователь. 
 Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
 */

SELECT
	COUNT(`body`) AS total,
	(SELECT firstname FROM users WHERE id = messages.from_user_id) AS `firstanme`,
	(SELECT lastname FROM users WHERE id = messages.from_user_id) AS `lastname`
FROM 
	messages 
WHERE 
	to_user_id = 3 
	AND from_user_id in 
	(SELECT initiator_user_id FROM friend_requests 
	WHERE target_user_id = messages.to_user_id AND status = 'approved'
	UNION
	SELECT target_user_id FROM friend_requests 
	WHERE initiator_user_id = messages.to_user_id AND status = 'approved')
GROUP BY 
	from_user_id
ORDER BY 
	total DESC
LIMIT 1;