class WayPoint < ActiveRecord::Base
  #attr_accessible :my_map_id, :place_id
  belongs_to :place
  belongs_to :my_map
end
