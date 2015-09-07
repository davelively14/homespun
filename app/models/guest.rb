class Guest < ActiveRecord::Base
  # TODO: Fix dependent destroy
  # Don't want address to be dependent if an order has been placed.
  has_one :address, dependent: :destroy
  has_one :order
  accepts_nested_attributes_for :address
end
