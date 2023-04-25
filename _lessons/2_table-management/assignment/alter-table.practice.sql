/*
    Goal:
        Alter a set of tables to match the new requirements.

    Notes:
        The tables that need to be altered are created under the 'table_management' schema. It would be wise to find
        the table and review its structure before attempting to write your queries.
*/

/***************************************************************************************************
    Add a new column named 'email' to the 'user_account' table with a data type of VARCHAR(50) and
    a default value of "N/A".
***************************************************************************************************/



/***************************************************************************************************
    Modify the 'age' column in the 'user_account' table to change the data type from INT to TINYINT.
***************************************************************************************************/



/***************************************************************************************************
    Drop the 'phone_number' column from the 'user_account' table.
***************************************************************************************************/



/***************************************************************************************************
    Add a foreign key constraint to the column named 'profile_picture_id' to the 'user_account' table
    referencing the column named 'id' from the table named 'profile_picture'.
***************************************************************************************************/



/***************************************************************************************************
    Rename the 'name' column in the 'user_account' table to 'first_name'.
***************************************************************************************************/



/***************************************************************************************************
    Add a check constraint to the 'user_account' table to verify that the phone number has 10 digits.
***************************************************************************************************/



/***************************************************************************************************
    Remove the check constraint named 'ck_age' from the named 'user_account'.
***************************************************************************************************/



/***************************************************************************************************
    Rename the 'user_account' table to 'user_info'
***************************************************************************************************/


