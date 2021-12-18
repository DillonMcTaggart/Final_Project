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

ActiveRecord::Schema.define(version: 2021_12_18_224005) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity", default: 0, null: false
    t.string "price", null: false
    t.string "decimal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_id", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name", null: false
    t.decimal "sub_total", precision: 15, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vgame_genres", force: :cascade do |t|
    t.integer "vgame_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_vgame_genres_on_genre_id"
    t.index ["vgame_id"], name: "index_vgame_genres_on_vgame_id"
  end

  create_table "vgame_variants", force: :cascade do |t|
    t.string "title", null: false
    t.decimal "price", precision: 15, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vgame_id", null: false
    t.index ["vgame_id"], name: "index_vgame_variants_on_vgame_id"
  end

  create_table "vgames", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "price", null: false
    t.string "decimal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "videogames", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.string "platform"
    t.integer "year"
    t.string "genre"
    t.string "publisher"
    t.decimal "global_sales"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "order_items", "orders"
  add_foreign_key "vgame_genres", "genres"
  add_foreign_key "vgame_genres", "vgames"
  add_foreign_key "vgame_variants", "vgames"
end
