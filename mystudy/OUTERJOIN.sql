USE sql_store;

SELECT  c.customer_id,c.first_name,o.order_id 
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id 
ORDER BY c.customer_id;

SELECT c.customer_id,c.first_name,o.order_id 
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id 
ORDER BY c.customer_id;

-- assignment
SELECT o.product_id,p.name,o.quantity 
FROM order_items  o 
RIGHT JOIN products p
	ON o.product_id = p.product_id;
    
SELECT c.customer_id,c.first_name,o.order_id
FROM customers c
LEFT JOIN orders o
		ON c.customer_id = o.customer_id
JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
 ORDER BY c.customer_id;       
    
SELECT c.customer_id,c.first_name,o.order_id,sh.name
FROM customers c
LEFT JOIN orders o
		ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
 ORDER BY c.customer_id;  
 
 SELECT o.order_date,c.first_name,o.order_id,sh.name,os.name 
	FROM orders o
	JOIN customers c ON o.customer_id = c.customer_id
    LEFT JOIN shippers sh ON o.shipper_id = sh.shipper_id
    JOIN order_statuses os ON o.status = os.order_status_id;
    
USE sql_hr;
SELECT e.employee_id,e.first_name,m.first_name AS manager
	FROM employees e
    LEFT JOIN employees m ON e.reports_to = m.employee_id;

--  USING if column names are equal
USE sql_store;
 SELECT o.order_date,c.first_name,o.order_id,sh.name
	FROM orders o
	JOIN customers c USING (customer_id)
    LEFT JOIN shippers sh USING (shipper_id);
    
 USE sql_invoicing;
 
 SELECT p.date,c.name,p.amount,pm.name
 FROM payments p
 JOIN clients c USING (client_id)
 JOIN payment_methods pm ON p.payment_method=pm.payment_method_id;

