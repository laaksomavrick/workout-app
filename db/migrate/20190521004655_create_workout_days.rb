class CreateWorkoutDays < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_days do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name, null: false
      t.integer :ordinal, null: false
      t.timestamps
    end
  end
end
