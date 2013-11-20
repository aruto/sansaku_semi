class Place < ActiveRecord::Base
  belongs_to :category
  belongs_to :type

  has_one :image, class_name: "PlaceImage", dependent: :destroy

  has_many :way_points
  has_many :checkins
  
  accepts_nested_attributes_for :image, allow_destroy: true
  
end
