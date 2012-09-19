class Image < ActiveRecord::Base
  belongs_to :user

  attr_accessible :file, :title, :user_id
end
