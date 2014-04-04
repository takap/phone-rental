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

ActiveRecord::Schema.define(version: 20140404065536) do

  create_table "carriers", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name"
    t.string   "hex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makers", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operating_systems", force: true do |t|
    t.string   "version_name"
    t.integer  "version_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screen_densities", force: true do |t|
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screen_heights", force: true do |t|
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screen_inches", force: true do |t|
    t.float    "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screen_widths", force: true do |t|
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "series", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminal_masters", force: true do |t|
    t.integer  "carrier_id"
    t.integer  "maker_id"
    t.integer  "series_id"
    t.integer  "model_id"
    t.integer  "default_os_id"
    t.integer  "screen_inch_id"
    t.integer  "screen_width_id"
    t.integer  "screen_height_id"
    t.integer  "screen_density_id"
    t.date     "release_date"
    t.integer  "tablet"
    t.integer  "nfc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terminal_masters", ["carrier_id"], name: "index_terminal_masters_on_carrier_id", using: :btree
  add_index "terminal_masters", ["default_os_id"], name: "index_terminal_masters_on_default_os_id", using: :btree
  add_index "terminal_masters", ["maker_id"], name: "index_terminal_masters_on_maker_id", using: :btree
  add_index "terminal_masters", ["model_id"], name: "index_terminal_masters_on_model_id", using: :btree
  add_index "terminal_masters", ["screen_density_id"], name: "index_terminal_masters_on_screen_density_id", using: :btree
  add_index "terminal_masters", ["screen_height_id"], name: "index_terminal_masters_on_screen_height_id", using: :btree
  add_index "terminal_masters", ["screen_inch_id"], name: "index_terminal_masters_on_screen_inch_id", using: :btree
  add_index "terminal_masters", ["screen_width_id"], name: "index_terminal_masters_on_screen_width_id", using: :btree
  add_index "terminal_masters", ["series_id"], name: "index_terminal_masters_on_series_id", using: :btree

  create_table "terminals", force: true do |t|
    t.string   "name"
    t.integer  "terminal_master_id"
    t.integer  "volume"
    t.integer  "color_id"
    t.string   "phone_number"
    t.integer  "updated_os_id"
    t.integer  "place_id"
    t.integer  "wifi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terminals", ["color_id"], name: "index_terminals_on_color_id", using: :btree
  add_index "terminals", ["place_id"], name: "index_terminals_on_place_id", using: :btree
  add_index "terminals", ["terminal_master_id"], name: "index_terminals_on_terminal_master_id", using: :btree
  add_index "terminals", ["updated_os_id"], name: "index_terminals_on_updated_os_id", using: :btree

end
