class Route
	attr_accessor :name, :rating
	
	def initialize(routes)
	    routes.each {|key, value| self.send(("#{key}="), value)}
	end

	def self.all
	    puts "Show me all the climbing routes!"
	end

end
