USE sql_store;
-- primary and auto increment is not used
#CREATE TABLE orders_archived AS SELECT * FROM orders;

-- truncate  the newly created orders_archived

INSERT INTO orders_archived SELECT * FROM orders WHERE order_date < '2019-01-01';
SELECT * FROM orders_archived;

USE sql_invoicing;
CREATE TABLE invoice_archived AS SELECT i.invoice_id,c.name,i.invoice_total,i.payment_date FROM invoices i
INNER JOIN clients c ON i.client_id = c.client_id AND i.payment_date IS NOT NULL;

SELECT * FROM invoice_archived;