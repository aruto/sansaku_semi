require 'test_helper'

class WayPointsControllerTest < ActionController::TestCase
  setup do
    @way_point = way_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:way_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create way_point" do
    assert_difference('WayPoint.count') do
      post :create, way_point: { my_map_id: @way_point.my_map_id, place_id: @way_point.place_id }
    end

    assert_redirected_to way_point_path(assigns(:way_point))
  end

  test "should show way_point" do
    get :show, id: @way_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @way_point
    assert_response :success
  end

  test "should update way_point" do
    patch :update, id: @way_point, way_point: { my_map_id: @way_point.my_map_id, place_id: @way_point.place_id }
    assert_redirected_to way_point_path(assigns(:way_point))
  end

  test "should destroy way_point" do
    assert_difference('WayPoint.count', -1) do
      delete :destroy, id: @way_point
    end

    assert_redirected_to way_points_path
  end
end
