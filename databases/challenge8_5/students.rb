# STUDENT PAGE
#
# Allow students entering valid name and password to view their grades
#
# Next plan was to include code to allow student to change their password
#   to something more memorable.
# Also considered was assigning numerical values to grades to calculate GPA
#   though that would logically officially exist in another database and be 
#   referenced here.

# Ask student their name and use response to retrieve their official password and
# primary key of their record
# Ask student their password and check it against their official password.
# Give student three tries to enter the proper password

puts "What is your name, first and last?"
student_name = gets.chomp.split.map(&:capitalize).join(' ')

student_pwd = db.execute("SELECT password FROM students WHERE name=student_name")
student_primary_key = db.execute("SELECT id FROM students WHERE name=student_name")

correct_pwd = false
pwd_count = 0

while pwd_count < 3  && correct_pwd == false

  puts "Enter your password to access your grades"
  entered_password = gets.chomp

    if entered_password = student_pwd
      
      correct_pwd = true

      puts "The following are your grades"
      p db.execute("SELECT courses.name, grades.sem_one, grades.sem02 FROM courses JOIN grades ON grades.student_id = student_primary_key")
    else
     pwd_count += 1
    end
end

if correct_pwd != true
  puts "That's three failed attempts.  Good-bye."
end