require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get contact us" do
    get home_contactus_url
    assert_response :success
  end

  test "should get homepage" do
    get root_url
    assert_response :success
  end
end
