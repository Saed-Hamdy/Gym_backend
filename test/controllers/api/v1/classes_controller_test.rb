require 'test_helper'

class Api::V1::ClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_classes_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_classes_show_url
    assert_response :success
  end

end
