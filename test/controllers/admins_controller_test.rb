require "test_helper"

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get lionsocial" do
    get admins_lionsocial_url
    assert_response :success
  end

  test "should get lionnav" do
    get admins_lionnav_url
    assert_response :success
  end

  test "should get moviemakers" do
    get admins_moviemakers_url
    assert_response :success
  end

  test "should get railstutorials" do
    get admins_railstutorials_url
    assert_response :success
  end

  test "should get lionfianace" do
    get admins_lionfianace_url
    assert_response :success
  end
end
