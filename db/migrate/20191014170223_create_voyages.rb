class CreateVoyages < ActiveRecord::Migration[6.0]
  def change
    create_table :voyages do |t|
      t.references :vessel, null: false, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
