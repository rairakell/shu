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

ActiveRecord::Schema.define(version: 20180306113212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: true do |t|
    t.string   "name"
    t.integer  "fiction_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chapters", ["fiction_id"], name: "index_chapters_on_fiction_id", using: :btree

  create_table "characters", force: true do |t|
    t.integer  "fiction_id"
    t.string   "name"
    t.string   "replace"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters", ["fiction_id"], name: "index_characters_on_fiction_id", using: :btree

  create_table "fictions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_links", force: true do |t|
    t.integer  "image_id"
    t.integer  "fiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_links", ["fiction_id"], name: "index_image_links_on_fiction_id", using: :btree
  add_index "image_links", ["image_id"], name: "index_image_links_on_image_id", using: :btree

  create_table "image_series", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_tag_series", force: true do |t|
    t.integer  "image_tag_id"
    t.integer  "image_serie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_tag_series", ["image_serie_id"], name: "index_image_tag_series_on_image_serie_id", using: :btree
  add_index "image_tag_series", ["image_tag_id"], name: "index_image_tag_series_on_image_tag_id", using: :btree

  create_table "image_tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "image_serie_id"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["image_serie_id"], name: "index_images_on_image_serie_id", using: :btree

end
