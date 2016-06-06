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
require 'faker'

# CREATE 'grades' database
db = SQLite3::Database.new("grade_data.db")
# db.results_as_hash = true

# ASSIGN variables code to create 'students', 'courses', and 'grades' tables
create_students_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    year INT,
    good_standing BOOLEAN,
    password VARCHAR(255)
  )
SQL

create_courses_table = <<-SQL
  CREATE TABLE IF NOT EXISTS courses(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    professor VARCHAR(255),
    no_of_students INT
  )
SQL

create_grades_table = <<-SQL
  CREATE TABLE IF NOT EXISTS grades(
    id INTEGER PRIMARY KEY,
    sem_one VARCHAR(255),
    sem_two VARCHAR(255),
    student_id INT,
    course_id INT
  )
SQL

# CREATE all tables passing in above code as arguments
db.execute(create_students_table)
db.execute(create_courses_table)
db.execute(create_grades_table)

#Write METHOD to ADD new student record
def add_student(db, student_name, year, password)
  db.execute("INSERT INTO students (name, year, good_standing, password) VALUES (student_name, year, true, password)")
end

# #Write METHOD to DELETE a student record
# def delete_student(db, name)
#   db.execute("DELETE FROM students WHERE attr=name")
# end

# #Write METHOD to UPDATE a student record
# def delete_student(db, attribute, value, name)
#   db.execute("DELETE FROM students WHERE attr=name")
# end

# UPDATE tablename SET attr02=newvalue02 WHERE attr01=value01

# USER CODE to add student record, allow for admin to type name all lowercase

puts "Enter student's name (First Last):"
student_name = gets.chomp.split.map(&:capitalize).join(' ')
puts "In what year is the student?  Enter a number:"
year = gets.chomp.to_i

add_student(db, student_name, year, Faker::Internet.password(8, 8))

# USER CODE to delete student record

# puts "Enter student's name (First Last):"
# name = gets.chomp.split.map(&:capitalize).join(' ')





#    ASSUMPTIONS MADE:
# 1) Administrators can be trusted to enter data with no security concerns
# 2) Grades of 'E' are the only reason for a student to fall out of 'good_standing'
# 3) No one is looking over the student's shoulder as they enter their password

