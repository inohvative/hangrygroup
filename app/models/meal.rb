class Meal < ApplicationRecord
  # Direct associations

  belongs_to :insulinunits,
             :class_name => "InsulinBolu"

  belongs_to :glucoseleve,
             :class_name => "GlucoseLevel",
             :foreign_key => "glucoselevel_id"

  belongs_to :mealtime,
             :class_name => "MealTime"

  # Indirect associations

  has_one    :subject,
             :through => :glucoseleve,
             :source => :subject

  # Validations

end
