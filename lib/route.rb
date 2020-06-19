class Route
	attr_accessor :name, :rating
	
	def initialize(routes)
	    routes.each {|key, value| self.send(("#{key}="), value)}
	end

	
end
