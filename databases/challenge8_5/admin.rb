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

# CREATE 'grade_data' database
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
def add_student(db, name, year, password)
  db.execute("INSERT INTO students (name, year, good_standing, password) VALUES (student_name, year, 1, password)")
end

#Write METHOD to DELETE a student record
def delete_student(db, name)
  db.execute("DELETE FROM students WHERE attr=name")
end

# #Write METHOD to UPDATE a student record
# def update_student(db, attribute, newvalue, name)
#   db.execute("UPDATE students SET attribute=newvalue WHERE name=name")
# end


# USER CODE to add student record, allow for admin to type name all lowercase

puts "Enter student's name (First Last):"
name = gets.chomp.split.map(&:capitalize).join(' ')
puts "In what year is the student?  Enter a number:"
year = gets.chomp.to_i

add_student(db, name, year, Faker::Internet.password(8, 8))
puts "#{name} has been added to the database."

# USER CODE to delete student record

# puts "Enter student's name (First Last):"
# name = gets.chomp.split.map(&:capitalize).join(' ')
# puts "In what year is the student?  Enter a number:"
# year = gets.chomp.to_i

# delete_student(db, name)
# puts "#{name} has been deleted from the database."

# USER CODE to update student record

# puts "Enter student's name (First Last):"
# student_name = gets.chomp.split.map(&:capitalize).join(' ')
# puts "What would you like to update? Enter 'name', 'year', or 'password'. "
# response = gets.chomp

# if response == 'name'
# 	puts "What is the new name by which the student is known?"
# 	new_name = gets.chomp
# 	db.execute("UPDATE students SET name=new_name WHERE name=student_name")
    
# elsif response == 'year'
# 	current_year = db.execute("SELECT students.year FROM students WHERE name=student_name")
# 	current_year = current_year.to_i += 1
# 	db.execute("UPDATE students SET year=current_year WHERE name=student_name")

# else
# 	new_password = Faker::Internet.password(8, 8)
#     db.execute("UPDATE students SET password=new_password WHERE name=student_name")
# end

# puts "#{name}'s record has been updated."

#    ASSUMPTIONS MADE:
# 1) Administrators can be trusted to enter data with no security concerns
# 2) Grades of 'E' are the only reason for a student to fall out of 'good_standing'
# 3) No one is looking over the student's shoulder as they enter their password
# 4) In professor's grade entry, selective admissions policy prevents two students sharing a name
# 5) Impressive professor hiring guraentees they enter their course numbers accurately




