class Subject < ApplicationRecord
  # Direct associations

  has_many   :glucose_levels,
             :dependent => :destroy

  has_many   :insulin_bolus,
             :dependent => :destroy

  belongs_to :cohort,
             :class_name => "DosingCohort"

  # Indirect associations

  # Validations

end
