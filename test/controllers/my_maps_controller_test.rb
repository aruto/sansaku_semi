require 'test_helper'

class MyMapsControllerTest < ActionController::TestCase
  setup do
    @my_map = my_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_map" do
    assert_difference('MyMap.count') do
      post :create, my_map: { member_id: @my_map.member_id }
    end

    assert_redirected_to my_map_path(assigns(:my_map))
  end

  test "should show my_map" do
    get :show, id: @my_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_map
    assert_response :success
  end

  test "should update my_map" do
    patch :update, id: @my_map, my_map: { member_id: @my_map.member_id }
    assert_redirected_to my_map_path(assigns(:my_map))
  end

  test "should destroy my_map" do
    assert_difference('MyMap.count', -1) do
      delete :destroy, id: @my_map
    end

    assert_redirected_to my_maps_path
  end
end
