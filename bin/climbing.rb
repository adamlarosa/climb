require_relative '../config/environment.rb'

m = Menu.new

input = m.prompt
while input.downcase != "x" do
	if input == "help"
	    puts "HELP!"
	elsif input == "pry"
	    binding.pry
	end
	input = m.prompt
end
