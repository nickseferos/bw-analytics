# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_29_040409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "counts", force: :cascade do |t|
    t.string "move"
    t.string "time_exception"
    t.bigint "crane_operator_id", null: false
    t.bigint "shift_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crane_operator_id"], name: "index_counts_on_crane_operator_id"
    t.index ["shift_id"], name: "index_counts_on_shift_id"
  end

  create_table "crane_operators", force: :cascade do |t|
    t.string "work_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["work_id"], name: "index_crane_operators_on_work_id"
  end

  create_table "daily_yard_counts", force: :cascade do |t|
    t.date "date"
    t.integer "trucks"
    t.integer "transactions"
    t.integer "detained"
    t.time "turntime"
    t.text "note"
    t.bigint "terminal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["terminal_id"], name: "index_daily_yard_counts_on_terminal_id"
  end

  create_table "port_calls", force: :cascade do |t|
    t.bigint "voyage_id", null: false
    t.bigint "terminal_id", null: false
    t.datetime "eta"
    t.datetime "ata"
    t.datetime "etd"
    t.datetime "atd"
    t.boolean "departed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["terminal_id"], name: "index_port_calls_on_terminal_id"
    t.index ["voyage_id"], name: "index_port_calls_on_voyage_id"
  end

  create_table "ports", force: :cascade do |t|
    t.string "port"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_ports_on_country_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.string "plan_moves"
    t.string "actual_moves"
    t.bigint "port_call_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["port_call_id"], name: "index_shifts_on_port_call_id"
  end

  create_table "steamshiplines", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_steamshiplines_on_country_id"
  end

  create_table "terminals", force: :cascade do |t|
    t.string "terminal"
    t.string "street"
    t.string "city"
    t.string "postal"
    t.bigint "country_id", null: false
    t.bigint "port_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_terminals_on_country_id"
    t.index ["port_id"], name: "index_terminals_on_port_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fname"
    t.string "lname"
    t.bigint "terminal_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["terminal_id"], name: "index_users_on_terminal_id"
  end

  create_table "vessels", force: :cascade do |t|
    t.string "name"
    t.bigint "steamshipline_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["steamshipline_id"], name: "index_vessels_on_steamshipline_id"
  end

  create_table "voyages", force: :cascade do |t|
    t.bigint "vessel_id", null: false
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vessel_id"], name: "index_voyages_on_vessel_id"
  end

  add_foreign_key "counts", "crane_operators"
  add_foreign_key "counts", "shifts"
  add_foreign_key "daily_yard_counts", "terminals"
  add_foreign_key "port_calls", "terminals"
  add_foreign_key "port_calls", "voyages"
  add_foreign_key "ports", "countries"
  add_foreign_key "shifts", "port_calls"
  add_foreign_key "steamshiplines", "countries"
  add_foreign_key "terminals", "countries"
  add_foreign_key "terminals", "ports"
  add_foreign_key "users", "terminals"
  add_foreign_key "vessels", "steamshiplines"
  add_foreign_key "voyages", "vessels"
end
