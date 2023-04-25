/*
    To retrieve all data from the "employee" table, we can use the following SELECT statement.
    This will return all rows and columns in the "employee" table.
 */
SELECT *
FROM basic_sql.employee;

/*
    To retrieve specific columns, we can list them after the SELECT keyword, separated by commas.
    For example, to retrieve only the "first_name" and "last_name" columns, we can use the following SELECT statement.
*/
SELECT first_name, last_name
FROM basic_sql.employee;

/*
 To filter the data based on specific conditions, we can use the WHERE clause.
 For example, to retrieve all employee with a salary greater than 50000, we can use the following SELECT statement.
*/

SELECT *
FROM basic_sql.employee
WHERE salary > 50000;

/*
 You can also use any logical operator (e.g. =, <, >, LIKE, IS NOT NULL, ETC.) to help filer for your specific conditions.
*/

-- Find all employees that have 'john.doe@example.com' as their email
SELECT first_name, last_name, salary, department_id
FROM basic_sql.employee
WHERE email = 'john.doe@example.com';

-- Find all employees that have been hired after 2012-03-02
SELECT first_name, last_name, hire_date
FROM basic_sql.employee
WHERE hire_date > '2012-03-02';

-- Find all employees that have salary under $90,000
SELECT first_name, last_name, salary
FROM basic_sql.employee
WHERE salary < 90000;

-- Find all employees that have a first name starting with J
SELECT *
FROM basic_sql.employee
WHERE first_name LIKE 'J%';

-- Find all employees that have been terminated
SELECT first_name, last_name, termination_date
FROM basic_sql.employee
WHERE termination_date IS NOT NULL;

/*
 We can also use logical operators such as AND and OR to combine multiple conditions.
*/
SELECT *
FROM basic_sql.employee
WHERE department_id = 1
  AND salary < 90000;

SELECT *
FROM basic_sql.employee
WHERE (department_id = 2 OR department_id = 1) -- explain why we need the parenthesis here to create intended logical operation
  AND salary < 90000
  AND termination_date IS NULL;

/*
 We can sort the resulting data into the desired order by using a 'ORDER BY' clause.
*/

SELECT first_name, last_name
FROM basic_sql.employee
ORDER BY first_name;

SELECT first_name, last_name
FROM basic_sql.employee
ORDER BY first_name DESC;

SELECT first_name, last_name, hire_date
FROM basic_sql.employee
ORDER BY hire_date;

SELECT first_name, last_name, hire_date
FROM basic_sql.employee
ORDER BY hire_date, first_name;

/*
 We can specify the number resulting data rows using the 'LIMIT' clause.
 This is useful on large tables with thousands of records. Returning a large number of records can impact performance.
 The 'LIMIT' combined with a sort to get the fist 100 or last 10 records matching some filter.
*/

SELECT *
FROM basic_sql.employee
LIMIT 5;

-- find the first employee to be hired
SELECT first_name, last_name, hire_date
FROM basic_sql.employee
ORDER BY hire_date
LIMIT 1;

-- find the last 3 terminated employee
SELECT first_name, last_name, termination_date
FROM basic_sql.employee
WHERE termination_date IS NOT NULL
ORDER BY termination_date DESC
LIMIT 3;

/*
 These are just a few examples of how to use the SELECT statement to retrieve data from a table.
 The SELECT statement is a powerful tool for data retrieval and can be combined with other SQL statements
 to perform complex operations on data.
*/