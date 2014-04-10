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

ActiveRecord::Schema.define(version: 20140409102418) do

  create_table "patients", force: true do |t|
    t.integer  "age"
    t.integer  "status"
    t.integer  "reason"
    t.integer  "surgery"
    t.integer  "recommendation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients_tests", id: false, force: true do |t|
    t.integer "patient_id"
    t.integer "test_id"
  end

  create_table "tests", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
