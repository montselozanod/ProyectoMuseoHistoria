require 'test_helper'

class TrypointsControllerTest < ActionController::TestCase
  setup do
    @trypoint = trypoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trypoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trypoint" do
    assert_difference('Trypoints.count') do
      post :create, trypoint: {  }
    end

    assert_redirected_to trypoint_path(assigns(:trypoint))
  end

  test "should show trypoint" do
    get :show, id: @trypoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trypoint
    assert_response :success
  end

  test "should update trypoint" do
    patch :update, id: @trypoint, trypoint: {  }
    assert_redirected_to trypoint_path(assigns(:trypoint))
  end

  test "should destroy trypoint" do
    assert_difference('Trypoints.count', -1) do
      delete :destroy, id: @trypoint
    end

    assert_redirected_to trypoints_index_path
  end
end
