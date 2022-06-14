USE computer_shop;

-- выборка брендов и стран их производителей
SELECT 
	b.name,
	c.name
FROM brands AS b
JOIN country AS c ON b.country_id = c.id
ORDER BY b.name;

-- выборка наименования продукции с главными характеристиками
SELECT
	cat.name,
	p.name,
	p.description,
	p.quantity,
	b.name,
	c.name
FROM products AS p
JOIN categories AS cat
JOIN brands b 
JOIN country c 
JOIN main_characteristics AS mc 
ON cat.id = p.categories_id AND (mc.product_id = p.id AND mc.brand_id = b.id AND mc.country_id = c.id)
ORDER BY p.quantity;

-- количество категорий в каталоге 
SELECT 
	cat.name AS 'catalog_name',
	count(p.name) AS 'q-ty_equipment'
FROM catalogs cat
JOIN categories c
LEFT JOIN products p -- без LEFT если нужно убрать данные с нулевыми значениями
ON  cat.id  = c.catalog_id AND p.categories_id = c.id
GROUP BY cat.name;

-- Выборка заказа, пользователя и продукта
SELECT 
	op.order_id,
	u.firstname,
	u.lastname,
	p.name,
	op.qty
FROM orders_products op
JOIN orders o 
JOIN users u
JOIN products p 
ON op.order_id = o.id AND o.user_id = u.id AND op.product_id = p.id
ORDER BY op.order_id;

-- сумма заказа у пользователей с наибольшей стоимостью
SELECT 
	op.order_id,
	concat(u.lastname,' ', u.firstname) AS user_name,
	sum(p.price * op.qty) AS 'summa'
FROM orders_products op 
JOIN orders o 
JOIN users u
JOIN products p 
ON op.order_id = o.id AND o.user_id = u.id AND op.product_id = p.id
GROUP BY op.order_id
ORDER BY summa DESC;

-- состав заказа у пользователя
SELECT 
	op.order_id,
	u.id,
	concat(u.lastname,' ', u.firstname) AS user_name,
	p.name,
	p.price,
	op.qty,
	p.price * op.qty AS total_price
FROM orders_products op 
JOIN orders o 
JOIN users u
JOIN products p 
ON u.id = 2 AND op.order_id = o.id AND o.user_id = u.id AND op.product_id = p.id
ORDER BY price;

-- Представление продукта и характеристик
CREATE OR REPLACE VIEW 
	pr_name (product_name, brand, country) AS 
SELECT 
	pr.name, br.name, cntr.name 
FROM products pr 
JOIN main_characteristics mc 
JOIN brands br
JOIN country cntr
ON mc.product_id = pr.id AND mc.brand_id = br.id AND mc.country_id = cntr.id;

-- Представление данных о пользователе
CREATE OR REPLACE VIEW 
	accounts (firstname, lastname, gender, birthday, photo, hometown, email, phone) AS 
SELECT 
	u.firstname, u.lastname, pr.gender, pr.birthday, m.filename, pr.hometown, u.email, u.phone
FROM users u 
JOIN profiles pr
JOIN media m
ON u.id = pr.user_id AND pr.photo_id = m.id;


-- процедура вывода суммы заказа по пользователю
DROP PROCEDURE IF EXISTS ex;
delimiter //
CREATE PROCEDURE ex(format int)
BEGIN 
	SELECT 
		op.order_id,
		concat(u.lastname,' ', u.firstname) AS user_name,
		sum(p.price * op.qty) AS 'summa'
	FROM orders_products op 
	JOIN orders o 
	JOIN users u
	JOIN products p 
	ON op.order_id = o.id AND o.user_id = u.id AND op.product_id = p.id
	WHERE u.id = format
	GROUP BY op.order_id
	ORDER BY summa DESC;
END //
DELIMITER ;

CALL ex(2);

-- триггер для подсчета количества продукции в категории после обновления и добавления данных: 
DROP TRIGGER IF EXISTS categor_cnt_updt;
DELIMITER //
CREATE TRIGGER categor_cnt_updt AFTER UPDATE ON products
FOR EACH ROW 
BEGIN 
	IF (NEW.quantity) THEN 
		UPDATE categories SET total = (SELECT sum(quantity) FROM products WHERE categories_id = NEW.categories_id)  WHERE id = NEW.categories_id;
	END IF;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS categor_cnt_insrt;
DELIMITER //
CREATE TRIGGER categor_cnt_insrt AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	IF (NEW.quantity) THEN 
		UPDATE categories SET total = (SELECT sum(quantity) FROM products WHERE categories_id = NEW.categories_id)  WHERE id = NEW.categories_id;
	END IF;
END//
DELIMITER ;

UPDATE products SET quantity = 5 WHERE products.id = 1;
UPDATE products SET quantity = 7 WHERE products.id = 2;
UPDATE products SET quantity = 29 WHERE products.id = 5;

INSERT INTO 
	products (categories_id, name, description, price, quantity)
VALUES 
	(19, '34" Монитор HUAWEI MateView GT ZQE-CBA черный', '3440x1440@165 Гц, VA, 4 мс, 4000 : 1, 350 Кд/м², 178°/178°, DisplayPort, HDMI x2, изогнутый, AMD FreeSync, NVIDIA G-SYNC Compatible', 36999, 9),
	(19, '27" Монитор LG UltraGear 27GL83A-B черный', '2560x1440@144 Гц, IPS, 1 мс, 1000 : 1, 350 Кд/м², 178°/178°, DisplayPort, HDMI, AMD FreeSync, NVIDIA G-SYNC Compatible', 32999, 12),
	(19, '23.8" Монитор Xiaomi Mi Desktop Monitor 1С черный', '1920x1080@60 Гц, IPS, 6 мс, 1000 : 1, 250 Кд/м², 178°/178°, HDMI, VGA (D-Sub)', 11999, 17);

SELECT * FROM categories; 
SELECT * FROM products;
