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

ActiveRecord::Schema[7.1].define(version: 2024_03_28_195333) do
  create_table "jobs", force: :cascade do |t|
    t.string "title", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "given_last_name"
    t.string "gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_jobs", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "job_id", null: false
    t.date "start_date", null: false
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_person_jobs_on_job_id"
    t.index ["person_id"], name: "index_person_jobs_on_person_id"
  end

  create_table "person_relationships", force: :cascade do |t|
    t.string "role_one"
    t.string "role_two"
    t.integer "person_one_id", null: false
    t.integer "person_two_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_one_id"], name: "index_person_relationships_on_person_one_id"
    t.index ["person_two_id"], name: "index_person_relationships_on_person_two_id"
  end

  add_foreign_key "person_jobs", "jobs"
  add_foreign_key "person_jobs", "people"
  add_foreign_key "person_relationships", "people", column: "person_one_id"
  add_foreign_key "person_relationships", "people", column: "person_two_id"
end
