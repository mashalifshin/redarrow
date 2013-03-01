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

ActiveRecord::Schema.define(:version => 20130301232209) do

  create_table "about_infos", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "live",       :default => false
    t.string   "image"
    t.integer  "info_order"
  end

  create_table "announcements", :force => true do |t|
    t.string   "text"
    t.string   "link_target"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "live"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "artist_images", :force => true do |t|
    t.string   "image"
    t.integer  "artist_id"
    t.string   "title"
    t.integer  "year"
    t.string   "media"
    t.string   "dimensions"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "thumbnail_order"
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "live",       :default => false
    t.string   "cv"
    t.string   "press"
    t.text     "statement"
    t.integer  "user_id"
  end

  create_table "client_images", :force => true do |t|
    t.string   "image"
    t.string   "artist"
    t.string   "title"
    t.integer  "year"
    t.string   "media"
    t.string   "dimensions"
    t.text     "comment"
    t.integer  "view_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.boolean  "live"
  end

  create_table "contact_infos", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "live",       :default => false
    t.integer  "info_order"
  end

  create_table "exhibition_images", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "image"
    t.integer  "exhibition_id"
    t.string   "artist"
    t.string   "title"
    t.integer  "year"
    t.string   "media"
    t.string   "dimensions"
    t.integer  "thumbnail_order"
  end

  create_table "exhibitions", :force => true do |t|
    t.string   "title"
    t.datetime "reception_date"
    t.date     "opening"
    t.date     "closing"
    t.text     "description"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.boolean  "live",               :default => false
    t.string   "artists"
    t.time     "reception_end_time"
    t.string   "press_release"
    t.string   "poster"
  end

  create_table "history_infos", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "live"
  end

  create_table "mailing_list_contacts", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "slideshow_images", :force => true do |t|
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "image"
    t.boolean  "live",       :default => false
    t.string   "caption"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
