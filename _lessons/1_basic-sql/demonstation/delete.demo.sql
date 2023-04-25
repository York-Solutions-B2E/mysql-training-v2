/*
   We can delete all the rows from the students table using the following command:

   Note:
       This will delete all the data in the table and should ONLY be used in a development environment.
*/

DELETE
FROM basic_sql.report;

/*
  We can delete a specific row using a WHERE clause.

  Note:
       You should always test your WHERE clause first on a SELECT statement. This will ensure you are only effecting
       the intended records.
*/
DELETE
FROM basic_sql.report
WHERE id = 3;

/*
    We can delete the first two rows of a table using a LIMIT clause.
*/
DELETE
FROM basic_sql.report
LIMIT 2;

/*
    You can combine clauses to create a SQL statement that will only target specif records with complex
    deletion requirements
*/
DELETE
FROM basic_sql.report
WHERE category = 'SALES'
  AND date_created < '2012-06-20'
ORDER BY ID DESC
LIMIT 10;