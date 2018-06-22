require 'test_helper'

class CousinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cousin = cousins(:one)
  end

  test "should get index" do
    get cousins_url
    assert_response :success
  end

  test "should get new" do
    get new_cousin_url
    assert_response :success
  end

  test "should create cousin" do
    assert_difference('Cousin.count') do
      post cousins_url, params: { cousin: { gender: @cousin.gender, married: @cousin.married, mum_id: @cousin.mum_id, name: @cousin.name } }
    end

    assert_redirected_to cousin_url(Cousin.last)
  end

  test "should show cousin" do
    get cousin_url(@cousin)
    assert_response :success
  end

  test "should get edit" do
    get edit_cousin_url(@cousin)
    assert_response :success
  end

  test "should update cousin" do
    patch cousin_url(@cousin), params: { cousin: { gender: @cousin.gender, married: @cousin.married, mum_id: @cousin.mum_id, name: @cousin.name } }
    assert_redirected_to cousin_url(@cousin)
  end

  test "should destroy cousin" do
    assert_difference('Cousin.count', -1) do
      delete cousin_url(@cousin)
    end

    assert_redirected_to cousins_url
  end
end
