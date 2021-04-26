require 'test_helper'

class RobotControllerTest < ActionDispatch::IntegrationTest
  test "should get orders" do
    get robot_orders_url
    assert_response :success
  end

end
