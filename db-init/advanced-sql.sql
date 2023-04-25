DROP DATABASE IF EXISTS advanced_sql;
CREATE DATABASE advanced_sql;
USE advanced_sql;


CREATE TABLE account
(
    id           INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name   VARCHAR(50) NOT NULL,
    last_name    VARCHAR(50) NOT NULL,
    birthdate    DATE        NOT NULL,
    phone_number VARCHAR(10) NOT NULL
);

CREATE TABLE product
(
    id           INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name         VARCHAR(150) NOT NULL,
    cost         FLOAT        NOT NULL,
    phone_number VARCHAR(10)  NOT NULL
);

CREATE TABLE finish_color
(
    id          INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(150) NOT NULL,
    cost        FLOAT        NOT NULL,
    red_value   INT          NOT NULL,
    green_value INT          NOT NULL,
    blue_value  INT          NOT NULL
);

CREATE TABLE order_history
(
    id           INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    account_id   INT  NOT NULL,
    create_date  DATE NOT NULL,
    sale_price   INT  NOT NULL,
    order_status ENUM ('PROCESSING', 'SHIPPED', 'COMPLETED', 'CANCELED'),
    CONSTRAINT fk_order_account_id FOREIGN KEY (account_id) REFERENCES account (id)
);

CREATE TABLE shipping_history
(
    tracking_number  INT NOT NULL PRIMARY KEY,
    order_history_id INT NOT NULL,
    cost             INT NOT NULL,
    CONSTRAINT fk_shipping_history_order_history_id FOREIGN KEY (order_history_id) REFERENCES order_history (id)
);

CREATE table order_product
(
    id              INT   NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id      INT   NOT NULL,
    order_id        INT   NOT NULL,
    finish_color_id INT   NOT NULL,
    quantity        INT   NOT NULL,
    price           FLOAT NOT NULL,
    CONSTRAINT fk_order_product_product_id_id FOREIGN KEY (product_id) REFERENCES product (id),
    CONSTRAINT fk_order_product_order_history_id FOREIGN KEY (order_id) REFERENCES order_history (id),
    CONSTRAINT fk_order_product_finish_color_id FOREIGN KEY (finish_color_id) REFERENCES finish_color (id)
);

INSERT INTO account (first_name, last_name, birthdate, phone_number)
VALUES ('John', 'Doe', '1990-05-01', '1234567890'),
       ('Jane', 'Doe', '1992-02-14', '2345678901'),
       ('Bob', 'Smith', '1985-11-30', '3456789012'),
       ('Alice', 'Johnson', '1988-08-15', '4567890123'),
       ('Tom', 'Williams', '1995-01-20', '5678901234'),
       ('Emily', 'Davis', '1997-07-03', '6789012345'),
       ('James', 'Lee', '1984-04-12', '7890123456'),
       ('Sarah', 'Brown', '1991-09-25', '8901234567'),
       ('David', 'Jones', '1993-12-18', '9012345678'),
       ('Linda', 'Miller', '1998-06-07', '0123456789'),
       ('Michael', 'Wilson', '1996-03-08', '1111111111'),
       ('Karen', 'Anderson', '1987-10-17', '2222222222'),
       ('Steven', 'Jackson', '1989-12-23', '3333333333'),
       ('Megan', 'Taylor', '1994-09-11', '4444444444'),
       ('Brandon', 'Brown', '1999-05-29', '5555555555'),
       ('Rachel', 'Thomas', '1990-07-27', '6666666666'),
       ('Andrew', 'Harris', '1992-11-05', '7777777777'),
       ('Rebecca', 'White', '1986-06-02', '8888888888'),
       ('Kevin', 'Martin', '1997-02-19', '9999999999'),
       ('Amanda', 'Scott', '1988-04-09', '0000000000');

INSERT INTO product (name, cost, phone_number)
VALUES ('Banana Peel Slipper', 12.99, '555-1234'),
       ('Balding Wig', 24.99, '555-5678'),
       ('Invisible Cloak', 49.99, '555-9876'),
       ('Self-Stirring Pot', 29.99, '555-5432'),
       ('Unicorn Horn', 9.99, '555-8765'),
       ('Portable Black Hole', 199.99, '555-2345'),
       ('Disappearing Ink Pen', 6.99, '555-7890'),
       ('Inflatable Dartboard', 39.99, '555-4321'),
       ('Alien Abduction Insurance', 99.99, '555-6789'),
       ('Remote Control Flying Fish', 34.99, '555-3456'),
       ('Screaming Goat Toy', 14.99, '555-9012'),
       ('Toilet Golf Game', 19.99, '555-4567'),
       ('Fake Parking Tickets', 8.99, '555-7891'),
       ('Pet Necktie', 12.99, '555-2345'),
       ('Solar-Powered Flashlight', 29.99, '555-8901'),
       ('Sushi Socks', 9.99, '555-3456'),
       ('Baby Mop Onesie', 22.99, '555-6789'),
       ('Pizza Sleeping Bag', 59.99, '555-1234'),
       ('Dinosaur Taco Holder', 12.99, '555-9012');

