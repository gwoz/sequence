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

ActiveRecord::Schema.define(version: 20160416021505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entities", force: :cascade do |t|
    t.string   "name"
    t.integer  "entity_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "entities", ["entity_type_id"], name: "index_entities_on_entity_type_id", using: :btree

  create_table "entity_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implementations", force: :cascade do |t|
    t.text     "description"
    t.integer  "entity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "implementations", ["entity_id"], name: "index_implementations_on_entity_id", using: :btree

  create_table "user_implementations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "implementation_id"
  end

  add_index "user_implementations", ["implementation_id"], name: "index_user_implementations_on_implementation_id", using: :btree
  add_index "user_implementations", ["user_id"], name: "index_user_implementations_on_user_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "user_type_id"
    t.integer  "entity_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["entity_id"], name: "index_users_on_entity_id", using: :btree
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

  add_foreign_key "entities", "entity_types"
  add_foreign_key "implementations", "entities"
  add_foreign_key "user_implementations", "implementations"
  add_foreign_key "user_implementations", "users"
  add_foreign_key "users", "entities"
  add_foreign_key "users", "user_types"
end
