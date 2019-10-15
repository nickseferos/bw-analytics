require 'test_helper'

class PortCallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @port_call = port_calls(:one)
  end

  test "should get index" do
    get port_calls_url
    assert_response :success
  end

  test "should get new" do
    get new_port_call_url
    assert_response :success
  end

  test "should create port_call" do
    assert_difference('PortCall.count') do
      post port_calls_url, params: { port_call: { ata: @port_call.ata, atd: @port_call.atd, departed: @port_call.departed, eta: @port_call.eta, etd: @port_call.etd, terminal_id: @port_call.terminal_id, voyage_id: @port_call.voyage_id } }
    end

    assert_redirected_to port_call_url(PortCall.last)
  end

  test "should show port_call" do
    get port_call_url(@port_call)
    assert_response :success
  end

  test "should get edit" do
    get edit_port_call_url(@port_call)
    assert_response :success
  end

  test "should update port_call" do
    patch port_call_url(@port_call), params: { port_call: { ata: @port_call.ata, atd: @port_call.atd, departed: @port_call.departed, eta: @port_call.eta, etd: @port_call.etd, terminal_id: @port_call.terminal_id, voyage_id: @port_call.voyage_id } }
    assert_redirected_to port_call_url(@port_call)
  end

  test "should destroy port_call" do
    assert_difference('PortCall.count', -1) do
      delete port_call_url(@port_call)
    end

    assert_redirected_to port_calls_url
  end
end
