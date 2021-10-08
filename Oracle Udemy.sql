---- ORACLE SQL-------

select * from department
;

SELECT *  
FROM employee
;

select *  
from department
;

SELECT *  
FROM employee
;

select FIRST_NAME, SALARY 
from employee
;


SELECT *  
FROM employee
;

select DAPARTMENT_ID, EMPLOYEE_ID, FIRST_NAME  
from employee
;

select FIRST_NAME, SALARY 
from employee
;

select DEPARTMENT_ID, EMPLOYEE_ID, FIRST_NAME  
from employee
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where FIRST_NAME = 'Jessica'
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where LAST_NAME = 'Smith'
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where LAST_NAME = 'Jones'
;


select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where LAST_NAME <> 'Jones'
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where LAST_NAME != 'Jones'
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where EMPLOYEE_ID > 5
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where EMPLOYEE_ID >= 5
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where EMPLOYEE_ID < 7
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where EMPLOYEE_ID <= 7
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where LAST_NAME like 'Bu'
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where LAST_NAME like 'Bu%'
;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where LAST_NAME like '%e%'
;


select EMPLOYEE_ID, FIRST_NAME, LAST_NAME 
from employee 
where FIRST_NAME like 'Ann_'
;


select value 
from SYS.NLS_DATABASE_PARAMETERS 
where parameter = 'NLS_DATE_FORMAT'
;

select * 
from employee 
where HIRE_DATE = '03-OCT-2010'
;

select * 
from employee 
where HIRE_DATE > '01-OCT-2010'
;

select * 
from employee 
where HIRE_DATE < '01-OCT-2009'
;

select * 
from employee 
where HIRE_DATE < '01-OCT-2010'
;

select * 
from employee 
where first_name = 'Jones' AND last_name = 'Hayes'
;

select * 
from employee 
where first_name = 'John' AND last_name = 'Hayes'
;


select * 
from employee 
where first_name = 'John' OR last_name = 'Hayes'
;

select * 
from employee 
where first_name = 'John' OR last_name = 'Foster'
;

-- xvi. More than 2 filters

select *
from employee
where first_name = 'Barbara'
AND hire_date < '01-DEC-2014'
OR salary < 70000;

--- records with  either the name and the hiredate condition or the salary condition
select first_name, last_name, salary, hire_date
from employee
where (first_name = 'Barbara'
AND hire_date < '01-DEC-2014')
OR salary < 70000;

-- records with the name barbara along with either the hiredate condition or tge salary condition 
select first_name, last_name, salary, hire_date
from employee
where first_name = 'Barbara'
AND (hire_date < '01-DEC-2014'
OR salary < 70000);

-- xvii. The null
-- row 24 and 73 are shown as empty salary column
select *
from employee
where salary IS NULL;

-- noe row 24 and 73 are not there
select *
from employee
where salary IS NOT NULL;

--xviii. Getting unique records with DISTINCT

Select last_name
from employee; -- you eill find 200 rows

select DISTINCT last_name
from employee; --now you will find 140 rows only 

-- when we add distinct when retrieving more than 1 col, it shows unique records
select DISTINCT last_name, department_id
from employee;

-- Section 5 : MORE OPERATORS

--xix. IN and NOT IN 

select *
from employee
where last_name = 'Foster'
or last_name = 'Elliott'
or last_name = 'Mitchell'
or last_name = 'Mitchell'
or last_name = 'Lawson'

-- this can be simply written as,
select *
from employee
where last_name IN ('Foster','Elliott','Mitchell','Mitchell','Lawson' );

-- witout the mentioned names,
select *
from employee
where last_name NOT IN ('Foster','Elliott','Mitchell','Mitchell','Lawson' );

-- xx. BETWEEN and NOT BETWEEN

select *
from employee
where hire_date > '01-JAN-2016'
AND hire_date < '31-DEC-2016';

--this can now be written as,
select *
from employee
where hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';

select *
from employee
where employee_id BETWEEN 10 AND 20;

-- to show otherwise,
select *
from employee
where employee_id NOT BETWEEN 10 AND 20;

-- xxi. ALL keyword

select employee_id, first_name, last_name, salary
from employee
where salary > 30000
and salary > 40000
and salary >50000;

