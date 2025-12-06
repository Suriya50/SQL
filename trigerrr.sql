CREATE DATABASE batshopzyy;
USE batshopzyy;

CREATE TABLE productes(
id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(20),
Product_type VARCHAR(20),
product_price INT,
product_add_date DATETIME

);

CREATE TABLE product_items(

log_id INT PRIMARY KEY AUTO_INCREMENT,
action_type VARCHAR(40),
product_old_name VARCHAR(20),
product_new_name VARCHAR(20),
product_old_price VARCHAR(30),
product_new_price  VARCHAR(30),
log_time TIMESTAMP default current_timestamp
);



DELIMITER $$

CREATE TRIGGER product_list BEFORE INSERT ON productes
FOR EACH ROW
SET NEW.product_price = IF(NEW.product_price < 0, 1000, NEW.product_price);

$$ DELIMITER ;

DELIMITER $$

CREATE TRIGGER product_listess 
AFTER INSERT ON productes
FOR EACH ROW
BEGIN
    INSERT into product_items (action_type, product_new_name, product_new_price)
    VALUES ('INSERT', NEW.product_name, NEW.product_price);
END$$

DELIMITER ;
