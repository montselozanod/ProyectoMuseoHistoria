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

ActiveRecord::Schema.define(version: 20160511030246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "answers", force: true do |t|
    t.text     "textAnswer"
    t.boolean  "active"
    t.string   "imgURL"
    t.integer  "pregunta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "correct"
  end

  add_index "answers", ["pregunta_id"], name: "index_answers_on_pregunta_id", using: :btree

  create_table "exposicions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "museo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imgURL"
    t.string   "etype"
    t.boolean  "active"
  end

  add_index "exposicions", ["museo_id"], name: "index_exposicions_on_museo_id", using: :btree

  create_table "museos", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "imgURL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pregunta", force: true do |t|
    t.text     "description"
    t.text     "extraInfo"
    t.string   "imgURL"
    t.boolean  "active"
    t.integer  "sala_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pregunta", ["sala_id"], name: "index_pregunta_on_sala_id", using: :btree

  create_table "preguntas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salas", force: true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "mapImgURL"
    t.text     "description"
    t.integer  "exposicion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "salas", ["exposicion_id"], name: "index_salas_on_exposicion_id", using: :btree

  create_table "trypoints", force: true do |t|
    t.integer  "points"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "numTry"
    t.string   "museo"
    t.string   "sala"
  end

  add_index "trypoints", ["user_id"], name: "index_trypoints_on_user_id", using: :btree

  create_table "users", force: true do |t|
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
    t.integer  "currentPoints"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
