require 'test_helper'

class ExamineesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get examinees_index_url
    assert_response :success
  end

  test "should get show" do
    get examinees_show_url
    assert_response :success
  end

  test "should get new" do
    get examinees_new_url
    assert_response :success
  end

  test "should get create" do
    get examinees_create_url
    assert_response :success
  end

  test "should get edit" do
    get examinees_edit_url
    assert_response :success
  end

  test "should get update" do
    get examinees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get examinees_destroy_url
    assert_response :success
  end

end
