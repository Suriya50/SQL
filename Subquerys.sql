CREATE DATABASE subqueryss;
USE subqueryss;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    customer_phone VARCHAR(20)
);


INSERT INTO customers (customer_name, customer_phone) VALUES
('Arun', '9876543210'),
('Vijay', '9887766554'),
('Kumar', '9123456789'),
('Samy', '9001122334'),
('Surya', '9090909090');

CREATE TABLE productss (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    product_price INT
);


INSERT INTO productss (product_name, product_price) VALUES
('Book A', 500),
('Book B', 300),
('Book C', 450),
('Book D', 700),
('Book E', 250);


CREATE TABLE orderss (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES productss(id)
);

INSERT INTO orderss (customer_id, product_id, order_date) VALUES
(1, 1, '2025-12-01'),
(2, 3, '2025-12-02'),
(3, 2, '2025-12-03'),
(4, 5, '2025-12-04'),
(5, 4, '2025-12-05'); 

SELECT product_name, product_price
FROM productss
WHERE product_price = (SELECT MAX(product_price) FROM productss);
