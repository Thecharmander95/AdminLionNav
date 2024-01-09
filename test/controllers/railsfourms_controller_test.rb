require "test_helper"

class RailsfourmsControllerTest < ActionDispatch::IntegrationTest
  test "should get forums" do
    get railsfourms_forums_url
    assert_response :success
  end

  test "should get comments" do
    get railsfourms_comments_url
    assert_response :success
  end

  test "should get errors" do
    get railsfourms_errors_url
    assert_response :success
  end

  test "should get annoucments" do
    get railsfourms_annoucments_url
    assert_response :success
  end

  test "should get disables" do
    get railsfourms_disables_url
    assert_response :success
  end

  test "should get about" do
    get railsfourms_about_url
    assert_response :success
  end

  test "should get videos" do
    get railsfourms_videos_url
    assert_response :success
  end

  test "should get guides" do
    get railsfourms_guides_url
    assert_response :success
  end
end
