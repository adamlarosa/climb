class Route
	attr_accessor :name, :rating
	
	def initialize(routes)
	    routes.each {|key, value| self.send(("#{key}="), value)}
	end

	def self.all
	    sql = "SELECT * FROM routes"
	    DB[:conn].execute(sql)
	end

	def self.create_table
	    sql = <<-SQL
		CREATE TABLE IF NOT EXISTS routes (
		id INTEGER PRIMARY KEY,
		name TEXT,
		rating TEXT
	    	)
	    SQL
	    DB[:conn].execute(sql)
	end

end
