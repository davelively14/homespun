class Guest < ActiveRecord::Base
  has_one :address, dependent: :destroy
  has_one :order
  accepts_nested_attributes_for :address

  before_destroy :ensure_not_used_by_any_order

  private

  def ensure_not_used_by_any_order
    if orders.empty?
      return true
    else
      return false
    end
  end
end
