# Lesson: Introduction To Relational Database Table Management

## Objective:

- To understand how to create and modify tables.
- To understand the different data types
- To understand data constraints and default values
- To practice create tables via SQL queries.

## Pre-requisites:

- Basic understanding of SQL query's
- Access to the MySQL database container and a connected client.

## Outline:

A relational database table is a collection of data organized in rows and columns, where each row represents a single
record or entity, and each column represents a particular attribute or characteristic of that entity. Tables are the
fundamental building blocks of a relational database system and consist of several components.

#### Components of a Table

- **Table Name** - A unique identifier used to reference the table within the database.

* **Column Names** - Used to define the specific attributes of the entities represented in the table. Each column is
  assigned a data type that specifies the type of data that can be stored in that column, such as text, numbers, or
  dates.

- **Constraints** - Define the rules for the data that can be entered into the table. These constraints can include
  checks
  for data validity, ensuring that each row has a unique identifier, and setting default values for columns.

* **Data** - The information that is entered into the table as rows, each representing a specific instance of the entity
  being represented. By organizing data into tables and defining their components, a relational database system provides
  a powerful tool for managing and manipulating data efficiently and effectively.

#### Naming a Table

Consistency and clarity in naming conventions for relation database tables can be achieved by following several
guidelines. However, it is important to note that the conventions may vary depending on the organization you work for,
and may be subject to alterations or even ignored. Therefore, it is crucial to study the naming conventions that are
specifically used in your development environment to ensure that you are adhering to the appropriate standards.

Here are a few common conventions:

- Descriptive Names: Table names should be descriptive of the data they contain. Avoid using vague or ambiguous
  names
  that don't provide any insight into the table's contents.

* Singular Nouns: It's common to use singular nouns for table names rather than plurals. For example, use "customer"
  instead of "customers".

- Avoiding Reserved Words: Avoid using SQL reserved words as table names to prevent any conflicts or errors. SQL
  reserved words are words that have a special meaning in SQL syntax, such as `SELECT` or `WHERE`.

#### Data Types

In relational databases, data types define the type of data that can be stored in a particular column of a table. These
data types provide a set of rules that determine the range of values that can be entered in a column, and how that data
is stored in the database.

The choice of data type can have an impact on the storage size, performance, and accuracy of the data in a table.
Therefore, it is important to choose the appropriate data type for each column to ensure the integrity and efficiency of
the database.

Common data types in relational databases include

- #### Numeric Data Types
    - INTEGER - Used to store whole numbers.
    - FLOAT / REAL - Used to store decimal numbers.

- #### Character Data Types
    - CHAR - Used to store a single character.
    - VARCHAR - Used to store strings/text.
    - TEXT: Used to store long strings of text.

- #### Time Data Types
    - DATE - Used to store a data
    - TIMESTAMP - Used to store a date and time

- #### Other Data Types
    - BOOLEAN - Used to store true/false values.
    - BLOB - Used to store large binary data, such as images or multimedia files.
    - ENUM - Used to store a set of predefined values.

It is always advisable to refer to the documentation of the specific database system you are working with to understand
the availability and functionality of different data types. This is because the datatype options and behavior may vary
across different database systems. Therefore, prior to selecting a datatype for your column, it is recommended to review
the documentation to ensure that the chosen datatype is compatible with the database system and can serve the intended
purpose.

### Constraints

In a relational database, constraints are rules that restrict the type or range of data that can be inserted, updated,
or deleted in a table. Constraints help maintain data integrity by ensuring that data is consistent, accurate, and
conforms to a specific set of rules or standards.

Common constraints in relational databases include

- Primary Key Constraint - ensures that each row in a table has a unique identifier.
- Foreign Key Constraint - ensures that data in one table references data in another table.
- Unique Constraint - ensures that a column or a set of columns contains unique values.
- Check Constraint - validates data against a specified condition or set of conditions.
- Non Null Constraint - ensures that a column cannot contain null or empty values.

By using constraints, data inconsistencies and errors can be prevented, and the quality of data in a database can be
improved.

### Create a Table

A table is created by defining its name and the columns it will contain, along with their respective data types and any
constraints that may apply.

The name of a table should be chosen to reflect its purpose and to be descriptive enough to
allow for easy identification.

The columns of a table represent the different types of data that will be stored within
it, and the data types must be chosen based on the nature of the data to be stored.

Additionally, constraints can be applied to ensure data integrity and prevent errors, such as requiring that a column
cannot be empty, or that each row must have a unique value for a particular column. Once the table has been defined, it
can be populated with data using insert statements, and queries can be run to retrieve and manipulate the data.

###### Refer to ```create-table.demo.sql``` for demonstration examples

###### Refer to ```create-table.practice.sql``` for the practice project

###### Refer to ```create-table.key.sql``` for a solved practice project example

### Drop a Table

Dropping a table means deleting it permanently from the database. This action cannot be undone, so it should
be used with caution. The DROP TABLE statement is used to remove a table and all its associated data, indexes, triggers,
and privileges from the database. Once the table is dropped, any data it contained will be lost forever, so it is
important to make sure that the table being dropped is the correct one.

###### Refer to ```drop-table.demo.sql``` for demonstration examples

###### Refer to ```drop-table.practice.sql``` for the practice project

###### Refer to ```drop-table.key.sql``` for a solved practice project example

### Alter a Table

Altering a table refers to making changes to the existing structure or schema of the table. This can involve adding,
removing, or altering columns, indexes, constraints, or other table properties. Altering a table can be necessary to
adapt to changing requirements or to optimize the database schema. For example, if a table needs to store additional
information, a new column can be added to accommodate the new data.

Similarly, if a column is no longer needed, it can be removed from the table. Altering a table can be done using the
ALTER TABLE statement, which allows the user to specify the modifications to be made. It's important to note that
modifying a table can have an impact on the existing data, so it should be done with caution.

###### Refer to ```alter-table.demo.sql``` for demonstration examples

###### Refer to ```alter-table.practice.sql``` for the practice project

###### Refer to ```alter-table.key.sql``` for a solved practice project example

### Conclusion

Understanding how to create and manage tables is an essential skill. Creating tables involves defining the table's name
and its components, such as column names, data types, and constraints. Naming conventions should be adhered to, and the
appropriate data type should be selected for each column to ensure the integrity and efficiency of the database.
Constraints, such as primary keys, foreign keys, and check constraints, help maintain data consistency and accuracy.
Finally, creating a table is done by defining its name, columns, data types, and constraints, which helps to prevent
data inconsistencies and improve data quality in a database.