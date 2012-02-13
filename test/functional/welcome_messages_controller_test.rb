require 'test_helper'

class WelcomeMessagesControllerTest < ActionController::TestCase
  setup do
    @welcome_message = welcome_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:welcome_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create welcome_message" do
    assert_difference('WelcomeMessage.count') do
      post :create, welcome_message: @welcome_message.attributes
    end

    assert_redirected_to welcome_message_path(assigns(:welcome_message))
  end

  test "should show welcome_message" do
    get :show, id: @welcome_message.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @welcome_message.to_param
    assert_response :success
  end

  test "should update welcome_message" do
    put :update, id: @welcome_message.to_param, welcome_message: @welcome_message.attributes
    assert_redirected_to welcome_message_path(assigns(:welcome_message))
  end

  test "should destroy welcome_message" do
    assert_difference('WelcomeMessage.count', -1) do
      delete :destroy, id: @welcome_message.to_param
    end

    assert_redirected_to welcome_messages_path
  end
end
