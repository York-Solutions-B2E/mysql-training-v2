/*
    Add a column to an existing table:
*/
ALTER TABLE table_management.table_to_alter
    ADD my_column_name TEXT;

/*
    Modify the data type of a column:
*/
ALTER TABLE table_management.table_to_alter
    MODIFY my_column_name INT NOT NULL DEFAULT 10;

/*
    Rename a column:
*/
ALTER TABLE table_management.table_to_alter RENAME COLUMN my_column_name TO new_column_name;

/*
    Change the default value of a column:
*/
ALTER TABLE table_management.table_to_alter
    ALTER COLUMN new_column_name SET DEFAULT 20;

/*
    Add a foreign key constraint to an existing table:
*/
ALTER TABLE table_management.table_to_alter
    ADD CONSTRAINT fk_table_to_alter_reference_table_id FOREIGN KEY (new_column_name) REFERENCES reference_table (id);

/*
    Remove a foreign key constraint from an existing table:
*/
ALTER TABLE table_management.table_to_alter
    DROP FOREIGN KEY fk_table_to_alter_reference_table_id;

/*
    Drop a column from an existing table:
*/
ALTER TABLE table_management.table_to_alter
    DROP COLUMN new_column_name;

/*
    Change the name of an existing table:
*/
ALTER TABLE table_management.table_to_alter RENAME TO table_management.new_table_name;

/*
  Add a check constraint to an existing table:
 */
ALTER TABLE table_management.table_to_alter
    ADD CONSTRAINT ck_age CHECK (age > 0);

/*
  Remove a check constraint from an existing table:
 */
ALTER TABLE table_management.table_to_alter
    DROP check ck_name;
