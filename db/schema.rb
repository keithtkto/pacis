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

ActiveRecord::Schema.define(version: 20160226162347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "field"
    t.string   "country"
    t.string   "timezone"
    t.string   "week_start_day"
    t.integer  "owner_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "paystubs", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "period"
    t.float    "current_pay_rate"
    t.float    "total_time"
    t.decimal  "amount"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "paystubs", ["user_id"], name: "index_paystubs_on_user_id", using: :btree

  create_table "shifts", force: :cascade do |t|
    t.boolean  "payed"
    t.datetime "in_at"
    t.datetime "out_at"
    t.float    "lat_in"
    t.float    "long_in"
    t.float    "lat_out"
    t.float    "long_out"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "check_in"
    t.float    "logged_time"
  end

  add_index "shifts", ["user_id"], name: "index_shifts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_num"
    t.string   "title"
    t.decimal  "pay_rate"
    t.string   "born_on"
    t.string   "username"
    t.integer  "access_lvl",      default: 1
    t.integer  "company_id"
    t.string   "password_digest"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree

  add_foreign_key "paystubs", "users"
  add_foreign_key "shifts", "users"
  add_foreign_key "users", "companies"
end
