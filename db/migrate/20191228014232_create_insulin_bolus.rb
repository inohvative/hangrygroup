class CreateInsulinBolus < ActiveRecord::Migration[5.1]
  def change
    create_table :insulin_bolus do |t|
      t.string :name
      t.integer :amount
      t.integer :subject_id

      t.timestamps
    end
  end
end
