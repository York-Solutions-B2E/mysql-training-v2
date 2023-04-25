/*
    Goal:
        Create a set of tables to help a school library manage book and movie checkouts.

    Notes:
        The tables should be created under the 'table_management' schema.
*/

/***************************************************************************************************
    Create a table called "student" with columns for student information, including an ID that serves
    as the primary key, first and last names, a date of birth, and a GPA.

    Requirements:
    - Choose appropriate data types for each column.
    - Apply a primary key constraint.
    - Apply a non null constrain on the date of birth field.
    - Apply a non null constraint on the gpa field.
***************************************************************************************************/



/***************************************************************************************************
   Create a table called "book" with columns for book information, including an ID that serves as the
   primary key, a title, an author, a publisher, a publication date, and a price.

    Requirements:
   - Choose appropriate data types for each column.
   - Apply a primary key constraint.
   - Auto increment the primary key.
   - Apply a non null constraint to all fields.
   - Apply a default constraint to the price field with a value of $30.00.
***************************************************************************************************/



/***************************************************************************************************
    Create a table called "movie" with columns for movie information, including an ID that serves as the
    primary key, a title, a director, a release date, and a duration in minutes.

    Requirements:
    - Choose appropriate data types for each column.
    - Apply a primary key constraint.
    - Auto increment the primary key.
    - Apply a non null constraint to all fields.
    - Add a check constraint that verifies the duration is greater than 0.
    - Add a check constraint that verifies the release date was after January 1, 1878.
***************************************************************************************************/



/***************************************************************************************************
    Create a table called "movie_checkout" with columns for movie checkout information, including an ID that
    serves as the primary key, a student ID that references the student table, a movie ID that references the
    movie table, an checkout date, and a due date.

    Hints:
        You can get the current date by using the `CURRENT_DATE()` function.
        (We will discuss sql functions fully later)

    Requirements:
    - Choose appropriate data types for each column.
    - Apply a primary key constraint.
    - Auto increment the primary key.
    - Apply a non null constraint to all fields.
    - Apply a default constraint to the checkout date field with a value equal to the current date.
    - Apply a foreign key constraint on the student_id ID that references the customer table.
    - Apply a foreign key constraint on the book_id ID that references the book table.
    - Use the foreign key naming standard
        fk_<referencing_table_name>_<referenced_table_name>_<referenced_field_name>
***************************************************************************************************/



/***************************************************************************************************
    Create a table called "book_checkout" with columns for book checkout information, including an ID that
    serves as the primary key, a student ID that references the student table, a book ID that references the
    book table, an checkout date, and a due date.

    Hints:
        You can use the `DATE_ADD()` function to add days, weeks, years to a date.
        You can get the current date by using the `CURRENT_DATE()` function.
        (We will discuss sql functions fully later)

    Requirements:
    - Choose appropriate data types for each column.
    - Apply a primary key constraint.
    - Auto increment the primary key.
    - Apply a non null constraint to all fields.
    - Apply a default constraint to the checkout date field with a value equal to the current date.
    - Apply a default constraint to the due date field with a value equal to the current date plus two weeks.
    - Apply a foreign key constraint on the student_id ID that references the customer table.
    - Apply a foreign key constraint on the book_id ID that references the book table.
    - Use the foreign key naming standard
        fk_<referencing_table_name>_<referenced_table_name>_<referenced_field_name>
***************************************************************************************************/


