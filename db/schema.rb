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

ActiveRecord::Schema.define(version: 20170329102416) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "name"
    t.string   "login",           null: false
    t.string   "nickname",        null: false
    t.string   "userpic"
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "name"
    t.text     "text"
    t.integer  "admin_user_id"
    t.string   "photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_articles_on_admin_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.string   "author"
    t.string   "email"
    t.boolean  "is_read",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",                        null: false
    t.string   "url"
    t.string   "source_url"
    t.text     "description"
    t.boolean  "finished",    default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "admin_user_id"
    t.date     "deadline"
    t.boolean  "done",          default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["admin_user_id"], name: "index_tasks_on_admin_user_id"
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

end
