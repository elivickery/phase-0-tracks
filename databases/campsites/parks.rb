## CAMPSITE DATABASE
# A Ruby project that incorporates data pulled from CSV's of national park and state names.
# Users can add to or modify a database of campsites they have visited in national parks, including ratings and reviews.

# require gems
require 'sqlite3'
require 'csv'

# CSV data
parks_data = 'parks.csv'
states_data = 'states.csv'

# create SQLite3 database
parks_db = SQLite3::Database.new("parks.db")
parks_db.results_as_hash = true
# learn about fancy string delimiters
create_parks_table = <<-SQL
  CREATE TABLE IF NOT EXISTS parks(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_campsite_table = <<-SQL
  CREATE TABLE IF NOT EXISTS campsites(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    park_id INTEGER,
    state_id INTEGER,
    stars INTEGER,
    review VARCHAR(255),
    FOREIGN KEY (park_id) REFERENCES parks(id),
    FOREIGN KEY (state_id) REFERENCES states(id)
  )
SQL

create_states_table = <<-SQL
  CREATE TABLE IF NOT EXISTS states(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

# Create parks, campsite and states tables
parks_db.execute(create_parks_table)
parks_db.execute(create_campsite_table)
parks_db.execute(create_states_table)


# Read CSV data from a file and insert into database table
def insert_into_table(csv, table, db)
    # check if table is empty
    count = db.execute("SELECT * FROM #{table}")
    # if table is not empty
    if count.length == 0
        # loop thru each line of the CSV and insert into
        CSV.foreach(csv) do |line|
            db.execute("INSERT INTO #{table} (name) VALUES ('#{line[0]}')")
        end
    end
end

# Insert data from park and state csvs into respective tables
insert_into_table(parks_data, 'parks', parks_db)
insert_into_table(states_data, 'states', parks_db)

# list all items in campsite table
def show_campsites(db, table)
    campsites = db.execute("SELECT campsites.name, parks.name, states.name, campsites.stars, campsites.review FROM campsites LEFT JOIN parks ON campsites.park_id=parks.id LEFT JOIN states ON campsites.state_id=states.id")

    if campsites.length > 0
        campsites.each do |campsite|
            puts "--------------------------------------------------------------------"
            puts " #{campsite[0]} | #{campsite[1]} | #{campsite[2]} | #{campsite[3]} stars | #{campsite[4]}"
        end
    else
        puts "No items in database."
    end
end

# add a new item to campsite list
def add_new_campsite(db, table)
    puts "Enter name of campsite:"
    campsite_name = gets.chomp
    puts "Enter park ID:"
    park_id = gets.chomp
    puts "Enter state ID:"
    state_id = gets.chomp
    puts "Enter star rating (1-5):"
    stars = gets.chomp
    puts "Enter a brief review:"
    review = gets.chomp

    db.execute("INSERT INTO #{table} (name, park_id, state_id, stars, review) VALUES ('#{campsite_name}', '#{park_id}', '#{state_id}', '#{stars}', '#{review}') ")
end

# delete item from campsite list
def delete_campsite(db, table)
    puts "Enter the name of the campsite you want to delete:"
    campsite = gets.chomp
    db.execute("DELETE FROM #{table} WHERE name='#{campsite}'")
end


# Search by stars
def search_by_stars(db, table)
    puts "SEARCH BY RATING"
    puts "Only show campsites with this many stars (1-5):"
    rating = gets.chomp.to_s

    campsites = db.execute("SELECT campsites.name, parks.name, states.name, campsites.stars, campsites.review FROM campsites LEFT JOIN parks ON campsites.park_id=parks.id LEFT JOIN states ON campsites.state_id=states.id WHERE campsites.stars='#{rating}'")

    if campsites.length > 0
        campsites.each do |campsite|
            puts "--------------------------------------------------------------------"
            puts " #{campsite[0]} | #{campsite[1]} | #{campsite[2]} | #{campsite[3]} stars | #{campsite[4]}"
        end
    else
        puts "No matching items in database, try again."
    end

end

## User interface
loop do
    puts "
    ---------------------
    What do you want to do? Enter a number or type 'exit':
    1. View the list
    2. Add an item
    3. Delete an item
    4. Search by rating
    ---------------------"

    user_choice = gets.chomp.to_s

    if user_choice == 'exit'
        break
    elsif user_choice == '1'
        show_campsites(parks_db, 'campsites')
    elsif user_choice == '2'
        add_new_campsite(parks_db, 'campsites')
        show_campsites(parks_db, 'campsites')
    elsif user_choice == '3'
        delete_campsite(parks_db, 'campsites')
        show_campsites(parks_db, 'campsites')
    elsif user_choice == '4'
        search_by_stars(parks_db, 'campsites')
    else
        puts 'Not a valid option, try again.'
    end

end


