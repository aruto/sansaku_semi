class Member < ActiveRecord::Base
  has_many :locations
  has_many :checkins
  has_one :my_map
end
