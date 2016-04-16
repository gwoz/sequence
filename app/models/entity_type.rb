class EntityType < ActiveRecord::Base
	has_many :entities

	validates :name, presence: true, uniqueness: true
end
