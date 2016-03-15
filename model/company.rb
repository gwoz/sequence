class Company

attr_reader :name

	def initialize(args={})
		@name = args[:name]
		post_initialize(args)
	end

	def post_initialize(args)
		nil
	end

end

# class SoftwareCompany < Company
# 	def post_initialize(args)
# 		@software_users = args[:software_users]
# 	end
# end

