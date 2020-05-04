USE sql_store;
SELECT 
   last_name,
   first_name,
   points,
   (points*100)+10 AS dicount
 FROM customers
