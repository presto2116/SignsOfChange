# encoding: UTF-8


ActiveRecord::Schema.define(version: 20150421195736) do

  enable_extension "plpgsql"

  create_table "adults", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_responses", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "question_id"
    t.boolean  "response"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "question"
    t.text     "info_image"
    t.text     "info_text"
    t.text     "story_head"
    t.text     "story_video"
    t.text     "story_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "signs", force: :cascade do |t|
    t.text     "sign_source"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "age"
    t.string   "location"
    t.boolean  "victim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
