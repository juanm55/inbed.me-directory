class User < ActiveRecord::Base
  
  has_many :teammings
  has_many :teams, :through => :teammings
  belongs_to :position
  
  attr_accessible :name, :position_id, :email, :twitter_acc, :phone_mob, :phone_land, :address
  
  validates_presence_of :name, :email
  
end
