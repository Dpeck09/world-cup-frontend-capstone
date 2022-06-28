# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_16_163413) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "home"
    t.string "away"
    t.string "winner"
    t.integer "game_number"
    t.string "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "next_round"
  end

  create_table "user_games", force: :cascade do |t|
    t.integer "game_number"
    t.string "user_pick"
    t.integer "user_id"
    t.integer "points_awarded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.boolean "bracket_made"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "point_total"
  end

end
