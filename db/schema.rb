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

ActiveRecord::Schema.define(version: 2018_11_25_093637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "address"
    t.string "zip_code"
    t.string "email"
    t.string "phone"
    t.string "schedule"
    t.bigint "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_contacts_on_language_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "code", null: false
    t.string "country", null: false
    t.string "language", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relevant_links", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "link", null: false
    t.bigint "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_relevant_links_on_language_id"
  end

  create_table "statements", force: :cascade do |t|
    t.string "code", null: false
    t.string "title", null: false
    t.text "text", null: false
    t.bigint "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_statements_on_language_id"
  end

  add_foreign_key "contacts", "languages"
  add_foreign_key "relevant_links", "languages"
  add_foreign_key "statements", "languages"
end
