require 'test_helper'

class SteamshiplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @steamshipline = steamshiplines(:one)
  end

  test "should get index" do
    get steamshiplines_url
    assert_response :success
  end

  test "should get new" do
    get new_steamshipline_url
    assert_response :success
  end

  test "should create steamshipline" do
    assert_difference('Steamshipline.count') do
      post steamshiplines_url, params: { steamshipline: { country_id: @steamshipline.country_id, name: @steamshipline.name } }
    end

    assert_redirected_to steamshipline_url(Steamshipline.last)
  end

  test "should show steamshipline" do
    get steamshipline_url(@steamshipline)
    assert_response :success
  end

  test "should get edit" do
    get edit_steamshipline_url(@steamshipline)
    assert_response :success
  end

  test "should update steamshipline" do
    patch steamshipline_url(@steamshipline), params: { steamshipline: { country_id: @steamshipline.country_id, name: @steamshipline.name } }
    assert_redirected_to steamshipline_url(@steamshipline)
  end

  test "should destroy steamshipline" do
    assert_difference('Steamshipline.count', -1) do
      delete steamshipline_url(@steamshipline)
    end

    assert_redirected_to steamshiplines_url
  end
end
