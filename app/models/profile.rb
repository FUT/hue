class Profile < ActiveRecord::Base
  attr_accessible :avatar, :country, :full_name, :user_id
end
