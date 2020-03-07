require 'test_helper'

class VisualControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get visual_new_url
    assert_response :success
  end

  test "should get create" do
    get visual_create_url
    assert_response :success
  end

  test "should get update" do
    get visual_update_url
    assert_response :success
  end

  test "should get edit" do
    get visual_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get visual_destroy_url
    assert_response :success
  end

  test "should get index" do
    get visual_index_url
    assert_response :success
  end

  test "should get show" do
    get visual_show_url
    assert_response :success
  end

end
