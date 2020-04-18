ActiveRecord::Schema.define(version: 2020_04_18_030846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pictures", "users"
end
