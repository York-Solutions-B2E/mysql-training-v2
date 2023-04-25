# Lesson: Relational Database Overview

## Objective:

- Be able to define a relational database.
- Be able to identify the basic components of a relational database.
- Understand the purpose of primary and foreign keys in establishing relationships between tables.
- Understand the concept of database schemas

## Pre-requisites:

- N/A

## Outline:

A database is a structured collection of data that is stored and organized in a way that allows for efficient retrieval
and management of that data. It can be thought of as an electronic filing system, where information is stored in tables,
with each table containing multiple records or rows, each with a set of attributes or columns. Databases are used in a
variety of applications, including websites, financial systems, and inventory management systems, among others. They
allow users to easily store, access, and manipulate large amounts of data in an organized and efficient manner.

A relational database is a type of database that stores data in tables, which are related to one another. In a
relational database, data is organized into one or more tables, where each table represents a collection of related
data. Each table consists of rows and columns, where each row represents a unique record or instance of the data,
and each column represents a specific attribute or field of the data.

- The relations between tables are established through primary keys and foreign keys. A primary key is a unique
  identifier for each record in a table, and it is used to ensure the integrity of the data. A foreign key is a
  reference to a primary key in another table, and it is used to create relationships between tables. By linking
  tables through primary and foreign keys, a relational database can represent complex relationships between data
  in a structured and efficient manner.

###### Visualizing a relational database can help to explain the concept of tables with relations between them.

Consider a simple database for a bookstore that sells books.

- Without a relational data model the book data table might look like this.

| Book Title            | ISBN          | Publication Date | Price | Author Name         | Author Email           | Author Website           |
|-----------------------|---------------|------------------|-------|---------------------|------------------------|--------------------------|
| To Kill a Mockingbird | 9780446310789 | 1960-07-11       | 9.99  | Harper Lee          | hlee@email.com         | www.harperlee.com        |
| Go Set a Watchman     | 9780062409867 | 2015-07-14       | 8.99  | Harper Lee          | hlee@email.com         | www.harperlee.com        |
| 1984                  | 9780451524935 | 1949-06-08       | 7.99  | George Orwell       | georgeorwell@email.com | www.georgeorwell.com     |
| Animal Farm           | 9780451526342 | 1945-08-17       | 6.99  | George Orwell       | georgeorwell@email.com | www.georgeorwell.com     |
| The Great Gatsby      | 9780743273565 | 1925-04-10       | 8.99  | F. Scott Fitzgerald | fsfitzgerald@email.com | www.fscottfitzgerald.com |
| Pride and Prejudice   | 9780141439518 | 1813-01-28       | 5.99  | Jane Austen         | janeausten@email.com   | www.janeausten.com       |

Notice how data is duplicated increasing storage requirements and making the management of this data more difficult and
error prone.

With a relational data model the data would be split into two tables: "Books" and "Authors".

* The "Books" table might have columns for the book title, ISBN, publication date, and price. Each row in the "Books"
  table represents a unique book.

- The "Authors" table might have columns for the author's name, email address, and website. Each row in the "Authors"
  table represents a unique author.

|       Books Table       |      Authors Table      |
|:-----------------------:|:-----------------------:|
|       Book Title        | Author ID (Primary Key) |
|   ISBN (Primary Key)    |       Author Name       |
|    Publication Date     |      Email Address      |
|          Price          |         Website         |
| Author ID (Foreign Key) |                         |

To establish a relationship between these two tables, we can add a column to the "Books" table called "Author ID".
This column contains a unique identifier that corresponds to the author's row in the "Authors" table. This is an example
of a foreign key relationship.

## Books Table

| Book Title                               | ISBN          | Publication Date | Price | Author ID |
|------------------------------------------|---------------|------------------|-------|-----------|
| To Kill a Mockingbird                    | 9780446310789 | 1960-07-11       | 9.99  | 1         |
| Go Set a Watchman                        | 9780062409867 | 2015-07-14       | 8.99  | 1         |
| 1984                                     | 9780451524935 | 1949-06-08       | 7.99  | 2         |
| Animal Farm                              | 9780451526342 | 1945-08-17       | 6.99  | 2         |
| The Great Gatsby                         | 9780743273565 | 1925-04-10       | 8.99  | 3         |
| Pride and Prejudice                      | 9780141439518 | 1813-01-28       | 5.99  | 4         |
| Harry Potter and the Philosopher's Stone | 9780747532743 | 1997-06-26       | 10.99 | 5         |

## Authors Table

| Author ID | Name                | Email                  | Website                  |
|-----------|---------------------|------------------------|--------------------------|
| 1         | Harper Lee          | hlee@email.com         | www.harperlee.com        |
| 2         | George Orwell       | georgeorwell@email.com | www.georgeorwell.com     |
| 3         | F. Scott Fitzgerald | fsfitzgerald@email.com | www.fscottfitzgerald.com |
| 4         | Jane Austen         | janeausten@email.com   | www.janeausten.org       |
| 5         | J.K. Rowling        | jkrowling@email.com    | www.jkrowling.com        |

In this visualization, the "ISBN" column in the "Books" table is the primary key for that table, while the "Author ID"
column is a foreign key that links to the "Author ID" primary key in the "Authors" table.

## Database Schemas

A schema is a logical container that allows you to organize database objects, such as tables into a logical group.
Schemas act as a namespace, providing a way to group related objects together and separate them from other objects with
the same name that may exist in the same database. By using schemas, you can avoid naming conflicts and improve
the organization and manageability of your database environment.

In addition to providing a logical grouping of objects, schemas can also be used to control access to database objects.
You can assign privileges to specific schemas, allowing you to control who can view, modify, or delete objects within a
particular schema. This makes it easy to implement security policies and grant or revoke privileges at a more granular
level than at the database level.

When creating a schema you are essentially creating a container for your database objects. Once created, you can
reference objects within a schema using the dot notation syntax, such as schema_name.object_name.

Overall, schemas provide a way to organize and manage your database objects, improve security by controlling access to
those objects, and avoid naming conflicts that can arise when objects with the same name exist in the same database
instance.

### Conclusion

A relational database is a structured collection of data organized into tables with rows and columns, allowing for
efficient management and retrieval of data. The relationships between tables are established through primary and foreign
keys, where primary keys are unique identifiers for each record in a table and foreign keys are references to primary
keys in other tables. By splitting the data into multiple tables and establishing relationships between them, a
relational database can represent complex data relationships in an organized and efficient manner. This approach reduces
data redundancy, simplifies data management, and ensures data integrity.

The concept of schemas is an essential aspect of database management that provides a logical container for
organizing related database objects such as tables. Schemas help avoid naming conflicts and improve the manageability of
a database environment. With the ability to assign privileges to specific schemas, schemas also play a crucial role in
controlling access to database objects, making it easier to implement security policies. Using schemas, database
administrators can create a more secure and manageable database environment while also simplifying the way database
objects are referenced within the schema.