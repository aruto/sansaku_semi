class MyMap < ActiveRecord::Base
  belongs_to :member

  has_many :way_points
end
