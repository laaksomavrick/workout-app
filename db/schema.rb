# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_21_005531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lifts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", null: false
    t.integer "one_rep_max", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lifts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workout_day_lifts", force: :cascade do |t|
    t.bigint "workout_day_id"
    t.bigint "lift_id"
    t.integer "reps", null: false
    t.integer "one_rep_max_percentage", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lift_id"], name: "index_workout_day_lifts_on_lift_id"
    t.index ["workout_day_id"], name: "index_workout_day_lifts_on_workout_day_id"
  end

  create_table "workout_days", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", null: false
    t.integer "ordinal", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_workout_days_on_user_id"
  end

  add_foreign_key "lifts", "users"
  add_foreign_key "workout_day_lifts", "lifts"
  add_foreign_key "workout_day_lifts", "workout_days"
  add_foreign_key "workout_days", "users"
end
