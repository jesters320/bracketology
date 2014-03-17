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

ActiveRecord::Schema.define(version: 20140317010342) do

  create_table "away_scores", force: true do |t|
    t.integer  "ones"
    t.integer  "display_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blocks", force: true do |t|
    t.integer  "user_id"
    t.integer  "home_score_id"
    t.integer  "away_score_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blocks", ["away_score_id"], name: "index_blocks_on_away_score_id"
  add_index "blocks", ["home_score_id"], name: "index_blocks_on_home_score_id"
  add_index "blocks", ["user_id"], name: "index_blocks_on_user_id"

  create_table "games", force: true do |t|
    t.string   "home_team"
    t.string   "away_team"
    t.integer  "home_score"
    t.integer  "away_score"
    t.string   "unique_identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_number"
  end

  create_table "home_scores", force: true do |t|
    t.integer  "ones"
    t.integer  "display_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
