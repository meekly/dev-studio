require 'test_helper'

class PrivateControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get private_login_url
    assert_response :success
  end

  test "should get main" do
    get private_main_url
    assert_response :success
  end

  test "should get projects" do
    get private_projects_url
    assert_response :success
  end

  test "should get public" do
    get private_public_url
    assert_response :success
  end

end
