USE sql_invoicing;
UPDATE invoices
	SET payment_total=10,payment_date='2019-03-01' WHERE invoice_id = 1;
SELECT * FROM invoices WHERE invoice_id = 1;    

-- updating multiple rows in edit->pref->disable safe and close the instance and restart
UPDATE invoices
	SET payment_total=10,payment_date='2019-03-01' WHERE client_id = 3;
SELECT * FROM invoices WHERE client_id = 3;  
SELECT * FROM invoices WHERE client_id = 3;    

USE sql_store;
SELECT * FROM customers WHERE birth_date < '1990-01-01';
UPDATE customers SET points = points+50 WHERE birth_date < '1990-01-01';
SELECT * FROM customers WHERE birth_date < '1990-01-01';

-- updating invoices using clientname

USE sql_invoicing;

UPDATE invoices 
SET  
	payment_total = invoice_total*.5,
    payment_date = due_date
WHERE client_id = (SELECT client_id FROM clients WHERE name = 'MyWorks' );

-- look oit for IN as it returns multiple rows so = is not used
UPDATE invoices 
SET  
	payment_total = invoice_total*.5,
    payment_date = due_date
WHERE client_id IN (SELECT client_id FROM clients WHERE state IN ('CA','NY') );

SELECT * FROM invoices; 

USE sql_store;

UPDATE orders
SET comments="golden customers" 
WHERE customer_id IN (SELECT customer_id FROM customers WHERE points > 3000 );

SELECT * FROM orders; 