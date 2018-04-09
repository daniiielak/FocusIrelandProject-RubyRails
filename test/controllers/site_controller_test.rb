require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get site_contact_url
    assert_response :success
  end

end
