require 'test_helper'

class CaleventsControllerTest < ActionController::TestCase
  setup do
    @calevent = calevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calevent" do
    assert_difference('Calevent.count') do
      post :create, calevent: { caldate: @calevent.caldate, calday: @calevent.calday, caldescription: @calevent.caldescription, calenddate: @calevent.calenddate, callocation: @calevent.callocation, caltime: @calevent.caltime }
    end

    assert_redirected_to calevent_path(assigns(:calevent))
  end

  test "should show calevent" do
    get :show, id: @calevent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calevent
    assert_response :success
  end

  test "should update calevent" do
    put :update, id: @calevent, calevent: { caldate: @calevent.caldate, calday: @calevent.calday, caldescription: @calevent.caldescription, calenddate: @calevent.calenddate, callocation: @calevent.callocation, caltime: @calevent.caltime }
    assert_redirected_to calevent_path(assigns(:calevent))
  end

  test "should destroy calevent" do
    assert_difference('Calevent.count', -1) do
      delete :destroy, id: @calevent
    end

    assert_redirected_to calevents_path
  end
end
