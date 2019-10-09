class CreateTerminals < ActiveRecord::Migration[6.0]
  def change
    create_table :terminals do |t|
      t.string :terminal
      t.string :street
      t.string :city
      t.string :postal
      t.references :country, null: false, foreign_key: true
      t.references :port, null: false, foreign_key: true

      t.timestamps
    end
  end
end
