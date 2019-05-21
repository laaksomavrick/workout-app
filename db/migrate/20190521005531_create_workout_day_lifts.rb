class CreateWorkoutDayLifts < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_day_lifts do |t|
      t.references :workout_day, index: true, foreign_key: true
      t.references :lift, index: true, foreign_key: true
      t.integer :reps, null: false
      t.integer :one_rep_max_percentage, null: false
      t.timestamps
    end
  end
end
