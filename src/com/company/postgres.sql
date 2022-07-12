CREATE DATABASE mydatabase;

CREATE TABLE products (
                          id SERIAL PRIMARY KEY,
                          productName VARCHAR(30) NOT NULL,
                          manufacturer VARCHAR(20) NOT NULL,
                          productCount INTEGER DEFAULT 0,
                          price NUMERIC

);
INSERT INTO products (productName, manufacturer, productCount, price)
VALUES ('iPhone X', 'Apple', 2, 71000),
       ('iPhone 8', 'Apple', 3, 56000),
       ('Galaxy S9', 'Samsung', 6, 56000),
       ('Galaxy S8 Plus', 'Samsung', 2, 46000),
       ('Desire 12', 'HTC', 3, 26000);


SELECT * FROM products where manufacturer <> 'HTC'; -- 1. vse krome HTC
SELECT * FROM products where manufacturer='Apple' AND price < 75000;--Apple i price nije 75000
SELECT * FROM products where price > 46000; --vyshe 46000
SELECT * FROM products ORDER BY price DESC LIMIT 2; --4. Эн кымбат эки продукту алыныз
SELECT productName FROM products ORDER BY price Limit 1; --5.Баасы минимальный болгон продуктун атын алыныз

ALTER TABLE products ADD COLUMN discount BOOLEAN;
UPDATE products SET discount=FALSE WHERE id=1;
UPDATE products SET discount=TRUE WHERE id=2;
UPDATE products SET discount=FALSE WHERE id=3;
UPDATE products SET discount=TRUE WHERE id=4;
UPDATE products SET discount=TRUE WHERE id=5;

-- INSERT INTO products (discount)
-- VALUES (FALSE,id=1),
--        (TRUE,id=1),
--        (FALSE,id=1),
--        (TRUE, id=1),
--        (TRUE, id=1);

SELECT * FROM products WHERE discount=TRUE;--6. Дискоунт болгон продуктуларды чыгарыныз.
SELECT * FROM products WHERE discount=FALSE;--7. Дискоунт болбогон продуктуларды чыгарыныз.
SELECT * FROM products ORDER BY price DESC ;--8. Баардык продуктулардын баасын кымбаттан арзанга карап чыгарыныз
SELECT SUM(price*productCount) FROM products;--9. Баардык продуктулардын суммасын(баасын) чыгарыныз.
SELECT manufacturer FROM products WHERE productCount<=2;--10. Эки жана андан аз продуктусу бар компанияларды алыныз
