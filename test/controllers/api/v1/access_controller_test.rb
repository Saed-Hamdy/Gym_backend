require 'test_helper'

class Api::V1::AccessControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get api_v1_access_login_url
    assert_response :success
  end

end
