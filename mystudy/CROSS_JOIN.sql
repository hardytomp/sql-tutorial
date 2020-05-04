USE sql_Store;
SELECT c.first_name AS customer,p.name AS product
FROM customers c
CROSS JOIN products p 
ORDER BY c.first_name;
-- we can omit CROSS JOIN key word and direcctly use 
SELECT c.first_name AS customer,p.name AS product
FROM customers c, products p 
ORDER BY c.first_name;

SELECT *
FROM shippers sh, products p ;

SELECT *
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.name;