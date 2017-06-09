# CAMPSITE DATABASE

# require gems
require 'sqlite3'
require 'csv'

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
    campsites = db.execute("SELECT campsites.name, parks.name, states.name FROM campsites LEFT JOIN parks ON campsites.park_id=parks.id LEFT JOIN states ON campsites.state_id=states.id")

    campsites.each do |campsite|
        puts "--------------------------------------------------------------------"
        puts "#{campsite[0]} | #{campsite[1]} | #{campsite[2]}"
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

    db.execute("INSERT INTO #{table} (name, park_id, state_id) VALUES ('#{campsite_name}', '#{park_id}', '#{state_id}') ")
end


