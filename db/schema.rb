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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170406045849) do
=======
ActiveRecord::Schema.define(version: 20170406050338) do
>>>>>>> master

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourites", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["user_id"], name: "index_favourites_on_user_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "properties", force: :cascade do |t|
    t.string   "category"
    t.string   "suburb"
    t.string   "address"
    t.decimal  "location"
    t.string   "status"
    t.integer  "car_space"
    t.integer  "bike_space"
    t.string   "town_planning_permit"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "favourite_id"
    t.string   "development_key"
    t.index ["favourite_id"], name: "index_properties_on_favourite_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "favourites", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "properties", "favourites"
end
