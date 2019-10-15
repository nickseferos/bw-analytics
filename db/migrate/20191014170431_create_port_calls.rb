class CreatePortCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :port_calls do |t|
      t.references :voyage, null: false, foreign_key: true
      t.references :terminal, null: false, foreign_key: true
      t.datetime :eta
      t.datetime :ata
      t.datetime :etd
      t.datetime :atd
      t.boolean :departed

      t.timestamps
    end
  end
end
