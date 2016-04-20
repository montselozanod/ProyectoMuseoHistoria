require 'test_helper'

class PreguntasControllerTest < ActionController::TestCase
  setup do
    @pregunta = preguntas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preguntas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregunta" do
    assert_difference('Preguntas.count') do
      post :create, pregunta: {  }
    end

    assert_redirected_to pregunta_path(assigns(:pregunta))
  end

  test "should show pregunta" do
    get :show, id: @pregunta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregunta
    assert_response :success
  end

  test "should update pregunta" do
    patch :update, id: @pregunta, pregunta: {  }
    assert_redirected_to pregunta_path(assigns(:pregunta))
  end

  test "should destroy pregunta" do
    assert_difference('Preguntas.count', -1) do
      delete :destroy, id: @pregunta
    end

    assert_redirected_to preguntas_index_path
  end
end
