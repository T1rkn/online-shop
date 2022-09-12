ActiveRecord::Schema.define(version: 2022_09_12_142016) do
  enable_extension "plpgsql"

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "rating", default: 0
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
