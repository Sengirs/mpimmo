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

ActiveRecord::Schema.define(:version => 20121122110700) do

  create_table "buys", :force => true do |t|
    t.integer  "client_id"
    t.string   "cat"
    t.text     "budget"
    t.integer  "bdr"
    t.integer  "tipe"
    t.text     "surface"
    t.text     "sector1"
    t.text     "sector2"
    t.text     "sector3"
    t.text     "sector4"
    t.text     "ground"
    t.string   "age"
    t.boolean  "travaux"
    t.boolean  "plain"
    t.boolean  "garage"
    t.string   "standing"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.integer  "num_client"
    t.string   "surname1"
    t.string   "surname2"
    t.string   "name1"
    t.string   "name2"
    t.text     "adress"
    t.integer  "zip"
    t.text     "city"
    t.string   "ph1"
    t.string   "ph2"
    t.string   "port1"
    t.string   "port2"
    t.string   "mail1"
    t.string   "mail2"
    t.datetime "date"
    t.string   "canal"
    t.string   "origin"
    t.text     "note"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "attr"
    t.integer  "num_mandat"
    t.boolean  "status"
    t.date     "date1"
    t.date     "date2"
    t.text     "adress"
    t.integer  "zip"
    t.text     "city"
    t.string   "cat"
    t.decimal  "price1"
    t.decimal  "price2"
    t.decimal  "price3"
    t.decimal  "price4"
    t.string   "etat"
    t.integer  "year"
    t.integer  "tipe"
    t.integer  "bdr"
    t.decimal  "surface"
    t.decimal  "ground"
    t.integer  "story"
    t.text     "sector1"
    t.text     "sector2"
    t.text     "sector3"
    t.text     "sector4"
    t.boolean  "pool"
    t.boolean  "travaux"
    t.text     "travaux_note"
    t.text     "note"
    t.boolean  "vitrine"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sells", :force => true do |t|
    t.integer  "client_id"
    t.integer  "product_id"
    t.date     "date"
    t.string   "origin"
    t.string   "mandat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "steps", :force => true do |t|
    t.integer  "buy_id"
    t.integer  "product_id"
    t.boolean  "status"
    t.date     "date"
    t.string   "origin"
    t.datetime "contact1"
    t.text     "contact1_note"
    t.datetime "contact2"
    t.text     "contact2_note"
    t.datetime "contact3"
    t.text     "contact3_note"
    t.datetime "contact4"
    t.text     "contact4_note"
    t.text     "note"
    t.text     "fail_note"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
