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

ActiveRecord::Schema.define(version: 20140701072346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.integer  "total_correct"
    t.float    "total_time_points"
    t.string   "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "artist_id"
    t.integer  "playlist_id"
  end

  create_table "playlists", force: true do |t|
    t.string "name"
    t.string "genre"
  end

  create_table "questions", force: true do |t|
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "finish_at"
    t.float    "duration"
    t.integer  "game_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "avatar"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
