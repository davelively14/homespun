class Guest < ActiveRecord::Base
  has_one :address
  has_one :order
end
