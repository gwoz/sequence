class Implementation < ActiveRecord::Base
  belongs_to :entity
  has_many :user_implementations

  validates :description, :entity_id, presence: true
end
