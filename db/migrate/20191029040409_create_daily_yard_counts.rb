class CreateDailyYardCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_yard_counts do |t|
      t.date :date
      t.integer :trucks
      t.integer :transactions
      t.integer :detained
      t.time :turntime
      t.text :note
      t.references :terminal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
