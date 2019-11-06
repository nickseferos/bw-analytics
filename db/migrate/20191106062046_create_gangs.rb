class CreateGangs < ActiveRecord::Migration[6.0]
  def change
    create_table :gangs do |t|
      t.references :crane_operator, null: false, foreign_key: true
      t.references :shift, null: false, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
