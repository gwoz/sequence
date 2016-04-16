class User < ActiveRecord::Base
	has_secure_password
	
  belongs_to :user_type
  belongs_to :entity

  validates :username, :email, :password_digest, :user_type_id, :entity_id, presence: true
  validates :username, uniqueness: true
end
