class Store < ActiveRecord::Base
  has_many :store_users

  extend FriendlyId

  friendly_id :name, use: :slugged
end
