require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lessons_index_url
    assert_response :success
  end

  test "should get show" do
    get lessons_show_url
    assert_response :success
  end

  test "should get new" do
    get lessons_new_url
    assert_response :success
  end

  test "should get edit" do
    get lessons_edit_url
    assert_response :success
  end

  test "should get update" do
    get lessons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lessons_destroy_url
    assert_response :success
  end

  test "should get live" do
    get lessons_live_url
    assert_response :success
  end

  test "should get replay" do
    get lessons_replay_url
    assert_response :success
  end

end
