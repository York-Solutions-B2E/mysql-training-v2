/*
    Create a table called "customer" with columns for customer information, including an integer customer ID that
    serves as the primary key, first and last names, an email address that must be unique, a phone number, and an
    address.
*/
CREATE TABLE table_management.customer
(
    id         INT          NOT NULL PRIMARY KEY,
    first_name VARCHAR(50)  NOT NULL,
    last_name  VARCHAR(50)  NOT NULL,
    email      VARCHAR(100) NOT NULL UNIQUE,
    phone      VARCHAR(20),
    address    VARCHAR(200)
);

-- This will insert correctly.
INSERT INTO table_management.customer (id, first_name, last_name, email)
VALUES (1234, 'Jane', 'Doe', 'jane.doe@example.com');

-- This insert will fail the primary key constraint because the customer id already exists in the table.
INSERT INTO table_management.customer (id, first_name, last_name, email)
VALUES (1234, 'John', 'Doe', 'john.doe@example.com');

-- This insert will fail the first name's non null key constraint.
INSERT INTO table_management.customer (id, first_name, last_name, email)
VALUES (4321, NULL, 'Doe', 'john.doe@example.com');

-- This insert will fail the email's unique constraint because the email already exists in the table.
INSERT INTO table_management.customer (id, first_name, last_name, email)
VALUES (4321, 'Jane', 'Doe', 'jane.doe@example.com');

/*
    Create a table called "order_history" with columns for order information, including an integer order ID that serves as the
    primary key and is set to auto-increment, a customer ID that references the 'customer' table, an order date, and a
    total amount.

    Note:
        The naming standard for foreign key constrains can differ between organizations. For this curriculum we will be
        using `fk_<referencing_table_name>_<referenced_table_name>_<referenced_field_name>`.
*/
CREATE TABLE table_management.order_history
(
    id          INT            NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_id INT            NOT NULL,
    order_date  DATE           NOT NULL,
    total       DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_order_history_customer_id FOREIGN KEY (customer_id) REFERENCES customer (id)
);

-- This will insert correctly. *** Notice the primary key was automatically generated. ***
INSERT INTO table_management.order_history (customer_id, order_date, total)
VALUES (1234, '2023-04-07', 542.12);

-- This insert will fail the foreign key constraint because the customer id '-1' does not exist in the customer table
INSERT INTO table_management.order_history (customer_id, order_date, total)
VALUES (-1, '2023-03-03', 123.23);

-- We can no longer delete the customer record with the id 1234 until we remove all fk references to it.
DELETE
FROM table_management.customer
WHERE id = 1234;

-- If we first remove the order referencing the customer...

DELETE
FROM table_management.order_history
WHERE customer_id = 1234;

-- Now we can remove the customer record

DELETE
FROM table_management.customer
WHERE id = 1234;

/*
    Create a table called "products" with columns for product information, including an integer product ID that serves
    as the primary key and is set to auto-increment, a name, a description, a price, a stock quantity that defaults
    to 0, an active status that defaults to true, and a check constraint that verifies a products price is greater than
    $0 before allowing the record into the table.
*/
CREATE TABLE table_management.product
(
    product_id  INT            NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(100)   NOT NULL,
    description TEXT,
    price       DECIMAL(10, 2) NOT NULL,
    stock       INT            NOT NULL DEFAULT 0,
    active      BOOLEAN        NOT NULL DEFAULT true,
    CONSTRAINT ck_price CHECK (price > 0)
);

-- This will insert correctly. *** Notice the stock and active fields are defaulting when not providing a value. ***
INSERT INTO table_management.product (name, price)
VALUES ('Keyboard', 123.98);

-- This insert will fail the check constraint on the price field
INSERT INTO table_management.product (name, description, price)
VALUES ('Free Money', 'Add this to your cart for free money!', -100);