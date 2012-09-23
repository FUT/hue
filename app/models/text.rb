class Text < ActiveRecord::Base
  has_many :checkpoints

  attr_accessible :author, :description, :source, :source_date, :title
end
