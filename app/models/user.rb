class User < ActiveRecord::Base
  has_many :artisans
  # has_many :stores, :through => 'Artisan'


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId

  friendly_id :username, use: :slugged
end
