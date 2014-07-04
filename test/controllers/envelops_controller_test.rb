require 'test_helper'

class EnvelopsControllerTest < ActionController::TestCase
  setup do
    @envelop = envelops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envelops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envelop" do
    assert_difference('Envelop.count') do
      post :create, envelop: { description: @envelop.description, name: @envelop.name, picture: @envelop.picture }
    end

    assert_redirected_to envelop_path(assigns(:envelop))
  end

  test "should show envelop" do
    get :show, id: @envelop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @envelop
    assert_response :success
  end

  test "should update envelop" do
    patch :update, id: @envelop, envelop: { description: @envelop.description, name: @envelop.name, picture: @envelop.picture }
    assert_redirected_to envelop_path(assigns(:envelop))
  end

  test "should destroy envelop" do
    assert_difference('Envelop.count', -1) do
      delete :destroy, id: @envelop
    end

    assert_redirected_to envelops_path
  end
end
