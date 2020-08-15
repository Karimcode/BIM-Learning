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

ActiveRecord::Schema.define(version: 2020_08_14_210012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.string "starts_at"
    t.integer "duration"
    t.text "description"
    t.text "summary"
    t.text "skills"
    t.text "objectives"
    t.string "name"
    t.string "topic"
    t.string "subtopic"
    t.integer "min_num_of_participants"
    t.integer "max_num_of_participants"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "{:foreign_key=>true}_id"
    t.date "date"
    t.index ["user_id"], name: "index_lessons_on_user_id"
    t.index ["{:foreign_key=>true}_id"], name: "index_lessons_on_{:foreign_key=>true}_id"
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.bigint "user_id"
    t.bigint "lesson_id"
    t.index ["lesson_id"], name: "index_messages_on_lesson_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_participations_on_lesson_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "{:foreign_key=>true}_id"
    t.string "photo_user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["{:foreign_key=>true}_id"], name: "index_users_on_{:foreign_key=>true}_id"
  end

  add_foreign_key "lessons", "users"
  add_foreign_key "messages", "lessons"
  add_foreign_key "messages", "users"
  add_foreign_key "participations", "lessons"
  add_foreign_key "participations", "users"
end
