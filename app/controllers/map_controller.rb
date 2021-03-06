class MapController < ApplicationController
  #layout "map"

  def index
    # 場所の一覧の取得
    @places = Place.all

    # マイマップの取得。なければ新規作成
    @my_map = @current_member.my_map
    unless @my_map.present?
      @my_map = MyMap.create
      @my_map.member = @current_member
      @my_map.save()
    end

    render layout: "map"
=begin
  	@places = Place.all
  	@initial = Initial.all[0]
    @my_map = current_my_map
    
    if login?
      # チェックインの取得
      @checkins = Checkin.where(member_id: @current_member.id)

      # 位置情報の履歴が指定された場合
      if params[:locations_id]
        @location = Location.where("locations_id = ? && members_id = ?", params[:locations_id], @current_member.id).order("created_at DESC").limit(1)[0]
        if @location.present?
          @initial.lat = @location.latitude
          @initial.lng = @location.longitude
          @initial.zoom = 15
        end
	    end
    end

    if params[:places_id]
      begin
        @place = Place.find(params[:places_id])
      rescue
      else
        @initial.places_id = params[:places_id]
        @initial.lat = @place.lat
        @initial.lng = @place.lng
        @initial.zoom = 15
      end
    end
=end
  end
end