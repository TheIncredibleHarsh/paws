# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_09_094824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "species"
    t.string "age"
    t.string "handler"
    t.bigint "employee_id", null: false
    t.bigint "shelter_id", null: false
    t.index ["employee_id"], name: "index_animals_on_employee_id"
    t.index ["shelter_id"], name: "index_animals_on_shelter_id"
  end

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "string"
    t.string "name"
    t.string "email"
    t.bigint "shelter_id", null: false
    t.index ["shelter_id"], name: "index_employees_on_shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "address"
    t.string "website"
  end

  add_foreign_key "animals", "employees"
  add_foreign_key "animals", "shelters"
  add_foreign_key "employees", "shelters"
end
