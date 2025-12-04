create database employee;
use employee;

create table employee_details (
id int primary key auto_increment,
name varchar (50),
department varchar (25),
salary int,
city varchar (100)
);

insert into employee_details values (1,"vikram","IT",35000,"Chennai");
insert into employee_details (name,department,salary,city) values ("surya","CS",40000,"chennai");
insert into employee_details (name,department,salary,city) 
values ("Abi","ECE",25000,"Madurai"),
("Sheik","EEE",23000,"Ramnad"),
("Hari","Testing",33000,"Paramakudi"),
("Arun","Support",28000,"Kanchipuram"),
("Thoufiq","HR",48000,"Banglore"),
("Saravana","Medical",43000,"Hosur"),
("Deva","Hardware",42000,"Mysore"),
("Jothi","Technical",55000,"Hydrebad"),
("Shanmugam","Design",58000,"Dubai");

-- select all from table --
select * from employee_details;

-- rename column --
select department as dept from employee_details;

-- specific data fetch -- 
select * from employee_details where salary <=20000;
select * from employee_details where salary >=20000;
select * from employee_details where salary >20000;
select * from employee_details where salary <=38000;
select * from employee_details where salary >=38000;
select * from employee_details where salary =40000;
select * from employee_details where salary !=40000;
select * from employee_details where salary >=45000;

-- logical operator --
select * from employee_details where not name = "surya";
select * from employee_details where department = "Hardware" AND name = "Deva";
select * from employee_details where salary = 28000 and name = "jothi";
select * from employee_details where salary = 28000 OR name = "jothi";
SELECT * FROM employee_details WHERE salary BETWEEN 30000 AND 50000;
select * from employee_details where city IN ("madurai","dubai","hosur");
select * from employee_details where department NOT IN ("IT","CS","ECE","EEE","Hardware");

-- Like cmd -- 
select * from employee_details where name LIKE "A%";
select * from employee_details where name LIKE "%n";
select * from employee_details where name LIKE "s%" OR name like "%n";
select * from employee_details where name LIKE "%s%";

-- order by --
select * from employee_details ORDER BY name ASC;
select * from employee_details ORDER BY name DESC;

-- limit -- 
select * from employee_details limit 2;
select * from employee_details LIMIT 5;
select * from employee_details order by department asc LIMIT 4;

-- distinct -- 
select DISTINCT city from employee_details;

-- aggregate functions --
select count(*) as total_count from employee_details;
select sum(salary) as total_salary from employee_details;
select avg(salary) as avg_salary from employee_details;
select min(salary) as min_salary from employee_details;
select max(salary) as max_salary from employee_details;

-- group by--
select department, count(*) from employee_details GROUP BY department;
select department, sum(salary) from employee_details group by department;
select name, count(*) from employee_details group by name;

-- having --
SELECT department, COUNT(*) FROM employee_details GROUP BY department HAVING COUNT(*) = 1;

SELECT department, SUM(salary) FROM employee_details WHERE salary > 25000 GROUP BY department HAVING SUM(salary) > 45000;