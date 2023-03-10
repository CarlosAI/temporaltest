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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_221906) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "abusos", force: :cascade do |t|
    t.string "cliente"
    t.datetime "fecha"
    t.string "unidad"
    t.integer "tipo_contrato"
    t.string "operador"
    t.integer "tipo_abuso"
    t.text "abuso_presentado"
    t.float "costo_total"
    t.integer "reporta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.string "tipo_contrato"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "folio_abusos", force: :cascade do |t|
    t.string "folio"
    t.string "cliente"
    t.datetime "fecha"
    t.string "unidad"
    t.integer "tipo_contrato"
    t.string "operador"
    t.integer "tipo_abuso"
    t.text "abuso_presentado"
    t.float "costo_total"
    t.string "reporta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reporte_abusos", force: :cascade do |t|
    t.string "tipo_abuso"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_table", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "name"
  end

end
