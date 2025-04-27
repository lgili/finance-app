require "test_helper"

class SetupControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get setup_show_url
    assert_response :success
  end

  test "should get update" do
    get setup_update_url
    assert_response :success
  end
end
