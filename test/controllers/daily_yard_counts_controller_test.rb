require 'test_helper'

class DailyYardCountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_yard_count = daily_yard_counts(:one)
  end

  test "should get index" do
    get daily_yard_counts_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_yard_count_url
    assert_response :success
  end

  test "should create daily_yard_count" do
    assert_difference('DailyYardCount.count') do
      post daily_yard_counts_url, params: { daily_yard_count: { date: @daily_yard_count.date, detained: @daily_yard_count.detained, note: @daily_yard_count.note, terminal_id: @daily_yard_count.terminal_id, transactions: @daily_yard_count.transactions, trucks: @daily_yard_count.trucks, turntime: @daily_yard_count.turntime } }
    end

    assert_redirected_to daily_yard_count_url(DailyYardCount.last)
  end

  test "should show daily_yard_count" do
    get daily_yard_count_url(@daily_yard_count)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_yard_count_url(@daily_yard_count)
    assert_response :success
  end

  test "should update daily_yard_count" do
    patch daily_yard_count_url(@daily_yard_count), params: { daily_yard_count: { date: @daily_yard_count.date, detained: @daily_yard_count.detained, note: @daily_yard_count.note, terminal_id: @daily_yard_count.terminal_id, transactions: @daily_yard_count.transactions, trucks: @daily_yard_count.trucks, turntime: @daily_yard_count.turntime } }
    assert_redirected_to daily_yard_count_url(@daily_yard_count)
  end

  test "should destroy daily_yard_count" do
    assert_difference('DailyYardCount.count', -1) do
      delete daily_yard_count_url(@daily_yard_count)
    end

    assert_redirected_to daily_yard_counts_url
  end
end
