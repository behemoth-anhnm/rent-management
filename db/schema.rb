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

ActiveRecord::Schema[7.0].define(version: 2023_11_29_055126) do
  create_table "expenses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "electricity_fee"
    t.integer "water_fee"
    t.integer "garbage_fee"
    t.integer "rent_fee"
    t.integer "internet_fee"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "penalty_id"
    t.bigint "room_id"
    t.bigint "status_id"
    t.bigint "tenant_id"
    t.index ["penalty_id"], name: "index_expenses_on_penalty_id"
    t.index ["room_id"], name: "index_expenses_on_room_id"
    t.index ["status_id"], name: "index_expenses_on_status_id"
    t.index ["tenant_id"], name: "index_expenses_on_tenant_id"
  end

  create_table "penalties", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.date "penalty_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "room_name"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tenant_id"
    t.index ["tenant_id"], name: "index_rooms_on_tenant_id"
  end

  create_table "statuses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "status_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "expenses", "penalties"
  add_foreign_key "expenses", "rooms"
  add_foreign_key "expenses", "statuses"
  add_foreign_key "expenses", "tenants"
  add_foreign_key "rooms", "tenants"
end
