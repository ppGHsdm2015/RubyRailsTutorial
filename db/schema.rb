# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151005202614) do

  create_table "articlesworkflows", force: :cascade do |t|
    t.integer  "articleid",   null: false
    t.integer  "workflowid",  null: false
    t.integer  "implementor", null: false
    t.datetime "implOn",      null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "evidenceitems", force: :cascade do |t|
    t.string "evtypename"
  end

  create_table "evidencesources", force: :cascade do |t|
    t.string   "title",       limit: 200, null: false
    t.string   "author",      limit: 200, null: false
    t.datetime "year"
    t.string   "source",      limit: 200
    t.datetime "doi"
    t.integer  "issueNo"
    t.string   "volume",      limit: 200
    t.string   "pageNo",      limit: 200
    t.integer  "submitter",               null: false
    t.datetime "submittedOn",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "rolename"
    t.string "edituser",      limit: 1, default: "n"
    t.string "modifymasters", limit: 1, default: "n"
    t.string "allowmod",      limit: 1, default: "n"
    t.string "allowanalysis", limit: 1, default: "n"
    t.string "allowupload",   limit: 1, default: "n"
  end

  create_table "rschmethods", force: :cascade do |t|
    t.string "methodname", limit: 200
  end

  create_table "rschparticipants", force: :cascade do |t|
    t.string "partname"
  end

  create_table "semethgies", force: :cascade do |t|
    t.string "semethgyname"
    t.string "semethgydesc"
  end

  create_table "semethods", force: :cascade do |t|
    t.string "semethodname"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                               null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "fullname",                    limit: 150,             null: false
    t.string   "organisation",                limit: 200
    t.integer  "roleID",                                  default: 1
    t.string   "gender",                      limit: 1
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token"
  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "workflows", force: :cascade do |t|
    t.string "workflowname"
  end

end
