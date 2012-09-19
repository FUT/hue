class User < ActiveRecord::Base

  has_many :posts
  has_many :images

  has_one :profile

  belongs_to :role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
end
