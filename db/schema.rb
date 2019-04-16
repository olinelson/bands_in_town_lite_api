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

ActiveRecord::Schema.define(version: 2019_04_16_175328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "bands_in_town_id"
    t.string "name"
    t.string "url"
    t.string "image_url"
    t.string "thumb_url"
    t.string "facebook_page_url"
    t.string "mbid"
    t.integer "tracker_count"
    t.integer "upcoming_event_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "bands_in_town_id"
    t.string "artist_id"
    t.string "url"
    t.string "on_sale_datetime"
    t.string "datetime"
    t.string "description"
    t.string "venue_country"
    t.string "venue_city"
    t.string "venue_latitude"
    t.string "venue_name"
    t.string "venue_region"
    t.string "venue_longitude"
    t.string "lineup"
    t.string "ticket_url"
    t.string "ticket_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
