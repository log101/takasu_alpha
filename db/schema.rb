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

ActiveRecord::Schema[7.0].define(version: 2022_04_11_075914) do
  create_table "mangas", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.text "description"
    t.string "volumes"
    t.integer "user_id", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mangas_on_user_id"
  end

  create_table "trade_items", force: :cascade do |t|
    t.integer "trade_id", null: false
    t.integer "manga_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manga_id"], name: "index_trade_items_on_manga_id"
    t.index ["trade_id"], name: "index_trade_items_on_trade_id"
  end

  create_table "trades", force: :cascade do |t|
    t.integer "sender_id", null: false
    t.integer "recipient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.index ["recipient_id"], name: "index_trades_on_recipient_id"
    t.index ["sender_id"], name: "index_trades_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "image_url"
  end

  add_foreign_key "mangas", "users"
  add_foreign_key "trade_items", "mangas"
  add_foreign_key "trade_items", "trades"
end
