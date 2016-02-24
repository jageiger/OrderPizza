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

ActiveRecord::Schema.define(version: 20160223235825) do

  create_table "addresses", force: true do |t|
    t.integer  "user_id"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "address_three"
    t.string   "address_four"
    t.string   "zipcode"
    t.boolean  "apartment"
    t.string   "apartment_number"
    t.string   "building_number"
    t.string   "gate_code"
    t.text     "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applied_labels", force: true do |t|
    t.integer  "item_id"
    t.integer  "label_id"
    t.boolean  "daily_special"
    t.integer  "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applied_mod_groups", force: true do |t|
    t.integer  "modifier_group_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applied_sizes", force: true do |t|
    t.integer  "item_id"
    t.integer  "item_size_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cart_items", force: true do |t|
    t.integer  "user_id"
    t.integer  "order_id"
    t.integer  "item_id"
    t.float    "price"
    t.integer  "quantity"
    t.text     "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "size_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", force: true do |t|
    t.integer  "category_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grouped_modifiers", force: true do |t|
    t.integer  "modifier_group_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_sizes", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.float    "extras"
    t.integer  "row_order"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "stock"
    t.string   "name"
    t.string   "alt_name"
    t.text     "description"
    t.float    "price"
    t.float    "cost"
    t.integer  "quantity"
    t.string   "product_code"
    t.integer  "SKU"
    t.float    "extras_price"
    t.boolean  "fancy_interface"
    t.integer  "interface"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "size_id"
  end

  create_table "labels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modifier_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "child"
    t.integer  "parent_modifier_group_id"
    t.string   "prepend_name"
    t.string   "display_name"
    t.float    "add_price"
    t.float    "mult_price"
    t.boolean  "exclusive"
    t.integer  "max_num_of_modifiers"
    t.integer  "interface_position"
    t.boolean  "prevent_incest"
  end

  create_table "modifiers", force: true do |t|
    t.string   "name"
    t.string   "alt_name"
    t.float    "price"
    t.boolean  "use_extras"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "rotate"
    t.float    "density"
    t.float    "scale_range_low"
    t.float    "scale_range_high"
    t.string   "file"
    t.integer  "file_width"
    t.integer  "file_height"
    t.integer  "grid_x"
    t.integer  "grid_y"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "open"
  end

  create_table "selected_addresses", force: true do |t|
    t.integer  "address_id"
    t.integer  "user_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "selected_modifiers", force: true do |t|
    t.integer  "item_id"
    t.integer  "cart_item_id"
    t.integer  "modifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
    t.string   "hue"
    t.integer  "applied_mod_group_id"
  end

  create_table "selected_sizes", force: true do |t|
    t.integer  "cart_item_id"
    t.integer  "item_size_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxes", force: true do |t|
    t.string   "name"
    t.float    "amount"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_contact"
    t.integer  "open_order"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
