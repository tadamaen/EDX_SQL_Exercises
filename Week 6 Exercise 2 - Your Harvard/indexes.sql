-- In indexes.sql, write a set of SQL statements that create indexes which will speed up typical queries on the harvard.db database.
-- The number of indexes you create, as well as the columns they include, is entirely up to you.
-- Be sure to balance speed with disk space, only creating indexes you need.

-- When engineers optimize a database, they often care about the typical queries run on the database.
-- Such queries highlight patterns with which a database is accessed, thus revealing the best columns and tables
-- on which to create indexes.

-- Creating the indexes (as practice)

-- First Index: Primary id of students table
CREATE INDEX "student_id"
ON "students"("id");

-- Second Index: Primary id of courses table
CREATE INDEX "courses_id"
ON "courses"("id");

-- Third Index: Primary id of enrollments table
CREATE INDEX "enrollment_id_by_student_and_course"
ON "enrollments"("id", "student_id", "course_id");

-- Fourth Index: Primary id of requirements table
CREATE INDEX "requirements_id"
ON "requirements"("id");

-- Fifth Index: Primary id of satisfies table
CREATE INDEX "satisfies_id_course_requirement_pair"
ON "satisfies"("id", "course_id", "requirement_id");

-- There are many answers to this question! 
