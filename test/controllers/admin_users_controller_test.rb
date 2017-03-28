require 'test_helper'

class AdminUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = admin_users(:one)
  end

  test "should get index" do
    get admin_users_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_user_url
    assert_response :success
  end

  test "should create admin_user" do
    assert_difference('AdminUser.count') do
      post admin_users_url, params: { admin_user: { login: @admin_user.login, name: @admin_user.name, nickname: @admin_user.nickname, password_hash: @admin_user.password_hash, userpic: @admin_user.userpic } }
    end

    assert_redirected_to admin_user_url(AdminUser.last)
  end

  test "should show admin_user" do
    get admin_user_url(@admin_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_user_url(@admin_user)
    assert_response :success
  end

  test "should update admin_user" do
    patch admin_user_url(@admin_user), params: { admin_user: { login: @admin_user.login, name: @admin_user.name, nickname: @admin_user.nickname, password_hash: @admin_user.password_hash, userpic: @admin_user.userpic } }
    assert_redirected_to admin_user_url(@admin_user)
  end

  test "should destroy admin_user" do
    assert_difference('AdminUser.count', -1) do
      delete admin_user_url(@admin_user)
    end

    assert_redirected_to admin_users_url
  end
end
