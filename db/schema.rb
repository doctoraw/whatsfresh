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

ActiveRecord::Schema.define(version: 20150705213627) do

  create_table "countries", force: :cascade do |t|
    t.string   "name",                 null: false
    t.string   "code",       limit: 2, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.text     "links"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "country_id",           null: false
    t.integer  "state_id",             null: false
    t.integer  "food_id",              null: false
    t.integer  "month",      limit: 2, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "seasons", ["country_id"], name: "index_seasons_on_country_id"
  add_index "seasons", ["food_id"], name: "index_seasons_on_food_id"
  add_index "seasons", ["state_id"], name: "index_seasons_on_state_id"

  create_table "states", force: :cascade do |t|
    t.integer  "country_id",           null: false
    t.string   "name",                 null: false
    t.string   "code",       limit: 2, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id"

end
