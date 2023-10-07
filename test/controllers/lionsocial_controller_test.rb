require "test_helper"

class LionsocialControllerTest < ActionDispatch::IntegrationTest
  test "should get disables" do
    get lionsocial_disables_url
    assert_response :success
  end

  test "should get posts" do
    get lionsocial_posts_url
    assert_response :success
  end

  test "should get annocments" do
    get lionsocial_annocments_url
    assert_response :success
  end

  test "should get comments" do
    get lionsocial_comments_url
    assert_response :success
  end

  test "should get following" do
    get lionsocial_following_url
    assert_response :success
  end

  test "should get messages" do
    get lionsocial_messages_url
    assert_response :success
  end
end
