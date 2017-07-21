-- Create a new database called "School" this database should have two tables: teachers and students.

-- The students table should have columns for student_id, first_name,last_name, homeroom_number, phone,email, and graduation year.

-- The teachers table should have columns for teacher_id, first_name, last_name,

-- homeroom_number, department, email, and phone.

-- The constraints are mostly up to you, but your table constraints do have to consider the following:

--  We must have a phone number to contact students in case of an emergency.
--  We must have ids as the primary key of the tables
-- Phone numbers and emails must be unique to the individual.
-- Once you've made the tables, insert a student named Mark Watney (student_id=1) who has a phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5 as a homeroom number.

-- Then insert a teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is from the Biology department. His contact info is: jsalk@school.org and a phone number of 777-555-4321.

#Create Students Table
CREATE TABLE students(
student_id serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number integer CHECK(homeroom_number > 0),
phone VARCHAR(10) NOT NULL UNIQUE,
email VARCHAR(255) UNIQUE,
graduation_year DATE CHECK(graduation_year > '2016-01-01'));

#Create Teachers table
CREATE TABLE teachers(
teacher_id serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number integer NOT NULL CHECK(homeroom_number > 0),
department VARCHAR(50) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
phone VARCHAR(10) NOT NULL UNIQUE);

#Insert student
INSERT INTO students(student_id, first_name, last_name, homeroom_number, phone, graduation_year)
VALUES (1, 'Mark', 'Watney', 5, 7775551234, '2035-01-01');

#Insert teacher
INSERT INTO teachers(teacher_id, first_name, last_name, homeroom_number, department, email, phone)
VALUES (1, 'Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', 7775554321)