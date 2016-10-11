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

ActiveRecord::Schema.define(version: 20161005210445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calificaciones", force: :cascade do |t|
    t.integer  "registro_id"
    t.float    "calificacion"
    t.integer  "numero_practica"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calificaciones", ["registro_id"], name: "index_calificaciones_on_registro_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "timetable_id"
    t.string   "classroom"
    t.integer  "seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["timetable_id"], name: "index_groups_on_timetable_id", using: :btree
  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "grupos", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "horario_id"
    t.string   "salon"
    t.integer  "lugares"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grupos", ["horario_id"], name: "index_grupos_on_horario_id", using: :btree
  add_index "grupos", ["usuario_id"], name: "index_grupos_on_usuario_id", using: :btree

  create_table "horarios", force: :cascade do |t|
    t.integer  "duracion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dia"
    t.time     "hora"
  end

  create_table "maestros", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "materia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "teacher_id"
    t.string   "course"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["group_id"], name: "index_records_on_group_id", using: :btree
  add_index "records", ["teacher_id"], name: "index_records_on_teacher_id", using: :btree
  add_index "records", ["user_id"], name: "index_records_on_user_id", using: :btree

  create_table "registros", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "grupo_id"
    t.integer  "maestro_id"
    t.string   "materia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registros", ["grupo_id"], name: "index_registros_on_grupo_id", using: :btree
  add_index "registros", ["maestro_id"], name: "index_registros_on_maestro_id", using: :btree
  add_index "registros", ["usuario_id"], name: "index_registros_on_usuario_id", using: :btree

  create_table "scores", force: :cascade do |t|
    t.integer  "record_id"
    t.float    "score"
    t.integer  "practice_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["record_id"], name: "index_scores_on_record_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "course"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", id: false, force: :cascade do |t|
    t.string   "matricula",                              null: false
    t.string   "correo"
    t.integer  "rol"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "activado",               default: false
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
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
