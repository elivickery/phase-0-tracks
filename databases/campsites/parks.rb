# CAMPSITE DATABASE

# require gems
require 'sqlite3'
require 'csv'

parks_data = 'parks.csv'
states_data = 'states.csv'

# create SQLite3 database
parks_db = SQLite3::Database.new("parks.db")
parks_db.results_as_hash = true

