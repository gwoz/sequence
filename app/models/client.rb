class Client < ActiveRecord::Base
  has_many :projects
  has_many :companies, through: :projects
  has_many :patterns, through: :projects
end
