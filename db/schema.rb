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

ActiveRecord::Schema.define(version: 20130921225208) do

  create_table "adults", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", force: true do |t|
    t.integer  "time"
    t.string   "subject"
    t.integer  "points"
    t.boolean  "completed"
    t.datetime "due_date"
    t.string   "frequency"
    t.integer  "teacher_id"
    t.integer  "kid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kids", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adult_id"
  end

  create_table "rewards", force: true do |t|
    t.string   "name"
    t.integer  "points_to_redeem"
    t.integer  "adult_id"
    t.integer  "kid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "username"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
