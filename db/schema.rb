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

ActiveRecord::Schema.define(version: 2019_10_27_213934) do

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.integer "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_animals_on_owner_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "infections", force: :cascade do |t|
    t.date "date_of_infection"
    t.integer "animal_id", null: false
    t.integer "disease_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_infections_on_animal_id"
    t.index ["disease_id"], name: "index_infections_on_disease_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.string "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "animals", "owners"
  add_foreign_key "infections", "animals"
  add_foreign_key "infections", "diseases"
end
