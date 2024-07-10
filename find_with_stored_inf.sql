-- Step 1: Set a new delimiter to handle the procedure's body without interference from the default ';' delimiter
-- This allows the entire procedure to be defined as a single statement
DELIMITER $$

-- Step 2: Create a stored procedure named 'GET_students_info_names'
-- This procedure takes an input parameter 'f_name' of type VARCHAR(255) to filter students by their first name
CREATE PROCEDURE GET_students_info_names(IN f_name VARCHAR(255))
BEGIN
    -- Select all columns from the 'students' table where the 'first_name' matches the input parameter 'f_name'
    SELECT * FROM students WHERE first_name = f_name;
END$$

-- Step 3: Reset the delimiter back to the default ';'
DELIMITER ;

-- Instructions:
-- To execute this file and create the procedure, run the following command in your terminal:
-- mysql -u root -p practice < /path/to/your/sql/file/create_procedure.sql

-- Step 4: After creating the procedure, you can call it to get students' information by their first name.
-- In the MySQL terminal, use:
-- CALL GET_students_info_names('John');

-- Expected Output:
-- +----+------------+-------------+-----------------+---------------------------+-------+----------------+
-- | id | first_name | second_name | student_address | email                     | marks | student_status |
-- +----+------------+-------------+-----------------+---------------------------+-------+----------------+
-- |  1 | John       | Doe         | New York        | john_doe@example.com      |    85 | Passed         |
-- +----+------------+-------------+-----------------+---------------------------+-------+----------------+
