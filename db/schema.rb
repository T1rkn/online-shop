# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_12_145333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basket_devices", force: :cascade do |t|
    t.bigint "basket_id"
    t.bigint "device_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["basket_id"], name: "index_basket_devices_on_basket_id"
    t.index ["device_id"], name: "index_basket_devices_on_device_id"
  end

  create_table "baskets", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_baskets_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "device_infos", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.bigint "device_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["device_id"], name: "index_device_infos_on_device_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.integer "rating", default: 0
    t.string "img", null: false
    t.bigint "type_id"
    t.bigint "brand_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_devices_on_brand_id"
    t.index ["type_id"], name: "index_devices_on_type_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rate", null: false
    t.bigint "user_id"
    t.bigint "device_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["device_id"], name: "index_ratings_on_device_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "type_brands", force: :cascade do |t|
    t.bigint "type_id"
    t.bigint "brand_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_type_brands_on_brand_id"
    t.index ["type_id"], name: "index_type_brands_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "role", default: "USER"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "basket_devices", "baskets"
  add_foreign_key "basket_devices", "devices"
  add_foreign_key "baskets", "users"
  add_foreign_key "device_infos", "devices"
  add_foreign_key "devices", "brands"
  add_foreign_key "devices", "types"
  add_foreign_key "ratings", "devices"
  add_foreign_key "ratings", "users"
  add_foreign_key "type_brands", "brands"
  add_foreign_key "type_brands", "types"
end
