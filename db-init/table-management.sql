DROP DATABASE IF EXISTS table_management;
CREATE DATABASE table_management;
USE table_management;

CREATE TABLE department
(
    id   INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE employee
(
    id            INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name          TEXT NOT NULL,
    department_id INT  NOT NULL,
    CONSTRAINT fk_employee_department_id FOREIGN KEY (department_id) REFERENCES department (id)
);

INSERT INTO department (name)
VALUES ('Accounting'),
       ('Sales'),
       ('Back Office');

INSERT INTO employee (name, department_id)
VALUES ('John Doe', 1),
       ('Jane Doe', 2),
       ('Adam Street', 3);

CREATE TABLE table_to_alter
(
    id   INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    age INT,
    CONSTRAINT ck_name CHECK ( LENGTH(name) > 3 )
);

CREATE TABLE reference_table
(
    id   INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE user_account
(
    id                 INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name               TEXT NOT NULL,
    age                INT,
    phone_number       TEXT,
    profile_picture_id INT,
    CONSTRAINT ck_age CHECK (age > 0)
);

CREATE TABLE profile_picture
(
    id   INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data BLOB NOT NULL
)