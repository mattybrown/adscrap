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

ActiveRecord::Schema.define(version: 2020_02_18_063538) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "advertisements", force: :cascade do |t|
    t.string "position"
    t.string "status"
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "issue_id"
    t.integer "client_id"
    t.integer "user_id"
    t.integer "position_id"
    t.integer "width"
    t.integer "height"
    t.decimal "price", precision: 8, scale: 2
    t.index ["client_id"], name: "index_advertisements_on_client_id"
    t.index ["issue_id"], name: "index_advertisements_on_issue_id"
    t.index ["position_id"], name: "index_advertisements_on_position_id"
    t.index ["user_id"], name: "index_advertisements_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.integer "organisation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisation_id"], name: "index_clients_on_organisation_id"
  end

  create_table "issues", force: :cascade do |t|
    t.date "pub_date"
    t.integer "publication_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publication_id"], name: "index_issues_on_publication_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer "publication_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publication_id"], name: "index_positions_on_publication_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "name"
    t.integer "page_height"
    t.integer "columns"
    t.integer "organisation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisation_id"], name: "index_publications_on_organisation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organisation_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["organisation_id"], name: "index_users_on_organisation_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "advertisements", "clients"
  add_foreign_key "advertisements", "issues"
  add_foreign_key "advertisements", "positions"
  add_foreign_key "advertisements", "users"
  add_foreign_key "clients", "organisations"
  add_foreign_key "issues", "publications"
  add_foreign_key "positions", "publications"
  add_foreign_key "publications", "organisations"
  add_foreign_key "users", "organisations"
end
