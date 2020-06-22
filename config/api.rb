require_relative 'apikey.rb'

key = KEY

lat = "40.03"

lon = "-105.25"

maxDistance = "10"

minDiff = "5.6"

maxDiff = "5.10"

search = "https://www.mountainproject.com/data/get-routes-for-lat-lon"

URL = "#{search}?lat=#{lat}&lon=#{lon}&maxDistance=#{maxDistance}&minDiff=#{minDiff}&maxDiff=#{maxDiff}&key=#{key}"
