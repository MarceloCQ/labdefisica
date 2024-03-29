# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161120171302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_teachers", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_teachers", ["course_id"], name: "index_course_teachers_on_course_id", using: :btree
  add_index "course_teachers", ["teacher_id"], name: "index_course_teachers_on_teacher_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: :cascade do |t|
    t.integer "user_id"
    t.integer "practice_id"
    t.integer "grade"
  end

  add_index "grades", ["practice_id"], name: "index_grades_on_practice_id", using: :btree
  add_index "grades", ["user_id"], name: "index_grades_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "timetable_id"
    t.integer  "course_id"
    t.string   "classroom"
    t.integer  "seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["course_id"], name: "index_groups_on_course_id", using: :btree
  add_index "groups", ["timetable_id"], name: "index_groups_on_timetable_id", using: :btree
  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "practices", force: :cascade do |t|
    t.integer "group_id"
    t.string  "name"
    t.integer "practice_no"
    t.text    "description"
  end

  add_index "practices", ["group_id"], name: "index_practices_on_group_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timetables", force: :cascade do |t|
    t.integer  "day"
    t.time     "start_time"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "group_id"
    t.string   "student_id",                             null: false
    t.string   "mail"
    t.integer  "role",                   default: 1
    t.string   "name"
    t.string   "last_name"
    t.boolean  "active",                 default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "course_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["course_id"], name: "index_users_on_course_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["group_id"], name: "index_users_on_group_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["teacher_id"], name: "index_users_on_teacher_id", using: :btree

  add_foreign_key "users", "courses"
end
