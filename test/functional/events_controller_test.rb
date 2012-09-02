require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:weinevent_in_erlangen)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_template 'index'
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    login_as (:michael)
    get :new
    assert_response :success
  end

  test "should create event" do
    login_as (:michael)
    assert_difference('Event.count') do
      post :create, event: @event => { :name => 'Test Event', :description => 'What a nice test event'}
    end
    assert_response :redirect
    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
    assert_template 'show'
    assert_not_nil assigns(:event)
    assert assigns(:event).valid?
  end

  test "should get edit" do
    login_as (:michael)
    get :edit, id: => @event.to_param
    assert_response :success
  end

  test "should update event" do
    login_as (:michael)
    put :update, id: => @event.to_param, event: @event => {:name => 'Test Event' }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
