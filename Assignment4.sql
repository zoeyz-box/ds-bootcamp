CREATE TABLE ITEMS (
    item_id VARCHAR(30),
    item_name VARCHAR(50),
    price DECIMAL(2),
    department VARCHAR(50),
    PRIMARY KEY (item_id)
);

CREATE TABLE CUSTOMERS (
    customer_id VARCHAR(30),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_ VARCHAR(70),
    PRIMARY KEY (customer_id)
);

CREATE TABLE SALES (
    date_ DATE, 
    order_id VARCHAR(30),
    item_id VARCHAR(30),
    customer_id VARCHAR(30),
    quantity INT,
    revenue DECIMAL(2),
    PRIMARY KEY (order_id),
    FOREIGN KEY (item_id) REFERENCES ITEMS(item_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

SELECT COUNT(order_id) FROM SALES WHERE date_ = "2023-03-18";
SELECT COUNT(order_id) FROM SALES INNER JOIN CUSTOMERS ON SALES.customer_id = CUSTOMERS.customer_id WHERE date_ = "2023-03-18"
AND (first_name = "John" AND last_name = "Doe");
SELECT COUNT(DISTINCT customer_id), AVG(revenue) FROM SALES WHERE MONTH(date_) = "01" AND YEAR(date_) = "2023";
SELECT department FROM ITEMS INNER JOIN SALES ON ITEMS.item_id = SALES.sales_id WHERE revenue < 600 AND YEAR(date_) = "2022";
SELECT MAX(revenue), MIN(revenue) FROM SALES;