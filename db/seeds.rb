# Create software companies
	Company.create(name: "Tech Co")
puts "Added software companies"

# Create software company patterns
	Pattern.create(name: "Kickoff", 
								 description: "Create users, collect static data, scheulde training",
								 company_id: 1)
	Pattern.create(name: "Create users", 
								 description: "Input or upload all user names and emails. When done, submit and each user will be emailed a new user ID and temporary password. They should log-in within 24 hours or their password will need to be reset.", 
								 company_id: 1,
								 order: 1,
								 parent_id: 1)
	Pattern.create(name: "Collect client static data", 
								 description: "Input or upload static data for each of your entities. This will include the legal entity name, a 10 character nickname, and physical address details",
								 company_id: 1,
								 order: 2,
								 parent_id: 1)
	Pattern.create(name: "Schedule training", 
								 description: "Select a one hour time slot for your 101 training session", 
								 company_id: 1,
								 order: 3,
								 parent_id: 1)
puts "Added software company patterns"


# Create software company clients
	Client.create(name: "NYC Corp")
	Client.create(name: "London Corp")
	Client.create(name: "Tokyo Corp")
	Client.create(name: "Global Corp")
	Client.create(name: "Worldwide Corp")
	Client.create(name: "Planetary Corp")
	Client.create(name: "Interstellar Corp")
	Client.create(name: "Galaxy Corp")
puts "Added software company clients"

# Create software company projects
	clients = (1..8).to_a
	patterns = (1..3).to_a
	20.times do |pattern|
		Project.create(company_id: 1, client_id: clients.sample, pattern_id: patterns.sample)
	end
puts "Added software company projects"