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

ActiveRecord::Schema.define(version: 20170331000748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mapgs", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "adress"
    t.integer  "memories_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["memories_id"], name: "index_mapgs_on_memories_id", using: :btree
  end

  create_table "memories", force: :cascade do |t|
    t.text     "histoire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
    t.integer  "user_id"
    t.string   "title"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "adress"
    t.date     "date"
    t.index ["user_id"], name: "index_memories_on_user_id", using: :btree
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
    t.string   "firstname"
    t.string   "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "mapgs", "memories", column: "memories_id"
  add_foreign_key "memories", "users"
end
