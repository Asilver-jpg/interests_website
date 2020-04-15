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


ActiveRecord::Schema.define(version: 2020_04_14_224858) do


  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "body"
    t.integer "profile_id", null: false
    t.integer "topic_thread_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_posts_on_profile_id"
    t.index ["topic_thread_id"], name: "index_posts_on_topic_thread_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "username"
    t.integer "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "topic_threads", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "views"
    t.integer "sub_category_id", null: false
    t.integer "profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_topic_threads_on_profile_id"
    t.index ["sub_category_id"], name: "index_topic_threads_on_sub_category_id"
  end

  add_foreign_key "posts", "profiles"
  add_foreign_key "posts", "topic_threads"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "topic_threads", "profiles"
  add_foreign_key "topic_threads", "sub_categories"
end
