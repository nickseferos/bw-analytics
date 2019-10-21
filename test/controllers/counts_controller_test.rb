require 'test_helper'

class CountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @count = counts(:one)
  end

  test "should get index" do
    get counts_url
    assert_response :success
  end

  test "should get new" do
    get new_count_url
    assert_response :success
  end

  test "should create count" do
    assert_difference('Count.count') do
      post counts_url, params: { count: { crane_operator_id: @count.crane_operator_id, move: @count.move, shift_id: @count.shift_id, time_exception: @count.time_exception } }
    end

    assert_redirected_to count_url(Count.last)
  end

  test "should show count" do
    get count_url(@count)
    assert_response :success
  end

  test "should get edit" do
    get edit_count_url(@count)
    assert_response :success
  end

  test "should update count" do
    patch count_url(@count), params: { count: { crane_operator_id: @count.crane_operator_id, move: @count.move, shift_id: @count.shift_id, time_exception: @count.time_exception } }
    assert_redirected_to count_url(@count)
  end

  test "should destroy count" do
    assert_difference('Count.count', -1) do
      delete count_url(@count)
    end

    assert_redirected_to counts_url
  end
end
