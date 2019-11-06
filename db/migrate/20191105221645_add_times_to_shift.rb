class AddTimesToShift < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :start_date_time, :datetime
  end
end
