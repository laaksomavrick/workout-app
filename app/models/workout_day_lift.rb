class WorkoutDayLift < ApplicationRecord
  belongs_to :workout_day

  # todo: weight as a computed property based on one_rep_max_pct
end
