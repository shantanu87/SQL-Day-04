use training;

-- AUTO INCREMENT ( SEQUENCES)

create table customer_table(
custid INT UNIQUE AUTO_INCREMENT,
custname VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO customer_table(custname,city) VALUES('Ram','Chennai'),('Tharani','Bangalore'),
('Kavita','Hyderabad'),('Aveek','Pune'),('Mukesh','Mumbai');
SELECT * FROM customer_table;
INSERT INTO customer_table VALUES(100,'Durga','Trichy');
INSERT INTO customer_table(custname,city)  VALUES('Vikram','Delhi');

-- ALTER TABLE 

CREATE TABLE users(
userid INT,
user_name VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(100)
);
DESC users;
ALTER TABLE users ADD COLUMN mobile varchar(20);
DESC users;
ALTER TABLE users DROP COLUMN city;
DESC users;
ALTER TABLE users MODIFY COLUMN user_name varchar(20);
DESC users;
ALTER TABLE users RENAME COLUMN mobile to contacts;
DESC users;
ALTER TABLE users RENAME to customers;
RENAME TABLE customers TO cust_tables;

-- JOI

-- INNER JOIN
-- OUTER JOIN
	-- LEFT OUTER JOIN
    -- RIGHT OUTER JOIN
    -- CROSS JOIN
    
CREATE TABLE CUSTOMER(
custid INT,
custname VARCHAR(20),
city VARCHAR(10)
);
INSERT INTO CUSTOMER VALUES(1000,'Ramu','Chennai');
INSERT INTO CUSTOMER VALUES(1001,'Tharani','Bangalore');
INSERT INTO CUSTOMER VALUES(1002,'Malini','Hyderabad');
INSERT INTO CUSTOMER VALUES(1003,'Ramesh','Pune');
INSERT INTO CUSTOMER VALUES(1004,'Raghul','Delhi');
SELECT * FROM CUSTOMER;

CREATE TABLE TRANSACTION_TBL(
transid INT,
custid INT,
productname VARCHAR(100),
amount INT
);
INSERT INTO TRANSACTION_TBL VALUES(1,1000,'TV',65000);
INSERT INTO TRANSACTION_TBL VALUES(2,1001,'Mobile',30000);
INSERT INTO TRANSACTION_TBL VALUES(3,1002,'Laptop',75000);
INSERT INTO TRANSACTION_TBL VALUES(4,1000,'Tablet',20000);
INSERT INTO TRANSACTION_TBL VALUES(5,1000,'Dekstop',50000);
INSERT INTO TRANSACTION_TBL VALUES(6,1003,'Fridge',45000);
INSERT INTO TRANSACTION_TBL VALUES(7,1002,'WashingMachine',40000);
INSERT INTO TRANSACTION_TBL VALUES(8,1001,'MicroOven',35000);
INSERT INTO TRANSACTION_TBL VALUES(9,1003,'Charger',2000);
INSERT INTO TRANSACTION_TBL VALUES(10,1005,'WristWatch',10000);

-- INNER JOIN

SELECT * FROM CUSTOMER c INNER JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- LEFT JOIN

SELECT * FROM CUSTOMER c LEFT JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- RIGHT JOIN

SELECT * FROM CUSTOMER c RIGHT JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- CROSS JOIN

SELECT * FROM CUSTOMER c CROSS JOIN TRANSACTION_TBL t;

