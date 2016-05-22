require 'test_helper'

class HisControllerTest < ActionController::TestCase
  setup do
    @hi = his(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:his)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hi" do
    assert_difference('Hi.count') do
      post :create, hi: { b: @hi.b }
    end

    assert_redirected_to hi_path(assigns(:hi))
  end

  test "should show hi" do
    get :show, id: @hi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hi
    assert_response :success
  end

  test "should update hi" do
    patch :update, id: @hi, hi: { b: @hi.b }
    assert_redirected_to hi_path(assigns(:hi))
  end

  test "should destroy hi" do
    assert_difference('Hi.count', -1) do
      delete :destroy, id: @hi
    end

    assert_redirected_to his_path
  end
end
