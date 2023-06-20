#1
CREATE TABLE CUSTOMERS (
	ID INT AUTO_INCREMENT,
	NAME VARCHAR(255),
	CUSTOMERS_FIRST_PURCHASE_COMPLETED BOOLEAN,
	ETA INT,
    PRIMARY KEY (ID)
);

#2
INSERT INTO CUSTOMERS(NAME, ETA, CUSTOMERS_FIRST_PURCHASE_COMPLETED)
	VALUES ('Antonio Bianchi',  32, true),
	('Giovanni Verdi', 45, false),
	('Sofia Barone', 23, true),
	('Francesco Renga', 67, false),
	('Francesco Bolognesi', 18, false);



#3
SELECT * FROM CUSTOMERS

UPDATE CUSTOMERS
SET CUSTOMERS_FIRST_PURCHASE_COMPLETED = false
WHERE ID = 4;



#4
DELETE FROM CUSTOMERS
WHERE ID = 6 AND ID = 4,


#5
TRUNCATE CUSTOMERS;




/* Look at the tables below and write which column(s) you think would make a good primary key.*/

#6
CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 PRIMARY KEY (customer_id)
);

#7
CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
 PRIMARY KEY (product_name)
);

#8
CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
 PRIMARY KEY (order_id)
);

#9
CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
  PRIMARY KEY (order_id)
);