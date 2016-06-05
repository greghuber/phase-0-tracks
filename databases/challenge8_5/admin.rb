# ADMIN PAGE
#
# Create database to store and connect students, their courses and their grades.
# 		STUDENTS table will store name, year in school, status in "good standing",
# 		password granting them limited access to their grades
# 		COURSES table will store course name, professor, and number of students
# 		GRADES table will be a junction table , and will store grades for 
#  		semesters 1 & 2 and id links to the STUDENTS and COURSES tables 
#
# Create methods and write user code to allow administrators to perform the following:
#  		CREATE, UPDATE & DELETE student records.
#  		CREATE, UPDATE & DELETE course records.

require 'sqlite3'

# CREATE 'grades' database
db = SQLite3::Database.new("grade_data.db")
db.results_as_hash = true

# CREATE 'students' table
create_students_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    year INT,
    good_standing BOOLEAN,
    password VARCHAR(255)
  )
SQL

# CREATE 'courses' table
create_courses_table = <<-SQL
  CREATE TABLE IF NOT EXISTS courses(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    professor VARCHAR(255),
    no_of_students INT
  )
SQL

# CREATE 'grades' table
create_grades_table = <<-SQL
  CREATE TABLE IF NOT EXISTS grades(
    id INTEGER PRIMARY KEY,
    sem_one VARCHAR(255),
    sem_two VARCHAR(255),
    student_id INT,
    course_id INT
  )
SQL

# Create 'students' and 'courses' tables
db.execute(create_students_table)
db.execute(create_courses_table)
db.execute(create_grades_table)
