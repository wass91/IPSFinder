require 'test_helper'

class EPsControllerTest < ActionController::TestCase
  setup do
    @ep = eps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ep" do
    assert_difference('Eps.count') do
      post :create, ep: { nombre: @ep.nombre }
    end

    assert_redirected_to ep_path(assigns(:ep))
  end

  test "should show ep" do
    get :show, id: @ep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ep
    assert_response :success
  end

  test "should update ep" do
    patch :update, id: @ep, ep: { nombre: @ep.nombre }
    assert_redirected_to ep_path(assigns(:ep))
  end

  test "should destroy ep" do
    assert_difference('Eps.count', -1) do
      delete :destroy, id: @ep
    end

    assert_redirected_to eps_index_path
  end
end
