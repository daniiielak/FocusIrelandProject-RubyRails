require 'test_helper'

class ThankyouControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thankyou_index_url
    assert_response :success
  end

end
