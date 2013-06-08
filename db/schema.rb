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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130608164148) do

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "industry"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agency_clients", :force => true do |t|
    t.integer  "agency_id"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "candidate_attributes", :force => true do |t|
    t.string  "title"
    t.string  "industry"
    t.integer "years_experience"
    t.text    "bio"
    t.integer "company_id"
    t.string  "skills"
    t.string  "salary"
    t.string  "location"
    t.integer "candidate_id"
  end

  create_table "candidate_jobs", :force => true do |t|
    t.integer "candidate_id"
    t.integer "job_id"
  end

  create_table "candidate_recruiters", :force => true do |t|
    t.integer "candidate_id"
    t.integer "recruiter_id"
  end

  create_table "client_jobs", :force => true do |t|
    t.integer  "client_id"
    t.integer  "job_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "industry"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string "name"
    t.string "location"
    t.string "industry"
  end

  create_table "external_jobs", :force => true do |t|
    t.string   "description"
    t.integer  "hiring_manager_id"
    t.integer  "job_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "external_code"
    t.string   "email"
    t.string   "telephone"
  end

  create_table "hiring_manager_attributes", :force => true do |t|
    t.string  "title"
    t.integer "company_id"
    t.integer "hiring_manager_id"
  end

  create_table "hiring_manager_jobs", :force => true do |t|
    t.integer "hiring_manager_id"
    t.integer "job_id"
  end

  create_table "hiring_manager_notes", :force => true do |t|
    t.integer "candidate_id"
    t.integer "note_id"
    t.integer "hiring_manager_id"
  end

  create_table "job_recruiters", :force => true do |t|
    t.integer  "job_id"
    t.integer  "recruiter_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.string   "email"
    t.string   "url"
    t.string   "salary"
    t.datetime "due_date"
  end

  create_table "notes", :force => true do |t|
    t.string  "description"
    t.string  "date"
    t.integer "job_id"
  end

  create_table "recruiter_attributes", :force => true do |t|
    t.string  "title"
    t.integer "agency_id"
    t.integer "recruiter_id"
  end

  create_table "recruiter_notes", :force => true do |t|
    t.integer "candidate_id"
    t.integer "note_id"
    t.integer "recruiter_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "type"
  end

end
