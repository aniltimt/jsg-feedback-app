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

ActiveRecord::Schema.define(version: 20161101080436) do

  create_table "feedbacks", force: :cascade do |t|
    t.string   "crew_name",          limit: 255
    t.string   "passanger_name",     limit: 255
    t.string   "aircraft_name",      limit: 255
    t.string   "video_file_name",    limit: 255
    t.string   "video_content_type", limit: 255
    t.integer  "video_file_size",    limit: 4
    t.datetime "video_updated_at"
    t.text     "feedback_text",      limit: 65535
    t.boolean  "status"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

end
