DROP DATABASE IF EXISTS basic_sql;
CREATE DATABASE basic_sql;
USE basic_sql;

DROP TABLE IF EXISTS employee;
CREATE TABLE employee
(
    id               INT   NOT NULL,
    first_name       TEXT  NOT NULL,
    last_name        TEXT  NOT NULL,
    email            TEXT  NOT NULL,
    salary           FLOAT NOT NULL,
    department_id    INT   NOT NUll,
    hire_date        DATE  NOT NUlL,
    termination_date DATE
);

INSERT INTO employee (id, first_name, last_name, email, department_id, salary, hire_date, termination_date)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', 1, 75000, '2001-01-01', NULL),
       (2, 'Jane', 'Smith', 'jane.smith@example.com', 1, 80000, '2011-02-15', NULL),
       (3, 'Mike', 'Johnson', 'mike.johnson@example.com', 2, 65000, '2011-02-15', '2018-08-31'),
       (4, 'Sarah', 'Lee', 'sarah.lee@example.com', 3, 70000, '2020-05-01', NULL),
       (5, 'David', 'Kim', 'david.kim@example.com', 2, 85000, '2018-06-15', '2020-01-31'),
       (6, 'Emily', 'Chen', 'emily.chen@example.com', 1, 90000, '2013-08-01', NULL),
       (7, 'Chris', 'Wang', 'chris.wang@example.com', 2, 70000, '2022-01-15', NULL),
       (8, 'Jessica', 'Li', 'jessica.li@example.com', 3, 75000, '2021-02-28', NULL),
       (9, 'Kevin', 'Nguyen', 'kevin.nguyen@example.com', 1, 85000, '2000-04-15', '2005-09-30'),
       (10, 'Amanda', 'Brown', 'amanda.brown@example.com', 2, 80000, '1998-06-01', NULL);

DROP TABLE IF EXISTS customer;
CREATE TABLE customer
(
    id         INT  NOT NULL,
    first_name TEXT NOT NULL,
    last_name  TEXT NOT NULL,
    email      TEXT NOT NULL,
    city       TEXT NOT NULL,
    state      TEXT NOT NUll,
    zip        TEXT NOT NUlL,
    birth_date DATE NOT NULL
);

DROP TABLE IF EXISTS order_history;
CREATE TABLE order_history
(
    id           INT   NOT NULL,
    customer_id  INT   NOT NULL,
    order_date   DATE  NOT NULL,
    total_cost   FLOAT NOT NULL,
    order_status TEXT  NOT NULL
);
INSERT INTO order_history (id, customer_id, order_date, total_cost, order_status)
VALUES (1, 1001, '2023-04-19', 50.00, 'Shipped'),
       (2, 1002, '2023-04-19', 75.00, 'Processing'),
       (3, 1003, '2023-04-20', 120.00, 'Pending'),
       (4, 1004, '2023-04-20', 35.00, 'Shipped'),
       (5, 1005, '2023-04-20', 90.00, 'Processing');

DROP TABLE IF EXISTS report;
CREATE TABLE report
(
    id           INT  NOT NULL,
    title        TEXT NOT NULL,
    category     TEXT NOT NULL,
    date_created DATE NOT NULL
);