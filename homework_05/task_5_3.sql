/* 
 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
0, если товар закончился и выше нуля, если на складе имеются запасы. 
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
Однако нулевые запасы должны выводиться в конце, после всех
*/

-- сначала добавляем данные, т.к в учебной бд их не было
INSERT INTO storehouses_products (id, storehouse_id, product_id, value, created_at, updated_at)
VALUES 
(1, 1, 1, 0, now(), now()),
(2, 1, 2, 2500, now(), now()),
(3, 1, 3, 0, now(), now()),
(4, 1, 4, 30, now(), now()),
(5, 1, 5, 500, now(), now()),
(6, 1, 6, 1, now(), now());

-- v1
SELECT value FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;  

-- v2
SELECT value FROM storehouses_products ORDER BY CASE WHEN value = 0 THEN TRUE ELSE FALSE END, value;