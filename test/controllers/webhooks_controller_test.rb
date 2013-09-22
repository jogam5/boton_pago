require 'test_helper'

class WebhooksControllerTest < ActionController::TestCase
  test "should get receptor" do
    get :receptor
    assert_response :success
  end

end
