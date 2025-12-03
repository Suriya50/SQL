CREATE DATABASE infosys;
USE infosys;

CREATE TABLE employeedb (
  id INT PRIMARY KEY AUTO_INCREMENT,
  employee_name VARCHAR(20),
  employee_dept VARCHAR(20),
  employee_email VARCHAR(40),
  employee_mobile VARCHAR(15),
  employee_city VARCHAR(20)
);

INSERT INTO employeedb (employee_name, employee_dept, employee_email, employee_mobile, employee_city)
VALUES ("Surya", "web developer", "suryazzx6@gmail.com", "7868943703", "chennai");
INSERT INTO employeedb (employee_name, employee_dept, employee_email, employee_mobile, employee_city)
VALUES ("vijay", "data analyst", "vijay34@gmail.com", "6788943703", "madurai");
DESCRIBE employeedb;
