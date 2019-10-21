class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.string :plan_moves
      t.string :actual_moves
      t.references :port_call, null: false, foreign_key: true

      t.timestamps
    end
  end
end
