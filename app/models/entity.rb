class Entity < ActiveRecord::Base
  belongs_to :entity_type

  validates :name, :entity_type, presence: true
  validates :name, uniqueness: true
end
