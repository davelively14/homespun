class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  # has_many :products, through: :line_items
  belongs_to :user
  belongs_to :guest
end
