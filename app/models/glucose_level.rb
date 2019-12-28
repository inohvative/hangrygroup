class GlucoseLevel < ApplicationRecord
  # Direct associations

  has_many   :meals,
             :foreign_key => "glucoselevel_id",
             :dependent => :destroy

  belongs_to :subject

  # Indirect associations

  # Validations

end
