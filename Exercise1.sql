CREATE CATALOG IF NOT EXISTS learnbright;

CREATE SCHEMA IF NOT EXISTS learnbright.company;

CREATE TABLE IF NOT EXISTS learnbright.company.employees (
  id INT,
  first_name STRING,
  last_name STRING,
  department STRING,
  salary INT,
  hire_date DATE,
  city STRING
);

INSERT INTO learnbright.company.employees VALUES
(1, 'Alice', 'Green', 'IT', 70000, '2020-01-10', 'Johannesburg'),
(2, 'Brian', 'Lee', 'HR', 45000, '2019-03-22', 'Cape Town'),
(3, 'Cathy', 'Zulu', 'Finance', 65000, '2018-07-18', 'Durban'),
(4, 'David', 'Mokoena', 'Marketing', 50000, '2021-11-05', 'Pretoria'),
(5, 'Eva', 'Naidoo', 'IT', 72000, '2017-09-30', 'Johannesburg');

SELECT * FROM learnbright.company.employees;

--QUESTION 1: Retreive all columns from the employees table
SELECT * FROM learnbright.company.employees;

--QUESTION 2: Find all unique departments
SELECT DISTINCT department
FROM learnbright.company.employees;

--QUESTION 3: Retrieve first and last names ordered by salary ascending
SELECT first_name,
       last_name
FROM learnbright.company.employees
ORDER BY salary ASC;

--QUESTION 4: Retrieve the top 3 highest paid employees
SELECT id,
       first_name,
       last_name,
       salary
FROM learnbright.company.employees
ORDER BY salary DESC
LIMIT 3;

--QUESTION 5: Find employees in the IT department
SELECT id,
       first_name,
       last_name,
       department
FROM learnbright.company.employees
WHERE department = 'IT';

--QUESTION 6: Find employees in Finance with salary > 60000
SELECT *
FROM learnbright.company.employees
WHERE department = 'Finance' AND salary > 60000;

--QUESTION 7: Find employees in HR or Marketing
SELECT id,
       first_name,
       last_name,
       department
FROM learnbright.company.employees
WHERE department = 'HR' OR department = 'Marketing';

--QUESTION 8: Find employees not in IT
SELECT id,
       first_name,
       last_name,
       department
FROM learnbright.company.employees
WHERE department != 'IT';

--QUESTION 9: Find employees in IT, HR or Finance using IN
SELECT id,
       first_name,
       last_name,
       department
FROM learnbright.company.employees
WHERE department IN ('IT', 'HR', 'Finance');

--QUESTION 10: Find employees in IT with salary > 65000 and city Johannesburg
SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
FROM learnbright.company.employees
WHERE department = 'IT' AND salary > 65000 AND city = 'Johannesburg';