INSERT INTO finish_color (name, cost, red_value, green_value, blue_value)
VALUES ('Red', 25.00, 255, 0, 0),
       ('Green', 20.00, 0, 255, 0),
       ('Blue', 18.00, 0, 0, 255),
       ('Yellow', 22.00, 255, 255, 0),
       ('Purple', 28.00, 128, 0, 128),
       ('Pink', 21.50, 255, 192, 203),
       ('Orange', 24.50, 255, 165, 0),
       ('Black', 15.00, 0, 0, 0),
       ('White', 16.00, 255, 255, 255),
       ('Gray', 19.00, 128, 128, 128),
       ('Brown', 23.00, 165, 42, 42),
       ('Cyan', 20.50, 0, 255, 255),
       ('Magenta', 27.50, 255, 0, 255),
       ('Lime', 17.50, 0, 255, 0),
       ('Teal', 19.50, 0, 128, 128),
       ('Maroon', 22.50, 128, 0, 0),
       ('Navy', 21.00, 0, 0, 128),
       ('Olive', 26.00, 128, 128, 0),
       ('Silver', 18.50, 192, 192, 192),
       ('Gold', 29.00, 255, 215, 0);

INSERT INTO order_history (account_id, create_date, sale_price, order_status)
VALUES (1, '2023-04-01', 54.99, 'PROCESSING'),
       (1, '2023-04-02', 39.99, 'SHIPPED'),
       (2, '2023-04-02', 119.99, 'COMPLETED'),
       (3, '2023-04-03', 24.99, 'CANCELED'),
       (4, '2023-04-03', 89.99, 'PROCESSING'),
       (5, '2023-04-04', 44.99, 'SHIPPED'),
       (6, '2023-04-05', 29.99, 'COMPLETED'),
       (7, '2023-04-05', 74.99, 'PROCESSING'),
       (8, '2023-04-06', 54.99, 'SHIPPED'),
       (9, '2023-04-07', 14.99, 'COMPLETED'),
       (10, '2023-04-08', 99.99, 'PROCESSING'),
       (11, '2023-04-09', 39.99, 'SHIPPED'),
       (12, '2023-04-10', 69.99, 'COMPLETED'),
       (13, '2023-04-10', 149.99, 'PROCESSING'),
       (14, '2023-04-11', 44.99, 'SHIPPED'),
       (15, '2023-04-12', 19.99, 'COMPLETED'),
       (16, '2023-04-13', 64.99, 'PROCESSING'),
       (17, '2023-04-13', 99.99, 'SHIPPED'),
       (18, '2023-04-14', 29.99, 'COMPLETED'),
       (19, '2023-04-15', 84.99, 'PROCESSING');

INSERT INTO shipping_history (tracking_number, order_history_id, cost)
VALUES (1002, 2, 7.99),
       (1004, 4, 9.99),
       (1005, 5, 12.99),
       (1006, 6, 8.99),
       (1007, 7, 11.99),
       (1008, 8, 6.99),
       (1009, 9, 14.99),
       (1010, 10, 13.99),
       (1011, 11, 11.99),
       (1012, 12, 12.99),
       (1013, 13, 10.99),
       (1014, 14, 9.99),
       (1015, 15, 14.99),
       (1016, 16, 8.99),
       (1017, 17, 11.99),
       (1018, 18, 15.99),
       (1019, 19, 12.99),
       (1020, 20, 13.99);

INSERT INTO order_product (product_id, order_id, finish_color_id, quantity, price)
VALUES
  (1, 1, 1, 2, 25.98),
  (1, 1, 2, 1, 12.99),
  (2, 1, 1, 1, 24.99),
  (3, 2, 3, 1, 49.99),
  (3, 2, 4, 3, 149.97),
  (4, 2, 5, 2, 59.98),
  (5, 3, 6, 2, 19.98),
  (6, 3, 2, 1, 199.99),
  (7, 3, 1, 3, 20.97),
  (8, 4, 3, 1, 39.99),
  (9, 4, 4, 2, 199.98),
  (10, 4, 5, 1, 34.99),
  (11, 5, 6, 4, 59.96),
  (12, 5, 2, 1, 19.99),
  (13, 5, 1, 2, 13.98),
  (14, 6, 3, 3, 38.97),
  (15, 6, 4, 1, 12.99),
  (16, 6, 5, 2, 59.98),
  (17, 7, 6, 1, 29.99),
  (18, 7, 2, 2, 49.98);