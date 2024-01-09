require "test_helper"

class LionfianceControllerTest < ActionDispatch::IntegrationTest
  test "should get disables" do
    get lionfiance_disables_url
    assert_response :success
  end

  test "should get annoucments" do
    get lionfiance_annoucments_url
    assert_response :success
  end

  test "should get about" do
    get lionfiance_about_url
    assert_response :success
  end

  test "should get errors" do
    get lionfiance_errors_url
    assert_response :success
  end
end
