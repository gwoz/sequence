# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

EntityType.create(name: 'company')
EntityType.create(name: 'client')

UserType.create(name: 'consultant')
UserType.create(name: 'user')

Entity.create(name: "ABC Company", entity_type: 1)
Entity.create(name: "XYZ Client", entity_type: 2)

User.create(username: 'company_mike', email: 'mike@example.com', password: 'pw', user_type: 1, entity_type: 1)
User.create(username: 'client_sam', email: 'sam@example.com', password: 'pw', user_type: 2, entity_type: 2)

Implementation.create(description: "Input or upload all user names and emails. When done, submit and each user will be emailed a new user ID and temporary password. They should log-in within 24 hours or their password will need to be reset.", entity_id: 1)

Implementation.create(description: "Select a one hour time slot for your 101 training session", entity_id: 1)

Implementation.create(description: "Input or upload static data for each of your entities. This will include the legal entity name, a 10 character nickname, and physical address details", entity_id: 1)