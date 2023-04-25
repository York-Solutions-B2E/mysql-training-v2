/*
 This statement inserts a new row into the "employee" table with the following values:

    id: 1234
    first_name: 'Adam'
    last_name: 'Street'
    email: 'adam.street@example.com'
    salary: 90000
    department_id: 3
    hire_date: '2023-04-07'

    Note:
        The columns are specified in parentheses after the table name, and the values are specified in parentheses
        after the keyword "VALUES". The values must be in the same order as the columns.
 */

INSERT INTO basic_sql.employee (id, first_name, last_name, email, salary, department_id, hire_date)
VALUES (1234, 'Adam', 'Street', 'adam.street@example.com', 90000, 3, '2023-04-07');

/*
    You can also insert multiple rows at once by separating the sets of values with commas
*/

INSERT INTO basic_sql.employee (id, first_name, last_name, email, salary, department_id, hire_date, termination_date)
VALUES (1235, 'Linda', 'Johnson', 'linda.johnson@example.com', 55000.00, 3, '2020-01-15', NULL),
       (1236, 'Robert', 'Smith', 'robert.smith@example.com', 65000.00, 2, '2019-03-22', NULL),
       (1237, 'Maria', 'Garcia', 'maria.garcia@example.com', 45000.00, 1, '2021-02-01', '2022-09-30'),
       (1238, 'David', 'Lee', 'david.lee@example.com', 75000.00, 4, '2018-06-05', NULL),
       (1239, 'Samantha', 'Brown', 'samantha.brown@example.com', 60000.00, 3, '2019-09-10', NULL);

