class Project < ActiveRecord::Base
  belongs_to :company
  belongs_to :client
  belongs_to :pattern
end
