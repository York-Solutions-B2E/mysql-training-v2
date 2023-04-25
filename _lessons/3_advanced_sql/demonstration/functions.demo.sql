/*
    LENGTH():  Returns the length of a string.
*/
SELECT LENGTH(first_name)
FROM advanced_sql.account a;

/*
    CONCAT():  Concatenates two or more strings into a single string.

     NOTE:
        We are utilizing an alias, which is a short-term name allocated to a table or column
        in a query to improve the clarity and comprehensibility of the output. Aliases are typically
        employed to rename a table or column in the SELECT statement, but they may also be used in other
        sections of a SQL query.
*/
SELECT CONCAT(first_name, ' ', last_name) AS name
FROM advanced_sql.account;

/*
    UPPER():  Converts a string to uppercase.
    LOWER(): Converts a string to lowercase.

    NOTE:
        Notice how we can combine functions.
*/
SELECT CONCAT(
               UPPER(first_name),
               ' ',
               LOWER(last_name)
           ) AS name
FROM advanced_sql.account;


/*
    SUBSTRING():  Extracts a part of a string.
*/
SELECT first_name,
       last_name,
       CONCAT(
               SUBSTR(first_name, 1, 1),
               SUBSTR(last_name, 1, 1)
           ) as initials
FROM advanced_sql.account;

/*
    COUNT() - Returns the number of rows in a table or the number of non-null values in a column:
*/
SELECT COUNT(*) AS account_count
FROM advanced_sql.account;

/*
    SUM() - Returns the total sum of all values in a specified column or group of columns in a table.

    Note:
        You can also use SUM() with a GROUP BY clause to calculate the sum of values for each group.
*/
SELECT SUM(sale_price) AS total_sales
FROM advanced_sql.order_history;

SELECT account_id, SUM(sale_price) AS total_sales
FROM advanced_sql.order_history
GROUP BY (account_id);

/*
    MAX() - Returns the largest value in a column.
*/

SELECT MAX(sale_price) AS largest_sale
FROM advanced_sql.order_history;

SELECT account_id, MAX(sale_price) AS largest_sale
FROM advanced_sql.order_history
GROUP BY (account_id);

/*
    MIN() - Returns the smallest value in a column.
*/

SELECT MIN(sale_price) AS smallest_sale
FROM advanced_sql.order_history;

SELECT account_id, MIN(sale_price) AS smallest_sale
FROM advanced_sql.order_history
GROUP BY (account_id);

/*
    IF() - This function is used to evaluate a condition and return one value if the condition is true,
           and another value if it's false.
*/

SELECT name,
       red_value,
       IF(finish_color.red_value >= 60, 'IS RED TINTED', 'IS NOT RED TINTED') as result
FROM advanced_sql.finish_color;

/*
    CASE: This statement is used to evaluate a series of conditions and return a corresponding value for each condition.

    Note:
        This is technically not a function but a statement. The key difference between a statement and a
        function is that a statement performs an action on the database and may or may not return a value,
        whereas a function performs a task and always returns a value.
*/

SELECT name,
       red_value,
       CASE
           WHEN red_value >= 200 THEN 'HEAVY RED'
           WHEN red_value >= 150 THEN 'MEDIUM RED'
           WHEN red_value >= 100 THEN 'SMALL RED'
           ELSE 'RED NOT VISIBLE'
           END as red_scale
FROM advanced_sql.finish_color;
