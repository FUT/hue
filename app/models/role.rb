class Role < ActiveRecord::Base
  ANONYM = 'anonym'
  USER = 'user'
  ADMIN = 'admin'

  ALL = [ANONYM, USER, ADMIN]

  has_many :users

  attr_accessible :name

  def self.get(name)
    Role.find_by_name name
  end
end
