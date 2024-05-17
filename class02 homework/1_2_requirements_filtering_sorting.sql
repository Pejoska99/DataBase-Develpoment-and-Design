--Homework requirement 1/6


--Find all Employees with FirstName =Ana

SELECT * FROM employee
WHERE firstname = 'Ana';

-- Find all Employees with DateOfBirth greater than ‘01.01.1979’
SELECT * FROM employee
WHERE dateofbirth >'01.01.1979';

--Find all Male Employees

SELECT * FROM employee
WHERE gender = 'M'

--Find all Employees with LastName starting With ‘T’
SELECT * FROM employee
WHERE lastname LIKE 'T%';

--Find all Employees hired in January/2012
SELECT DISTINCT *
FROM employee
WHERE hiredate >= '2012-01-01' AND hiredate < '2012-02-01';

--Find all Employees with LastName starting With ‘T’ hired in January/2013
SELECT DISTINCT * FROM employee
WHERE lastname LIKE 'T%' AND hiredate >= '01.01.2013' AND hiredate < '01.02.2013';

--Find all soy products from the Products table
SELECT * FROM product
WHERE name ILIKE '%soy%';

--Homework requirement 2/6

--Find all Employees with FirstName = starting on letter ‘A’ ordered by Last
--Name

SELECT * FROM employee 
WHERE firstname LIKE '%A'
ORDER BY lastname;

--List all Employees ordered by FirstName
SELECT * FROM employee
ORDER BY firstname

--Find all Male employees ordered by HireDate, starting from the last hired
SELECT * FROM employee
WHERE gender = 'M'
ORDER BY hiredate DESC;

--Find all Employee names with name no longer than 5 characters. (check the
--function for checking the length) sorted from a to z

SELECT * FROM employee
WHERE LENGTH(firstname) <= 5
ORDER BY firstname ASC



--Find all unique region names from the customer table (hint: check what does
--the ‘distinct’ keyword do) sorted from z to a
SELECT DISTINCT regionname FROM customer
ORDER BY regionname DESC;
















