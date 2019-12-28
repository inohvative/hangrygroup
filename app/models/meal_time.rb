class MealTime < ApplicationRecord
  # Direct associations

  has_many   :meals,
             :foreign_key => "mealtime_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
