require 'test_helper'

class UserNamesControllerTest < ActionController::TestCase
  setup do
    @user_name = user_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_name" do
    assert_difference('UserName.count') do
      post :create, :user_name => @user_name.attributes
    end

    assert_redirected_to user_name_path(assigns(:user_name))
  end

  test "should show user_name" do
    get :show, :id => @user_name.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_name.to_param
    assert_response :success
  end

  test "should update user_name" do
    put :update, :id => @user_name.to_param, :user_name => @user_name.attributes
    assert_redirected_to user_name_path(assigns(:user_name))
  end

  test "should destroy user_name" do
    assert_difference('UserName.count', -1) do
      delete :destroy, :id => @user_name.to_param
    end

    assert_redirected_to user_names_path
  end
end
