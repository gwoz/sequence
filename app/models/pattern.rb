class Pattern < ActiveRecord::Base
  belongs_to :company

  has_many :children, class_name: "Children",
  										foreign_key: "child_id"

  belongs_to :parent, class_name: "Children"
end
