-- Add the 'to_pay' column if it does not already exist
ALTER TABLE students ADD COLUMN to_pay DECIMAL(10, 2);

-- Create the 'update_to_pay_before_marks_change' trigger to update 'to_pay' before the 'marks' value is updated

DELIMITER $$

CREATE TRIGGER update_to_pay_before_marks_change
BEFORE UPDATE ON students
FOR EACH ROW
BEGIN
    -- This trigger updates the 'to_pay' field based on the new 'marks' value before the update is applied to the 'students' table.
    -- Formula: to_pay = marks * 200
    SET NEW.to_pay = NEW.marks * 200;
END$$

DELIMITER ;

-- [[ Trigger Explanation and Examples ]]

-- Triggers in MySQL are special stored procedures that are automatically executed (or "triggered") in response to certain events on a table.
-- They can be used for various purposes including data validation, automatic updates, and logging.

-- Trigger Types:
-- 1. BEFORE INSERT: Executes before a new record is inserted.
-- 2. AFTER INSERT: Executes after a new record is inserted.
-- 3. BEFORE UPDATE: Executes before an existing record is updated.
-- 4. AFTER UPDATE: Executes after an existing record is updated.
-- 5. BEFORE DELETE: Executes before a record is deleted.
-- 6. AFTER DELETE: Executes after a record is deleted.

-- Trigger Example - BEFORE INSERT
-- Purpose: Automatically set default values for missing fields before inserting a new record.
-- CREATE TRIGGER before_insert_student
-- BEFORE INSERT ON students
-- FOR EACH ROW
-- BEGIN
--     IF NEW.marks IS NULL THEN
--         SET NEW.marks = 0;
--     END IF;
-- END;

-- Trigger Example - AFTER INSERT
-- Purpose: Log details of newly inserted records into a separate table.
-- CREATE TRIGGER after_insert_student
-- AFTER INSERT ON students
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO new_students_log (id, first_name, second_name, student_address, email, marks, student_status, inserted_at)
--     VALUES (NEW.id, NEW.first_name, NEW.second_name, NEW.student_address, NEW.email, NEW.marks, NEW.student_status, NOW());
-- END;

-- Trigger Example - AFTER DELETE
-- Purpose: Record details of deleted records for auditing purposes.
-- CREATE TRIGGER after_delete_student
-- AFTER DELETE ON students
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO deleted_students_log (id, first_name, second_name, student_address, email, marks, student_status, deleted_at)
--     VALUES (OLD.id, OLD.first_name, OLD.second_name, OLD.student_address, OLD.email, OLD.marks, OLD.student_status, NOW());
-- END;

-- Trigger Example - BEFORE UPDATE
-- Purpose: Perform validation checks or update related data before an update operation.
-- CREATE TRIGGER before_update_student
-- BEFORE UPDATE ON students
-- FOR EACH ROW
-- BEGIN
--     IF NEW.marks < 0 THEN
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Marks must be non-negative.';
--     END IF;
-- END;

-- Using Triggers in MySQL:
-- Triggers can be very powerful tools for automating tasks and maintaining data integrity in MySQL.
-- Examples of using triggers include:
-- 1. **Data Validation**: Ensure that certain conditions are met before data is inserted or updated.
-- 2. **Automatic Calculations**: Automatically calculate values based on changes to the table data.
-- 3. **Auditing Changes**: Track changes to data by recording changes in log tables.
-- 4. **Enforcing Business Rules**: Apply complex business rules that can't be easily enforced with constraints alone.

-- For more information, refer to the official MySQL documentation:
-- https://dev.mysql.com/doc/refman/8.0/en/triggers.html
-- https://www.mysqltutorial.org/mysql-triggers/
