require 'test_helper'

class EventstersControllerTest < ActionController::TestCase
  setup do
    @eventster = eventsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventster" do
    assert_difference('Eventster.count') do
      post :create, eventster: { description: @eventster.description, location: @eventster.location, title: @eventster.title }
    end

    assert_redirected_to eventster_path(assigns(:eventster))
  end

  test "should show eventster" do
    get :show, id: @eventster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventster
    assert_response :success
  end

  test "should update eventster" do
    patch :update, id: @eventster, eventster: { description: @eventster.description, location: @eventster.location, title: @eventster.title }
    assert_redirected_to eventster_path(assigns(:eventster))
  end

  test "should destroy eventster" do
    assert_difference('Eventster.count', -1) do
      delete :destroy, id: @eventster
    end

    assert_redirected_to eventsters_path
  end
end
