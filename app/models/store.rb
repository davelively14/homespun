class Store < ActiveRecord::Base
  has_many :artisans
  # has_many :users, :through => 'Artisan'

  extend FriendlyId

  friendly_id :name, use: :slugged
end
