-- Create an index named 'last_first_name' on the 'students' table
-- This index covers both the 'first_name' and 'second_name' columns
CREATE INDEX last_first_name
ON students(first_name, second_name);

-- [[ Explanation and More About Indexes ]] --

-- What is an Index?
-- An index is a database object that improves the speed of data retrieval operations on a table at the cost of additional space and overhead for data modifications.

-- Why Use Composite Indexes?
-- Composite indexes are used when queries filter or sort on multiple columns.
-- They help to improve the performance of queries that use these columns together in the WHERE clause or as part of a JOIN operation.

-- Example Query Using the Composite Index
-- This query will be optimized using the 'last_first_name' composite index
-- SELECT * FROM students
-- WHERE first_name = 'John' AND second_name = 'Doe';

-- Creating Indexes
-- 1. **Regular Index**:
--    CREATE INDEX index_name ON table_name (column1);

-- 2. **Composite Index**:
--    CREATE INDEX index_name ON table_name (column1, column2);

-- 3. **Unique Index**:
--    CREATE UNIQUE INDEX index_name ON table_name (column1);

-- 4. **Full-Text Index**:
--    CREATE FULLTEXT INDEX index_name ON table_name (column1);

-- 5. **Adding an Index to an Existing Column**:
--    ALTER TABLE table_name ADD INDEX index_name (column1);

-- Viewing Indexes
-- To see a list of indexes for a table:
-- SHOW INDEXES FROM students;

-- Dropping an Index
-- To remove an existing index:
-- DROP INDEX index_name ON table_name;

-- Advanced Index Operations
-- Adding an index to optimize query performance:
-- ALTER TABLE students ADD INDEX idx_full_name (first_name, second_name);

-- Creating a full-text index for text search:
-- CREATE FULLTEXT INDEX idx_fulltext_name ON students (first_name, second_name);

-- Adding a unique index to ensure unique values:
-- CREATE UNIQUE INDEX idx_unique_email ON students (email);

-- More About Indexes
-- [MySQL Index Documentation](https://dev.mysql.com/doc/refman/8.0/en/optimization-indexes.html)
-- [MySQL Indexes Tutorial](https://www.mysqltutorial.org/mysql-index/)
-- [MySQL CREATE INDEX Statement](https://dev.mysql.com/doc/refman/8.0/en/create-index.html)
