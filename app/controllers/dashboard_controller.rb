class DashboardController < ApplicationController
  def index
    @user_port_calls = PortCall.where(terminal_id: current_user.terminal_id)
    @user_upcoming_port_calls = PortCall.where(terminal_id: current_user.terminal_id)
  end
end
