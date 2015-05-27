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

ActiveRecord::Schema.define(version: 20150527155556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.text     "image"
    t.text     "name"
    t.text     "description"
    t.text     "brand"
    t.text     "category"
    t.integer  "price_retail"
    t.string   "currency_iso"
    t.text     "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "review_id"
    t.integer  "user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "brand_id"
    t.text     "review_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "product_image"
  end

end
