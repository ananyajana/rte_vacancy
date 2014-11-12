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

ActiveRecord::Schema.define(:version => 20141101111251) do

  create_table "classtables", :force => true do |t|
    t.integer  "school_id", :null => false, :references => [:schools, :id]
    t.integer  "class_no"
    t.integer  "gen_seats"
    t.integer  "obc_seats"
    t.integer  "sc_seats"
    t.integer  "st_seats"
    t.integer  "other_seats"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "schools", :force => true do |t|
    t.integer  "user_id", :null => false, :references => [:users, :id]
    t.string   "reg_id"
    t.string   "school_name"
    t.text     "address"
    t.string   "district"
    t.string   "state"
    t.integer  "pin"
    t.string   "phone"
    t.string   "phone2"
    t.string   "email_id"
    t.string   "fax"
    t.decimal  "latitude",    :precision => 10, :scale => 0
    t.decimal  "longitude",   :precision => 10, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "password_reset_token"
    t.datetime "password_expires_after"
    t.string   "authentication_token"
    t.datetime "last_signed_in_on"
    t.datetime "signed_up_on"
    t.boolean  "is_admin"
  end

end
