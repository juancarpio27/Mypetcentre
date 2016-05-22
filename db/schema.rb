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

ActiveRecord::Schema.define(version: 20160518044809) do

  create_table "comments", force: :cascade do |t|
    t.string   "information"
    t.integer  "rating"
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "service_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.string   "photo"
    t.integer  "user_id"
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "sex"
    t.date     "birth"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.integer  "price"
    t.integer  "deliver"
    t.integer  "status"
    t.integer  "service_id"
    t.integer  "client_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "phone"
    t.integer  "pet_type"
    t.integer  "pet_size"
    t.integer  "quantity"
    t.string   "card_name"
    t.string   "exp_month"
    t.string   "exp_year"
    t.string   "cvv"
    t.string   "card_number"
  end

  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "services", force: :cascade do |t|
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "price"
    t.string   "unit"
    t.integer  "provider_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "location"
    t.string   "photo"
    t.string   "description"
    t.string   "rating"
    t.string   "service_type"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "sex"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "photo"
  end

end
