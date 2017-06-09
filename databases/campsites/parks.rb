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
