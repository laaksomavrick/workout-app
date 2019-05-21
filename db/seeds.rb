# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

lifts_hashes = [
  {name: 'Bench Press', one_rep_max: '250'},
  {name: 'Squat', one_rep_max: '315'},
  {name: 'Deadlift', one_rep_max: '405'},
  {name: 'Overhead Press', one_rep_max: '150'}
]

workout_day_hashes = [
  {name: 'Upper Body Day', ordinal: 0},
  {name: 'Lower Body Day', ordinal: 1}
]

user = User.create(email: Faker::Internet.email, password: 'password')
user.lifts = Lift.create(lifts_hashes)
user.days = WorkoutDay.create(workout_day_hashes)

