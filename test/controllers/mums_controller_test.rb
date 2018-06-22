require 'test_helper'

class MumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mum = mums(:one)
  end

  test "should get index" do
    get mums_url
    assert_response :success
  end

  test "should get new" do
    get new_mum_url
    assert_response :success
  end

  test "should create mum" do
    assert_difference('Mum.count') do
      post mums_url, params: { mum: { married: @mum.married, name: @mum.name, relation: @mum.relation } }
    end

    assert_redirected_to mum_url(Mum.last)
  end

  test "should show mum" do
    get mum_url(@mum)
    assert_response :success
  end

  test "should get edit" do
    get edit_mum_url(@mum)
    assert_response :success
  end

  test "should update mum" do
    patch mum_url(@mum), params: { mum: { married: @mum.married, name: @mum.name, relation: @mum.relation } }
    assert_redirected_to mum_url(@mum)
  end

  test "should destroy mum" do
    assert_difference('Mum.count', -1) do
      delete mum_url(@mum)
    end

    assert_redirected_to mums_url
  end
end
