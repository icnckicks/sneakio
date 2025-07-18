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

ActiveRecord::Schema[7.1].define(version: 2024_02_25_121713) do
  create_table "sneakers", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.decimal "size", precision: 5, scale: 2
    t.string "size_category"
    t.integer "quantity"
    t.decimal "purchase_price"
    t.date "purchase_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "colorway"
    t.string "source"
    t.integer "return_period"
    t.decimal "sale_price"
    t.boolean "sold"
  end

end
