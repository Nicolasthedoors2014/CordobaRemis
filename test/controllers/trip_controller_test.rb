require 'test_helper'

class TripControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trip_new_url
    assert_response :success
  end

end
