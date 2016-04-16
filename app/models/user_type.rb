class UserType < ActiveRecord::Base
	has_many :users

	validates :name, presence: true, uniqueness: true, , inclusion: {in: ["consultant", "user"]}
end
