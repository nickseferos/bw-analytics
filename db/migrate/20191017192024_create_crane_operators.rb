class CreateCraneOperators < ActiveRecord::Migration[6.0]
  def change
    create_table :crane_operators do |t|
      t.string :work_id
      t.string :name

      t.timestamps
    end

    add_index :crane_operators, :work_id
  end
end
