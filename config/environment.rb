require 'pry'
require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/climbing.db")}
