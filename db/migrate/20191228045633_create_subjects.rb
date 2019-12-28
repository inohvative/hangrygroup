class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :cohort_id
      t.string :profilenotes

      t.timestamps
    end
  end
end
