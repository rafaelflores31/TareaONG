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

ActiveRecord::Schema.define(version: 20140609195838) do

  create_table "children", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "nursery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "guardians", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kids", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.text     "record"
    t.integer  "nursery_id"
    t.integer  "guardian_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "email"
    t.integer  "nursery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nurseries", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.text     "address"
    t.text     "purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purposes", force: true do |t|
    t.string   "description"
    t.integer  "nursery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "full_name"
    t.string   "user"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nursery_id"
  end

end
