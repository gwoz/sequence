module View
	def self.start
		puts "Welcome to Sequence!"
		puts "\'add\' to sequence some tasks"
		puts '\'view\' to see existing sequences'
	end

	def self.get_input
		gets.chomp
	end

end