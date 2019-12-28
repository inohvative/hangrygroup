class CreateDosingCohorts < ActiveRecord::Migration[5.1]
  def change
    create_table :dosing_cohorts do |t|
      t.integer :cohort_123

      t.timestamps
    end
  end
end
