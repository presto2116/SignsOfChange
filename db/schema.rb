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

ActiveRecord::Schema.define(version: 20150420225523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adults", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signs", force: :cascade do |t|
    t.text     "image"
    t.integer  "student_id"
    t.integer  "adult_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.text     "age"
    t.integer  "location"
    t.boolean  "victim"
    t.boolean  "q1"
    t.boolean  "q2"
    t.boolean  "q3"
    t.boolean  "q4"
    t.boolean  "q5"
    t.boolean  "q6"
    t.boolean  "q7"
    t.boolean  "q8"
    t.boolean  "q9"
    t.boolean  "q10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
