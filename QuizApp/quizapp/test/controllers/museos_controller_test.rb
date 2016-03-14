require 'test_helper'

class MuseosControllerTest < ActionController::TestCase
  setup do
    @museo = museos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:museos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create museo" do
    assert_difference('Museo.count') do
      post :create, museo: { description: @museo.description, imgURL: @museo.imgURL, name: @museo.name }
    end

    assert_redirected_to museo_path(assigns(:museo))
  end

  test "should show museo" do
    get :show, id: @museo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @museo
    assert_response :success
  end

  test "should update museo" do
    patch :update, id: @museo, museo: { description: @museo.description, imgURL: @museo.imgURL, name: @museo.name }
    assert_redirected_to museo_path(assigns(:museo))
  end

  test "should destroy museo" do
    assert_difference('Museo.count', -1) do
      delete :destroy, id: @museo
    end

    assert_redirected_to museos_path
  end
end
