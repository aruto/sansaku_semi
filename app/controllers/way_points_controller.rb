# coding: utf-8
class WayPointsController < ApplicationController
  before_filter :admin_login_required, only: [:index, :show, :new, :edit]

  # GET /way_points
  # GET /way_points.json
  def index
    @way_points = WayPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @way_points }
    end
  end

  # GET /way_points/1
  # GET /way_points/1.json
  def show
    @way_point = WayPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @way_point }
    end
  end

  # GET /way_points/new
  # GET /way_points/new.json
  def new
    @way_point = WayPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @way_point }
    end
  end

  # GET /way_points/1/edit
  def edit
    @way_point = WayPoint.find(params[:id])
  end

  # POST /way_points
  # POST /way_points.json
  def create
    @my_map = current_my_map
    place = Place.find(params[:place_id])
    @way_point = @my_map.add_place(place.id)
    respond_to do |format|
      if @way_point.save
        format.html { redirect_to @way_point.my_map, notice: 'マイマップに追加しました。' }
        format.json { render json: @way_point, status: :created, location: @way_point }
      else
        format.html { render action: "new" }
        format.json { render json: @way_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /way_points/1
  # PUT /way_points/1.json
  def update
    @way_point = WayPoint.find(params[:id])

    respond_to do |format|
      if @way_point.update_attributes(params[:way_point])
        format.html { redirect_to @way_point, notice: 'Way point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @way_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /way_points/1
  # DELETE /way_points/1.json
  def destroy
    @my_map = current_my_map
    #@way_point = WayPoint.where(["place_id = ? && my_map_id = ?", params[:place_id], @my_map.id]).limit(1)[0]
    @way_point = WayPoint.find(params[:id])
    @way_point.destroy

    respond_to do |format|
      format.html { redirect_to @my_map }
      format.json { head :no_content }
    end
  end
end