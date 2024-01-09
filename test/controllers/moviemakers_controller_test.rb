require "test_helper"

class MoviemakersControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get moviemakers_about_url
    assert_response :success
  end

  test "should get annoucments" do
    get moviemakers_annoucments_url
    assert_response :success
  end

  test "should get disable" do
    get moviemakers_disable_url
    assert_response :success
  end

  test "should get errors" do
    get moviemakers_errors_url
    assert_response :success
  end

  test "should get movietally" do
    get moviemakers_movietally_url
    assert_response :success
  end
end
