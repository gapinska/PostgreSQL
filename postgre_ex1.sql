--create database

CREATE DATABASE test;
DROP DATABASE test;

--create tables
	 

/*

CREATE TABLE table_name (
Column name + data type + constraints if any
)

*/ 


CREATE TABLE person (
id int,
first_name VARCHAR(50),
last_name VARCHAR (50),
gender VARCHAR (6),
date_of_birth TIMESTAMP
)

--creating tables without constraints

\c test --> connect to database
\d person --> show table person

--creating tables with constraints

CREATE TABLE person (
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR (5) NOT NULL,
date_of_birth DATE NOT NULL
)

DROP TABLE person;

--insert into
INSERT INTO person (
first_name,
last_name,
gender,
date_of_birth
)

VALUES ('Anne', 'Smith', 'Female', DATE '1988-01-09');

SELECT * FROM person;

ALTER TABLE person
ADD COLUMN email VARCHAR(150);

SELECT * FROM person;
SELECT first_name FROM person;
SELECT first_name, last_name FROM person;
1234 --> ASC (default)
4321 --> DESC

SELECT * FROM person ORDER BY country_of_birth;
SELECT * FROM person ORDER BY country_of_birth DESC;

--distinct

SELECT country_of_birth FROM person ORDER BY country_of_birth;
SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth;

--Where Clause and AND

SELECT * FROM person WHERE gender = 'Female';
SELECT * FROM person WHERE gender = 'Male'AND country_of_birth = 'Poland';
SELECT * FROM person WHERE gender = 'Female' AND (country_of_birth = 'Poland' OR country_of_birth = 'China');

--Comparison operators
<> --> not equal

--Limit, Offset & Fetch

SELECT * FROM person LIMIT 10;
SELECT * FROM person OFFSET 5 LIMIT 5; --> po 5 rekordzie, 5 rekordów (od 6 do 10);
SELECT * FROM person OFFSET 5; --> wszystkie od 6
--LIMIT key word is not in standard of SQL --> FETCH is more proper
SELECT * FROM person OFFSET 5 FETCH FIRST 5 ROW ONLY;

--primary key
--join

SELECT first_name, last_name, car.id AS car_info
FROM person INNER JOIN car
ON person.car_id = car.id;

SELECT person.first_name, car.make, car.model, car.price
FROM person
JOIN car ON person.car_id = car.id;

SELECT * FROM person
JOIN car ON person.car_id = car.id;

--left join
SELECT * FROM person 
LEFT JOIN car ON car.id = person.car_id;

SELECT * FROM person WHERE car_id IS NULL;

SELECT * FROM person 
LEFT JOIN car ON car.id = person.car_id
WHERE car.* IS NULL;
