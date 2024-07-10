-- Create a view named 'student_show' to display specific columns from the 'students' table
CREATE VIEW student_show AS
SELECT first_name, marks, to_pay, id
FROM students;

-- [[ View Explanation and Usage ]]

-- What is a View?
-- A view is a virtual table in MySQL that is defined by a SELECT query. It does not store data itself but provides a way to access data from one or more tables.

-- Why Use Views?
-- 1. **Simplify Complex Queries**: You can create a view that combines data from multiple tables or simplifies a complex query.
-- 2. **Enhance Security**: Views can restrict access to specific columns or rows in a table.
-- 3. **Provide a Consistent Interface**: Views can provide a consistent way to access data, even if the underlying tables change.
-- 4. **Data Abstraction**: Abstracts the complexity of the underlying database schema from the user.

-- Common View Operations:
-- 1. **Create a View**:
--    CREATE VIEW view_name AS SELECT column1, column2 FROM table_name WHERE condition;

-- 2. **View Data**:
--    SELECT * FROM view_name;

-- 3. **Update Data Through a View**:
--    You can update data in the underlying table through a view if the view is updatable.

-- 4. **Drop a View**:
--    To remove a view, use the DROP VIEW statement.
--    DROP VIEW student_show;

-- Example Usage:

-- 1. **Display Data from the View**
--    Retrieve all records from the 'student_show' view.
-- SELECT * FROM student_show;

-- 2. **Filter Data in the View**
--    Retrieve records where marks are greater than 80.
-- SELECT * FROM student_show WHERE marks > 80;

-- 3. **Join Views with Other Tables**
--    Create another view to join 'student_show' with another table.
--    CREATE VIEW student_marks_summary AS
--    SELECT student_show.first_name, student_show.marks, courses.course_name
--    FROM student_show
--    JOIN courses ON student_show.id = courses.student_id;

-- More about Views:
-- [MySQL View Documentation](https://dev.mysql.com/doc/refman/8.0/en/views.html)
-- [Creating and Managing Views](https://www.mysqltutorial.org/mysql-view/)

-- Testing the View:
-- After creating the view, you can run the following command to see the data in the 'student_show' view:
-- SELECT * FROM student_show;

-- Ensure to run this after creating the view:
-- SELECT * FROM student_show;
