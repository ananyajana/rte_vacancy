require 'test_helper'

class ClasstablesControllerTest < ActionController::TestCase
  setup do
    @classtable = classtables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classtables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classtable" do
    assert_difference('Classtable.count') do
      post :create, classtable: { class_no: @classtable.class_no, gen_seats: @classtable.gen_seats, obc_seats: @classtable.obc_seats, other_seats: @classtable.other_seats, sc_seats: @classtable.sc_seats, school_id: @classtable.school_id, st_seats: @classtable.st_seats }
    end

    assert_redirected_to classtable_path(assigns(:classtable))
  end

  test "should show classtable" do
    get :show, id: @classtable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classtable
    assert_response :success
  end

  test "should update classtable" do
    put :update, id: @classtable, classtable: { class_no: @classtable.class_no, gen_seats: @classtable.gen_seats, obc_seats: @classtable.obc_seats, other_seats: @classtable.other_seats, sc_seats: @classtable.sc_seats, school_id: @classtable.school_id, st_seats: @classtable.st_seats }
    assert_redirected_to classtable_path(assigns(:classtable))
  end

  test "should destroy classtable" do
    assert_difference('Classtable.count', -1) do
      delete :destroy, id: @classtable
    end

    assert_redirected_to classtables_path
  end
end
