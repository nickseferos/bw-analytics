require 'test_helper'

class TerminalAnalyticsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get terminal_analytics_index_url
    assert_response :success
  end

end
