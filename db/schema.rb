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

ActiveRecord::Schema.define(version: 20140610231202) do

  create_table "categories", force: true do |t|
    t.text     "es_description"
    t.text     "en_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chapters", force: true do |t|
    t.text     "es_description"
    t.text     "en_description"
    t.integer  "category_id"
    t.integer  "version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", force: true do |t|
    t.text     "es_description"
    t.text     "en_description"
    t.integer  "quadrant"
    t.integer  "inner_quadrant"
    t.integer  "quadrant_type"
    t.integer  "subchapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multimedia", force: true do |t|
    t.integer  "type"
    t.text     "url"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "es_description"
    t.string   "en_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_chapter_profiles", force: true do |t|
    t.integer  "subchapter_id"
    t.integer  "profile_id"
    t.boolean  "relevant"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_chapter_profiles", ["subchapter_id", "profile_id"], name: "index_sub_chapter_profiles_on_subchapter_id_and_profile_id"

  create_table "subchapters", force: true do |t|
    t.text     "es_description"
    t.text     "en_description"
    t.integer  "chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggestions", force: true do |t|
    t.integer  "profile_id"
    t.boolean  "relevant"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chapter_id"
  end

  add_index "suggestions", ["chapter_id", "profile_id"], name: "index_suggestions_on_chapter_id_and_profile_id", unique: true
  add_index "suggestions", ["profile_id"], name: "index_suggestions_on_subchapter_id_and_profile_id", unique: true

  create_table "versions", force: true do |t|
    t.integer  "year"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
