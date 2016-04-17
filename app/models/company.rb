class Company < ActiveRecord::Base
  has_many :patterns
  has_many :projects
end
