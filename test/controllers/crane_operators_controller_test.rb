require 'test_helper'

class CraneOperatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crane_operator = crane_operators(:one)
  end

  test "should get index" do
    get crane_operators_url
    assert_response :success
  end

  test "should get new" do
    get new_crane_operator_url
    assert_response :success
  end

  test "should create crane_operator" do
    assert_difference('CraneOperator.count') do
      post crane_operators_url, params: { crane_operator: { name: @crane_operator.name, work_id: @crane_operator.work_id } }
    end

    assert_redirected_to crane_operator_url(CraneOperator.last)
  end

  test "should show crane_operator" do
    get crane_operator_url(@crane_operator)
    assert_response :success
  end

  test "should get edit" do
    get edit_crane_operator_url(@crane_operator)
    assert_response :success
  end

  test "should update crane_operator" do
    patch crane_operator_url(@crane_operator), params: { crane_operator: { name: @crane_operator.name, work_id: @crane_operator.work_id } }
    assert_redirected_to crane_operator_url(@crane_operator)
  end

  test "should destroy crane_operator" do
    assert_difference('CraneOperator.count', -1) do
      delete crane_operator_url(@crane_operator)
    end

    assert_redirected_to crane_operators_url
  end
end
