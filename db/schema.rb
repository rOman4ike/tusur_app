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

ActiveRecord::Schema.define(version: 20220905163414) do

  create_table "exams", force: :cascade do |t|
    t.string   "subject"
    t.integer  "points"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "exams", ["user_id"], name: "index_exams_on_user_id"

  create_table "selected_specialties", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "specialty_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "selected_specialties", ["specialty_id"], name: "index_selected_specialties_on_specialty_id"
  add_index "selected_specialties", ["user_id"], name: "index_selected_specialties_on_user_id"

  create_table "specialties", force: :cascade do |t|
    t.string   "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "budget"
  end

  create_table "specialty_subjects", force: :cascade do |t|
    t.string   "subject"
    t.integer  "points"
    t.integer  "specialty_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "specialty_subjects", ["specialty_id"], name: "index_specialty_subjects_on_specialty_id"

  create_table "user_photos", force: :cascade do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size",    limit: 8
    t.datetime "avatar_updated_at"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "user_photos", ["user_id"], name: "index_user_photos_on_user_id"

  create_table "user_residences", force: :cascade do |t|
    t.string   "country"
    t.string   "region"
    t.string   "city"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_residences", ["user_id"], name: "index_user_residences_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "patronymic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.date     "birthday"
    t.string   "gender"
    t.string   "phone"
    t.boolean  "agreement"
  end

end
