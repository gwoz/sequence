# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: "Tech Co")

Pattern.create(description: "Input or upload all user names and emails. When done, submit and each user will be emailed a new user ID and temporary password. They should log-in within 24 hours or their password will need to be reset.", company_id: 1)
Pattern.create(description: "Select a one hour time slot for your 101 training session", company_id: 1)
Pattern.create(description: "Input or upload static data for each of your entities. This will include the legal entity name, a 10 character nickname, and physical address details", company_id: 1)

Client.create(name: "NYC Corp")
Client.create(name: "London Corp")
Client.create(name: "Tokyo Corp")
Client.create(name: "Global Corp")
Client.create(name: "Worldwide Corp")
Client.create(name: "Planetary Corp")
Client.create(name: "Interstellar Corp")
Client.create(name: "Galaxy Corp")

clients = (1..8).to_a
patterns = (1..3).to_a

20.times { |pattern| Project.create(company_id: 1, client_id: clients.sample, pattern_id: patterns.sample) }