class Meal < ApplicationRecord
  # Direct associations

  belongs_to :mealtime,
             :class_name => "MealTime"

  # Indirect associations

  # Validations

end
