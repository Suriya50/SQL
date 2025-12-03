CREATE DATABASE IPLcricketer;
USE IPLcricketer;
CREATE TABLE cricketernamelist(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20),
team VARCHAR(20),
player VARCHAR(20),
age INT,
nickname VARCHAR(20),
salary INT

);

INSERT INTO cricketernamelist(name,team,player,age,nickname,salary) VALUES ("DHONI","CSK","batter","40","cool","14000000");
INSERT INTO cricketernamelist(name,team,player,age,nickname,salary) VALUES ("KOHLI","RCB","batter","37","KING","17000000");
INSERT INTO cricketernamelist(name,team,player,age,nickname,salary) VALUES ("ROHIT","MI","batter","38","HITMAN","13000000");
DESCRIBE cricketernamelist;

UPDATE cricketernamelist SET name="MAHI",player="keeper",salary="16000000" WHERE id="1";
UPDATE cricketernamelist SET name="KING",player="batter",salary="20000000" WHERE id="2";
UPDATE cricketernamelist SET name="HITMAN",player="batter",salary="17000000" WHERE id="3";

DELETE from cricketernamelist WHERE id="3";