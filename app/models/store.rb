class Store < ActiveRecord::Base
  has_many :artisans
  has_many :users, :through => :artisans

  extend FriendlyId

  friendly_id :name, use: :slugged
end
