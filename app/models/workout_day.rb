class WorkoutDay < ApplicationRecord
  alias_attribute :lifts, :workout_day_lifts

  belongs_to :user
  has_many :workout_day_lifts
end
