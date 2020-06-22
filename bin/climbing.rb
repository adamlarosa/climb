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
		m.search
	    end
	input = m.prompt
end
