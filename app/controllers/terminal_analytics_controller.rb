class TerminalAnalyticsController < ApplicationController

  def index
    @daily_activity = DailyYardCount.where(terminal_id: current_user.terminal_id)



    # Yard Stats
    @lifetime_transactions = @daily_activity.sum(:transactions)

  end
end
