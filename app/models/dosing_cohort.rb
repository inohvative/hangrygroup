class DosingCohort < ApplicationRecord
  # Direct associations

  has_many   :subjects,
             :foreign_key => "cohort_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
