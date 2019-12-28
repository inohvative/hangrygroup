class InsulinBolu < ApplicationRecord
  # Direct associations

  has_many   :meals,
             :foreign_key => "insulinunits_id",
             :dependent => :destroy

  belongs_to :subject

  # Indirect associations

  # Validations

end
