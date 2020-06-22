require_relative '../config/environment.rb'

m = Menu.new

input = m.prompt
while input.downcase != "x" do
	if input == "help"
	    m.help
	elsif input == "pry"
	    binding.pry
	end
	    case input
	    when "1"
		Route.lookup
	    when "2"
		puts "this is the configure menu"
	    end
	input = m.prompt
end
