require 'test_helper'

class Api::V1::GymsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_gyms_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_gyms_show_url
    assert_response :success
  end

end
