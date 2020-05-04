USE sql_store;
SELECT * FROM customers ORDER BY first_name;
SELECT * FROM customers ORDER BY first_name DESC;
SELECT * FROM customers ORDER BY state DESC ,first_name ASC;

SELECT * , quantity*unit_price AS total FROM order_items WHERE order_id = 2 ORDER BY quantity*unit_price DESC;
SELECT * , quantity*unit_price AS total FROM order_items WHERE order_id = 2 ORDER BY total DESC;