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

ActiveRecord::Schema.define(version: 20160302164132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "iteration_id"
    t.integer  "actable_id"
    t.string   "actable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "answers", ["iteration_id"], name: "index_answers_on_iteration_id", using: :btree

  create_table "item_answers", force: :cascade do |t|
    t.integer "respondent_id"
    t.integer "item_id"
  end

  add_index "item_answers", ["item_id"], name: "index_item_answers_on_item_id", using: :btree
  add_index "item_answers", ["respondent_id"], name: "index_item_answers_on_respondent_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "label"
    t.integer  "rank"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["question_id"], name: "index_items_on_question_id", using: :btree

  create_table "iterations", force: :cascade do |t|
    t.integer  "number"
    t.string   "label"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "iterations", ["question_id"], name: "index_iterations_on_question_id", using: :btree

  create_table "numeric_answers", force: :cascade do |t|
    t.string  "content"
    t.integer "respondent_id"
  end

  add_index "numeric_answers", ["respondent_id"], name: "index_numeric_answers_on_respondent_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.string   "label"
    t.string   "kind"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["survey_id"], name: "index_questions_on_survey_id", using: :btree

  create_table "respondents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id", using: :btree

  create_table "text_answers", force: :cascade do |t|
    t.string  "content"
    t.integer "respondent_id"
  end

  add_index "text_answers", ["respondent_id"], name: "index_text_answers_on_respondent_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "answers", "iterations"
  add_foreign_key "item_answers", "items"
  add_foreign_key "item_answers", "respondents"
  add_foreign_key "items", "questions"
  add_foreign_key "iterations", "questions"
  add_foreign_key "numeric_answers", "respondents"
  add_foreign_key "questions", "surveys"
  add_foreign_key "surveys", "users"
  add_foreign_key "text_answers", "respondents"
end
