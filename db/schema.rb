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

ActiveRecord::Schema.define(version: 20140422015745) do

  create_table "carriers", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "check_events", force: true do |t|
    t.integer  "terminal_id"
    t.integer  "user_id"
    t.integer  "operator_id"
    t.string   "status"
    t.integer  "take_out"
    t.string   "note"
    t.date     "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "check_events", ["operator_id"], name: "index_check_events_on_operator_id", using: :btree
  add_index "check_events", ["terminal_id"], name: "index_check_events_on_terminal_id", using: :btree
  add_index "check_events", ["user_id"], name: "index_check_events_on_user_id", using: :btree

  create_table "check_states", force: true do |t|
    t.integer  "terminal_id"
    t.integer  "user_id"
    t.string   "status"
    t.integer  "take_out"
    t.string   "note"
    t.date     "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "check_states", ["terminal_id"], name: "index_check_states_on_terminal_id", using: :btree
  add_index "check_states", ["user_id"], name: "index_check_states_on_user_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makers", force: true do |t|
    t.string   "name"
    t.string   "name_kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "screen_densities", force: true do |t|
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminal_masters", force: true do |t|
    t.integer  "carrier_id"
    t.integer  "maker_id"
    t.integer  "category_id"
    t.integer  "group_id"
    t.string   "model_name"
    t.string   "default_os"
    t.float    "screen_inch"
    t.integer  "screen_width"
    t.integer  "screen_height"
    t.integer  "screen_density_id"
    t.date     "release_date"
    t.integer  "tablet"
    t.integer  "nfc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terminal_masters", ["carrier_id"], name: "index_terminal_masters_on_carrier_id", using: :btree
  add_index "terminal_masters", ["category_id"], name: "index_terminal_masters_on_category_id", using: :btree
  add_index "terminal_masters", ["group_id"], name: "index_terminal_masters_on_group_id", using: :btree
  add_index "terminal_masters", ["maker_id"], name: "index_terminal_masters_on_maker_id", using: :btree
  add_index "terminal_masters", ["screen_density_id"], name: "index_terminal_masters_on_screen_density_id", using: :btree

  create_table "terminals", force: true do |t|
    t.string   "name"
    t.integer  "terminal_master_id"
    t.integer  "volume"
    t.string   "color"
    t.string   "updated_os"
    t.string   "phone_number"
    t.integer  "sim"
    t.integer  "wifi"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terminals", ["terminal_master_id"], name: "index_terminals_on_terminal_master_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "phone_number"
    t.string   "division"
    t.string   "manager_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
