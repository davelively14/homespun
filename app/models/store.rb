class Store < ActiveRecord::Base
  has_many :artisans, dependent: :destroy
  has_many :users, :through => :artisans
  has_many :products, dependent: :destroy

  extend FriendlyId

  friendly_id :name, use: :slugged
end
