/*
2. Написать скрипт, возвращающий список имен (только firstname) 
пользователей без повторений в алфавитном порядке.
*/

-- DISTINCT - только уникальные данные
-- ORDER BY ... ASC - алфавитный порядок по возрасатанию

SELECT DISTINCT firstname FROM users ORDER BY firstname ASC;