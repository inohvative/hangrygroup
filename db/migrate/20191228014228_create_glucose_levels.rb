class CreateGlucoseLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :glucose_levels do |t|
      t.string :glucose_level
      t.integer :subject_id

      t.timestamps
    end
  end
end
