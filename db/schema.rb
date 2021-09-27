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

ActiveRecord::Schema.define(version: 2021_09_27_042757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.bigint "genre_id", null: false
    t.bigint "country_id", null: false
    t.text "real_photo"
    t.text "cartoon_photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_people_on_country_id"
    t.index ["genre_id"], name: "index_people_on_genre_id"
  end

  create_table "school_has_professors", force: :cascade do |t|
    t.bigint "school_id", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_school_has_professors_on_person_id"
    t.index ["school_id"], name: "index_school_has_professors_on_school_id"
  end

  create_table "school_houses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.bigint "school_house_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_house_id"], name: "index_schools_on_school_house_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "school_house_id", null: false
    t.bigint "school_id", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_students_on_person_id"
    t.index ["school_house_id"], name: "index_students_on_school_house_id"
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  add_foreign_key "people", "countries"
  add_foreign_key "people", "genres"
  add_foreign_key "school_has_professors", "people"
  add_foreign_key "school_has_professors", "schools"
  add_foreign_key "schools", "school_houses"
  add_foreign_key "students", "people"
  add_foreign_key "students", "school_houses"
  add_foreign_key "students", "schools"
end
