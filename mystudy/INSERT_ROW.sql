USE sql_store;
INSERT INTO customers
VALUES(DEFAULT,'Hardy','Tom','1990-01-01',NULL,'address','city','CA',DEFAULT);

SELECT * FROM customers c WHERE first_name = "Hardy";
-- rows with default values not needed to be mentioned in parenthesis
INSERT INTO customers  (first_name,last_name,birth_date,address,city,state)
VALUES('Amalu','Laji','1990-01-01','address','city','CA');

SELECT * FROM customers c WHERE first_name = "Amalu";

-- inserting multiple row

INSERT INTO shippers(name) 
VALUES ('Shipper1'),('shipper2'),('shipper3');

SELECT * FROM Shippers;

-- inserting into multiple tables
-- parent child relation orders and order_items

INSERT INTO orders (customer_id,order_date,status)
VALUES(1,'2020-04-08',1) ;
-- now we need to get the order id of last one to add order items we can use LAST_INSERT_ID()
INSERT INTO order_items
VALUES(LAST_INSERT_ID(),1,1,2.95),(LAST_INSERT_ID(),2,1,3.95);

-- To verify
SELECT * FROM orders o
INNER JOIN order_items oi ON LAST_INSERT_ID() = oi.order_id; 
