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

ActiveRecord::Schema.define(version: 2020_07_27_003357) do

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.string "notes", default: "{}"
    t.integer "topic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["topic_id"], name: "index_sections_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.string "color", default: "rgb(91, 91, 91)"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_topics_on_user_id"
  end

  create_table "user_shared_topics", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "sharee_id"
    t.integer "shared_topic_id"
    t.string "permission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_user_shared_topics_on_owner_id"
    t.index ["shared_topic_id"], name: "index_user_shared_topics_on_shared_topic_id"
    t.index ["sharee_id"], name: "index_user_shared_topics_on_sharee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "sections", "topics"
  add_foreign_key "topics", "users"
  add_foreign_key "user_shared_topics", "topics", column: "shared_topic_id"
  add_foreign_key "user_shared_topics", "users", column: "owner_id"
  add_foreign_key "user_shared_topics", "users", column: "sharee_id"
end
