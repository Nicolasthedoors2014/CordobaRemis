require 'test_helper'

class SessionHelperControllerTest < ActionDispatch::IntegrationTest
  test "should get choice" do
    get session_helper_choice_url
    assert_response :success
  end

end
