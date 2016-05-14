class Pattern < ActiveRecord::Base
  belongs_to :company

  has_many :children, class_name: "Pattern",
  										foreign_key: "parent_id"

  belongs_to :parent, class_name: "Pattern",
  										foreign_key: "parent_id"
end
