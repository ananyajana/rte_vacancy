require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school" do
    assert_difference('School.count') do
      post :create, school: { address: @school.address, district: @school.district, email_id: @school.email_id, fax: @school.fax, latitude: @school.latitude, longitude: @school.longitude, phone2: @school.phone2, phone: @school.phone, pin: @school.pin, reg_id: @school.reg_id, school_name: @school.school_name, state: @school.state, user_id: @school.user_id }
    end

    assert_redirected_to school_path(assigns(:school))
  end

  test "should show school" do
    get :show, id: @school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school
    assert_response :success
  end

  test "should update school" do
    put :update, id: @school, school: { address: @school.address, district: @school.district, email_id: @school.email_id, fax: @school.fax, latitude: @school.latitude, longitude: @school.longitude, phone2: @school.phone2, phone: @school.phone, pin: @school.pin, reg_id: @school.reg_id, school_name: @school.school_name, state: @school.state, user_id: @school.user_id }
    assert_redirected_to school_path(assigns(:school))
  end

  test "should destroy school" do
    assert_difference('School.count', -1) do
      delete :destroy, id: @school
    end

    assert_redirected_to schools_path
  end
end
