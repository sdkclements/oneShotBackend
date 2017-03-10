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

ActiveRecord::Schema.define(version: 20170310205558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chasers", force: :cascade do |t|
    t.string  "author"
    t.string  "content"
    t.integer "shot_id"
    t.index ["shot_id"], name: "index_chasers_on_shot_id", using: :btree
  end

  create_table "shots", force: :cascade do |t|
    t.string  "title"
    t.string  "author"
    t.string  "content"
    t.integer "tab_id"
    t.index ["tab_id"], name: "index_shots_on_tab_id", using: :btree
  end

  create_table "tabs", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  add_foreign_key "chasers", "shots"
  add_foreign_key "shots", "tabs"
end
