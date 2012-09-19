class Profile < ActiveRecord::Base
  belongs_to :user

  attr_accessible :avatar, :country, :full_name, :user_id
end
