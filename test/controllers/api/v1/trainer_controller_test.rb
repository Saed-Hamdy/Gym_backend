require 'test_helper'

class Api::V1::TrainerControllerTest < ActionDispatch::IntegrationTest
  test "should get area" do
    get api_v1_trainer_area_url
    assert_response :success
  end

  test "should get name" do
    get api_v1_trainer_name_url
    assert_response :success
  end

end
