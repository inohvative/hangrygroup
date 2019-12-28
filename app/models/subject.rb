class Subject < ApplicationRecord
  # Direct associations

  belongs_to :cohort,
             :class_name => "DosingCohort"

  # Indirect associations

  # Validations

end
