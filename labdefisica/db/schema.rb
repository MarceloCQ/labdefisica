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

ActiveRecord::Schema.define(version: 20160919030931) do

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
    t.datetime "fecha_hora"
    t.integer  "duracion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maestros", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "materia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "usuarios", id: false, force: :cascade do |t|
    t.string   "matricula",  null: false
    t.string   "correo"
    t.integer  "rol"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
