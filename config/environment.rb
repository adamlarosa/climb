require 'pry'
require 'sqlite3'

require_relative '../lib/route.rb'
require_relative '../lib/menu.rb'

DB = {:conn => SQLite3::Database.new("db/climbing.db")}
