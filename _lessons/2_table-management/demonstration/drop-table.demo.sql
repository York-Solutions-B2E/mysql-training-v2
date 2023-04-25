/*
    The syntax for the DROP TABLE command is simple, requiring only the table name and optionally schema to be specified
*/
CREATE TABLE table_management.table_to_drop
(
    id   INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data TEXT NOT NULL
);

INSERT INTO table_management.table_to_drop (data)
VALUES ('one'),
       ('two'),
       ('three');

DROP TABLE table_management.table_to_drop;

/*
    There is some additional options that can be included, most common is 'IF EXISTS'.
    The 'IF EXISTS' option can be used to prevent an error message from being displayed if the table does not exist.
*/
DROP TABLE table_management.table_that_does_not_exist;
DROP TABLE IF EXISTS table_management.table_that_does_not_exist;

/*
    A foreign key is a constraint that links a column or a group of columns in one table to a column or
    group of columns in another table. This constraint ensures the integrity of the data by requiring that values in
    the referenced columns must exist in the referenced table. When trying to drop a table that has foreign key
    references, MySQL will generate an error message and prevent the table from being dropped.

    This is because dropping a table with foreign key references could cause data inconsistencies and violate data
    integrity constraints. To successfully drop a table with foreign key references, you must first remove the foreign
    key constraints by dropping or modifying the referring table(s).
*/
CREATE TABLE table_management.child_table
(
    id   INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE table_management.parent_table
(
    id       INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    child_id INT NOT NULL,
    CONSTRAINT fk_parent_table_child_table_id FOREIGN KEY (child_id) REFERENCES child_table (id)
);

INSERT INTO table_management.child_table(name)
VALUES ('Jane Doe');

SELECT *
FROM table_management.child_table;

INSERT INTO table_management.parent_table (child_id)
VALUES (1);

SELECT *
FROM table_management.parent_table;

DROP TABLE table_management.child_table;

DROP TABLE table_management.parent_table;
DROP TABLE table_management.child_table;