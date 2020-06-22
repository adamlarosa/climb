class Route
	attr_accessor :name, :rating
	
	def initialize(routes)
	    routes.each {|key, value| self.send(("#{key}="), value)}
	end

	def save
	    sql = <<- SQL
		INSERT INTO routes (name, rating) 
		VALUES (?, ?)
	    SQL
	    DB[:conn].execute(sql)
	    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM routes")[0][0]
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

	def self.lookup
	    puts "query mountain project"
	    puts "select location, lat, lon"
	end

end
