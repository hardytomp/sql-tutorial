USE sql_store;
SELECT o.order_id ,'Active' AS status FROM orders o
	WHERE o.order_date >= '2019-01-01'
 UNION   
SELECT o.order_id ,'Archived' AS status FROM orders o
	WHERE o.order_date < '2019-01-01';
    
SELECT c.customer_id,c.first_name,c.points, 'Bronze' AS type FROM customers c WHERE c.points < 1000
UNION 
SELECT c.customer_id,c.first_name,c.points, 'Silver' AS type FROM customers c WHERE c.points >= 1000 AND c.points < 3000
UNION
SELECT c.customer_id,c.first_name,c.points, 'Gold' AS type FROM customers c WHERE c.points >= 3000
ORDER BY type DESC;