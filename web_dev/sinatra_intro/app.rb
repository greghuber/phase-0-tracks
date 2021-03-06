# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  # "Hello World!"
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#______________________________________________________________
# GREG HUBER CHALLENGE 9_4 CODE:

# ADD /contact ROUTE THAT DISPLAYS AN ADDRESS

get '/contact/:street_address/:city/:state/:zip' do
  street = params[:street_address]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  "#{street}<br>#{city}, #{state} #{zip}"
end

# ADD /great_job ROUTE THAT SAYS "GOOD JOB, <NAME>" IF QUERY PARAMETER "NAME"
# IS PRESENT, AND "GOOD JOB!" IF NO PARAMETER PRESENT

get '/great_job' do
  name = params[:name] 
  if name 
    "Good job #{name}!"
  else
    "Good job!"    
  end
end

# Add a route that uses route parameters to add two numbers and 
# respond with the result

get '/add/:number_01/:number_02' do
  number_01 = params[:number_01]
  number_02 = params[:number_02]
  "The sum of #{number_01} and #{number_02} is #{number_01.to_i + number_02.to_i}"
end

# Add route to search 'students' db and find all students with
# the first name 'Bo'

# get '/search_by_first' do
#   students = db.execute("SELECT * FROM students")
#   response = ""
#   students.each do |student|
#     if student['name'].split(' ')[0] == "Bo"
#     response << "Name: #{student['name']}<br>"
#     end
#   end
#   response
# end

get '/search_by_first/:name' do
  name = params[:name]
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    if student['name'].split(' ')[0] == name
    response << "Name: #{student['name']}<br>"
    end
  end
  response
end

