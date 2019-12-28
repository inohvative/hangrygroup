class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :carbs_g
      t.integer :mealtime_id
      t.integer :glucoselevel_id
      t.integer :insulinunits_id
      t.string :nurse_notes

      t.timestamps
    end
  end
end
