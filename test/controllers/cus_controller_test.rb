require 'test_helper'

class CusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cu = cus(:one)
  end

  test "should get index" do
    get cus_url
    assert_response :success
  end

  test "should get new" do
    get new_cu_url
    assert_response :success
  end

  test "should create cu" do
    assert_difference('Cu.count') do
      post cus_url, params: { cu: { acctoken: @cu.acctoken, emails: @cu.emails, gtoken: @cu.gtoken, idtoken: @cu.idtoken, name: @cu.name, refreshtoken: @cu.refreshtoken } }
    end

    assert_redirected_to cu_url(Cu.last)
  end

  test "should show cu" do
    get cu_url(@cu)
    assert_response :success
  end

  test "should get edit" do
    get edit_cu_url(@cu)
    assert_response :success
  end

  test "should update cu" do
    patch cu_url(@cu), params: { cu: { acctoken: @cu.acctoken, emails: @cu.emails, gtoken: @cu.gtoken, idtoken: @cu.idtoken, name: @cu.name, refreshtoken: @cu.refreshtoken } }
    assert_redirected_to cu_url(@cu)
  end

  test "should destroy cu" do
    assert_difference('Cu.count', -1) do
      delete cu_url(@cu)
    end

    assert_redirected_to cus_url
  end
end
