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

ActiveRecord::Schema.define(version: 2019_05_23_084930) do

  create_table "crimes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inmate_crimes", force: :cascade do |t|
    t.integer "crime_id"
    t.integer "inmate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crime_id"], name: "index_inmate_crimes_on_crime_id"
    t.index ["inmate_id"], name: "index_inmate_crimes_on_inmate_id"
  end

  create_table "inmates", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.boolean "death_row", default: true
    t.integer "prison_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prison_id"], name: "index_inmates_on_prison_id"
  end

  create_table "prisons", force: :cascade do |t|
    t.string "name"
    t.string "banner_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
