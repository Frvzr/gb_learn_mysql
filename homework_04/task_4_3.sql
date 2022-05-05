/* 3. Первые пять пользователей пометить как удаленные. */
-- version 1
UPDATE users 
SET 
	is_deleted = 1 
WHERE id<=5;

SELECT id, firstname, lastname, email, password_hash, phone, is_deleted FROM users 
WHERE id<=5;

-- version 2
UPDATE users 
SET 
	is_deleted = 1 
LIMIT 5;

SELECT id, firstname, lastname, email, password_hash, phone, is_deleted FROM users 
LIMIT 5;