/* 4. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней). */

-- для проверки обновляем первые 10 значений в виде "сообщений из будущего"
UPDATE messages 
SET 
	created_at = '2025-08-19 03:05:43'
LIMIT 10;


DELETE FROM messages
WHERE created_at > now();

SELECT id, from_user_id, to_user_id, body, created_at FROM messages;