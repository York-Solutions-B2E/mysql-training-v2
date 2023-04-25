/*
   This statement update the "order_status" value on an existing row with the id of 1.

   Note:
       You must be cautious when modifying data, if you forgot or had a incorrect WHERE
       clause you could update more rows than intended.
*/
UPDATE basic_sql.order_history
SET order_status = 'SHIPPED'
WHERE id = 1;

-- more than one value can be updated at a time
UPDATE basic_sql.order_history
SET order_status = 'CANCELED', total_cost = 0
WHERE id = 2;


/*
    This statement will cast the string '123.10' to a float because the total_cost field is a float.
*/
UPDATE basic_sql.order_history
SET total_cost = '123.10'
WHERE id = 3;

/*
    This statement will fail because he string 'fifteen' cannot be cast to a float.

    Notes:
        The error message is "Data truncated for column 'total_cost' at row 1".
        Truncated means “cut short”, and “data truncated” warnings or errors refer to a
        value’s data being cut off at the end during the importing process
        (e.g. a value of “2.9823” being imported as “2.98”). These errors are important
        warnings, because it notifies us that our data has not been imported accurately.
*/
UPDATE basic_sql.order_history
SET total_cost = 'fifteen'
WHERE id = 4;