select employee_id, first_name, last_name, salary
from employee
where salary > ALL(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary < ALL(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary > ALL(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary >= ALL(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary <> ALL(30000,40000,50000);


select employee_id, first_name, last_name, salary
from employee
where salary = ALL(30000,40000,50000);

-- xxii. ANY keyword

select employee_id, first_name, last_name, salary
from employee
where salary > 30000
or salary > 40000
or salary >50000;

--this can be wriiten as,
select employee_id, first_name, last_name, salary
from employee
where salary > ANY(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary >= ANY(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary < ANY(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary <= ANY(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary != ANY(30000,40000,50000);

select employee_id, first_name, last_name, salary
from employee
where salary = ANY(30000,40000,50000);

-- SECTION 6: Sorting Data

-- xxiii. ORDER BY 

--default ascending
select employee_id, first_name, last_name, salary
from employee
order by last_name;

--same as,
select employee_id, first_name, last_name, salary
from employee
order by last_name ASC;

--descending
select employee_id, first_name, last_name, salary
from employee
order by last_name DESC;

select employee_id, first_name, last_name, salary
from employee
order by salary ASC; -- You can that null values are set to the bottom

-- so when it is in descending order, the null values come to the top
select employee_id, first_name, last_name, salary
from employee
order by salary DESC; 

select employee_id, first_name, last_name, salary, hire_date
from employee
order by hire_date ASC; 

select employee_id, first_name, last_name, salary, hire_date
from employee
order by hire_date DESC; 

-- xxiv. Ordering by Multiple Columns
-- if you order by last name and first name, if the last name is the same then it moves to ordering them by the first name

select employee_id, first_name, last_name, salary
from employee
order by last_name ASC, first_name ASC; -- check where the last name is andrew/ arnold

-- now when you order by the hire date, if the same date occurs (09=MAR-11), 
select employee_id, first_name, last_name, salary, hire_date
from employee
order by hire_date ASC, employee_id DESC;

-- SECTION 7: Set Operators

-- xxv. Set Operators and UNION

-- union: combines the result of two sets and remove duplicates
-- UNION comes in between the 2 cols | needs to have the same no of columns | corres. columns needs to have the same datatype

select first_name,last_name
from employee
UNION
select first_name, last_name
from CUSTOMER;

-- find who the employee/ cusomter is

select 'Employee', first_name,last_name
from employee
UNION
select 'Customer', first_name, last_name
from CUSTOMER

select 'Employee', first_name,last_name
from employee
UNION
select 'Customer', first_name, last_name
from CUSTOMER
order by last_name;

--using order by with the column number
select 'Employee', first_name,last_name
from employee
UNION
select 'Customer', first_name, last_name
from CUSTOMER
order by 2,3;

-- xxvii. Union All

--this allows 
select first_name,last_name
from employee
UNION ALL
select first_name, last_name
from CUSTOMER
order by 1,2;

--xxvii Intersect opertors

select first_name,last_name
from employee
INTERSECT
select first_name, last_name
from CUSTOMER

-- xxviii. MINUS operators
select first_name,last_name
from employee
MINUS
select first_name, last_name
from CUSTOMER

-- xxix. Three or more sets at once

--2 queries
select first_name,last_name, salary
from employee
where salary BETWEEN 28000 AND 40000
UNION
select first_name, last_name, salary
from employee
where salary BETWEEN 20000 AND 30000;

--3 queries
select first_name,last_name, salary
from employee
where salary BETWEEN 28000 AND 40000
UNION
select first_name, last_name, salary
from employee
where salary BETWEEN 20000 AND 30000
INTERSECT
select first_name, last_name, salary
from employee
where salary BETWEEN 30000 AND 55000;

--4 queries
select first_name,last_name, salary
from employee
where salary BETWEEN 28000 AND 40000
UNION
select first_name, last_name, salary
from employee
where salary BETWEEN 20000 AND 30000
INTERSECT
select first_name, last_name, salary
from employee
where salary BETWEEN 30000 AND 55000
MINUS
select first_name, last_name, salary
from employee
where salary BETWEEN 25000 AND 28000;

-- if you add brackets, that part goes first

select first_name,last_name, salary
from employee
where salary BETWEEN 28000 AND 40000
UNION
(select first_name, last_name, salary
from employee
where salary BETWEEN 20000 AND 30000
INTERSECT
select first_name, last_name, salary
from employee
where salary BETWEEN 30000 AND 55000)
MINUS
select first_name, last_name, salary
from employee
where salary BETWEEN 25000 AND 28000;


-- SECTION 08: Agrregate functions & Grouping

-- xxxi. Counting records

SELECT COUNT(*)
FROM employee; -- will show the number of records

-- you can also use

SELECT COUNT(1)
FROM employee

SELECT COUNT(*)
FROM customer;

SELECT COUNT(*)
FROM customer_order;

-- xxxii. Using COUNT in other ways

SELECT COUNT(*)
FROM employee
WHERE first_name = 'Barbara';

SELECT COUNT(salary)
FROM employee; -- this gives 198/200 rows as 2 rows have null salary records

SELECT COUNT(*)
FROM employee
WHERE salary IS NULL;

SELECT COUNT(DISTINCT last_name)
from employee

--- xxxiii. Counting groups with group by

-- SELECT-FROM-WHERE-GROUP BY- ORDER BY

SELECT last_name, count(*)
FROM employee
GROUP BY last_name; 

SELECT department_id, count(*)
FROM product
GROUP BY department_id;

-- xxxiv. Group by with where & order by clauses

SELECT last_name, count(*)
FROM employee
where last_name LIKE 'B%'
GROUP BY last_name; 

SELECT salary, COUNT(*)
FROM employee
WHERE salary>100000
GROUP BY salary;

SELECT last_name, count(*)
FROM employee
where last_name LIKE 'B%'
GROUP BY last_name
ORDER BY count(*) DESC;

SELECT salary, COUNT(*)
FROM employee
WHERE salary>100000
GROUP BY salary
ORDER BY count(*) DESC;


 -- xxxv. Group By with Multiple Column

SELECT first_name, last_name, count(*)
FROM employee
GROUP BY first_name, last_name
ORDER BY first_name, last_name;


SELECT first_name, last_name,d.department_id, count(*)
FROM employee, department d
GROUP BY first_name, last_name, d.department_id
ORDER BY count(*);

-- xxxvi.Group by with having]

SELECT last_name, count(*)
FROM employee
GROUP BY last_name
HAVING count(*) >1; 

SELECT first_name, last_name, count(*)
FROM employee
GROUP BY first_name, last_name
HAVING count(*) > 1; --no record more than 1

-- xxxvii. The SUM fucntion

SELECT SUM(salary)
FROM employee;

SELECT SUM(price)
FROM product;

SELECT d.department_id, SUM(salary)
FROM employee, department d
GROUP BY d.department_id
order by sum(salary) DESC;

-- xxxviii. Using MAX and MIN
SELECT MAX(salary)
FROM employee;

SELECT MIN(salary)
FROM employee;

SELECT MAX(salary),MIN(salary)
FROM employee;

SELECT d.department_id, MAX(salary)
FROM employee, department d
GROUP BY d.department_id

SELECT MIN(hire_date)
from employee;

SELECT MAX(hire_date)
from employee;

SELECT MIN(last_name)
from employee; --first on the table

SELECT MAX(last_name)
from employee; --last on the table

-- XXXIX. AVG function

SELECT AVG(salary)
FROM employee;

SELECT d.department_id, AVG(salary)
FROM employee, department d
GROUP BY d.department_id

SELECT AVG(hire_date)
from employee; -- THIS DOESNT WORK LIKE THAT

-- SECTION 9 : JOINS

-- xl. Table Aliases

select employee_id, first_name, last_name, e.salary
from employee e
where e.salary > 110000;

-- xli. Column aliases

select employee_id, first_name, last_name, e.salary as Annual_salary 
from employee e
where e.salary > 110000;


select employee_id, first_name, last_name, e.salary as Annual_salary, e.salary/12
from employee e
where e.salary > 110000;

select employee_id, first_name, last_name, e.salary as Annual_salary, e.salary/12 as Monthly_salary
from employee e
where e.salary > 110000;

SELECT department_id, count(*)
from employee
group by department_id
order by department_id;

SELECT department_id, count(*) as No_of_employees
from employee
group by department_id
order by department_id;

-- xliii. inner join

--our 2 queires
select employee_id, first_name, last_name, department_id
from employee;

select deparmtent_id, department_name
from department;

-- inner joined,
select employee_id, first_name, last_name, department_name
from employee
JOIN department ON employee.department_id = department.department_id;

select e.employee_id, e.first_name, e.last_name, d.department_name, d.department_id
from employee e
JOIN department d ON e.department_id = d.department_id;

-- xliv. left outer join

select c.customer_id, c.first_name, c.last_name, co.order_date
from customer c
LEFT JOIN  customer_order co ON c.customer_id = co.customer_id;

select d.department_id, d.department_name, e.employee_id, e.first_name, e.last_name
from department d 
LEFT JOIN employee e ON d.department_id = e.department_id
order by d.department_id;

-- xlv. Right outer join

select d.department_id, d.department_name, e.employee_id, e.first_name, e.last_name
from employee e
RIGHT JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id;

--xlvi, Full outer join

select d.department_id, d.department_name, e.employee_id, e.first_name, e.last_name
from employee e
FULL JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id;

select d.department_id, d.department_name, e.employee_id, e.first_name, e.last_name
from employee e
FULL JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id, e.employee_id;

-- xlvii. Natural Join
select e.employee_id, e.first_name, e.last_name, department_id, d.department_name
from employee e
NATURAL JOIN department d;

select product_id,
product_name,
department_id,
department_name
from product
NATURAL JOIN department;

-- xlviii. Cartesian Join / cross join

select employee_id, first_name, last_name
from employee;

select department_id,department_name
from department;

select employee_id, first_name, last_name, department_name
from employee, department;

select employee_id, first_name, last_name, department_name
from employee
cross join department;

-- xlix. Self join

select e.employee_id, e.first_name, e.last_name,e.manager_id, mng.first_name, mng.last_name
from employee e
LEFT JOIN employee mng ON e.manager_id = mng.employee_id

-- l. Joining many tables

select customer_id, first_name,last_name, address_state
from customer c;

select order_id, customer_id, order_id,order_date
from customer_order co;

select *
from product;

select c.first_name,c.last_name, c.address_state,co.order_id,co.order_date
from customer c
JOIN customer_order co ON c. customer_id = co.customer_id;

select c.first_name,c.last_name, c.address_state,
co.order_id,co.order_date,
p.product_name,p.price
from customer c
JOIN customer_order co ON c. customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id
order by c.customer_id;

select c.first_name,c.last_name, c.address_state,
co.order_id,co.order_date,
p.product_name,p.price
from customer c
JOIN customer_order co ON c. customer_id = co.customer_id
LEFT JOIN product p ON co.product_id = p.product_id
order by c.customer_id;

select c.first_name,c.last_name, c.address_state,
co.order_id,co.order_date,
p.product_name,p.price,
d.department_name,
from customer c
JOIN customer_order co ON c. customer_id = co.customer_id
LEFT JOIN product p ON co.product_id = p.product_id
LEFT JOIN department d ON p.department_id = d.department_id
order by c.customer_id;

-- li. Alternative join syntax
select employee_id, first_name, last_name, department_name
from employee, department
where employee.department_id = department.department_id;

select employee_id, first_name, last_name, department_name
from employee, department
where employee.department_id = department.department_id(+);

select employee_id, first_name, last_name, department_name, salary, hire_date
from employee, department
where salary >50000
AND hire_date > '02-JAN-2013'
AND employee.department_id = department.department_id;

-- SECTION 10: Functions

-- lii. String Fucntions

select customer_id, first_name, last_name,email_address 
from customer;

select customer_id, first_name, last_name,email_address , INSTR( email_address, '@')
from customer;

select customer_id, first_name, last_name,email_address , address_state,
INSTR( email_address, '@'),
LENGTH(address_state)
from customer;

select customer_id, first_name, last_name,email_address , address_state,
INSTR( email_address, '@'),
LENGTH(address_state)
from customer
where INSTR( email_address, '@') >0
and LENGTH(address_state) = 2;

select customer_id, first_name, last_name,email_address , address_state,
INSTR( email_address, '@'),
LENGTH(address_state)
from customer
where INSTR( email_address, '@') >0
and LENGTH(address_state) = 2
order by LENGTH(email_address) DESC; 

-- liii. Nesting functions

select customer_id, first_name, last_name,email_address , address_state,
INSTR( email_address, '@'),
SUBSTR(email_address, INSTR( email_address, '@'),100)
from customer;

select customer_id, first_name, last_name,email_address , address_state,
INSTR( email_address, '@'),
SUBSTR(email_address, INSTR( email_address, '@')+1,100)
from customer;

select customer_id, first_name, last_name,email_address , address_state,
INSTR( email_address, '@'),
SUBSTR(email_address, INSTR( email_address, '@'),LENGTH(address_state)) AS email_domain
from customer;

-- liv. Numbe rfucntions

select product_id, product_name, price, ROUND(price)
from product;

select product_id, product_name, price, ROUND(price), ROUND (price,1)
from product;

select product_id, product_name, price, ROUND(price), ROUND (price,1),
CEIL(price), FLOOR(price)
from product;

select product_id, product_name, price
from product
where product_id = 1;

select product_id, product_name, price,
price * 9 * 0.85
from product
where product_id = 1;

select product_id, product_name, price,
ROUND(price * 9 * 0.85, 2),
ROUND(price * 9 * 0.85)
from product
where product_id = 1;

-- lv. DATE functions

-- adding months
select employee_id, first_name, last_name, hire_date,
ADD_MONTHS(hire_date, 6) AS review_dates
from employee;

--add five years
select employee_id, first_name, last_name, hire_date,
ADD_MONTHS(hire_date, 6) AS review_dates,
ADD_MONTHS(hire_date, 60) AS five_years
from employee;

-- rounding it off
select employee_id, first_name, last_name, hire_date,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12, 1) as time_with_compnay
from employee;

select ADD_MONTHS(SYSDATE ,20)
FROM dual;


-- lvi. Data types and Conversion Functions
select first_name, last_name, hire_date
TO_CHAR(hire_date, 'YYYY_MM_DD')
from employee;

select TO_DATE('2017_05_28', 'YYYY_MM_DD')
from dual;

select TO_NUMBER('200')
from dual;


-- lvi. THe CASE statements
select product_id, product_name, price,
CASE
WHEN price > 200 THEN 'Over 200'
WHEN price > 100 AND price <= 200 THEN 'Between 100 and 200'
WHEN price > 50 AND price <= 100 THEN 'Between 50 and 100'
ELSE 'Under 50'
END price_group
from product;

select customer_id, first_name, last_name, address_state,
CASE 
WHEN address_state IN ('NY', 'SC', 'FL', 'IN') THEN 'East'
WHEN address_state IN ('CA', 'OR', 'TX') THEN 'West'
ELSE 'Unknown'
END state_group
from customer;

-- what are subqueries

--lix. single row subqueries
select employee_id, first_name, last_name, salary
from employee
where salary > (
    select AVG(salary)
    from employee
);

--lx. multi row subqueries
select employee_id, first_name, last_name, department_id
from employee
where department_id IN (
    select department_id
    from department
    where department_name IN ('Sales', 'Finance')
);



--lxi. Inserting DATA
select *
from employee
where employee_id = 301;

INSERT INTO employee
VALUES (302, 'Matt', 'Johnson', 1, 82000, 14, '10-JAN-2017');

INSERT ALL
INSERT INTO employee (employee_id, first_name, last_name, department_id) VALUES (303, 'Mark', 'Spencer', 4);
INSERT INTO employee (employee_id, first_name, last_name, department_id) VALUES (304, 'Simone', 'Fletvher', 3);
INSERT INTO employee (employee_id, first_name, last_name, department_id) VALUES (305, 'Alison', 'Smith', 8);
select * from dual;

--lxii. inserting data from another table
select frist_name, last_name
from customer
where customer_id = 1;

INSERT INTO employee (employee_id, first_name, last_name) 
select 250, first_name, last_name
from customer
where customer_id = 1;

select * 
from employee
where employee_id = 250;

--lxii. updating data
select * 
from employee
where employee_id = 85;

update employee
set salary = 80000
where employee_id = 85;

select * 
from employee
where employee_id IN (102,59,16);

update employee 
set manager_id = 30, salary = salary +5000
where employee_id IN (102,59,16);

--lxiv. deleting data
select * 
from employee

select * 
from employee
where last_name = 'Larson';

delete from employee
where last_name = 'Larson';


--lxv. commit and rollback

insert into product (product_id, product_name, price, department_id)
values (12, 'Large Table', 220.50, 2);

select * 
from product

COMMIT;

insert into product (product_id, product_name, price, department_id)
values (15, 'Red Chair', 52, 6);

ROLLBACK;

--lxvi. truncating data
select * 
from customer_order

TRUNCATE TABLE customer_order;

ROLLBACK;

--lxvii. create a table

create table job_role (
job_role_id NUMBER(10),
role_name VARCHAR2(50),
role_create_date DATE
);

select * 
from job_role;


--lxviii. alter table

alter table job_role
ADD job_description VARCHAR2(200);

select * 
from job_role;

alter table job_role
DROP COLUMN job_description;

alter table job_role
RENAME COLUMN role_name to job_title;

alter table job_role
RENAME to job_title;

select * 
from job_title;


--lxix. drop table 

DROP TABLE job_title;

select * 
from job_title;

