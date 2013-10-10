class MapController < ApplicationController
  def index
    render layout: "map"
  end

  def index
    @places = Place.all
  end
end