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

ActiveRecord::Schema.define(version: 20140921185607) do

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ad_title"
    t.string   "rent_type"
    t.string   "prise"
    t.string   "area"
    t.string   "owner_type"
    t.string   "condition"
    t.string   "extra"
    t.string   "image_name_file_name"
    t.integer  "image_name_file_size"
    t.string   "image_name_content_type"
    t.datetime "image_name_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "email"
  end

end
