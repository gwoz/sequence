class User < ActiveRecord::Base
  belongs_to :user_type
  belongs_to :entity
end
