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

ActiveRecord::Schema.define(version: 20141114195117) do

  create_table "order_lines", force: true do |t|
    t.integer  "line_num"
    t.integer  "quantity"
    t.integer  "discount"
    t.integer  "order_num"
    t.text     "notes"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id", limit: 255
    t.integer  "order_id"
  end

  create_table "orders", force: true do |t|
    t.integer  "emp_id"
    t.integer  "cust_id"
    t.integer  "order_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.text     "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "prod_sku"
    t.decimal  "prod_nrc_cost"
    t.decimal  "prod_nrc_price"
    t.string   "prod_account"
    t.integer  "product_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "prod_name"
    t.decimal  "prod_mrc_cost"
    t.decimal  "prod_mrc_price"
  end

  add_index "products", ["prod_sku"], name: "index_products_on_prod_sku", unique: true

end
