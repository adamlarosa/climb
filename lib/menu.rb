class Menu

	def prompt
	    print "-> "
	    gets.chomp
	end

	def help
	    puts "Display valid prompt options"
	    puts "1 - Search for a route"
	end

	def search
	   puts "Searching!"
	end
end
