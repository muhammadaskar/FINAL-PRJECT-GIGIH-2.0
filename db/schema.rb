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

ActiveRecord::Schema[7.0].define(version: 2022_04_23_035252) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorization", id: false, force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "category_id", null: false
    t.index ["category_id", "item_id"], name: "index_categorization_on_category_id_and_item_id"
    t.index ["item_id", "category_id"], name: "index_categorization_on_item_id_and_category_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.integer "item_id"
    t.float "total"
    t.datetime "order_date"
    t.string "status"
    t.integer "quantity"
    t.float "item_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
