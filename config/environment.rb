require 'sqlite3'
require_relative '../lib/route.rb'

DB = {:conn => SQLite3::Database.new("db/climbing.db")}
