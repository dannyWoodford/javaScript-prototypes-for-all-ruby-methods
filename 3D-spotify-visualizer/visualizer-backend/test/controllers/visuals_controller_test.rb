require 'test_helper'

class VisualsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get visuals_new_url
    assert_response :success
  end

  test "should get create" do
    get visuals_create_url
    assert_response :success
  end

  test "should get update" do
    get visuals_update_url
    assert_response :success
  end

  test "should get edit" do
    get visuals_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get visuals_destroy_url
    assert_response :success
  end

  test "should get index" do
    get visuals_index_url
    assert_response :success
  end

  test "should get show" do
    get visuals_show_url
    assert_response :success
  end

end
