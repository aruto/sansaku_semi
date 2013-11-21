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

ActiveRecord::Schema.define(version: 20130930050523) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checkins", force: true do |t|
    t.integer  "member_id"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "checkins", ["member_id"], name: "index_checkins_on_member_id"
  add_index "checkins", ["place_id"], name: "index_checkins_on_place_id"

  create_table "initials", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.integer  "zoom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.float    "altitude"
    t.float    "accuracy"
    t.float    "altitude_accuracy"
    t.float    "heading"
    t.float    "speed"
    t.integer  "error_code"
    t.datetime "timestamp"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["member_id"], name: "index_locations_on_member_id"

  create_table "members", force: true do |t|
    t.string   "user"
    t.string   "password_digest"
    t.boolean  "administrator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_maps", force: true do |t|
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_maps", ["member_id"], name: "index_my_maps_on_member_id"

  create_table "place_images", force: true do |t|
    t.integer  "place_id"
    t.binary   "data"
    t.string   "content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.float    "lat"
    t.float    "lng"
    t.text     "description"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["category_id"], name: "index_places_on_category_id"
  add_index "places", ["type_id"], name: "index_places_on_type_id"

  create_table "types", force: true do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "way_points", force: true do |t|
    t.integer  "place_id"
    t.integer  "my_map_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "way_points", ["my_map_id"], name: "index_way_points_on_my_map_id"
  add_index "way_points", ["place_id"], name: "index_way_points_on_place_id"

end
