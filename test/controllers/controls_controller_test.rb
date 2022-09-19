require "test_helper"

class ControlsControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get controls_user_url
    assert_response :success
  end
end
