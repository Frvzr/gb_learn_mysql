/* 
 1. Пусть задан некоторый пользователь. 
 Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
 */

SELECT 
 	u.firstname,
 	u.lastname,
 	count(*) AS total_messages
FROM messages m
JOIN users u ON u.id = m.from_user_id
JOIN friend_requests fr 
ON 
	((fr.initiator_user_id = m.from_user_id AND fr.target_user_id = m.to_user_id AND status = 'approved') 
OR 
	(fr.target_user_id = m.from_user_id AND fr.initiator_user_id = m.to_user_id AND status = 'approved'))
WHERE to_user_id = 1
GROUP BY m.from_user_id
ORDER BY total_messages DESC
LIMIT 1;