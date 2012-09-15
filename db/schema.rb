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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120826004418) do

  create_table "categories", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_events", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "category_id"
  end

  create_table "cities", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cities_regions", :id => false, :force => true do |t|
    t.integer "city_id"
    t.integer "region_id"
  end

  add_index "cities_regions", ["city_id"], :name => "index_cities_regions_on_city_id"
  add_index "cities_regions", ["region_id"], :name => "index_cities_regions_on_region_id"

  create_table "countries", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "countries_regions", :id => false, :force => true do |t|
    t.integer "country_id"
    t.integer "region_id"
  end

  create_table "events", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.string   "description"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string   "cost"
    t.string   "website"
    t.integer  "organizer_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "events", ["organizer_id"], :name => "index_events_on_organizer_id"

  create_table "events_locations", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "location_id"
  end

  create_table "events_regions", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "region_id"
  end

  create_table "events_tags", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "tag_id"
  end

  create_table "events_users", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "addresscity"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "sitecity_id"
    t.integer  "city_id"
  end

  create_table "locations_organizers", :id => false, :force => true do |t|
    t.integer "organizer_id"
    t.integer "location_id"
  end

  create_table "locations_users", :force => true do |t|
    t.integer  "location_id"
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "organizers", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "addresscity"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "website"
    t.integer  "city_id"
  end

  create_table "organizers_users", :force => true do |t|
    t.integer  "organizer_id"
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "status_id"
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "type_id"
    t.string   "hear_about"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "regions", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.integer  "status_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "status_id"
    t.string   "email"
    t.string   "hashed_password"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
