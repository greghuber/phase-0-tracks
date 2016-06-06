# PROFESSORS PAGE
#
# Allow professors to log in, then enter grades for as many students as they choose.
#
# Upon professor inputting each student's grades, add a row to the 'grades' table
#   in the 'grade_data' database linked to the student and the course tables.

# Include hashes of professors and their access codes as well as 
#   courses and their course numbers to validate the professors access and
#   ease their data entry.
# Include array of 'valid grades' to test input, and set the validity of the
#   professor and both grades to false until proven otherwise.

prof_passwords = {
	"David Dressler"=> "DRE975",
	"Annemarie Wojcik" => "WOJ389", 
	"David Pelletier" => "PEL826", 
	"Jean Mackenzie" => "MAC285", 
	"John Roberts" => "ROB128",
	"Scott Gregg" => "GRE395",
	"Trent Brown" => "BRO203",
	"Emily Schillerstrom" => "SCH127",
	"Billy Lambrecht" => "LAM462",
	"Wilson Rondini" => "RON283"
}

all_courses = {"Exponential Algebra" => 1902,
  "Quantum Biology" => 2953,
  "Micro Macro Economics" => 4957,
  "Advanced Intro Gym" => 2267,
  "Theory of Trump" => 1505,
  "Psychology of Physics" => 4432,
  "Math Using Big Numbers" => 3525,
  "Beginning Study Hall" => 2830,
  "Intermediate Philosophy" => 3844,
  "English as a First Language" => 1726
}

valid_grades = ['A+','A','A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'D-', 'E', 'none']
valid_grade01 = false
valid_grade02 = false

puts "Please sign in to create or change records."
attempts = 0
valid_prof = false

# Require professor to sign in with name and passcode, allowing for name to be entered lowercase
# Allow three attempts before kicking professor out of program

until attempts == 3 || valid_prof == true
    puts "Enter your name, first and last"
    prof_name = gets.chomp.split.map(&:capitalize).join(' ')
    puts "Enter your password"
    prof_password = gets.chomp
    
    prof_passwords.each do |name, password|
    	if name == prof_name && password == prof_password
    		valid_prof = true
    	end
    end
    if valid_prof != true 
    	puts "Those are not valid entries" 
    end
    attempts += 1
end
  
# Once granting access, loop asking professor to enter grades or exit program.
# If entering grades, ask for student name and course number.  Ask for semester 1 and 2 grades,
# testing responses for validity as well as an 'E' value which will alter status of 'good_standing'. 

if valid_prof

  continue = true
  while continue

    puts "Type your desired action:\n'Enter' (to enter student grades), or 'Exit' (to exit program)"
    response = gets.chomp.capitalize
  
    if response == 'Enter'
    
      puts "Enter the students name."
      student_name = gets.chomp.split.map(&:capitalize).join(' ')
      
      puts "Do you need to see a list of course numbers? Type 'yes' or 'no' "
      answer = gets.chomp

      if answer == "yes"
        all_courses.each do |course, number|
          puts "#{number}: #{course}"
        end
      end
      
      puts "Enter the number for the course you are teaching"
      course_name = all_courses.key(gets.chomp.to_i)
      
      puts "Enter the student's first semester grade?"
      grade01 = gets.chomp
      
      until valid_grade01
        if valid_grades.include? grade01
        	valid_grade01 = true
        else
        	puts "Please enter a valid grade"
        	grade01 = gets.chomp
        end
      end
      
      puts "Enter the student's second semester grade?"
      grade02 = gets.chomp
      
      until valid_grade02
        if valid_grades.include? grade02
        	valid_grade02 = true
        else
        	puts "Please enter a valid grade"
        	grade02 = gets.chomp
        end
      end
      
      if [grade01, grade02].include? "E"
        good_standing = 0
      else
        good_standing = 1
      end
      puts "Professor #{prof_name} has entered the following grades:"
      puts "#{student_name}: #{course_name}  SEM 1: #{grade01}  SEM 2: #{grade02}"

      # Retrieve values for student id and course id from 'grade_data' database
      # Enter student's grades into 'grades' table linked to student and course

      student_id = db.execute("SELECT id FROM students WHERE name=student_name")
      course_id = db.execute("SELECT id FROM courses WHERE name=course_name")

      db.execute("INSERT INTO grades (sem_one, sem_two, student_id, course_id) VALUES (grade01, grade02, student_id, course_id)")

      else
        continue = false
      end
    end	 

else
  puts "That's three failed attempts.  Good-bye."
end