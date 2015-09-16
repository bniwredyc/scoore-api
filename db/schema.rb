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

ActiveRecord::Schema.define(version: 20150916201908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.date     "birth_date"
    t.string   "country"
    t.string   "city"
    t.integer  "gender_cd",           default: 0
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "tv_avatar"
    t.integer  "years"
    t.integer  "discipline_id",                   null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "athletes_contests", id: false, force: :cascade do |t|
    t.integer "athlete_id", null: false
    t.integer "contest_id", null: false
  end

  add_index "athletes_contests", ["athlete_id"], name: "index_athletes_contests_on_athlete_id", using: :btree
  add_index "athletes_contests", ["contest_id"], name: "index_athletes_contests_on_contest_id", using: :btree

  create_table "athletes_events", id: false, force: :cascade do |t|
    t.integer "athlete_id"
    t.integer "event_id"
  end

  add_index "athletes_events", ["athlete_id"], name: "index_athletes_events_on_athlete_id", using: :btree
  add_index "athletes_events", ["event_id"], name: "index_athletes_events_on_event_id", using: :btree

  create_table "athletes_organizations", id: false, force: :cascade do |t|
    t.integer "athlete_id",      null: false
    t.integer "organization_id", null: false
  end

  add_index "athletes_organizations", ["athlete_id"], name: "index_athletes_organizations_on_athlete_id", using: :btree
  add_index "athletes_organizations", ["organization_id"], name: "index_athletes_organizations_on_organization_id", using: :btree

  create_table "attempts", force: :cascade do |t|
    t.integer  "performance_id", null: false
    t.integer  "group_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "contests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.integer  "event_id",                       null: false
    t.integer  "discipline_id",                  null: false
    t.datetime "start_datetime"
    t.string   "type"
    t.boolean  "is_started",     default: false, null: false
    t.boolean  "is_ended",       default: false, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "contests_event_judges", id: false, force: :cascade do |t|
    t.integer "contest_id",     null: false
    t.integer "event_judge_id", null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_judges", force: :cascade do |t|
    t.integer  "event_id",   null: false
    t.integer  "judge_id",   null: false
    t.string   "pin",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "judges", force: :cascade do |t|
    t.string   "first_name",    null: false
    t.string   "last_name",     null: false
    t.string   "country"
    t.string   "city"
    t.string   "email"
    t.integer  "discipline_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "athlete_id", null: false
    t.integer  "contest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performances", force: :cascade do |t|
    t.integer  "participation_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "value",      null: false
    t.integer  "judge_id",   null: false
    t.integer  "attempt_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "organization_id",                     null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["organization_id"], name: "index_users_on_organization_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
