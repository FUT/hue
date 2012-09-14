class Image < ActiveRecord::Base
  attr_accessible :file, :title, :user_id
end
