require 'test_helper'

class Api::V1::InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get areas" do
    get api_v1_info_areas_url
    assert_response :success
  end

end
