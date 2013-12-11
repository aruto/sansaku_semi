class MyMap < ActiveRecord::Base
 has_many :way_points, dependent: :destroy
  belongs_to :member

  has_many :way_points


  def add_place(place_id)
  	current_point = way_points.find_by_place_id(place_id)
  	unless current_point
  	  current_point = way_points.build(place_id: place_id)
  	end
  	current_point
  end

  def registrated(place_id)
  	current_point = way_points.find_by_place_id(place_id)
  	current_point
  end
end