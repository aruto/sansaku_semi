class Member < ActiveRecord::Base
  has_many :locations
  has_many :checkins
  has_many :my_maps
end
