# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181027003002) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "telephone_number"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emergency_numbers", force: :cascade do |t|
    t.string   "name"
    t.string   "telephone_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "message"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "security_asks", force: :cascade do |t|
    t.string   "ask"
    t.string   "response"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_security_asks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "message"
    t.string   "ring"
    t.string   "email"
    t.integer  "document_id"
    t.string   "num_document"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["document_id"], name: "index_users_on_document_id"
  end

end
