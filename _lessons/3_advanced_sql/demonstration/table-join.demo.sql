/*
    INNER JOIN: This join returns only the rows that have matching values in both tables
*/
SELECT *
FROM advanced_sql.order_history
         INNER JOIN advanced_sql.account ON order_history.account_id = account.id;

SELECT *
FROM advanced_sql.account
         INNER JOIN advanced_sql.order_history ON account.id = order_history.account_id;

/*
    LEFT JOIN: This returns all the rows from the left table and the matching rows from the right table
*/
SELECT *
FROM advanced_sql.order_history oh
         LEFT JOIN advanced_sql.account a ON oh.account_id = a.id;

SELECT *
FROM advanced_sql.account a
         LEFT JOIN advanced_sql.order_history oh ON a.id = oh.account_id;

/*
    RIGHT JOIN: This returns all the rows from the right table and the matching rows from the left table
*/
SELECT *
FROM advanced_sql.order_history oh
         RIGHT JOIN advanced_sql.account a ON oh.account_id = a.id;

SELECT *
FROM advanced_sql.account a
         RIGHT JOIN advanced_sql.order_history oh ON a.id = oh.account_id;

/*
    FULL OUTER JOIN: This returns all the rows from the right table and the matching rows from the left table.

    Note:
        MySQL does not support FULL OUTER JOIN as a separate JOIN type. However, to get the results same to
        FULL OUTER JOIN, you can combine LEFT OUTER JOIN and RIGHT OUTER JOIN.

        The UNION clause combines the result from multiple query blocks into a single result set.
*/
SELECT *
FROM advanced_sql.order_history oh
         LEFT JOIN advanced_sql.account a ON oh.account_id = a.id
UNION
SELECT *
FROM advanced_sql.order_history oh
         RIGHT JOIN advanced_sql.account a ON oh.account_id = a.id;