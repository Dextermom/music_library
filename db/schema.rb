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

ActiveRecord::Schema.define(version: 20180305025313) do

  create_table "ensembles", force: :cascade do |t|
    t.string "title"
    t.string "composer"
    t.string "publisher"
    t.string "voicing"
    t.integer "pml"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer "solo_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["solo_id"], name: "index_entries_on_solo_id"
    t.index ["student_id"], name: "index_entries_on_student_id"
  end

  create_table "groups", force: :cascade do |t|
    t.integer "student_id"
    t.integer "ensemble_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ensemble_id"], name: "index_groups_on_ensemble_id"
    t.index ["student_id"], name: "index_groups_on_student_id"
  end

  create_table "solos", force: :cascade do |t|
    t.string "title"
    t.string "composer"
    t.integer "PML"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "grad_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
