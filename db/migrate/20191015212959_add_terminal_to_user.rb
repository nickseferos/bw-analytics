class AddTerminalToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :terminal, null: false, foreign_key: true
  end
end
