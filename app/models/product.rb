class Product < ActiveRecord::Base
  belongs_to :store
  has_many :line_items
  has_many :orders, through: :line_items

  before_destroy :ensure_no_line_items

  def ensure_no_line_items
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line items present')
      return false
    end
  end
end
