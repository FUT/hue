class Checkpoint < ActiveRecord::Base
  belongs_to :user
  belongs_to :text

  attr_accessible :description, :length, :seconds, :title, :user_id
end
