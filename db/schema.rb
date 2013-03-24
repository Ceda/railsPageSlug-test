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

ActiveRecord::Schema.define(:version => 20121213203326) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "lft"
    t.integer  "rgt"
  end

  create_table "categorizations", :force => true do |t|
    t.integer  "category_id"
    t.integer  "item_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "category_items", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "item_categories", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "category_id"
  end

  add_index "item_categories", ["category_id", "item_id"], :name => "index_item_categories_on_category_id_and_item_id"
  add_index "item_categories", ["item_id", "category_id"], :name => "index_item_categories_on_item_id_and_category_id"

  create_table "items", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
    t.string   "path"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "path"
    t.string   "slug"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
  end

end
