# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

get '/contact' do
  "Thanks for contacting us!"
end

get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Great job!"
  end
end

get '/calculator' do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  result = number1 + number2
  if result == 0
    "Let's add some numbers!"
  else
    "The result is: #{result}"
  end
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


get '/students/campus_search/:campus/' do
  campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  items = "<h1>Students at #{params[:campus]}:</h1>"
  if campus.length > 0
    items << "<ul>"
    campus.each do |student|
      items << "<li>#{student['name']}</li>"
    end
    items << "</ul>"
  end
  items
end
