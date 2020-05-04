USE sql_store;
SELECT * FROM orders INNER JOIN customers ON orders.customer_id = customers.customer_id;
SELECT order_id,first_name,last_name,orders.customer_id,customers.customer_id FROM orders JOIN customers ON orders.customer_id = customers.customer_id;
SELECT order_id,first_name,last_name FROM orders o JOIN customers c ON o.customer_id = c.customer_id;
SELECT product_id , p.name  FROM products p JOIN orders o ON p.product_id = o.order_id;

-- joining with different database
USE sql_inventory;
SELECT * FROM sql_store.order_items oi JOIN products p ON oi.product_id = p.product_id; 

-- joing wwithin same table

USE sql_hr;

SELECT * FROM employees e JOIN employees m ON e.reports_to = m.employee_id;
SELECT e.employee_id,e.first_name,m.employee_id AS mangerID,m.first_name AS managerName FROM employees e JOIN employees m ON e.reports_to = m.employee_id;

-- joing 3 tables
USE sql_store;

SELECT * FROM orders o 
		JOIN customers c ON o.customer_id = c.customer_id 
        JOIN order_statuses os ON o.status = os.order_status_id;
        
SELECT o.order_id,c.first_name,os.name
		FROM orders o 
        JOIN customers c ON o.customer_id = c.customer_id
        JOIN order_statuses os ON o.status = os.order_status_id;
        
USE sql_invoicing;

SELECT * FROM payments p 
JOIN clients c ON p.client_id = c.client_id
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;

SELECT p.payment_id,p.amount,c.name AS clientname,pm.name AS paymentMethod FROM payments p 
JOIN clients c ON p.client_id = c.client_id
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;

