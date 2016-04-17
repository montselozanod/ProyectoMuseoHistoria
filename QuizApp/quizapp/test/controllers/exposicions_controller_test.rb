require 'test_helper'

class ExposicionsControllerTest < ActionController::TestCase
  setup do
    @exposicion = exposicions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exposicions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exposicion" do
    assert_difference('Exposicion.count') do
      post :create, exposicion: { description: @exposicion.description, museo_id: @exposicion.museo_id, name: @exposicion.name }
    end

    assert_redirected_to exposicion_path(assigns(:exposicion))
  end

  test "should show exposicion" do
    get :show, id: @exposicion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exposicion
    assert_response :success
  end

  test "should update exposicion" do
    patch :update, id: @exposicion, exposicion: { description: @exposicion.description, museo_id: @exposicion.museo_id, name: @exposicion.name }
    assert_redirected_to exposicion_path(assigns(:exposicion))
  end

  test "should destroy exposicion" do
    assert_difference('Exposicion.count', -1) do
      delete :destroy, id: @exposicion
    end

    assert_redirected_to exposicions_path
  end
end
