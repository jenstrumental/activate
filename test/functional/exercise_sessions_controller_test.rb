require 'test_helper'

class ActivateSessionsControllerTest < ActionController::TestCase
  setup do
    @exercise_session = exercise_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_session" do
    assert_difference('ActivateSession.count') do
      post :create, exercise_session: @exercise_session.attributes
    end

    assert_redirected_to exercise_session_path(assigns(:exercise_session))
  end

  test "should show exercise_session" do
    get :show, id: @exercise_session.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_session.to_param
    assert_response :success
  end

  test "should update exercise_session" do
    put :update, id: @exercise_session.to_param, exercise_session: @exercise_session.attributes
    assert_redirected_to exercise_session_path(assigns(:exercise_session))
  end

  test "should destroy exercise_session" do
    assert_difference('ActivateSession.count', -1) do
      delete :destroy, id: @exercise_session.to_param
    end

    assert_redirected_to exercise_sessions_path
  end
end
