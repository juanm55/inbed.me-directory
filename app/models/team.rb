class Team < ActiveRecord::Base
  
  has_many :teammings
  has_many :users, :through => :teammings
  
  attr_accessible :name
  
  validates_presence_of :name
end
