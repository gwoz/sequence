class Company < ActiveRecord::Base
  has_many :patterns
  has_many :projects
  has_many :clients, through: :projects
end
