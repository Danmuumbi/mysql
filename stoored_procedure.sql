-- Set a new delimiter to handle the procedure's body without interference from the default ';' delimiter
-- This allows the entire procedure to be defined as a single statement
DELIMITER $$

-- Create a stored procedure named 'GET_students_info'
CREATE PROCEDURE GET_students_info()--to get by their keys = CREATE PROCEDURE GET_students_info(IN id INT),where student_id = id
BEGIN
    -- The procedure's body: Select all columns from the 'students' table
    SELECT * FROM students;
END$$

-- Reset the delimiter back to the default ';'
DELIMITER ;

-- Instructions:
-- To execute this file and create the procedure, run the following command in your terminal:
-- mysql -u root -p practice < /path/to/your/sql/file/create_procedure.sql

-- After creating the procedure, you can call it to get the students' information.
-- In the MySQL terminal, use:
-- CALL GET_students_info();
--to DROP A PROCEDURE USE:DROP PROCEDURE and then the procedure name

-- Expected Output:
-- +----+------------+-------------+-----------------+---------------------------+-------+----------------+
-- | id | first_name | second_name | student_address | email                     | marks | student_status |
-- +----+------------+-------------+-----------------+---------------------------+-------+----------------+
-- |  1 | John       | Doe         | New York        | john_doe@example.com      |    85 | Passed         |
-- |  2 | Jane       | Smith       | Los Angeles     | jane_smith@example.com    |    92 | Passed         |
-- |  3 | Alice      | Johnson     | Chicago         | alice_johnson@example.com |    78 | Failed         |
-- |  4 | Daniel     | Johnson     | Chicago         | daniel_johnson@example.com|    98 | Passed         |
-- |  5 | Felix      | Mutua       | Nairobi         | felix_mutua@example.com   |    88 | Passed         |
-- +----+------------+-------------+-----------------+---------------------------+-------+----------------+
