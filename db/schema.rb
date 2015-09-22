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

ActiveRecord::Schema.define(version: 20150922054346) do

  create_table "articlesworkflows", force: :cascade do |t|
    t.integer  "articleid",   null: false
    t.integer  "workflowid",  null: false
    t.integer  "implementor", null: false
    t.datetime "implOn",      null: false
  end

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
    t.string  "username",    limit: 25,  null: false
    t.string  "password",    limit: 15,  null: false
    t.string  "fullname",    limit: 150, null: false
    t.string  "email",       limit: 150
    t.string  "affiliation", limit: 200
    t.integer "roleID"
    t.string  "gender",      limit: 1
    t.integer "age"
  end

  create_table "workflows", force: :cascade do |t|
    t.string "workflowname"
  end

end
