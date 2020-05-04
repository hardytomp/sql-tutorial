USE sql_store;
SELECT * FROM customers WHERE state <> 'VA';
SELECT * FROM customers WHERE birth_date < '1990-01-01' ;
SELECT * FROM customers WHERE birth_date < '1990-010=-01' AND points > 1000 ;
SELECT * FROM order_items WHERE order_id = 6  AND unit_price *quantity > 30;
SELECT * FROM customers WHERE state  IN ('VA' , 'FL' ,'GA');
SELECT * FROM customers WHERE state NOT IN ('VA' , "FL", "GA");
SELECT * FROM products WHERE quantity_in_stock IN (49,38,72);
SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000;
SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM customers WHERE last_name LIKE  'b%';
SELECT * FROM customers WHERE last_name LIKE '%b%';
SELECT * FROM customers WHERE last_name LIKE '%y';
SELECT * FROM customers WHERE last_name LIKE '_____y'; 
SELECT * FROM customers WHERE last_name LIKE 'b____y'; 

-- % for any number of character
-- _ for single character

SELECT * FROM customers WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%'; 
SELECT * FROM customers WHERE phone LIKE '%9';
SELECT * FROM customers WHERE last_name LIKE "%field%";
SELECT * FROM customers WHERE last_name REGEXP 'field'; 
-- ^ beginning of a string
-- $ end of a string
SELECT * FROM customers WHERE last_name REGEXP '^field';
SELECT * FROM customers WHERE last_name REGEXP 'field$';
SELECT * FROM customers WHERE last_name REGEXP 'field|mac';
SELECT * FROM customers WHERE last_name REGEXP 'field$|mac|rose';
SELECT * FROM customers WHERE last_name REGEXP 'l[l]';
SELECT * FROM customers WHERE last_name REGEXP '[gim]e';
SELECT * FROM customers WHERE last_name REGEXP '[a-h]e';

-- | logical OR
-- [abcd]
-- [a-h]

SELECT * FROM customers WHERE first_name REGEXP 'ELKA|AMBUR';
SELECT * FROM customers WHERE last_name REGEXP 'EY$|ON$';
SELECT * FROM customers WHERE last_name REGEXP '^MY|SE';
SELECT * FROM customers WHERE last_name REGEXP 'B[RU]';

SELECT * FROM customers WHERE phone IS NULL;
SELECT * FROM customers WHERE phone IS NOT NULL;

SELECT * FROM orders WHERE shipped_date IS NULL