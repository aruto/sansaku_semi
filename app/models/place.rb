class Place < ActiveRecord::Base
  belongs_to :category
  belongs_to :type

  has_one :place_image

  has_many :way_points
  has_many :checkins
end
