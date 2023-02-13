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

ActiveRecord::Schema.define(version: 2023_02_12_011919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_classifications", force: :cascade do |t|
    t.string "user_classification_name", limit: 32
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name", limit: 16
    t.string "first_name", limit: 16
    t.string "zipcode", limit: 16
    t.string "prefecture", limit: 16
    t.string "municipality", limit: 16
    t.string "address", limit: 32
    t.string "apartments", limit: 32
    t.string "email", limit: 128
    t.string "phone_number", limit: 16
    t.string "company_name", limit: 128
    t.string "password_digest", limit: 64
    t.boolean "delete_flag", default: false, null: false
    t.bigint "user_classification_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["user_classification_id"], name: "index_users_on_user_classification_id"
  end

  add_foreign_key "users", "user_classifications"
end