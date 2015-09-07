class Guest < ActiveRecord::Base
  has_one :address
  has_one :order
  accepts_nested_attributes_for :address
end
