require 'pry'
require 'sqlite3'
require 'json'
require 'rest-client'
require 'nokogiri'
require 'open-uri'

require_relative '../lib/route.rb'
require_relative '../lib/menu.rb'
require_relative 'api.rb'
DB = {:conn => SQLite3::Database.new("db/climbing.db")}
