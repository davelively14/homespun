class User < ActiveRecord::Base
  has_many :artisans, dependent: :destroy
  has_many :stores, :through => :artisans
  # todo Fix dependent destroy
  # We want addresses to be destroyed when a user is destroyed, if it is not associated to an order.
  has_many :addresses
  has_many :orders


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId

  friendly_id :username, use: :slugged
end
